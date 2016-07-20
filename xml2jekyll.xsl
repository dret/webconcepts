<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/HTML5-overview into a jekyll site. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns:sedola="http://github.com/dret/sedola">
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
            <xsl:text>layout: page&#xa;</xsl:text>
            <xsl:text>title:  "Web Concept Specifications: Organizations"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>This is a list of all organizations and their specification series that are currently used to compile the list of Web Concepts.&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$specs/specs/organization">
                <xsl:sort select="name"/>
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
                <xsl:for-each select="series">
                    <xsl:sort select="name"/>
                    <xsl:text>  * [</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:if test="exists(name/@short)">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="name/@short"/>
                        <xsl:text>)</xsl:text>
                    </xsl:if>
                    <xsl:text>](</xsl:text>
                    <xsl:value-of select="concat(../@id, '/', @id)"/>
                    <xsl:text>) Series: </xsl:text>
                    <xsl:value-of select="count(collection(concat($specs-dir, '/', ../@id, '/', @id,'?select=*.xml')))"/>
                    <xsl:text> Specifications&#xa;</xsl:text>
                </xsl:for-each>
                <xsl:result-document href="{$specs-dir}/{@id}/index.md" format="jekyll">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout: page&#xa;</xsl:text>
                    <xsl:text>title:  "</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:text>: Specifications"&#xa;</xsl:text>
                    <xsl:text>---&#xa;&#xa;</xsl:text>
                    <xsl:for-each select="series">
                        <xsl:sort select="name"/>
                        <xsl:variable name= "services" select="collection(concat($specs-dir, '/', ../@id, '/', @id,'?select=*.xml'))"/>
                        <xsl:text>  * [</xsl:text>
                        <xsl:value-of select="name"/>
                        <xsl:if test="exists(name/@short)">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="name/@short"/>
                            <xsl:text>)</xsl:text>
                        </xsl:if>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="@id"/>
                        <xsl:text>) Series: </xsl:text>
                        <xsl:value-of select="count($services)"/>
                        <xsl:text> Specifications&#xa;</xsl:text>
                        <xsl:result-document href="{$specs-dir}/{../@id}/{@id}/index.md" format="jekyll">
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout: page&#xa;</xsl:text>
                            <xsl:text>title:  "</xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:text> Series"&#xa;</xsl:text>
                            <xsl:text>---&#xa;&#xa;</xsl:text>
                            <xsl:text>There are currently </xsl:text>
                            <xsl:value-of select="count($services)"/>
                            <xsl:text> listed specifications in the [</xsl:text>
                            <xsl:value-of select="../name"/>
                            <xsl:if test="exists(../name/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="../name/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                            <xsl:text>](..)'s </xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:if test="exists(name/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="name/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                            <xsl:text> series.&#xa;&#xa;</xsl:text>
                            <xsl:variable name="series" select="."/>
                            <xsl:for-each select="collection(concat($specs-dir, '/', ../@id, '/', @id,'?select=*.xml'))/sedola:service">
                                <xsl:sort select="sedola:title"/>
                                <xsl:variable name="id" select="replace(@id, $series/uri-pattern, '$1')"/>
                                <xsl:choose>
                                    <xsl:when test="$id eq @id">
                                        <xsl:message select="concat('Non-matching service id: ', @id)"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>  * [</xsl:text>
                                        <xsl:value-of select="sedola:title"/>
                                        <xsl:text>](</xsl:text>
                                        <xsl:value-of select="$id"/>
                                        <xsl:text>)&#xa;</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:result-document href="{$specs-dir}/{$series/../@id}/{$series/@id}/{$id}.md" format="jekyll">
                                    <xsl:text>---&#xa;</xsl:text>
                                    <xsl:text>layout: page&#xa;</xsl:text>
                                    <xsl:text>title:  "</xsl:text>
                                    <xsl:value-of select="sedola:title"/>
                                    <xsl:text>"&#xa;</xsl:text>
                                    <xsl:text>---&#xa;&#xa;</xsl:text>
                                    <xsl:text>| Canonical Name | </xsl:text>
                                    <xsl:value-of select="replace($id, '^(..*)$', $series/uri-pattern/@name-pattern)"/>
                                    <xsl:text>&#xa;</xsl:text>
                                    <xsl:text>| Online Version | [`</xsl:text>
                                    <xsl:value-of select="replace($id, '^(..*)$', $series/uri-pattern/@url-pattern)"/>
                                    <xsl:text>`](</xsl:text>
                                    <xsl:value-of select="replace($id, '^(..*)$', $series/uri-pattern/@url-pattern)"/>
                                    <xsl:text>)&#xa;</xsl:text>
                                    <xsl:text>| Organization | [</xsl:text>
                                    <xsl:value-of select="$series/../name"/>
                                    <xsl:if test="exists($series/../name/@short)">
                                        <xsl:text> (</xsl:text>
                                        <xsl:value-of select="$series/../name/@short"/>
                                        <xsl:text>)</xsl:text>
                                    </xsl:if>
                                    <xsl:text>](..)&#xa;</xsl:text>
                                    <xsl:text>| Series | [</xsl:text>
                                    <xsl:value-of select="$series/name"/>
                                    <xsl:if test="exists($series/name/@short)">
                                        <xsl:text> (</xsl:text>
                                        <xsl:value-of select="$series/name/@short"/>
                                        <xsl:text>)</xsl:text>
                                    </xsl:if>
                                    <xsl:text>](.)&#xa;</xsl:text>
                                    <xsl:text>| Abstract | </xsl:text>
                                    <xsl:value-of select="sedola:documentation/text()"/>
                                </xsl:result-document>
                            </xsl:for-each>
                        </xsl:result-document>
                    </xsl:for-each>
                </xsl:result-document>
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