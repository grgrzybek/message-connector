------=_Part_0_7749469.1415712031465
Content-Type: text/xml; charset=utf-8
Content-Id: <soappart>

<?xml version="1.0" encoding="UTF-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:eb="http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd" xmlns:hl7ebXML="urn:hl7-org:transport/ebxml/DSTUv1.0" xmlns:soap-env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xlink="http://www.w3.org/1999/xlink">
   <SOAP-ENV:Header>
      <eb:MessageHeader eb:version="2.0" soap-env:mustUnderstand="1">
         <eb:From>
            <eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">B81031-0001409</eb:PartyId>
         </eb:From>
         <eb:To>
            <eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">YEA-801248</eb:PartyId>
         </eb:To>
         <eb:CPAId>S2001923A2011957</eb:CPAId>
         <eb:ConversationId>E4369328-D51D-4024-85A3-B4068AF23895</eb:ConversationId>
         <eb:Service>urn:nhs:names:services:pds</eb:Service>
         <eb:Action>PRPA_IN000203UK03</eb:Action>
         <eb:MessageData>
            <eb:MessageId>E4369328-D51D-4024-85A3-B4068AF23895</eb:MessageId>
            <eb:Timestamp>2014-11-11T13:20:30Z</eb:Timestamp>
         </eb:MessageData>
         <eb:DuplicateElimination>always</eb:DuplicateElimination>
      </eb:MessageHeader>
      <eb:SyncReply eb:version="2.0" soap-env:actor="http://schemas.xmlsoap.org/soap/actor/next" soap-env:mustUnderstand="1" />
      <eb:AckRequested eb:signed="false" eb:version="2.0" soap-env:actor="urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH" soap-env:mustUnderstand="1" />
   </SOAP-ENV:Header>
   <SOAP-ENV:Body>
      <eb:Manifest eb:version="2.0">
         <eb:Reference eb:id="_92A0520C-F8B1-484D-950A-CEA6E558BC64" xlink:href="cid:92A0520C-F8B1-484D-950A-CEA6E558BC64">
            <eb:Description xml:lang="en-GB">PRPA_IN000203UK03</eb:Description>
            <hl7ebXML:Payload encoding="XML" style="HL7" version="3.0" />
         </eb:Reference>
      </eb:Manifest>
   </SOAP-ENV:Body>
</SOAP-ENV:Envelope>
------=_Part_0_7749469.1415712031465
Content-Type: application/xml
Content-ID: <92A0520C-F8B1-484D-950A-CEA6E558BC64>
Content-Transfer-Encoding: 8bit

<?xml version="1.0" encoding="UTF-8"?>
<PRPA_IN000203UK03 xmlns="urn:hl7-org:v3">
   <id root="E4369328-D51D-4024-85A3-B4068AF23895" />
   <creationTime value="20141111132024" />
   <versionCode code="3NPfIT6.3.01" />
   <interactionId root="2.16.840.1.113883.2.1.3.2.4.12" extension="PRPA_IN000203UK03" />
   <processingCode code="P" />
   <processingModeCode code="T" />
   <acceptAckCode code="NE" />
   <communicationFunctionRcv typeCode="RCV">
      <device classCode="DEV" determinerCode="INSTANCE">
         <id root="1.2.826.0.1285.0.2.0.107" extension="908232220511" />
      </device>
   </communicationFunctionRcv>
   <communicationFunctionSnd typeCode="SND">
      <device classCode="DEV" determinerCode="INSTANCE">
         <id root="1.2.826.0.1285.0.2.0.107" extension="196494861541" />
      </device>
   </communicationFunctionSnd>
   <ControlActEvent classCode="CACT" moodCode="EVN">
      <author typeCode="AUT">
         <AgentPersonSDS classCode="AGNT">
            <id root="1.2.826.0.1285.0.2.0.67" extension="326648300514" />
            <agentPersonSDS classCode="PSN" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.65" extension="043740455514" />
            </agentPersonSDS>
            <part typeCode="PART">
               <partSDSRole classCode="ROL">
                  <id root="1.2.826.0.1285.0.2.1.104" extension="R8000" />
               </partSDSRole>
            </part>
         </AgentPersonSDS>
      </author>
      <author1 typeCode="AUT">
         <AgentSystemSDS classCode="AGNT">
            <agentSystemSDS classCode="DEV" determinerCode="INSTANCE">
               <id root="1.2.826.0.1285.0.2.0.107" extension="196494861541" />
            </agentSystemSDS>
         </AgentSystemSDS>
      </author1>
      <subject typeCode="SUBJ" contextConductionInd="false">
         <PdsUpdateRequest classCode="REG" moodCode="RQO">
            <code codeSystem="2.16.840.1.113883.2.1.3.2.4.17.40" code="1" />
            <pertinentInformation typeCode="PERT">
               <pertinentSerialChangeNumber classCode="OBS" moodCode="EVN">
                  <code code="2" codeSystem="2.16.840.1.113883.2.1.3.2.4.17.35" />
                  <value value="3" />
               </pertinentSerialChangeNumber>
            </pertinentInformation>
            <subject typeCode="SBJ">
               <patientRole classCode="PAT">
                  <addr use="H" updateMode="altered">
                     <streetAddressLine />
                     <streetAddressLine>95 OXFORD STREET</streetAddressLine>
                     <streetAddressLine>CLEETHORPES</streetAddressLine>
                     <streetAddressLine>CLEETHORPES</streetAddressLine>
                     <streetAddressLine>S HUMBERSIDE</streetAddressLine>
                     <postalCode>DN35 8RF</postalCode>
                     <useablePeriod>
                        <low value="20141111" />
                     </useablePeriod>
                     <id root="2.16.840.1.113883.2.1.3.2.4.18.1" extension="l295" />
                  </addr>
                  <id root="2.16.840.1.113883.2.1.4.1" extension="9454128051" />
                  <patientPerson classCode="PSN" determinerCode="INSTANCE" />
               </patientRole>
            </subject>
         </PdsUpdateRequest>
      </subject>
   </ControlActEvent>
</PRPA_IN000203UK03>

------=_Part_0_7749469.1415712031465--
