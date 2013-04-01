<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: nsdesc.xslt 754 2012-04-20 20:52:54Z dret $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:vcard="urn:ietf:params:xml:ns:vcard-4.0" xmlns="http://www.w3.org/1999/xhtml">
 <xsl:template match="vcard:vcard">
  <div class="vcard">
   <span class="contact-line">
    <xsl:text>Name: </xsl:text>
    <span class="fn">
     <xsl:value-of select="vcard:fn/vcard:text/text()"/>
    </span>
    <xsl:if test="vcard:n">
     <xsl:text> (</xsl:text>
     <span class="n">
      <span class="family-name">
       <xsl:value-of select="vcard:n/vcard:surname/text()"/>
      </span>
      <xsl:text>, </xsl:text>
      <span class="given-name">
       <xsl:value-of select="vcard:n/vcard:given/text()"/>
      </span>
     </span>
     <xsl:text>)</xsl:text>
    </xsl:if>
    <xsl:if test="vcard:nickname">
     <xsl:text> a.k.a. </xsl:text>
     <span class="nickname">
      <xsl:value-of select="vcard:nickname/vcard:text/text()"/>
     </span>
    </xsl:if>
   </span>
   <xsl:if test="vcard:email">
     <span class="contact-line">
      <xsl:text>E-mail: </xsl:text>
      <xsl:for-each select="vcard:email">
       <a class="email" title="{vcard:parameters/vcard:type/vcard:text/text()}" href="mailto:{vcard:text/text()}">
        <xsl:value-of select="vcard:text/text()"/>
       </a>
       <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
       </xsl:if>
      </xsl:for-each>
     </span>
    </xsl:if>
   <xsl:if test="vcard:url">
    <span class="contact-line">
     <xsl:text>Web: </xsl:text>
     <xsl:for-each select="vcard:url">
      <a class="url" title="{vcard:parameters/vcard:type/vcard:text/text()}" href="{vcard:uri/text()}">
       <xsl:value-of select="vcard:uri/text()"/>
      </a>
      <xsl:if test="position() != last()">
       <xsl:text>, </xsl:text>
      </xsl:if>
     </xsl:for-each>
    </span>
   </xsl:if>
   <xsl:if test="vcard:tel">
    <span class="contact-line">
     <xsl:text>Phone: </xsl:text>
     <xsl:for-each select="vcard:tel">
      <a class="tel" title="{vcard:parameters/vcard:type/vcard:text/text()}" href="{vcard:uri/text()}">
       <xsl:value-of select="vcard:uri/text()"/>
      </a>
      <xsl:if test="position() != last()">
       <xsl:text>, </xsl:text>
      </xsl:if>
     </xsl:for-each>
    </span>
   </xsl:if>
  </div>
 </xsl:template>
</xsl:stylesheet>