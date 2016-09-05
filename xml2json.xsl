<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/webconcepts into JSON. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns:sedola="http://github.com/dret/sedola">
    <xsl:output name="json" method="text" encoding="UTF-8"/>
    <!-- -->
    <xsl:template name="xml2json">
        <xsl:result-document href="{$concepts-dir}/concepts.json" format="json">
            <xsl:text>{&#xa;</xsl:text>
            <xsl:for-each select="$concepts/concepts/concept">
                <xsl:sort select="@id"/>
                <xsl:variable name="concept" select="."/>
                <xsl:value-of select="concat(' &quot;', @id, '&quot;: {&#xa;')"/>
                <xsl:text>  "id": </xsl:text>
                <xsl:value-of select="concat('&quot;http://webconcepts.info/', $concepts-dir, '/', filename-plural, '&quot;,&#xa;')"/>
                <xsl:text>  "name-singular": </xsl:text>
                <xsl:value-of select="concat('&quot;', title-singular, '&quot;,&#xa;')"/>
                <xsl:text>  "name-plural": </xsl:text>
                <xsl:value-of select="concat('&quot;', title-plural, '&quot;,&#xa;')"/>
                <xsl:text>  "concepts": [</xsl:text>
                <xsl:for-each select="distinct-values($allspecs//sedola:*[local-name() eq $concept/@id]/@def)">
                    <xsl:sort select="."/>
                    <xsl:text>{&#xa;   </xsl:text>
                    <xsl:variable name="concept-name" select="."/>
                    <xsl:value-of select="concat('&quot;', $concept-name, '&quot;: {&#xa;')"/>
                    <xsl:text>    "id": </xsl:text>
                    <xsl:value-of select="concat('&quot;http://webconcepts.info/', $concepts-dir, '/', $concept/filename-singular, '/', $concept-name, '&quot;,&#xa;')"/>
                    <xsl:text>    "details": [</xsl:text>
                    <xsl:for-each select="$allspecs/sedola:service/sedola:*[local-name() eq $concept/@id][@def eq $concept-name]">
                        <xsl:sort select="replace(replace(current()/../@id, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/id-pattern, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/md-pattern), '^(..*)$', $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/name-pattern)"/>
                        <xsl:text>{&#xa;</xsl:text>
                        <xsl:text>     "description": </xsl:text>
                        <xsl:value-of select="concat('&quot;', replace(sedola:documentation/text(), '&quot;', '\\&quot;'), '&quot;,&#xa;')"/>
                        <xsl:text>     "documentation": </xsl:text>
                        <xsl:value-of select="concat('&quot;', sedola:documentation/@source, '&quot;,&#xa;')"/>
                        <xsl:text>     "specification": </xsl:text>
                        <xsl:variable name="secondary" select="$specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]"/>
                        <xsl:variable name="id" select="replace(current()/../@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                        <xsl:value-of select="concat('&quot;http://webconcepts.info/', $specs-dir, '/', $secondary/../@id, '/', $secondary/@id, '/', $id, '&quot; }')"/>
                        <xsl:if test="position() ne last()">
                            <xsl:text>,</xsl:text>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:text>]}}</xsl:text>
                    <xsl:if test="position() ne last()">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                </xsl:for-each>
                <xsl:text>]}</xsl:text>
                <xsl:if test="position() ne last()">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>&#xa;</xsl:text>
            </xsl:for-each>
            <xsl:text>}</xsl:text>
        </xsl:result-document>
        <xsl:result-document href="{$specs-dir}/specs.json" format="json">
            <xsl:text>{&#xa;</xsl:text>
            <xsl:for-each-group select="$allspecs/sedola:service" group-by="@primary">
                <xsl:sort select="@primary"/>
                <xsl:variable name="primary" select="$specs/specs/primary[@id eq current()/@primary]"/>
                <xsl:value-of select="concat(' &quot;', @primary, '&quot;: {&#xa;')"/>
                <xsl:text>  "id": </xsl:text>
                <xsl:value-of select="concat('&quot;http://webconcepts.info/', $specs-dir, '/', $primary/@id, '/&quot;,&#xa;')"/>
                <xsl:text>  "name": </xsl:text>
                <xsl:value-of select="concat('&quot;', $primary/name, '&quot;,&#xa;')"/>
                <xsl:if test="exists($primary/name/@short)">
                    <xsl:text>  "short": </xsl:text>
                    <xsl:value-of select="concat('&quot;', $primary/name/@short, '&quot;,&#xa;')"/>
                </xsl:if>
                <xsl:text>  "series": [</xsl:text>
                <xsl:for-each-group select="current-group()" group-by="@secondary">
                    <xsl:sort select="@secondary"/>
                    <xsl:variable name="secondary" select="$primary/secondary[@id eq current()/@secondary]"/>
                    <xsl:value-of select="concat('{&#xa;   &quot;', @secondary, '&quot;: {&#xa;')"/>
                    <xsl:text>    "id": </xsl:text>
                    <xsl:value-of select="concat('&quot;http://webconcepts.info/', $specs-dir, '/', $primary/@id, '/', $secondary/@id, '/&quot;,&#xa;')"/>
                    <xsl:text>    "name": </xsl:text>
                    <xsl:value-of select="concat('&quot;', $secondary/name, '&quot;,&#xa;')"/>
                    <xsl:if test="exists($secondary/name/@short)">
                        <xsl:text>    "short": </xsl:text>
                        <xsl:value-of select="concat('&quot;', $secondary/name/@short, '&quot;,&#xa;')"/>
                    </xsl:if>
                    <xsl:text>    "specs": [</xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="@id"/>
                        <xsl:if test="count($specs/specs/primary[@id eq current()/@primary]) ne 1">
                            <xsl:message terminate="yes" select="concat('Non-matching service/@primary: ', current()/@primary)"/>
                        </xsl:if>
                        <xsl:if test="count($specs/specs/primary[@id eq current()/@primary]/secondary[@id eq current()/@secondary]) ne 1">
                            <xsl:message terminate="yes" select="concat('Non-matching service/@secondary: ', current()/@primary, '/', current()/@secondary)"/>
                        </xsl:if>
                        <xsl:if test="not(matches(@id, $secondary/id-pattern))">
                            <xsl:message terminate="yes" select="concat('Non-matching service/@id: ', $primary, '/', $secondary, '/', @id)"/>
                        </xsl:if>
                        <xsl:variable name="id" select="replace(@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                        <xsl:value-of select="concat('{&#xa;     &quot;', @id, '&quot;: {&#xa;')"/>
                        <xsl:text>      "id": </xsl:text>
                        <xsl:value-of select="concat('&quot;http://webconcepts.info/', $specs-dir, '/', $primary/@id, '/', $secondary/@id, '/', $id, '&quot;,&#xa;')"/>
                        <xsl:text>      "title": </xsl:text>
                        <xsl:value-of select="concat('&quot;', replace(sedola:title, '&quot;', '\\&quot;'), '&quot;,&#xa;')"/>
                        <xsl:text>      "name": </xsl:text>
                        <xsl:value-of select="concat('&quot;', replace(replace($id, '^(..*)$', $secondary/name-pattern), '&quot;', '\\&quot;'), '&quot;,&#xa;')"/>
                        <xsl:if test="exists($secondary/uri-pattern)">
                            <xsl:text>      "URI": </xsl:text>
                            <xsl:value-of select="concat('&quot;', replace(@id, $secondary/id-pattern, $secondary/uri-pattern), '&quot;,&#xa;')"/>
                        </xsl:if>
                        <xsl:text>      "URL": </xsl:text>
                        <xsl:value-of select="concat('&quot;', replace(@id, $secondary/id-pattern, $secondary/url-pattern), '&quot;,&#xa;')"/>
                        <xsl:text>      "abstract": </xsl:text>
                        <xsl:value-of select="concat('&quot;', replace(sedola:documentation/text(), '&quot;', '\\&quot;'), '&quot;,&#xa;')"/>
                        <xsl:text>      "concepts": [</xsl:text>
                        <xsl:for-each select="sedola:*[local-name() = $concepts/concepts/concept/@id]">
                            <xsl:sort select="$concepts//concept[@id eq current()/local-name()]/@id"/>
                            <xsl:sort select="@def"/>
                            <xsl:variable name="concept-id" select="$concepts//concept[@id eq current()/local-name()]/@id"/>
                            <xsl:text>{&#xa;       "</xsl:text>
                            <xsl:value-of select="$concept-id"/>
                            <xsl:text>": "</xsl:text>
                            <xsl:value-of select="@def"/>
                            <xsl:text>" }</xsl:text>
                            <xsl:if test="position() ne last()">
                                <xsl:text>, </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:text>]}}</xsl:text>
                        <xsl:if test="position() ne last()">
                            <xsl:text>,</xsl:text>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:text>]}}</xsl:text>
                    <xsl:if test="position() ne last()">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                </xsl:for-each-group>
                <xsl:text>]}</xsl:text>
                <xsl:if test="position() ne last()">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>&#xa;</xsl:text>
            </xsl:for-each-group>
            <xsl:text>}</xsl:text>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>