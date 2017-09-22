<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    This XSLT is the starting point to transform https://github.com/dret/webconcepts
    This XSLT should be used to generate Jekyll MD and JSON from the XML sources.
    It ignores the input file to the transformation; usually it will transform itself.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <!-- -->
    <xsl:variable name="specs-dir" select="'specs'"/>
    <xsl:variable name="specs-src" select="'src'"/>
    <xsl:variable name="specs" select="document('specs.xml')"/>
    <xsl:variable name="allspecs" select="collection(concat($specs-src, '/specs/?select=*.xml'))"/>
    <!-- -->
    <xsl:variable name="concepts-dir" select="'concepts'"/>
    <xsl:variable name="concepts" select="document('concepts.xml')"/>
    <!-- -->
    <xsl:include href="xml2jekyll.xsl"/>
    <xsl:include href="xml2json.xsl"/>
    <!-- -->
    <xsl:template match="/">
        <xsl:call-template name="xml2jekyll"/>
        <xsl:call-template name="xml2json"/>
    </xsl:template>
</xsl:stylesheet>