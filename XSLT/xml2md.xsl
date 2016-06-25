<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/sedola XML documents into github-friendly MD. -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sedola="http://github.com/dret/sedola">
    <xsl:output name="md-text" method="text" encoding="UTF-8"/>
    <!-- -->
    <!-- file containing the configuration information for all concepts extracted from the specification documents. -->
    <xsl:variable name="concepts" select="doc('concepts.xml')"/>
    <!-- -->
    <!-- reading the current specification documents from their respective directories. -->
    <xsl:variable name="RFC" select="collection(concat('../IETF/RFC/','?select=*.xml'))"/>
    <xsl:variable name="I-D" select="collection(concat('../IETF/I-D/','?select=*.xml'))"/>
    <xsl:variable name="W3C" select="collection(concat('../W3C/','?select=*.xml'))"/>
    <!-- -->
    <!-- work on all current specification documents combined.  -->
    <xsl:variable name="allfiles" select="$RFC | $I-D | $W3C"/>
    <!-- -->
    <xsl:template match="/">
        <xsl:result-document href="../MD/specs.md" format="md-text">
            <xsl:text># Specifications&#xa;&#xa;Listing a total of </xsl:text>
            <xsl:value-of select="count(distinct-values($allfiles))"/>
            <xsl:text> specifications, which can be broken down into </xsl:text>
            <xsl:value-of select="count(distinct-values($allfiles/sedola:service[starts-with(@id, 'urn:ietf:')]))"/>
            <xsl:text> [IETF](http://www.ietf.org/ "Internet Engineering Taskforce") specifications and </xsl:text>
            <xsl:value-of select="count(distinct-values($allfiles/sedola:service[starts-with(@id, 'http://www.w3.org/TR/')]))"/>
            <xsl:text> [W3C](http://www.w3.org/ "World Wide Web Consortium") specifications.&#xa;&#xa;</xsl:text>
            <xsl:text>## IETF Specifications&#xa;&#xa;This list is split into stable RFC specifications, and work-in-progress I-D drafts.&#xa;&#xa;### IETF Request for Comments (RFC)&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$allfiles/sedola:service[starts-with(@id, 'urn:ietf:rfc:')]">
                <xsl:sort select="sedola:title/text()"/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="sedola:title/text()"/>
                <xsl:text> (RFC </xsl:text>
                <xsl:value-of select="substring-after(@id, 'urn:ietf:rfc:')"/>
                <xsl:text>)](http://tools.ietf.org/html/rfc</xsl:text>
                <xsl:value-of select="substring-after(@id, 'urn:ietf:rfc:')"/>
                <xsl:text>)&#xa;</xsl:text>
            </xsl:for-each>
            <xsl:text>&#xa;### IETF Internet Drafts (I-D)&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$allfiles/sedola:service[starts-with(@id, 'urn:ietf:id:')]">
                <xsl:sort select="sedola:title/text()"/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="sedola:title/text()"/>
                <xsl:text> (`draft-</xsl:text>
                <xsl:value-of select="substring-after(@id, 'urn:ietf:id:')"/>
                <xsl:text>`)](http://tools.ietf.org/html/draft-</xsl:text>
                <xsl:value-of select="substring-after(@id, 'urn:ietf:id:')"/>
                <xsl:text>)&#xa;</xsl:text>
            </xsl:for-each>
            <xsl:text>&#xa;## W3C Specifications&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$allfiles/sedola:service[starts-with(@id, 'http://www.w3.org/TR/')]">
                <xsl:sort select="sedola:title/text()"/>
                <xsl:text>* [</xsl:text>
                <xsl:value-of select="sedola:title/text()"/>
                <xsl:text> (`</xsl:text>
                <xsl:value-of select="substring-after(@id, 'http://www.w3.org/TR/')"/>
                <xsl:text>`)](</xsl:text>
                <xsl:value-of select="@id"/>
                <xsl:text>)&#xa;</xsl:text>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:result-document href="../MD/mediatypes.md" format="md-text">
            <xsl:text># Media Types&#xa;&#xa;The following </xsl:text>
            <xsl:value-of select="count($allfiles//sedola:mediatype[exists(@def)])"/>
            <xsl:text> media type definitions were found in </xsl:text>
            <xsl:value-of select="count($allfiles)"/>
            <xsl:text> services (</xsl:text>
            <xsl:value-of select="count($W3C)"/>
            <xsl:text> [W3C](../W3C/), </xsl:text>
            <xsl:value-of select="count($RFC)"/>
            <xsl:text> [RFC](../IETF/RFC/), </xsl:text>
            <xsl:value-of select="count($I-D)"/>
            <xsl:text> [I-D](../IETF/I-D)):&#xa;&#xa;</xsl:text>
            <xsl:for-each select="$allfiles//sedola:mediatype[exists(@def)]">
                <xsl:sort select="@def"/>
                <xsl:text>* </xsl:text>
                <xsl:value-of select="@def"/>
                <!--
                <xsl:text>](</xsl:text>
                <xsl:value-of select="documentation/@source"/>
                <xsl:text> "</xsl:text>
                <xsl:value-of select="replace(documentation/text(), '&quot;', '&#x201d;')"/>
-->
                <xsl:text> : [</xsl:text>
                <xsl:value-of select="../sedola:title/text()"/>
                <xsl:text>](</xsl:text>
                <xsl:value-of select="../sedola:documentation/@source"/>
                <xsl:text> "</xsl:text>
                <xsl:value-of select="replace(../sedola:documentation/text(), '&quot;', '&#x201d;')"/>
                <xsl:text>" )&#xa;</xsl:text>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:for-each select="$concepts/concepts/concept">
            <xsl:variable name="concept" select="."/>
            <xsl:for-each select="distinct-values($allfiles//sedola:*[local-name() eq $concept/element-name/text()]/@def)">
                <xsl:if test="count($allfiles//sedola:*[local-name() eq $concept/element-name/text()][@def eq current()]) gt 1">
                    <xsl:message select="concat($concept/title-singular, ' &quot;', . ,'&quot; defined more than once.')"/>
                </xsl:if>
            </xsl:for-each>
            <xsl:result-document href="../MD/{$concept/filename/text()}.md" format="md-text">
                <xsl:text># </xsl:text>
                <xsl:value-of select="$concept/title-plural/text()"/>
                <xsl:text>&#xa;&#xa;The following </xsl:text>
                <xsl:value-of select="concat(count($allfiles//sedola:*[local-name() eq $concept/element-name/text()][exists(@def)]), ' ', $concept/title-singular/text())"/>
                <xsl:text> definitions were found in </xsl:text>
                <xsl:value-of select="count($allfiles)"/>
                <xsl:text> services (</xsl:text>
                <xsl:value-of select="count($W3C)"/>
                <xsl:text> [W3C](../W3C/), </xsl:text>
                <xsl:value-of select="count($RFC)"/>
                <xsl:text> [RFC](../IETF/RFC/), </xsl:text>
                <xsl:value-of select="count($I-D)"/>
                <xsl:text> [I-D](../IETF/I-D)). Please be advised that the table shown here is maintained and compiled from [Sedola](https://github.com/dret/sedola) sources. The [official </xsl:text>
                <xsl:value-of select="$concept/title-singular/text()"/>
                <xsl:text> registry](</xsl:text>
                <xsl:value-of select="$concept/iana-registry/text()"/>
                <xsl:text>) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).&#xa;&#xa;</xsl:text>
                <xsl:value-of select="$concept/title-singular/text()"/>
                <xsl:text> | Description | Specification&#xa;-------: | :---------- | :---&#xa;</xsl:text>
                <xsl:for-each select="$allfiles//*[local-name() eq $concept/element-name/text()][exists(@def)]">
                    <xsl:sort select="@def"/>
                    <xsl:text>`</xsl:text>
                    <xsl:value-of select="@def"/>
                    <xsl:if test="exists(@desc)">
                        <xsl:text>: </xsl:text>
                        <xsl:value-of select="@desc"/>
                    </xsl:if>
                    <xsl:text>`</xsl:text>
                    <xsl:variable name="number-of-defs" select="count($allfiles//*[local-name() eq $concept/element-name/text()][@def eq current()/@def])"/>
                    <xsl:if test="$number-of-defs gt 1">
                        <xsl:text>&lt;sub></xsl:text>
                        <xsl:text>(</xsl:text>
                        <xsl:value-of select="$number-of-defs"/>
                        <xsl:text> definitions)</xsl:text>
                        <xsl:text>&lt;/sub></xsl:text>
                    </xsl:if>
                    <xsl:text> | "[</xsl:text>
                    <xsl:value-of select="sedola:documentation/text()"/>
                    <xsl:text>](</xsl:text>
                    <xsl:value-of select="sedola:documentation/@source"/>
                    <xsl:text>)" | [**</xsl:text>
                    <xsl:choose>
                        <xsl:when test="starts-with(../sedola:documentation/@source, 'http://tools.ietf.org/html/rfc')">
                            <xsl:text>RFC </xsl:text>
                            <xsl:value-of select="substring-after(../sedola:documentation/@source, 'http://tools.ietf.org/html/rfc')"/>
                        </xsl:when>
                        <xsl:when test="starts-with(../sedola:documentation/@source, 'http://tools.ietf.org/html/draft')">
                            <xsl:value-of select="substring-after(../sedola:documentation/@source, 'http://tools.ietf.org/html/')"/>
                        </xsl:when>
                        <xsl:when test="starts-with(../sedola:documentation/@source, 'http://www.w3.org/TR/')">
                            <xsl:text>W3C TR </xsl:text>
                            <xsl:value-of select="if ( ends-with(../sedola:documentation/@source, '/') ) then substring-before(substring-after(../sedola:documentation/@source, 'http://www.w3.org/TR/'), '/') else substring-after(../sedola:documentation/@source, 'http://www.w3.org/TR/')"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>??????</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text>**: </xsl:text>
                    <xsl:value-of select="../sedola:title/text()"/>
                    <xsl:text>](</xsl:text>
                    <xsl:value-of select="../sedola:documentation/@source"/>
                    <xsl:text> "</xsl:text>
                    <xsl:value-of select="replace(../sedola:documentation/text(), '&quot;', '&#x201d;')"/>
                    <xsl:text>" )&#xa;</xsl:text>
                </xsl:for-each>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>