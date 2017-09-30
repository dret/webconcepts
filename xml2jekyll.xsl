<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/webconcepts into a Jekyll site. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output name="markdown" method="text" encoding="UTF-8"/>
    <xsl:output name="markup" method="xhtml" encoding="UTF-8" omit-xml-declaration="yes"/>
    <!-- -->
    <xsl:variable name="includes" select="'_includes'"/>
    <!-- -->
    <xsl:template name="xml2jekyll">
        <xsl:result-document href="{$includes}/concepts.md" format="markdown">
            <xsl:value-of select="sum(for $i in $concepts/concepts/concept/@id return count(distinct-values($allspecs//*[local-name() = $i]/@def)))"/>
            <xsl:text> values for </xsl:text>
            <xsl:value-of select="count($concepts/concepts/concept)"/>
            <xsl:text> Web Concepts</xsl:text>
        </xsl:result-document>
        <xsl:result-document href="{$includes}/specs.md" format="markdown">
            <xsl:value-of select="count($allspecs/service)"/>
            <xsl:text> specifications in </xsl:text>
            <xsl:value-of select="count($specs/specs/primary/secondary)"/>
            <xsl:text> specification series</xsl:text>
        </xsl:result-document>
        <xsl:result-document href="{$specs-dir}/index.md" format="markdown">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout:      page&#xa;</xsl:text>
            <xsl:text>title:       "Web Concept Specifications: Organizations"&#xa;</xsl:text>
            <xsl:text>description: "List of all organizations and their specification series that are used to compile the list of Web Concepts"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>This is a list of all organizations and their specification series (listing {% include specs.md %}) that are used to compile the list of [Web Concepts](../concepts).&#xa;&#xa;</xsl:text>
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
                <xsl:text>/): </xsl:text>
                <xsl:variable name="primary-specs-count" select="count($allspecs/service[@primary eq $primary/@id])"/>
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
                    <xsl:text>/ "Series overview"): </xsl:text>
                    <xsl:value-of select="count($allspecs/service[@primary eq $primary/@id][@secondary eq $secondary/@id])"/>
                    <xsl:text> Specifications&#xa;</xsl:text>
                </xsl:for-each>
                <xsl:result-document href="{$specs-dir}/{$primary/@id}/index.md" format="markdown">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout:      page&#xa;</xsl:text>
                    <xsl:text>title:       "</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:text>: Specification Series"&#xa;</xsl:text>
                    <xsl:text>description: "List of specification series by the </xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:if test="exists(name/@short)">
                        <xsl:text> (</xsl:text>
                        <xsl:value-of select="name/@short"/>
                        <xsl:text>/)</xsl:text>
                    </xsl:if>
                    <xsl:text>"&#xa;</xsl:text>
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
                        <xsl:variable name="services" select="$allspecs/service[@primary eq $primary/@id][@secondary eq $secondary/@id]"/>
                        <xsl:text>  * [</xsl:text>
                        <xsl:value-of select="name"/>
                        <xsl:if test="exists(name/@short)">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="name/@short"/>
                            <xsl:text>)</xsl:text>
                        </xsl:if>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="$secondary/@id"/>
                        <xsl:text>/) Series: </xsl:text>
                        <xsl:value-of select="count($services)"/>
                        <xsl:text> Specifications&#xa;</xsl:text>
                        <xsl:result-document href="{$specs-dir}/{$primary/@id}/{$secondary/@id}/index.md" format="markdown">
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout:      page&#xa;</xsl:text>
                            <xsl:text>title:       "</xsl:text>
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
                            <xsl:text>description: "List of specifications in the </xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:if test="exists(name/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="name/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                            <xsl:text> series by the </xsl:text>
                            <xsl:value-of select="../name"/>
                            <xsl:if test="exists(../name/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="../name/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                            <xsl:text>"&#xa;</xsl:text>
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
                                <xsl:sort select="title"/>
                                <xsl:if test="not(matches(@id, $secondary/id-pattern))">
                                    <xsl:message terminate="yes" select="concat('Non-matching service/@id: ', $primary, '/', $secondary, '/', @id)"/>
                                </xsl:if>
                                <xsl:variable name="id" select="replace(@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                                <xsl:text>  * [</xsl:text>
                                <xsl:value-of select="title"/>
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
        <xsl:result-document href="{$concepts-dir}/index.md" format="markdown">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout: page&#xa;</xsl:text>
            <xsl:text>title:  "Web Concepts: Overview"&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>This is an overview of </xsl:text>
            <xsl:value-of select="count($concepts/concepts/concept)"/>
            <xsl:text> Web Concepts (with a total of </xsl:text>
            <xsl:value-of select="sum(for $i in $concepts/concepts/concept/@id return count(distinct-values($allspecs//*[local-name() = $i]/@def)))"/>
            <xsl:text> distinct values) that have been harvested from all [available specifications](/</xsl:text>
            <xsl:value-of select="$specs-dir"/>
            <xsl:text>):&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$concepts/concepts/concept">
                <xsl:sort select="title-plural"/>
                <xsl:variable name="concept" select="."/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="title-plural"/>
                <xsl:text>](</xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text>/) (</xsl:text>
                <xsl:value-of select="count(distinct-values($allspecs//*[local-name() eq current()/@id]/@def))"/>
                <xsl:text>)&#xa;</xsl:text>
                <xsl:result-document href="{$concepts-dir}/{@id}.md" format="markdown">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout:    page&#xa;</xsl:text>
                    <xsl:text>title:     "</xsl:text>
                    <xsl:value-of select="title-plural"/>
                    <xsl:text>"&#xa;</xsl:text>
                    <xsl:text>permalink: </xsl:text>
                    <xsl:value-of select="concat('/', $concepts-dir, '/', @id, '/')"/>
                    <xsl:text>&#xa;</xsl:text>
                    <xsl:text>---&#xa;&#xa;</xsl:text>
                    <xsl:variable name="values-count" select="count($allspecs//*[local-name() eq $concept/@id]/@def)"/>
                    <xsl:variable name="distinct-values-count" select="count(distinct-values($allspecs//*[local-name() eq $concept/@id]/@def))"/>
                    <xsl:text>&#xa;&#xa;The following </xsl:text>
                    <xsl:value-of select="$values-count"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="$concept/title-singular/text()"/>
                    <xsl:text> values </xsl:text>
                    <xsl:if test="$values-count ne $distinct-values-count">
                        <xsl:text>(</xsl:text>
                        <xsl:value-of select="$distinct-values-count"/>
                        <xsl:text> distinct values) </xsl:text>
                    </xsl:if>
                    <xsl:text>were found in [all available `webconcepts.info` specifications](/</xsl:text>
                    <xsl:value-of select="$specs-dir"/>
                    <xsl:text>). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources.</xsl:text>
                    <xsl:if test="exists($concept/iana-registry)">
                        <xsl:text> The [official </xsl:text>
                        <xsl:value-of select="$concept/title-singular/text()"/>
                        <xsl:text> registry](</xsl:text>
                        <xsl:value-of select="$concept/iana-registry/text()"/>
                        <xsl:text>) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).</xsl:text>
                    </xsl:if>
                    <xsl:text>&#xa;&#xa;</xsl:text>
                    <xsl:value-of select="$concept/title-singular/text()"/>
                    <xsl:text> | Specification&#xa;-------: | :-------&#xa;</xsl:text>
                    <xsl:for-each select="distinct-values($allspecs//*[local-name() eq $concept/@id]/@def)">
                        <xsl:sort select="."/>
                        <xsl:variable name="concept-name" select="."/>
                        <xsl:text>[`</xsl:text>
                        <xsl:value-of select="$concept-name"/>
                        <xsl:variable name="desc" select="$allspecs//*[local-name() eq $concept/@id][@def eq $concept-name][1]/@desc"/>
                        <!-- this is cheating by (randomly) picking the first description should there be more than one in all specifications. -->
                        <xsl:if test="exists($desc)">
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="$desc"/>
                        </xsl:if>
                        <xsl:text>`](</xsl:text>
                        <xsl:value-of select="concat('/', $concepts-dir, '/', $concept/@id, '/', $concept-name)"/>
                        <xsl:text>)</xsl:text>
                        <xsl:variable name="number-of-defs" select="count($allspecs//*[local-name() eq $concept/@id][@def eq $concept-name])"/>
                        <xsl:if test="$number-of-defs gt 1">
                            <xsl:text>&lt;sub title=" There are </xsl:text>
                            <xsl:value-of select="$number-of-defs"/>
                            <xsl:text> definitions for this value"></xsl:text>
                            <xsl:value-of select="$number-of-defs"/>
                            <xsl:text>&lt;/sub></xsl:text>
                        </xsl:if>
                        <xsl:text> | </xsl:text>
                        <xsl:for-each select="$allspecs/service[*[local-name() eq $concept/@id][@def eq $concept-name]]">
                            <xsl:sort select="title/text()"/>
                            <xsl:text>[**</xsl:text>
                            <xsl:variable name="secondary" select="$specs/specs/primary[@id eq current()/@primary]/secondary[@id eq current()/@secondary]"/>
                            <xsl:variable name="id" select="replace(current()/@id, $secondary/id-pattern, '$1')"/>
                            <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                            <xsl:text>**: </xsl:text>
                            <xsl:value-of select="title/text()"/>
                            <xsl:text>](</xsl:text>
                            <xsl:value-of select="concat('/', $specs-dir, '/', $secondary/../@id, '/', $secondary/@id, '/', $id)"/>
                            <xsl:text> "</xsl:text>
                            <xsl:value-of select="replace(documentation/text(), '&quot;', '&amp;#34;')"/>
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
                        <xsl:result-document href="{$concepts-dir}/{$concept/@id}/{$concept-name}.md" format="markdown">
                            <xsl:variable name="allspecsdef" select="$allspecs/service/*[local-name() eq $concept/@id][@def eq $concept-name]"/>
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout:        concept&#xa;</xsl:text>
                            <xsl:text>permalink:     "/</xsl:text>
                            <xsl:value-of select="concat($concepts-dir, '/', $concept/@id, '/', replace($concept-name, ':', '%3A'))"/>
                            <xsl:text>"&#xa;</xsl:text>
                            <xsl:text>title:         "</xsl:text>
                            <xsl:value-of select="$concept/title-singular/text()"/>
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="$concept-name"/>
                            <xsl:if test="exists($desc)">
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$desc"/>
                            </xsl:if>
                            <xsl:text>"&#xa;</xsl:text>
                            <xsl:text>concept-name:  </xsl:text>
                            <xsl:value-of select="$concept/title-singular/text()"/>
                            <xsl:text>&#xa;</xsl:text>
                            <xsl:text>concept-value: </xsl:text>
                            <xsl:value-of select="$concept-name"/>
                            <xsl:if test="exists($desc)">
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$desc"/>
                            </xsl:if>
                            <xsl:text>&#xa;</xsl:text>
                            <xsl:text>description: "</xsl:text>
                            <xsl:value-of select="replace($allspecsdef[1]/documentation, '&quot;', '\\&quot;')"/>
                            <!-- this is cheating because it randomly takes the first definition of a concept, if there are more than one. -->
                            <xsl:text>"&#xa;</xsl:text>
                            <xsl:text>---&#xa;&#xa;</xsl:text>
                            <xsl:for-each select="$allspecsdef">
                                <xsl:sort select="replace(replace(current()/../@id, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/id-pattern, $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/md-pattern), '^(..*)$', $specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]/name-pattern)"/>
                                <xsl:text>[</xsl:text>
                                <xsl:value-of select="documentation"/>
                                <xsl:text>](</xsl:text>
                                <xsl:value-of select="documentation/@source"/>
                                <xsl:text> "Read documentation for </xsl:text>
                                <xsl:value-of select="concat($concept/title-singular/text(), ' &amp;#34;', $concept-name)"/>
                                <xsl:text>&amp;#34;") (**[</xsl:text>
                                <xsl:variable name="secondary" select="$specs/specs/primary[@id eq current()/../@primary]/secondary[@id eq current()/../@secondary]"/>
                                <xsl:variable name="id" select="replace(current()/../@id, $secondary/id-pattern, $secondary/md-pattern)"/>
                                <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                                <xsl:text>: </xsl:text>
                                <xsl:value-of select="../title/text()"/>
                                <xsl:text>](</xsl:text>
                                <xsl:value-of select="concat('/', $specs-dir, '/', $secondary/../@id, '/', $secondary/@id, '/', $id)"/>
                                <xsl:text> "</xsl:text>
                                <xsl:value-of select="replace(../documentation/text(), '&quot;', '&amp;#34;')"/>
                                <xsl:text>")**)&#xa;&#xa;</xsl:text>
                            </xsl:for-each>
                            <xsl:text>&lt;br/>&#xa;&lt;hr/>&#xa;&#xa;</xsl:text>
                            <xsl:text>&lt;p style="float : left">&lt;a href="./</xsl:text>
                            <xsl:value-of select="$concept-name"/>
                            <xsl:text>.json" title="JSON representing this particular Web Concept value">JSON&lt;/a>&lt;/p>&#xa;</xsl:text>
                            <xsl:text>&lt;p style="text-align: right">Return to list of all ( &lt;a href="../</xsl:text>
                            <xsl:value-of select="$concept/@id"/>
                            <xsl:text>/"></xsl:text>
                            <xsl:value-of select="$concept/title-plural/text()"/>
                            <xsl:text>&lt;/a> | &lt;a href="../">Web Concepts&lt;/a> )&lt;/p>&#xa;</xsl:text>
                        </xsl:result-document>
                    </xsl:for-each>
                    <xsl:text>&#xa;&lt;br/>&#xa;&lt;hr/>&#xa;&#xa;</xsl:text>
                    <xsl:text>&lt;p style="float : left">&lt;a href="../</xsl:text>
                    <xsl:value-of select="@id"/>
                    <xsl:text>.json" title="JSON representing all values for this Web Concept">JSON&lt;/a>&lt;/p>&#xa;</xsl:text>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:for-each select="$allspecs/service">
            <xsl:sort select="title"/>
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
            <xsl:result-document href="{$specs-dir}/{$primary/@id}/{$secondary/@id}/{$id}.html" format="markup">
                <xsl:text>---&#xa;</xsl:text>
                <xsl:text>layout:      page&#xa;</xsl:text>
                <xsl:text>title:       "</xsl:text>
                <xsl:value-of select="replace(title/text(), '&quot;', '\\&quot;')"/>
                <xsl:text>"&#xa;</xsl:text>
                <xsl:text>description: "</xsl:text>
                <xsl:value-of select="replace(documentation/text(), '&quot;', '\\&quot;')"/>
                <!-- this is cheating because it randomly takes the first definition of a concept, if there are more than one. -->
                <xsl:text>"&#xa;</xsl:text>
                <xsl:text>---&#xa;&#xa;</xsl:text>
                <table cellpadding="5">
                    <tr>
                        <th valign="top" align="right"><em>Document&#160;Name:</em></th>
                        <td>
                            <xsl:value-of select="replace($id, '^(..*)$', $secondary/name-pattern)"/>
                        </td>
                    </tr>
                    <xsl:if test="exists($secondary/uri-pattern)">
                        <tr>
                            <th valign="top" align="right"><em>Document&#160;URI:</em></th>
                            <td>
                                <code><xsl:value-of select="replace(@id, $secondary/id-pattern, $secondary/uri-pattern)"/></code>
                            </td>
                        </tr>
                    </xsl:if>
                    <tr>
                        <th valign="top" align="right"><em>Online&#160;Version:</em></th>
                        <td>
                            <xsl:variable name="url">
                                <xsl:choose>
                                    <xsl:when test="exists(@url)">
                                        <xsl:value-of select="@url"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="replace(@id, $secondary/id-pattern, $secondary/url-pattern)"/>                                    
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <code><a href="{$url}"><xsl:value-of select="$url"/></a></code>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="right"><em>Organization:</em></th>
                        <td>
                            <a href="../" title="List of specification series by this organization">
                                <xsl:value-of select="$primary/name"/>
                                <xsl:if test="exists($primary/name/@short)">
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="$primary/name/@short"/>
                                    <xsl:text>)</xsl:text>
                                </xsl:if>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="right"><em>Series:</em></th>
                        <td>
                            <a href="./" title="List of specifications in this series">
                                <xsl:value-of select="$secondary/name"/>
                                <xsl:if test="exists($secondary/name/@short)">
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="$secondary/name/@short"/>
                                    <xsl:text>)</xsl:text>
                                </xsl:if>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="right"><em>Abstract:</em></th>
                        <td>
                            <xsl:value-of select="documentation/text()"/>
                        </td>
                    </tr>
                </table>
                <br/>
                <hr/>
                <h2 id="concepts">Specified Web Concepts:</h2>
                <xsl:for-each-group select="*[local-name() = $concepts/concepts/concept/@id]" group-by="local-name()">
                    <xsl:sort select="$concepts//concept[@id eq current()/local-name()]/title-plural"/>
                    <h3 id="{$concepts//concept[@id eq current()/local-name()]/@id}">
                        <a href="/{concat($concepts-dir, '/', $concepts//concept[@id eq current()/local-name()]/@id)}/" title="List of all {$concepts//concept[@id eq current()/local-name()]/title-plural}">
                            <xsl:value-of select="$concepts//concept[@id eq current()/local-name()]/title-plural"/>
                        </a>
                    </h3>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="@def"/>
                        <code><a href="/{concat($concepts-dir, '/', $concepts//concept[@id eq current()/local-name()]/@id, '/', @def)}" title="{replace(documentation/text(), '&quot;', '&amp;#34;')}"><xsl:value-of select="@def"/></a></code>
                        <xsl:if test="position() ne last()">
                            <xsl:text>, </xsl:text>
                        </xsl:if>
                    </xsl:for-each>
                    <br/>
                </xsl:for-each-group>
                <hr/>
                <p style="text-align: right">
                    <xsl:text>Return to ( </xsl:text>
                    <a href="./">Series</a>
                    <xsl:text> | </xsl:text>
                    <a href="../">Organization</a>
                    <xsl:text> | </xsl:text>
                    <a href="../../">all Specifications</a>
                    <xsl:text> )</xsl:text>
                </p>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>