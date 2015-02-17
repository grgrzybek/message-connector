/**
 * $$Id: SpineNominatedReleaseRequestTest 09/02/15 17:29 akhettar $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous;

import org.apache.camel.EndpointInject;
import org.apache.camel.Exchange;
import org.apache.camel.component.mock.MockEndpoint;
import org.junit.Test;

/**
 * SpineNominatedReleaseRequestTest class
 */
public class SpineNominatedReleaseRequestTest extends SpineTestFixture {

    @EndpointInject(uri = "mock:epsAsyncReliable")
    private MockEndpoint mockEpsAsyncReliable;

    @Test
    public void shouldSendANominatedReleaseRequestToTheEpsAsyncReliableEndpoint() throws Exception {

        ignoreEndpoinst();

        setMockExpectations(mockEpsAsyncReliable, "8BB0A0F8-4559-11E4-8363-08002750C8A3", "urn:nhs:names:services:mm/PORX_IN060102UK30",
                readFile("requests/NominatedReleaseRequest.msg"));
        Exchange exchange = createExchange("nominatedReleaseRequest", readFile("requests/NominatedReleaseRequest.msg"));

        template.send("direct:start", exchange);

        assertMockEndpointsSatisfied();
        mockEpsAsyncReliable.reset();
    }

}
