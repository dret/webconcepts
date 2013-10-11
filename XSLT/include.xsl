<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="@* | node()" mode="include">
        <xsl:variable name="include-all">
            <xsl:copy>
                <xsl:apply-templates select="@*|node()" mode="include-all"/>
            </xsl:copy>
        </xsl:variable>
        <xsl:apply-templates select="$include-all" mode="include-dedup"/>
    </xsl:template>
    <xsl:template match="@* | node()" mode="include-all">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="include-all"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="service" mode="include-all">
        <xsl:copy>
            <xsl:attribute name="src" select="document-uri(/)"/>
            <xsl:apply-templates select="@*|node()" mode="include-all"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="include" mode="include-all">
        <xsl:variable name="include" select="doc(resolve-uri(@href, document-uri(/)))"/>
        <xsl:apply-templates select="$include" mode="include-all"/>
    </xsl:template>
    <xsl:template match="@* | node()" mode="include-dedup">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="include-dedup"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="service" mode="include-dedup">
        <!-- only include service if there is it is the last copy of included services from the same location (de-duplication). -->
        <xsl:if test="empty(following::service[@src eq current()/@src])">
            <xsl:copy>
                <xsl:apply-templates select="@*|node()" mode="include-dedup"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>