<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://platform.integration.oracle/blocks/adapter/fw/metadata/UndoUserCreation"
                xmlns:ns0="saibot.airport/security/ldap" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/ldap/AirportAccreditationService-step6/AirportAccreditationService/UndoUserCreation"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/LDAPService.wsdl"/>
        <oracle-xsl-mapper:rootElement name="RemoveUserRequest" namespace="saibot.airport/security/ldap"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/UndoUserCreation.wsdl"/>
        <oracle-xsl-mapper:rootElement name="deleteRequest"
                                       namespace="http://platform.integration.oracle/blocks/adapter/fw/metadata/UndoUserCreation"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SUN NOV 09 20:54:06 CET 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:deleteRequest>
     
            <dn>
        <xsl:value-of select="concat ('uid=', /ns0:RemoveUserRequest/ns0:UserId, ',ou=ExternalStaff,o=saibot.airport ' )"/>
      </dn>

    
    </tns:deleteRequest>
  </xsl:template>
</xsl:stylesheet>