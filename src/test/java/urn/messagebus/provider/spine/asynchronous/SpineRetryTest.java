/**
 * $$Id: SpineRetryTest 09/02/15 17:30 akhettar $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.apache.camel.builder.AdviceWithRouteBuilder;
import org.junit.Test;
import urn.messagebus.library.commons.errors.MessageBusException;

import static urn.messagebus.library.spine.retry.RetryParams.*;

/**
 * SpineRetryTest class
 */
public class SpineRetryTest extends SpineTestFixture {

    private int numberOfRetries;
    private static final int EXPECTED_NUM_OF_RETRIES = 2;

    @Test
    public void shouldFailToConnectToSpineKicksOffTheRetryRoute() throws Exception {

        ignoreEndpoinst();

        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous.retry", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to Spine"));
        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to Spine"));
        mockRetryEndpoint();
        Exchange exchange = createExchange("nominatedReleaseRequest", readFile("requests/NominatedReleaseRequest.msg"));
        addRetryData(exchange, "PT5M");

        Exchange result = template.send("direct:start", exchange);

        MessageBusException exception = (MessageBusException) result.getProperty("CamelExceptionCaught");
        assertNotNull(exception);
        assertEquals("Failed to send to Spine", exception.getDiagnosticText());
        assertEquals("03C-004", exception.getErrorCode());
        assertEquals(EXPECTED_NUM_OF_RETRIES, numberOfRetries);
    }

    @Test
    public void noRetryDataRelatedPresentInSDSShouldNotAttemptRetry() throws Exception {
        ignoreEndpoinst();

        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous.retry", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to Spine"));
        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to Spine"));

        Exchange exchange = createExchange("nominatedReleaseRequest", readFile("requests/NominatedReleaseRequest.msg"));
        addRetryData(exchange, "PT5M");

        Exchange result = template.send("direct:start", exchange);

        MessageBusException exception = (MessageBusException) result.getProperty("CamelExceptionCaught");
        assertNotNull(exception);
        assertEquals("Failed to send to Spine", exception.getDiagnosticText());
        assertEquals("03C-004", exception.getErrorCode());
        assertEquals(0, numberOfRetries);
    }

    @Test
    public void persistDurationIsSetToZeroItShouldNotAttemptRetry() throws Exception {
        ignoreEndpoinst();

        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous.retry", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to spine"));
        mockEndpointThrowException("urn.messagebus.provider.spine.asynchronous", "epsEndpoint", new MessageBusException("03C-004", "Failed to send to spine"));

        Exchange exchange = createExchange("nominatedReleaseRequest", readFile("requests/NominatedReleaseRequest.msg"));
        addRetryData(exchange, "PT0M");
        Exchange result = template.send("direct:start", exchange);

        MessageBusException exception = (MessageBusException) result.getProperty("CamelExceptionCaught");
        assertNotNull(exception);
        assertEquals("Failed to send to spine", exception.getDiagnosticText());
        assertEquals("03C-004", exception.getErrorCode());
        assertEquals(0, numberOfRetries);
    }

    /**
     * Mocks the retry endpoint, increment the number of retries everytime there is a failure.
     *
     * @throws Exception
     */
    protected void mockRetryEndpoint() throws Exception {

        context.getRouteDefinition("urn.messagebus.provider.spine.asynchronous.retry").adviceWith(context, new AdviceWithRouteBuilder() {

            @Override
            public void configure() throws Exception {
                weaveById("retry").before().process(new Processor() {
                    @Override
                    public void process(Exchange exchange) throws Exception {
                        numberOfRetries++;
                    }
                });
            }
        });
    }

    private void addRetryData(Exchange exchange, String duration) {

        exchange.setProperty(NHS_MHS_PERSIST_DURATION.value, duration);
        exchange.setProperty(NHS_MHS_RETRIES.value, EXPECTED_NUM_OF_RETRIES);
        exchange.setProperty(NHS_MHS_RETRY_INTERVAL.value, "PT1M");
    }

}
