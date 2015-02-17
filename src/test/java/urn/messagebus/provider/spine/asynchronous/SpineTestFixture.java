/**
 * $$Id: SpineTestFixture 09/02/15 17:20 akhettar $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous;/**
 * Created by akhettar on 09/02/15.
 */

import org.apache.camel.Exchange;
import org.apache.camel.component.mock.MockEndpoint;
import urn.messagebus.library.testsupport.MHSTestFixture;

import java.util.Dictionary;

/**
 * SpineTestFixture class
 */
public class SpineTestFixture extends MHSTestFixture {




    @Override
    protected String useOverridePropertiesWithConfigAdmin(Dictionary props) {
        props.put("provider.spine.async", "direct:start");
        props.put("provider.spine.async.retry", "direct:retry");
        props.put("epsAsyncReliableEndpoint", "mock:epsAsyncReliable");
        props.put("pdsAsyncReliableEndpoint", "mock:pdsAsyncReliable");
        props.put("pdsAsyncUnreliableEndpoint", "mock:pdsAsyncUnreliable");
        props.put("core.error", "mock:error");
        props.put("activemq.brokerURL", "vm://localhost:" + getPort());
        return "urn.messagebus.provider.spine.asynchronous.config";
    }

    @Override
    protected String getBlueprintDescriptor() {
        return "OSGI-INF/blueprint/properties.xml,OSGI-INF/blueprint/blueprint.xml,OSGI-INF/blueprint/errorHandler.xml,OSGI-INF/blueprint/activemq.xml";
    }

    protected Exchange createExchange(final String type, String payload) throws Exception {
        Exchange exchange = createExchangeWithBody(context, payload);

        exchange.getIn().setHeader("type", type);
        return exchange;
    }

    protected void ignoreEndpoinst() throws Exception {
        removeEndpoint("hbaseEndpoint", "urn.messagebus.provider.spine.asynchronous.storeSpineCorrelationData");
        removeEndpoint("audit-in", "urn.messagebus.provider.spine.asynchronous");
        removeEndpoint("audit-error", "urn.messagebus.provider.spine.asynchronous");
    }

    protected void setMockExpectations(MockEndpoint mock, String id, String soapAction, String expectedResponse) throws Exception {
        mock.expectedMessageCount(1);
        mock.expectedHeaderReceived("Soapaction", soapAction);
        mock.expectedBodiesReceived(expectedResponse);

    }


}
