<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="include.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="." mode="include"/>
    </xsl:template>
</xsl:stylesheet>