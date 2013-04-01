<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: nsdesc.xslt 755 2012-04-26 22:28:35Z dret $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
 xmlns:nsdesc="http://ns.emc.com/schema/nsdesc"
 xmlns:vcard="urn:ietf:params:xml:ns:vcard-4.0"
 xmlns="http://www.w3.org/1999/xhtml">
 <xsl:import href="xcard2hcard.xslt"/>
 <xsl:output media-type="text/html" indent="yes" method="html"/>
 <xsl:template match="/nsdesc:nsdesc">
  <html>
   <head profile="http://microformats.org/profile/hcard">
    <title>
     <xsl:value-of select="nsdesc:title/nsdesc:description[1]"/>
     <xsl:text> Description</xsl:text>
    </title>
    <link rel="profile" href="http://microformats.org/profile/hcard"/>
    <link rel="stylesheet" type="text/css" href="../../../nsdesc.css"/>
   </head>
   <body>
    <h1>
     <xsl:value-of select="nsdesc:title/nsdesc:description[1]"/>
    </h1>
    <h2>
     <xsl:choose>
      <xsl:when test="@type = 'schema'">
       <xsl:text>Schema</xsl:text>
      </xsl:when>
      <xsl:when test="@type = 'mediatype'">
       <xsl:text>Media Type</xsl:text>
      </xsl:when>
      <xsl:when test="@type = 'linkrel'">
       <xsl:text>Link Relations</xsl:text>
      </xsl:when>
      <xsl:when test="@type = 'profile'">
       <xsl:text>Profile</xsl:text>
      </xsl:when>
      <xsl:when test="@type = 'authority'">
       <xsl:text>Authority</xsl:text>
      </xsl:when>
     </xsl:choose>
    </h2>
    <div class="abstracts">
     <xsl:for-each select="nsdesc:abstract/nsdesc:description">
      <div class="abstract">
       <xsl:copy-of select="@xml:lang"/>
       <xsl:copy-of select="node()"/>
      </div>
     </xsl:for-each>
    </div>
    <div class="documentations">
     <h3>Available Documentation:</h3>
     <ul>
      <xsl:for-each select="nsdesc:documentation/nsdesc:description">
       <li class="documentation">
        <xsl:copy-of select="@xml:lang"/>
        <xsl:choose>
         <xsl:when test="node()">
          <a href="{@href}">
           <xsl:copy-of select="node()"/>
          </a>
         </xsl:when>
         <xsl:otherwise>
          <a href="{@href}">
           <xsl:value-of select="@href"/>
          </a>
         </xsl:otherwise>
        </xsl:choose>
       </li>
      </xsl:for-each>
     </ul>
    </div>
    <div class="contacts">
     <h3>Registration Contact:</h3>
     <xsl:for-each select="nsdesc:contacts/vcard:vcard">
      <div class="contact">
       <xsl:apply-templates select="."/>
      </div>
     </xsl:for-each>
    </div>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>