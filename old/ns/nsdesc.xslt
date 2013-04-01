<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: nsdesc.xslt 778 2012-08-09 14:19:36Z dret $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
 xmlns:nsdesc="http://ns.emc.com/schema/nsdesc"
 xmlns:vcard="urn:ietf:params:xml:ns:vcard-4.0"
 xpath-default-namespace="http://ns.emc.com/schema/nsdesc">
 <xsl:output method="xml" indent="yes"/>
 <xsl:variable name="version" select="'$Id: nsdesc.xslt 778 2012-08-09 14:19:36Z dret $'"/>
 <!-- Name for XML index files. -->
 <xsl:variable name="xml-index" select="'index.xml'"/>
 <!-- Named output declaration used for all generated XML files. -->
 <xsl:output name="xml" encoding="UTF-8" indent="yes" method="xml" omit-xml-declaration="no"/>
 <!-- Base URI for all URI-based names assigned to registered entries. -->
 <xsl:param name="ns-root" select="'http://dret.net/ns/'"/>
 <!-- Prefix for all vendor-specific media types. -->
 <xsl:param name="subtype-prefix" select="'vnd.emc.'"/>
 <!-- The name of the subtree for contacts. -->
 <xsl:param name="external" select="'external'"/>
 <!-- Creates an enriched submission list of all approved submissions. -->
 <xsl:variable name="nsdescs">
  <xsl:for-each select="/nsdescs/nsdesc">
   <xsl:if test="(exists(@approved) and empty(@approver)) or (empty(@approved) and exists(@approver))">
    <xsl:message terminate="yes">
     <xsl:value-of select="@href"/>
     <xsl:text> in submission list: @approved and @approver must appear together.</xsl:text>
    </xsl:message>
   </xsl:if>
   <xsl:if test="exists(@approver) and empty(/nsdescs/approver[@xml:id eq current()/@approver])">
    <xsl:message terminate="yes">
     <xsl:value-of select="@href"/>
     <xsl:text> in submission list: No such @approver="</xsl:text>
     <xsl:value-of select="@approver"/>
     <xsl:text>"</xsl:text>
    </xsl:message>
   </xsl:if>
   <nsdesc:nsdesc>
    <xsl:copy-of select="@href, @submitted, @approved, @approver"/>
    <xsl:for-each select="document(@href)/nsdesc">
     <xsl:attribute name="name" select="*[last()]/@name"/>
     <xsl:attribute name="type" select="local-name(*[last()])"/>
     <!-- Setting the context to the description document's document element. -->
     <xsl:variable name="base-path">
      <xsl:choose>
       <xsl:when test="exists(schema)">schema</xsl:when>
       <xsl:when test="exists(mediatype)">mediatype</xsl:when>
       <xsl:when test="exists(linkrel)">linkrel</xsl:when>
       <xsl:when test="exists(profile)">profile</xsl:when>
       <xsl:when test="exists(authority)">authority</xsl:when>
      </xsl:choose>
      <xsl:text>/</xsl:text>
      <xsl:choose>
       <xsl:when test="exists(schema)"><xsl:value-of select="schema/@name"/></xsl:when>
       <xsl:when test="exists(mediatype)"><xsl:value-of select="mediatype/@type"/>/<xsl:value-of select="mediatype/@subtype"/></xsl:when>
       <xsl:when test="exists(linkrel)"><xsl:value-of select="linkrel/@name"/></xsl:when>
       <xsl:when test="exists(profile)"><xsl:value-of select="profile/@name"/></xsl:when>
       <xsl:when test="exists(authority)"><xsl:value-of select="authority/@name"/></xsl:when>
      </xsl:choose>
     </xsl:variable>
     <xsl:attribute name="base-path" select="$base-path"/>
     <xsl:copy-of select="@*"/>
     <xsl:copy-of select="*"/>
    </xsl:for-each>
   </nsdesc:nsdesc>
  </xsl:for-each>
 </xsl:variable>
 <xsl:template match="/">
  <!--<xsl:copy-of select="$nsdescs"/>-->
  <xsl:value-of select="concat('Processing ', count($nsdescs/nsdesc), ' namespace descriptions...')"/>
  <xsl:for-each select="$nsdescs/nsdesc">
    <xsl:result-document href="{@base-path}/index.xml" format="xml">
     <xsl:apply-templates select="doc(@href)/*"/>
    </xsl:result-document>
  </xsl:for-each>
 </xsl:template>
 <xsl:template match="@*|node()">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 <xsl:template match="nsdesc">
  <xsl:call-template name="generated-header"/>
  <xsl:processing-instruction name="xml-stylesheet">href="../../nsdesc2html.xslt" type="text/xsl"</xsl:processing-instruction>
  <xsl:text>&#xa;</xsl:text>
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 <xsl:template name="generated-header">
  <xsl:comment>
   <xsl:text> Generated on </xsl:text>
   <xsl:value-of select="current-dateTime()"/>
   <xsl:text> by </xsl:text>
   <xsl:value-of select="$version"/>
   <xsl:text> </xsl:text>
  </xsl:comment>
  <xsl:text>&#xa;</xsl:text>
 </xsl:template>
</xsl:stylesheet>