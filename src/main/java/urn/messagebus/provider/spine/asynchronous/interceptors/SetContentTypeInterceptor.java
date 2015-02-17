/**
 * $$Id: SetContentTypeInterceptor.java 04/11/14 16:19 efthimios.kartsonakis $$
 * $$Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved. $$
 */
package urn.messagebus.provider.spine.asynchronous.interceptors;

import org.apache.cxf.binding.soap.SoapMessage;
import org.apache.cxf.binding.soap.interceptor.AbstractSoapInterceptor;
import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.Phase;

/**
 * Overrides the default CXF Content-Type value to an appropriate ebXML one
 */
public class SetContentTypeInterceptor extends AbstractSoapInterceptor {
    private final String EBXML_CONTENT_TYPE = "multipart/related;boundary=\"--=_MIME-Boundary\";type=\"text/xml\";" +
            "start=\"<ebXMLHeader@spine.nhs.uk<mailto:ebXMLHeader@spine.nhs.uk>>\"";

    public SetContentTypeInterceptor() {
        super(Phase.PREPARE_SEND);
    }

    @Override
    public void handleMessage(SoapMessage message) throws Fault {
        message.put(Message.CONTENT_TYPE, EBXML_CONTENT_TYPE);
    }
}
