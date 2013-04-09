<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xhtml"/>
    <xsl:include href="include.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="include">
            <xsl:apply-templates select="." mode="include"/>
        </xsl:variable>
        <xsl:for-each select="$include">
            <html>
                <head>
                    <title>
                        <xsl:value-of select="/service/title/text()"/>
                        <xsl:if test="exists(/service/title/@short)">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="/service/title/@short"/>
                            <xsl:text>></xsl:text>
                        </xsl:if>
                    </title>
                </head>
                <body>
                    <h1>
                        <xsl:value-of select="/service/title/text()"/>
                        <xsl:if test="exists(/service/title/@short)">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="/service/title/@short"/>
                            <xsl:text>></xsl:text>
                        </xsl:if>
                    </h1>
                    <hr/>
                    <div class="toc">
                        <ul>
                            <xsl:if test="exists(//mediatype)">
                                <li>
                                    <a href="#mediatypes">
                                        <xsl:text>Media Types:</xsl:text>
                                    </a>
                                    <xsl:for-each select="//mediatype">
                                        <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                            <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                        </a>
                                        <xsl:text>; </xsl:text>
                                    </xsl:for-each>
                                </li>
                            </xsl:if>
                            <xsl:if test="exists(//profile)">
                                <li>
                                    <a href="#profiles">
                                        <xsl:text>Profiles:</xsl:text>
                                    </a>
                                    <xsl:for-each select="//profile">
                                        <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                            <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                        </a>
                                        <xsl:text>; </xsl:text>
                                    </xsl:for-each>
                                </li>
                            </xsl:if>
                            <xsl:if test="exists(//linkrel)">
                                <li>
                                    <a href="#linkrels">
                                        <xsl:text>Link Relations:</xsl:text>
                                    </a>
                                    <xsl:for-each select="//linkrel">
                                        <a href="#{@xml:id}">
                                            <xsl:choose>
                                                <xsl:when test="exists(@name)">
                                                    <code><xsl:value-of select="@name"/></code>
                                                </xsl:when>
                                                <xsl:when test="exists(title)">
                                                    <xsl:value-of select="title/text()"/>
                                                </xsl:when>
                                            </xsl:choose>
                                        </a>
                                        <xsl:text>; </xsl:text>
                                    </xsl:for-each>
                                </li>
                            </xsl:if>
                        </ul>
                    </div>
                    <hr/>
                    <xsl:if test="exists(//mediatype)">
                        <div class="mediatypes">
                            <h2 id="mediatypes>">Media Types</h2>
                        </div>
                    </xsl:if>
                </body>
            </html>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>