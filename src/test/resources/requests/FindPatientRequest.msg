----=_MIME-Boundary
Content-Id: <ebXMLHeader@spine.nhs.uk>
Content-Type: text/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0"?>
<SOAP:Envelope xmlns:xsi="http://www.w3c.org/2001/XML-Schema-Instance" xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/" xmlns:eb="http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd" xmlns:hl7ebxml="urn:hl7-org:transport/ebXML/DSTUv1.0" xmlns:xlink="http://www.w3.org/1999/xlink">
<SOAP:Header>
	<eb:MessageHeader SOAP:mustUnderstand="1" eb:version="2.0">
		<eb:From>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">FAA01-1809183</eb:PartyId>
		</eb:From>
		<eb:To>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">YEA-801248</eb:PartyId>
		</eb:To>
		<eb:CPAId>S2001923A2011957</eb:CPAId>
		<eb:ConversationId>25892E17-80F6-415F-9C65-7395632F0223</eb:ConversationId>
		<eb:Service>urn:nhs:names:services:pdsquery</eb:Service>
		<eb:Action>QUPA_IN020000UK14</eb:Action>
		<eb:MessageData>
			<eb:MessageId>25892E17-80F6-415F-9C65-7395632F0223</eb:MessageId>
			<eb:Timestamp>2014-11-11T13:20:30Z</eb:Timestamp>
		</eb:MessageData>
	</eb:MessageHeader>
</SOAP:Header>
<SOAP:Body>
	<eb:Manifest SOAP:mustUnderstand="1" eb:version="2.0">
		<eb:Reference xlink:href="cid:25892E17-80F6-415F-9C65-7395632F0223@spine.nhs.uk"><eb:Schema eb:location="http://www.nhsia.nhs.uk/schemas/HL7-Message.xsd" eb:version="1.0"/><eb:Description xml:lang="en">HL7 payload</eb:Description><hl7ebxml:Payload style="HL7" encoding="XML" version="3.0"/></eb:Reference>

	</eb:Manifest>
</SOAP:Body>
</SOAP:Envelope>

----=_MIME-Boundary
Content-Id: <0A6CA126-7EF8-11E4-9988-08002750C8A3@spine.nhs.uk>
Content-Type: text/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0"?>
<?xml version="1.0" encoding="UTF-8"?>
<QUPA_IN020000UK14 xmlns="urn:hl7-org:v3">
   <id xmlns:hl7="urn:hl7-org:v3" root="25892E17-80F6-415F-9C65-7395632F0223" />
   <creationTime value="20110804144639" />
   <versionCode code="V3NPfIT4.2.00" />
   <interactionId root="2.16.840.1.113883.2.1.3.2.4.12" extension="QUPA_IN020000UK14" />
   <processingCode code="P" />
   <processingModeCode code="T" />
   <acceptAckCode code="NE" />
   <communicationFunctionRcv>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id xmlns:hl7="urn:hl7-org:v3" extension="631955299542" root="1.2.826.0.1285.0.2.0.107" />
      </device>
   </communicationFunctionRcv>
   <communicationFunctionSnd>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id xmlns:hl7="urn:hl7-org:v3" extension="387601771547" root="1.2.826.0.1285.0.2.0.107" />
      </device>
   </communicationFunctionSnd>
   <ControlActEvent classCode="CACT" moodCode="EVN">
      <author typeCode="AUT">
         <AgentPersonSDS classCode="AGNT">
            <id root="1.2.826.0.1285.0.2.0.67" extension="684976843541" />
            <agentPersonSDS classCode="PSN" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.65" extension="852635920543" />
            </agentPersonSDS>
            <part typeCode="PART">
               <partSDSRole classCode="ROL">
                  <id root="1.2.826.0.1285.0.2.1.104" extension="S0050:G0200:R1290" />
               </partSDSRole>
            </part>
         </AgentPersonSDS>
      </author>
      <author1 typeCode="AUT">
         <AgentSystemSDS classCode="AGNT">
            <agentSystemSDS classCode="DEV" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.107" extension="387601771547" />
            </agentSystemSDS>
         </AgentSystemSDS>
      </author1>
      <query>
         <historicDataIndicator>
            <value code="1" codeSystem="2.16.840.1.113883.2.1.3.2.4.17.36" />
            <semanticsText>HistoricDataIndicator</semanticsText>
         </historicDataIndicator>
         <person.administrativeGenderCode>
            <value code="1" />
            <semanticsText>Person.administrativeGenderCode</semanticsText>
         </person.administrativeGenderCode>
         <person.birthTime>
            <value>
               <center value="19901231" />
            </value>
            <semanticsText>Person.birthTime</semanticsText>
         </person.birthTime>
         <person.name>
            <value use="L">
               <family>Bloggs</family>
            </value>
            <semanticsText>Person.name</semanticsText>
         </person.name>
         <searchParameter>
            <value code="1" codeSystem="2.16.840.1.113883.2.1.3.2.4.17.39" />
            <semanticsText>SearchParameter</semanticsText>
         </searchParameter>
      </query>
   </ControlActEvent>
</QUPA_IN020000UK14>

----=_MIME-Boundary--