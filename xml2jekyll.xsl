<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/HTML5-overview into a jekyll site. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output name="jekyll" method="text" encoding="UTF-8"/>
    <!-- -->
    <xsl:variable name="specs-dir" select="'specs'"/>
    <xsl:variable name="specs" select="document(concat($specs-dir, '/specs.xml'))"/>
    <!-- -->
    <xsl:variable name="concepts-dir" select="'concepts'"/>
    <xsl:variable name="concepts" select="document(concat($concepts-dir, '/concepts.xml'))"/>
    <!-- -->
    <xsl:template match="/">
        <xsl:result-document href="{$specs-dir}/index.md" format="jekyll">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout:      page&#xa;</xsl:text>
            <xsl:text>title:       "Web Concept Specifications: Organizations"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$specs/specs/organization">
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:if test="exists(name/@short)">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="name/@short"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
                <xsl:text>](</xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text>)&#xa;</xsl:text>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:result-document href="{$concepts-dir}/index.md" format="jekyll">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout:      page&#xa;</xsl:text>
            <xsl:text>title:       "Web Concepts: Overview"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>