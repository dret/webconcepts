<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xml"/>
    <xsl:include href="include.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="include">
            <xsl:apply-templates select="." mode="include"/>
        </xsl:variable>
        <xsl:copy-of select="$include"/>
        <xsl:result-document method="xhtml" href="../service.html">
            <xsl:for-each select="$include">
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="/service/title/text()"/>
                            <xsl:if test="exists(/service/title/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="/service/title/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                        </title>
                        <style type="text/css">
                            a { text-decoration : none ; border-bottom : 1px dotted ; }
                            a:hover { background-color: #E0E0E0 ; }
                            *:target { outline : red solid medium ; }
                        </style>
                    </head>
                    <body>
                        <h1>
                            <xsl:value-of select="/service/title/text()"/>
                            <xsl:if test="exists(/service/title/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="/service/title/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                        </h1>
                        <h4><a href="service-index.html">Index</a></h4>
                        <hr size="5"/>
                        <div class="toc">
                            <ul>
                                <xsl:if test="exists(//profile)">
                                    <li>
                                        <a href="#profiles"><b>Profiles: </b></a>
                                        <xsl:for-each select="//profile">
                                            <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                                <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//link[exists(@relation)])">
                                    <li>
                                        <a href="#linkrels"><b>Link Relations: </b></a>
                                        <xsl:for-each select="//link[exists(@relation)]">
                                            <a href="#{@xml:id}">
                                                <xsl:value-of select="@relation"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//mediatype)">
                                    <li>
                                        <a href="#mediatypes"><b>Media Types: </b></a>
                                        <xsl:for-each select="//mediatype">
                                            <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                                <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                            </ul>
                        </div>
                        <hr size="5"/>
                        <xsl:if test="exists(//link[exists(parent::service)][exists(@relation)])">
                            <div class="linkrelations">
                                <h2 id="mediatypes>">Link Relations</h2>
                                <ul>
                                    <xsl:for-each select="//link[exists(parent::service)][exists(@relation)]">
                                        <li id="{@xml:id}">
                                            <b>
                                                <code><xsl:value-of select="@relation"/></code>
                                                <xsl:text>: </xsl:text>
                                            </b>
                                            <xsl:copy-of select="documentation[1]"/>
                                            <xsl:if test="exists(documentation[1]/@source)">
                                                <xsl:text> </xsl:text>
                                                <em><a href="{documentation[1]/@source}">more...</a></em>
                                            </xsl:if>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:if>
                        <hr size="5"/>
                        <xsl:if test="exists(//profile)">
                            <div class="profiles">
                                <h2 id="profiles>">Profiles</h2>
                                <xsl:for-each select="//profile">
                                    <hr/>
                                    <h3 id="{@xml:id}">
                                        <code><b><xsl:value-of select="@href"/>: </b></code>
                                        <xsl:value-of select="title/text()"/>
                                        <xsl:if test="exists(title/@short)">
                                            <xsl:text> (</xsl:text>
                                            <xsl:value-of select="title/@short"/>
                                            <xsl:text>)</xsl:text>
                                        </xsl:if>
                                        <xsl:text> based on </xsl:text>
                                        <a href="#{id(@mediatypes)/@xml:id}"><code><xsl:value-of select="id(@mediatypes)/@type"/></code></a>
                                    </h3>
                                    <xsl:if test="exists(documentation)">
                                        <p>
                                            <xsl:copy-of select="documentation[1]"/>
                                            <xsl:if test="exists(documentation[1]/@source)">
                                                <xsl:text> </xsl:text>
                                                <em><a href="{documentation[1]/@source}">more...</a></em>
                                            </xsl:if>
                                        </p>
                                    </xsl:if>
                                </xsl:for-each>
                        </div>
                        </xsl:if>
                        <hr size="5"/>
                        <xsl:if test="exists(//mediatype)">
                            <div class="mediatypes">
                                <h2 id="mediatypes>">Media Types</h2>
                                <xsl:for-each select="//mediatype">
                                    <hr/>
                                    <h3 id="{@xml:id}">
                                        <code><b><xsl:value-of select="@type"/>: </b></code>
                                        <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                        <xsl:if test="if ( exists(title/text()) ) then exists(title/@short) else exists(../title/@short)">
                                            <xsl:text> (</xsl:text>
                                            <xsl:value-of select="if ( exists(title/text()) ) then title/@short else ../title/@short"/>
                                            <xsl:text>)</xsl:text>
                                        </xsl:if>
                                    </h3>
                                    <xsl:if test="exists(documentation)">
                                        <p>
                                            <xsl:copy-of select="documentation[1]"/>
                                            <xsl:if test="exists(documentation[1]/@source)">
                                                <xsl:text> </xsl:text>
                                                <em><a href="{documentation[1]/@source}">more...</a></em>
                                            </xsl:if>
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="exists(resource)">
                                        <h4>Resources:</h4>
                                        <ul>
                                            <xsl:for-each select="resource">
                                                <li id="{@xml:id}">
                                                    <b><xsl:value-of select="title/text()"/>: </b>
                                                    <xsl:copy-of select="documentation[1]"/>
                                                    <xsl:if test="exists(documentation[1]/@source)">
                                                        <xsl:text> </xsl:text>
                                                        <em><a href="{documentation[1]/@source}">more...</a></em>
                                                    </xsl:if>
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </xsl:if>
                                    <xsl:if test="exists(link)">
                                        <h4>Links and Link Relations:</h4>
                                        <ul>
                                            <xsl:for-each select="link">
                                                <xsl:sort select="exists(@relation)"/>
                                                <li id="{@xml:id}">
                                                    <b>
                                                        <xsl:choose>
                                                            <xsl:when test="exists(@relation)">
                                                                <code><xsl:value-of select="@relation"/></code>
                                                            </xsl:when>
                                                            <xsl:when test="exists(title)">
                                                                <xsl:value-of select="title/text()"/>
                                                            </xsl:when>
                                                        </xsl:choose>
                                                        <xsl:text>: </xsl:text>
                                                    </b>
                                                    <xsl:copy-of select="documentation[1]"/>
                                                    <xsl:if test="exists(documentation[1]/@source)">
                                                        <xsl:text> </xsl:text>
                                                        <em><a href="{documentation[1]/@source}">more...</a></em>
                                                    </xsl:if>
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </xsl:if>
                                </xsl:for-each>
                            </div>
                        </xsl:if>
                        <hr size="5"/>
                        <h2>Sources:</h2>
                        <ul>
                            <xsl:for-each select="//service">
                                <li>
                                    <b>
                                        <xsl:value-of select="title/text()"/>
                                        <xsl:if test="exists(title/@short)">
                                            <xsl:text> (</xsl:text>
                                            <xsl:value-of select="title/@short"/>
                                            <xsl:text>)</xsl:text>
                                        </xsl:if>
                                    </b>
                                    <xsl:if test="exists(@src)">
                                        <xsl:text>: included from </xsl:text>
                                        <a href="{@src}"><code><xsl:value-of select="@src"/></code></a>
                                    </xsl:if>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </body>
                </html>
            </xsl:for-each>
        </xsl:result-document>
        <xsl:result-document method="xhtml" href="../service-index.html">
            <xsl:for-each select="$include">
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="/service/title/text()"/>
                            <xsl:if test="exists(/service/title/@short)">
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="/service/title/@short"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                            <xsl:text> Index</xsl:text>
                        </title>
                        <style type="text/css">
                            a { text-decoration : none ; border-bottom : 1px dotted ; }
                            a:hover { background-color: #E0E0E0 ; }
                            *:target { outline : red solid medium ; }
                        </style>
                    </head>
                    <body>
                        <h1>
                            <a href="service.html">
                                <xsl:value-of select="/service/title/text()"/>
                                <xsl:if test="exists(/service/title/@short)">
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="/service/title/@short"/>
                                    <xsl:text>)</xsl:text>
                                </xsl:if>
                            </a>
                            <xsl:text> Index</xsl:text>
                        </h1>
                        <hr size="5"/>
                        <ul>
                            <xsl:for-each-group select="//*[exists(@xml:id)]" group-by="local-name()">
                                <xsl:sort select="current-grouping-key()"/>
                                <li>
                                    <b><xsl:value-of select="current-grouping-key()"/>s</b>
                                    <ul>
                                        <xsl:for-each select="current-group()">
                                            <li id="{@xml:id}">
                                                <code><a href="service.html#{@xml:id}"><xsl:value-of select="@xml:id"/></a></code>
                                                <xsl:text>: </xsl:text>
                                                <xsl:choose>
                                                    <xsl:when test="local-name() eq 'link' and empty(@relation)"><xsl:value-of select="title/text()"/> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'link' and exists(@relation)">Relation <code><xsl:value-of select="@relation"/></code> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'mediatype'"><code><xsl:value-of select="@type"/></code> <small>[ <xsl:value-of select=" if ( exists(documentation[1]/text()) ) then documentation[1]/text() else ../documentation[1]/text() "/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'profile' and empty(@relation)">Based on <a href="#{@mediatypes}" title="{//mediatype[@xml:id eq current()/@mediatypes]/documentation[1]/text()}"><code><xsl:value-of select="//mediatype[@xml:id eq current()/@mediatypes]/@type"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'resource' and empty(@relation)"><xsl:value-of select="title/text()"/> from <a href="#{../@xml:id}" title="{../documentation[1]/text()}"><code><xsl:value-of select="../@type"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                </xsl:choose>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </li>
                            </xsl:for-each-group>
                        </ul>
                    </body>
                </html>
            </xsl:for-each>
        </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>