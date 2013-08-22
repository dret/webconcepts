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
                            <xsl:text> Service</xsl:text>
                        </h1>
                        <h4><a href="service-index.html">Index</a></h4>
                        <hr size="5"/>
                        <div class="toc">
                            <ul>
                                <xsl:if test="exists(//profile)">
                                    <li>
                                        <a href="#profiles"><b>Profiles</b></a>
                                        <xsl:text>: </xsl:text>
                                        <xsl:for-each select="//profile">
                                            <xsl:sort select="@href"/>
                                            <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                                <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//link[exists(@relation)])">
                                    <li>
                                        <a href="#linkrels"><b>Link Relations</b></a>
                                        <xsl:text>: </xsl:text>
                                        <xsl:for-each select="//link[exists(@relation)]">
                                            <xsl:sort select="@relation"/>
                                            <a href="#{@xml:id}">
                                                <code>
                                                    <xsl:value-of select="@relation"/>
                                                </code>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//vocabulary)">
                                    <li>
                                        <a href="#mediatypes"><b>Vocabularies</b></a>
                                        <xsl:text>: </xsl:text>
                                        <xsl:for-each select="//vocabulary">
                                            <xsl:sort select="if ( exists(title/@short) ) then title/@short else ../title/@short"/>
                                            <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                                <xsl:value-of select="if ( exists(title/text()) ) then title/text() else ../title/text()"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//mediatype)">
                                    <li>
                                        <a href="#mediatypes"><b>Media Types</b></a>
                                        <xsl:text>: </xsl:text>
                                        <xsl:for-each select="//mediatype">
                                            <xsl:sort select="@type"/>
                                            <a href="#{@xml:id}" name="{ if ( exists(title/@short) ) then title/@short else ../title/@short }">
                                                <xsl:value-of select="@type"/>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                                <xsl:if test="exists(//http-header)">
                                    <li>
                                        <a href="#mediatypes"><b>HTTP Headers</b></a>
                                        <xsl:text>: </xsl:text>
                                        <xsl:for-each select="//http-header">
                                            <xsl:sort select="@name"/>
                                            <a href="#{@xml:id}">
                                                <code>
                                                    <xsl:value-of select="@name"/>
                                                </code>
                                            </a>
                                            <xsl:text>; </xsl:text>
                                        </xsl:for-each>
                                    </li>
                                </xsl:if>
                            </ul>
                        </div>
                        <xsl:if test="exists(//link[exists(parent::service)][exists(@relation)])">
                            <hr size="5"/>
                            <div class="linkrelations">
                                <h2 id="linkrelations>">Link Relations</h2>
                                <ul>
                                    <xsl:for-each select="//link[exists(parent::service)][exists(@relation)]">
                                        <xsl:sort select="@relation"/>
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
                        <xsl:if test="exists(//profile)">
                            <hr size="5"/>
                            <div class="profiles">
                                <h2 id="profiles>">Profiles</h2>
                                <xsl:for-each select="//profile">
                                    <xsl:sort select="@href"/>
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
                        <xsl:if test="exists(//vocabulary)">
                            <hr size="5"/>
                            <div class="vocabularies">
                                <h2>Vocabularies:</h2>
                                <ul>
                                    <xsl:for-each select="//vocabulary">
                                        <xsl:sort select="if ( exists(title/@short) ) then title/@short else ../title/@short"/>
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
                            </div>
                        </xsl:if>
                        <xsl:if test="exists(//mediatype)">
                            <hr size="5"/>
                            <div class="mediatypes">
                                <h2 id="mediatypes>">Media Types</h2>
                                <xsl:for-each select="//mediatype">
                                    <xsl:sort select="@type"/>
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
                                    <xsl:if test="exists(document)">
                                        <h4>Documents:</h4>
                                        <ul>
                                            <xsl:for-each select="document">
                                                <li id="{@xml:id}">
                                                    <b><xsl:value-of select="title/text()"/></b>
                                                    <xsl:if test="exists(@vocabularies)">
                                                        <b>(Vocabularies: </b>
                                                        <xsl:for-each select="tokenize(@vocabularies, '\s+')">
                                                            <xsl:variable name="vocab" select="$include//vocabulary[@xml:id eq current()]"/>
                                                            <xsl:choose>
                                                                <xsl:when test="exists($vocab/title/@short)">
                                                                    <a href="#{current()}" title="{$vocab/title/text()}">
                                                                        <xsl:value-of select="$vocab/title/@short"/>
                                                                    </a>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <a href="#{current()}">
                                                                        <xsl:value-of select="$vocab/title/text()"/>
                                                                    </a>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                            <xsl:if test="position() ne last()">
                                                                <xsl:text>; </xsl:text>
                                                            </xsl:if>
                                                        </xsl:for-each>
                                                        <xsl:text>)</xsl:text>
                                                    </xsl:if>
                                                    <xsl:text>: </xsl:text>
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
                                                <xsl:sort select="@relation"/>
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
                                <xsl:if test="exists(//http-header)">
                                    <hr size="5"/>
                                    <div class="http-headers">
                                        <h2>HTTP Headers:</h2>
                                        <ul>
                                            <xsl:for-each select="//http-header">
                                                <xsl:sort select="@name"/>
                                                <li id="{@xml:id}">
                                                    <b>
                                                        <xsl:value-of select="@name"/>
                                                        <xsl:text> (</xsl:text>
                                                        <xsl:choose>
                                                            <xsl:when test="@type eq 'general'">General</xsl:when>
                                                            <xsl:when test="@type eq 'request'">Request</xsl:when>
                                                            <xsl:when test="@type eq 'response'">Response</xsl:when>
                                                            <xsl:when test="@type eq 'entity'">Entity</xsl:when>
                                                        </xsl:choose>
                                                        <xsl:text> Header):  </xsl:text>
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
                            </div>
                        </xsl:if>
                        <hr size="5"/>
                        <h2>Service Sources:</h2>
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
                            <xsl:text> Service Index</xsl:text>
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
                                    <b><xsl:value-of select="current-grouping-key()"/></b>
                                    <ul>
                                        <xsl:for-each select="current-group()">
                                            <xsl:sort select="@xml:id"/>
                                            <li id="{@xml:id}">
                                                <xsl:choose>
                                                    <xsl:when test="local-name() eq 'link' and empty(@relation)"><a href="service.html#{@xml:id}"><xsl:value-of select="title/text()"/></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'link' and exists(@relation)"><a href="service.html#{@xml:id}">Relation <code><xsl:value-of select="@relation"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'mediatype'"><a href="service.html#{@xml:id}"><code><xsl:value-of select="@type"/></code></a> <small>[ <xsl:value-of select=" if ( exists(documentation[1]/text()) ) then documentation[1]/text() else ../documentation[1]/text() "/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'profile'"><a href="service.html#{@xml:id}"><code><xsl:value-of select="@id"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'document'"><a href="service.html#{@xml:id}"><xsl:value-of select="title/text()"/></a> from <a href="#{../@xml:id}" title="{../documentation[1]/text()}"><code><xsl:value-of select="../@type"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'vocabulary'"><a href="service.html#{@xml:id}"><xsl:value-of select="title/text()"/></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
                                                    <xsl:when test="local-name() eq 'http-header'"><a href="service.html#{@xml:id}"><code><xsl:value-of select="@name"/></code></a> <small>[ <xsl:value-of select="documentation[1]/text()"/> ]</small></xsl:when>
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