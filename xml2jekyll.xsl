<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/webconcepts into a jekyll site. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns:sedola="http://github.com/dret/sedola">
    <xsl:output name="jekyll" method="text" encoding="UTF-8"/>
    <!-- -->
    <xsl:variable name="specs-dir" select="'specs'"/>
    <xsl:variable name="specs" select="document(concat($specs-dir, '/specs.xml'))"/>
    <xsl:variable name="allspecs" select="collection(concat($specs-dir, '/src/?select=*.xml'))"/>
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
            <xsl:text>This is a list of all organizations and their specification series that are currently used to compile the list of [Web Concepts](../concepts).&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$specs/specs/primary">
                <xsl:sort select="name"/>
                <xsl:variable name="primary" select="."/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:if test="exists(name/@short)">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="name/@short"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
                <xsl:text>](</xsl:text>
                <xsl:value-of select="$primary/@id"/>
                <xsl:text>): </xsl:text>
                <xsl:variable name="primary-specs-count" select="count($allspecs/sedola:service[@primary eq $primary/@id])"/>
                <xsl:value-of select="$primary-specs-count"/>
                <xsl:text> Specifications&#xa;</xsl:text>
                <xsl:for-each select="secondary">
                    <xsl:sort select="name"/>
                    <xsl:variable name="secondary" select="."/>
                    <xsl:text>  * [</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:if test="exists(name/@short)">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="name/@short"/>
                        <xsl:text>)</xsl:text>
                    </xsl:if>
                    <xsl:text> Series](</xsl:text>
                    <xsl:value-of select="concat($primary/@id, '/', $secondary/@id)"/>
                    <xsl:text> "Series overview"): </xsl:text>
                    <xsl:value-of select="count($allspecs/sedola:service[@primary eq $primary/@id][@secondary eq $secondary/@id])"/>
                    <xsl:text> Specifications&#xa;</xsl:text>
                </xsl:for-each>
                <xsl:result-document href="{$specs-dir}/{$primary/@id}/index.md" format="jekyll">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout: page&#xa;</xsl:text>
                    <xsl:text>title:  "</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:text>: Specification Series"&#xa;</xsl:text>
                    <xsl:text>---&#xa;&#xa;</xsl:text>
                    <xsl:text>Here is a list of all specification series by the [</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:if test="exists(name/@short)">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="name/@short"/>
                        <xsl:text>)</xsl:text>
                    </xsl:if>
                    <xsl:text>](</xsl:text>
                    <xsl:value-of select="@href"/>
                    <xsl:text>) that are currently available, for a total of </xsl:text>
                    <xsl:value-of select="$primary-specs-count"/>
                    <xsl:text> specifications:&#xa;&#xa;</xsl:text>
                    <xsl:for-each select="secondary">
                        <xsl:sort select="name"/>
                        <xsl:variable name="secondary" select="."/>
                        <xsl:variable name="services" select="$allspecs/sedola:service[@primary eq $primary/@id][@secondary eq $secondary/@id]"/>
                        <xsl:text>  * [</xsl:text>
                        <xsl:value-of select="name"/>
                        <xsl:if test="exists(name/@short)">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="name/@short"/>
                            <xsl:text>)</xsl:text>
                        </xsl:if>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="$secondary/@id"/>
                        <xsl:text>) Series: </xsl:text>
                        <xsl:value-of select="count($services)"/>
                        <xsl:text> Specifications&#xa;</xsl:text>
                        <xsl:result-document href="{$specs-dir}/{$primary/@id}/{$secondary/@id}/index.md" format="jekyll">
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout: page&#xa;</xsl:text>
                            <xsl:text>title:  "</xsl:text>
                            <xsl:choose>
                                <xsl:when test="exists(../name/@short)">
                                    <xsl:value-of select="../name/@short"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="../name"/>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:text> </xsl:text>
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
                            <xsl:for-each select="$services">
                                <xsl:sort select="sedola:title"/>
                                <xsl:if test="not(matches(@id, $secondary/id-pattern))">
                                    <xsl:message terminate="yes" select="concat('Non-matching service/@id: ', $primary, '/', $secondary, '/', @id)"/>
                                </xsl:if>
                                <xsl:variable name="id" select="replace(@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                                <xsl:text>  * [</xsl:text>
                                <xsl:value-of select="sedola:title"/>
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                                <xsl:text>)](</xsl:text>
                                <xsl:value-of select="$id"/>
                                <xsl:text>)&#xa;</xsl:text>
                            </xsl:for-each>
                        </xsl:result-document>
                    </xsl:for-each>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:result-document href="{$concepts-dir}/index.md" format="jekyll">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout: page&#xa;</xsl:text>
            <xsl:text>title:  "Web Concepts: Overview"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>This is an overview of </xsl:text>
            <xsl:value-of select="count($concepts/concepts/concept)"/>
            <xsl:text> Web Concepts (with a total of </xsl:text>
            <xsl:value-of select="count(distinct-values($allspecs//sedola:*[local-name() = $concepts/concepts/concept/@id]/@def))"/>
            <xsl:text> distinct entries) that have been harvested from all [available specifications](/</xsl:text>
            <xsl:value-of select="$specs-dir"/>
            <xsl:text>):&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$concepts/concepts/concept">
                <xsl:sort select="title-plural"/>
                <xsl:variable name="concept" select="."/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="title-plural"/>
                <xsl:text>](</xsl:text>
                <xsl:value-of select="filename-plural"/>
                <xsl:text>) (</xsl:text>
                <xsl:value-of select="count(distinct-values($allspecs//sedola:*[local-name() eq current()/@id]/@def))"/>
                <xsl:text> entries)&#xa;</xsl:text>
                <xsl:result-document href="{$concepts-dir}/{filename-plural}.md" format="jekyll">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout:    page&#xa;</xsl:text>
                    <xsl:text>title:     "</xsl:text>
                    <xsl:value-of select="title-plural"/>
                    <xsl:text>"&#xa;</xsl:text>
                    <xsl:text>permalink: </xsl:text>
                    <xsl:value-of select="concat('/', $concepts-dir, '/', filename-plural)"/>
                    <xsl:text>&#xa;</xsl:text>
                    <xsl:text>---&#xa;&#xa;</xsl:text>
                    <xsl:text>&#xa;&#xa;The following </xsl:text>
                    <xsl:value-of select="count($allspecs//sedola:*[local-name() eq $concept/@id]/@def)"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="$concept/title-singular/text()"/>
                    <xsl:text> definitions (</xsl:text>
                    <xsl:value-of select="count(distinct-values($allspecs//sedola:*[local-name() eq $concept/@id]/@def))"/>
                    <xsl:text> distinct values) were found in [all available `webconcepts.info` specifications](/</xsl:text>
                    <xsl:value-of select="$specs-dir"/>
                    <xsl:text>). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official </xsl:text>
                    <xsl:value-of select="$concept/title-singular/text()"/>
                    <xsl:text> registry](</xsl:text>
                    <xsl:value-of select="$concept/iana-registry/text()"/>
                    <xsl:text>) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).&#xa;&#xa;</xsl:text>
                    <xsl:value-of select="$concept/title-singular/text()"/>
                    <xsl:text> | Specification&#xa;-------: | :-------&#xa;</xsl:text>
                    <xsl:for-each select="distinct-values($allspecs//sedola:*[local-name() eq $concept/@id]/@def)">
                        <xsl:sort select="."/>
                        <xsl:variable name="concept-name" select="."/>
                        <xsl:text>[`</xsl:text>
                        <xsl:value-of select="$concept-name"/>
                        <xsl:variable name="desc" select="$allspecs//sedola:*[local-name() eq $concept/@id][@def eq $concept-name][1]/@desc"/>
                        <xsl:if test="exists($desc)">
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="$desc"/>
                        </xsl:if>
                        <xsl:text>`](</xsl:text>
                        <xsl:value-of select="concat('/', $concepts-dir, '/', $concept/filename-singular, '/', $concept-name)"/>
                        <xsl:variable name="number-of-defs" select="count($allspecs//sedola:*[local-name() eq $concept/@id][@def eq $concept-name])"/>
                        <xsl:if test="$number-of-defs gt 1">
                            <xsl:text> "</xsl:text>
                            <xsl:value-of select="$number-of-defs"/>
                            <xsl:text> definitions"</xsl:text>
                        </xsl:if>
                        <xsl:text>)</xsl:text>
                        <xsl:text> | </xsl:text>
                        <xsl:for-each select="$allspecs/sedola:service[sedola:*[local-name() eq $concept/@id][@def eq $concept-name]]">
                            <xsl:sort select="sedola:title/text()"/>
                            <xsl:text>[**</xsl:text>
                            <xsl:variable name="secondary" select="$specs/specs/primary[@id eq current()/@primary]/secondary[@id eq current()/@secondary]"/>
                            <xsl:variable name="id" select="replace(current()/@id, $secondary/id-pattern, '$1')"/>
                            <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                            <xsl:text>**: </xsl:text>
                            <xsl:value-of select="sedola:title/text()"/>
                            <xsl:text>](</xsl:text>
                            <xsl:value-of select="concat('/', $specs-dir, '/', $secondary/../@id, '/', $secondary/@id, '/', $id)"/>
                            <xsl:text> "</xsl:text>
                            <xsl:value-of select="replace(sedola:documentation/text(), '&quot;', '&amp;#34;')"/>
                            <xsl:text>")</xsl:text>
                            <xsl:choose>
                                <xsl:when test="position() ne last()">
                                    <xsl:text>&lt;br/></xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>&#xa;</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                        <xsl:result-document href="{$concepts-dir}/{$concept/filename-singular}/{$concept-name}.md" format="jekyll">
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout: page&#xa;</xsl:text>
                            <xsl:text>title:  "</xsl:text>
                            <xsl:value-of select="$concept/title-singular/text()"/>
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="$concept-name"/>
                            <xsl:if test="exists($desc)">
                                <xsl:text>: </xsl:text>
                                <xsl:value-of select="$desc"/>
                            </xsl:if>
                            <xsl:text>"&#xa;</xsl:text>
                            <xsl:text>---&#xa;&#xa;</xsl:text>
                            <xsl:for-each select="$allspecs/sedola:service/sedola:*[local-name() eq $concept/@id][@def eq $concept-name]">
                                <xsl:sort select="replace(replace(current()/../@id, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/id-pattern, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/md-pattern), '^(..*)$', $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/name-pattern)"/>
                                <xsl:text>**[</xsl:text>
                                <xsl:variable name="secondary" select="$specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]"/>
                                <xsl:variable name="id" select="replace(current()/../@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                                <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                                <xsl:text>: </xsl:text>
                                <xsl:value-of select="../sedola:title/text()"/>
                                <xsl:text>](</xsl:text>
                                <xsl:value-of select="concat('/', $specs-dir, '/', $secondary/../@id, '/', $secondary/@id, '/', $id)"/>
                                <xsl:text> "</xsl:text>
                                <xsl:value-of select="replace(../sedola:documentation/text(), '&quot;', '&amp;#34;')"/>
                                <xsl:text>"):** </xsl:text>
                                <xsl:text>[</xsl:text>
                                <xsl:value-of select="sedola:documentation"/>
                                <xsl:text>](</xsl:text>
                                <xsl:value-of select="sedola:documentation/@source"/>
                                <xsl:text> "Read documentation for </xsl:text>
                                <xsl:value-of select="concat($concept/title-singular/text(), ' &amp;#34;', $concept-name)"/>
                                <xsl:text>&amp;#34;")&#xa;&#xa;</xsl:text>
                            </xsl:for-each>
                            <xsl:text>&lt;br/>&#xa;&lt;hr/>&#xa;&#xa;</xsl:text>
                            <xsl:text>&lt;p style="text-align: right">Return to list of all ( &lt;a href="../</xsl:text>
                            <xsl:value-of select="$concept/filename-plural/text()"/>
                            <xsl:text>"></xsl:text>
                            <xsl:value-of select="$concept/title-plural/text()"/>
                            <xsl:text>&lt;/a> | &lt;a href="../">Web Concepts&lt;/a> )&lt;/p></xsl:text>
                        </xsl:result-document>
                    </xsl:for-each>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:for-each select="$allspecs/sedola:service">
            <xsl:sort select="sedola:title"/>
            <xsl:if test="count($specs/specs/primary[@id eq current()/@primary]) ne 1">
                <xsl:message terminate="yes" select="concat('Non-matching service/@primary: ', current()/@primary)"/>
            </xsl:if>
            <xsl:if test="count($specs/specs/primary[@id eq current()/@primary]/secondary[@id eq current()/@secondary]) ne 1">
                <xsl:message terminate="yes" select="concat('Non-matching service/@secondary: ', current()/@primary, '/', current()/@secondary)"/>
            </xsl:if>
            <xsl:variable name="primary" select="$specs/specs/primary[@id eq current()/@primary]"/>
            <xsl:variable name="secondary" select="$primary/secondary[@id eq current()/@secondary]"/>
            <xsl:if test="not(matches(@id, $secondary/id-pattern))">
                <xsl:message terminate="yes" select="concat('Non-matching service/@id: ', $primary, '/', $secondary, '/', @id)"/>
            </xsl:if>
            <xsl:variable name="id" select="replace(@id, $secondary/id-pattern, $secondary/md-pattern)"/>
            <xsl:result-document href="{$specs-dir}/{$primary/@id}/{$secondary/@id}/{$id}.md" format="jekyll">
                <xsl:text>---&#xa;</xsl:text>
                <xsl:text>layout: page&#xa;</xsl:text>
                <xsl:text>title:  "</xsl:text>
                <xsl:value-of select="replace(sedola:title, '&quot;', '\\&quot;')"/>
                <xsl:text>"&#xa;</xsl:text>
                <xsl:text>---&#xa;&#xa;</xsl:text>
                <xsl:text>| *Document&#160;Name:* | </xsl:text>
                <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:text>| *Document&#160;URI:* | `</xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text>`&#xa;</xsl:text>
                <xsl:text>| *Online&#160;Version:* | [`</xsl:text>
                <xsl:value-of select="replace(@id, $secondary/id-pattern, $secondary/url-pattern)"/>
                <xsl:text>`](</xsl:text>
                <xsl:value-of select="replace(@id, $secondary/id-pattern, $secondary/url-pattern)"/>
                <xsl:text>)&#xa;</xsl:text>
                <xsl:text>| *Organization:* | [</xsl:text>
                <xsl:value-of select="$primary/name"/>
                <xsl:if test="exists($primary/name/@short)">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="$primary/name/@short"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
                <xsl:text>](..  "List of specification series by this organization")&#xa;</xsl:text>
                <xsl:text>| *Series:* | [</xsl:text>
                <xsl:value-of select="$secondary/name"/>
                <xsl:if test="exists($secondary/name/@short)">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="$secondary/name/@short"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
                <xsl:text>](.  "List of specifications in this series")&#xa;</xsl:text>
                <xsl:text>| *Abstract:* | </xsl:text>
                <xsl:value-of select="sedola:documentation/text()"/>
                <xsl:text>&#xa;&#xa;</xsl:text>
                <xsl:text>&lt;br/>&#xa;&lt;hr/>&#xa;&#xa;</xsl:text>
                <xsl:text>## Specified Web Concepts:&#xa;&#xa;</xsl:text>
                <xsl:for-each-group select="sedola:*[local-name() = $concepts//element-name/text()]" group-by="local-name()">
                    <xsl:text>### </xsl:text>
                    <xsl:value-of select="$concepts//concept[element-name eq current()/local-name()]/title-plural"/>
                    <xsl:text>&#xa;&#xa;</xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="@def"/>
                        <xsl:text>[`</xsl:text>
                        <xsl:value-of select="@def"/>
                        <xsl:text>`](/</xsl:text>
                        <xsl:value-of select="concat($concepts-dir, '/', $concepts//concept[element-name eq current()/local-name()]/filename-singular, '/', @def)"/>
                        <xsl:text> "</xsl:text>
                        <xsl:value-of select="replace(sedola:documentation/text(), '&quot;', '&amp;#34;')"/>
                        <xsl:text>")</xsl:text>
                        <xsl:choose>
                            <xsl:when test="position() ne last()">
                                <xsl:text>, </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>&#xa;&#xa;</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:for-each-group>
                <xsl:text>&#xa;&#xa;</xsl:text>
                <xsl:text>&lt;br/>&#xa;&lt;hr/>&#xa;&#xa;</xsl:text>
                <xsl:text>&lt;p style="text-align: right">Return to ( &lt;a href="./">Series&lt;/a> | &lt;a href="../">Organization&lt;/a> | &lt;a href="../../">all Specifications&lt;/a> )&lt;/p></xsl:text>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>