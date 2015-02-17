----=_MIME-Boundary
Content-Id: <ebXMLHeader@spine.nhs.uk>
Content-Type: text/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0"?>
<SOAP:Envelope xmlns:xsi="http://www.w3c.org/2001/XML-Schema-Instance" xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/" xmlns:eb="http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd" xmlns:hl7ebxml="urn:hl7-org:transport/ebXML/DSTUv1.0" xmlns:xlink="http://www.w3.org/1999/xlink">
<SOAP:Header>
	<eb:MessageHeader SOAP:mustUnderstand="1" eb:version="2.0">
		<eb:From>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">TESTGEN-201324</eb:PartyId>
		</eb:From>
		<eb:To>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">YEA-0000806</eb:PartyId>
		</eb:To>
		<eb:CPAId>S1001A1630</eb:CPAId>
		<eb:ConversationId>8BB0A0F8-4559-11E4-8363-08002750C8A3</eb:ConversationId>
		<eb:Service>urn:nhs:names:services:mm</eb:Service>
		<eb:Action>PORX_IN060102UK30</eb:Action>
		<eb:MessageData>
			<eb:MessageId>8BB0A0F8-4559-11E4-8363-08002750C8A3</eb:MessageId>
			<eb:Timestamp>2011-08-04T14:46:39Z</eb:Timestamp>
		</eb:MessageData>
		<eb:DuplicateElimination/>
	</eb:MessageHeader>
	<eb:AckRequested SOAP:mustUnderstand="1" eb:version="2.0" eb:signed="false" SOAP:actor="urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH"/>
	<eb:SyncReply SOAP:mustUnderstand="1" eb:version="2.0" SOAP:actor="http://schemas.xmlsoap.org/soap/actor/next"/>
</SOAP:Header>
<SOAP:Body>
	<eb:Manifest SOAP:mustUnderstand="1" eb:version="2.0">
		<eb:Reference xlink:href="cid:8BB0A0F8-4559-11E4-8363-08002750C8A3@spine.nhs.uk"><eb:Schema eb:location="http://www.nhsia.nhs.uk/schemas/HL7-Message.xsd" eb:version="1.0"/><eb:Description xml:lang="en">HL7 payload</eb:Description><hl7ebxml:Payload style="HL7" encoding="XML" version="3.0"/></eb:Reference>
		
	</eb:Manifest>
</SOAP:Body>
</SOAP:Envelope>


----=_MIME-Boundary
Content-Id: <8BB0A0F8-4559-11E4-8363-08002750C8A3@spine.nhs.uk>
Content-Type: text/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0"?>
<PORX_IN060102UK30 xmlns="urn:hl7-org:v3">
   <id xmlns:hl7="urn:hl7-org:v3" root="8BB0A0F8-4559-11E4-8363-08002750C8A3"/>
   <creationTime value="20120810131251"/>
   <versionCode code="V3NPfIT3.0"/>
   <interactionId root="2.16.840.1.113883.2.1.3.2.4.12" extension="PORX_IN060102UK30"/>
   <processingCode code="P"/>
   <processingModeCode code="T"/>
   <acceptAckCode code="NE"/>
   <communicationFunctionRcv>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id xmlns:hl7="urn:hl7-org:v3" extension="990101234567" root="1.2.826.0.1285.0.2.0.107"/>
      </device>
   </communicationFunctionRcv>
   <communicationFunctionSnd>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id xmlns:hl7="urn:hl7-org:v3" extension="230811201324" root="1.2.826.0.1285.0.2.0.107"/>
      </device>
   </communicationFunctionSnd>
   <ControlActEvent classCode="CACT" moodCode="EVN">
      <author typeCode="AUT">
         <AgentPersonSDS classCode="AGNT">
            <id root="1.2.826.0.1285.0.2.0.67" extension="B0090,B0100,B1510"/>
            <agentPersonSDS classCode="PSN" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.65" extension="687227875014"/>
            </agentPersonSDS>
            <part typeCode="PART">
               <partSDSRole classCode="ROL">
                  <id root="1.2.826.0.1285.0.2.1.104" extension="S0080:G0450:R5080"/>
               </partSDSRole>
            </part>
         </AgentPersonSDS>
      </author>
      <author1 typeCode="AUT">
         <AgentSystemSDS classCode="AGNT">
            <agentSystemSDS classCode="DEV" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.107" extension="747225912019"/>
            </agentSystemSDS>
         </AgentSystemSDS>
      </author1>
      <subject>
         <NominatedPrescriptionReleaseRequest classCode="INFO" moodCode="RQO">
            <id root="C6E93BEE-0CFA-89EE-E040-950AE0737B37"/>
            <effectiveTime value="20120810131251"/>
            <author typeCode="AUT">
               <AgentPerson classCode="AGNT">
                  <id root="1.2.826.0.1285.0.2.0.67" extension="100243149982"/>
                  <code codeSystem="1.2.826.0.1285.0.2.1.104" code="S0080:G0450:R5080"/>
                  <telecom use="WP" value=""/>
                  <agentPerson classCode="PSN" determinerCode="INSTANCE">
                     <id root="1.2.826.0.1285.0.2.0.65" extension="FAT75"/>
                     <name use="L">HEDLEY</name>
                  </agentPerson>
                  <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                     <id root="1.2.826.0.1285.0.1.10" extension="FAT75"/>
                     <code codeSystem="2.16.840.1.113883.2.1.3.2.4.17.94" code="003"/>
                     <name>HEDLEY</name>
                     <telecom use="WP" value=""/>
                     <addr use="WP">
                        <streetAddressLine>HIGHFIELD</streetAddressLine>
                        <streetAddressLine>CLIFTONVILLE ROAD</streetAddressLine>
                        <streetAddressLine>NORTHAMPTON</streetAddressLine>
                        <streetAddressLine>NORTHAMPTONSHIRE</streetAddressLine>
                        <postalCode>NN1 5DN</postalCode>
                     </addr>
                  </representedOrganization>
               </AgentPerson>
            </author>
         </NominatedPrescriptionReleaseRequest>
      </subject>
   </ControlActEvent>
</PORX_IN060102UK30>

----=_MIME-Boundary--