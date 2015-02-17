/**
 * $$Id: SpineFindPatientRequestTest 09/02/15 17:20 akhettar $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous;/**
 * Created by akhettar on 09/02/15.
 */

import org.apache.camel.EndpointInject;
import org.apache.camel.Exchange;
import org.apache.camel.component.mock.MockEndpoint;
import org.junit.Test;

/**
 * SpineFindPatientRequestTest class
 */
public class SpineFindPatientRequestTest extends SpineTestFixture {

    public static final int EXPECTED_NUM_OF_RETRIES = 2;
    @EndpointInject(uri = "mock:pdsAsyncUnreliable")
    private MockEndpoint mockPdsAsyncUnreliable;


    @Test
    public void shouldSendAFindPatientRequestToThePdsAsyncUnreliableEndpoint() throws Exception {
        ignoreEndpoinst();
        setMockExpectations(mockPdsAsyncUnreliable, "25892E17-80F6-415F-9C65-7395632F0223", "urn:nhs:names:services:pdsquery/QUPA_IN020000UK14", readFile("requests/FindPatientRequest.msg"));
        Exchange exchange = createExchange("findPatient", readFile("requests/FindPatientRequest.msg"));

        template.send("direct:start", exchange);

        assertMockEndpointsSatisfied();
        mockPdsAsyncUnreliable.reset();
    }


}
