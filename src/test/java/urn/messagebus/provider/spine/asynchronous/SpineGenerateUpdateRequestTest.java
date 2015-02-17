/**
 * $$Id: SpineGenerateUpdateRequestTest 09/02/15 17:26 akhettar $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous;

import org.apache.camel.EndpointInject;
import org.apache.camel.Exchange;
import org.apache.camel.component.mock.MockEndpoint;
import org.junit.Test;

/**
 * SpineGenerateUpdateRequestTest class
 */
public class SpineGenerateUpdateRequestTest extends SpineTestFixture{

    @EndpointInject(uri = "mock:pdsAsyncReliable")
    private MockEndpoint mockPdsAsyncReliable;
    
    @Test
    public void shouldSendAGeneralUpdateRequestToThePdsAsyncReliableEndpoint() throws Exception {

        ignoreEndpoinst();
        setMockExpectations(mockPdsAsyncReliable, "E4369328-D51D-4024-85A3-B4068AF23895", "urn:nhs:names:services:pds/PRPA_IN000203UK03", readFile("requests/PdsUpdateRequest.msg"));
        Exchange exchange = createExchange("generalUpdateRequest", readFile("requests/PdsUpdateRequest.msg"));

        template.send("direct:start", exchange);

        assertMockEndpointsSatisfied();
        mockPdsAsyncReliable.reset();
    }
}
