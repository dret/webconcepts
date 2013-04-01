<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding ="utf-8" indent="no"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="/rest-model">
    <html>
      <head>
        <title><xsl:call-template name="title"/></title>
        <xsl:call-template name="style"/>
        <xsl:call-template name="script"/>
      </head>
      <body>
        <!--xsl:attribute name="onload">
          location.href = '#<xsl:value-of select="@entry-point"/>'
        </xsl:attribute-->
        <div class="outline index">
          <xsl:call-template name="index"/>
        </div>
        <div class="outline reference">
          <xsl:call-template name="reference"/>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="title">
    <xsl:value-of select="@id"/> REST Interface
  </xsl:template>

  <xsl:template name="style">
    <style type="text/css">
      body { margin: 0; padding : 0 0 0 10em; }
      h1 { color: Navy; }
      h2 { color: Blue; }
      table { border-collapse: collapse; margin-bottom: 1em; }
      th, td { border: 1px solid; padding: 0.35em; }
      th { color: White; background-color: CornflowerBlue; text-align: left; border-color: DarkBlue; }
      td { border-color: DarkBlue; }
      .outline { vertical-align: top; padding: 1em; }
      .index { position: fixed; top: 0; left: 0; width: 10em; height: 100%; overflow: hidden; }
      .reference { height: 100%; overflow: auto; }
      div { overflow: scroll; }
      .entry-point { 
        font-weight: bold; 
        font-size: x-small; 
        background-color: Green; 
        color: Yellow; 
        padding: 0.5em;
        margin-left: 1em;
        border-radius: 1em; 
      }
      #hint { 
        display: none; 
        font-size: small; 
        font-weight: normal;
        white-space: nowrap; 
        background-color: LightYellow; 
        color: DimGrey;
        border: 1px solid DimGrey;
        border-radius: 0.5em;
        padding: 0.5em; 
        margin-right: 0.5em;
      }
      #full { color: Green; margin-right: 0.2em; }
      #full:hover ~ #hint { display: inline; }
      #no { color: Red; margin-right: 0.2em; }
      #no:hover ~ #hint { display: inline; }
      #partial { color: Coral; margin-right: 0.3em; }
      #partial:hover ~ #hint { display: inline; }
      .one-piece { white-space: nowrap; text-wrap: none; }
      .center { text-align: center; }
      .schema { display: none; }
      .button { 
        background-color: LightGrey; 
        color: Black; 
        font-size: smaller;
        border: 1px solid DarkGrey; 
        border-radius: 0.35em; 
        padding: 0.35em;
        text-decoration: none;
      }
      .elt { color: DimGrey; font-weight: bold; }
      .attr { color: Black; }
      .content { color: DarkGreen; font-style: italic; }
      .text { color: DimGrey; }
    </style>
  </xsl:template>
  
  <xsl:template name="script">
	  <script type="text/javascript">
	    function toggleVisibility(id) {
	      var e = document.getElementById(id);
	      if (e.style.display == 'block')
	        e.style.display = 'none';
	      else
	        e.style.display = 'block';
	      e.scrollIntoView();
	    }
	  </script>
  </xsl:template>
  
  <xsl:template name="index">
    <h2>Resources</h2>
    <xsl:for-each select=".//resource">
      <xsl:sort select="@id"/>
      <a class="item">
        <xsl:attribute name="style">
          top: <xsl:value-of select="4 + position()"/>em;
        </xsl:attribute>
        <xsl:attribute name="href">
          #<xsl:value-of select="@id"/>
        </xsl:attribute>
         <code><xsl:value-of select="@id"/></code>
      </a>
      <xsl:call-template name="entry-point"/>
      <br/>
          </xsl:for-each>
  </xsl:template>
    
  <xsl:template name="entry-point">
	  <xsl:if test="@id = /rest-model/@entry-point">
	    <span class="entry-point">Entry point</span>
	  </xsl:if>
  </xsl:template>
  
  <xsl:template name="reference">
    <h1><xsl:call-template name="title"/></h1>
    <xsl:for-each select=".//resource">
       <xsl:sort select="@id"/>
      <h2>
        <a>
          <xsl:attribute name="name">
            <xsl:value-of select="@id"/>
          </xsl:attribute>
        </a>
        <xsl:call-template name="implemented"/>
        <code><xsl:value-of select="@id"/></code>
        <xsl:call-template name="entry-point"/>
      </h2>
      <xsl:apply-templates/>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template name="implemented">
    <xsl:choose>
      <xsl:when test="@implemented = 'full'">
        <span id="full">&#x2714;</span><span id="hint">Fully implemented</span>
      </xsl:when>
      <xsl:when test="@implemented = 'partial'">
        <span id="partial">?</span><span id="hint">Partially implemented</span>
      </xsl:when>
      <xsl:otherwise>
        <span id="no">&#x2718;</span><span id="hint">Not implemented</span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
    
  <xsl:template match="description">
    <p>
      <xsl:apply-templates select="text()|*"/>
    </p>
  </xsl:template>

  <xsl:template match="*">
    <xsl:element name="{local-name()}">
      <xsl:apply-templates select="*|@*|text()"/>
    </xsl:element>
  </xsl:template>
      
  <xsl:template match="text()">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="ref">
    <xsl:choose>
      <xsl:when test="@resource and ancestor::resource/@id = @resource">
        <code>
          <xsl:value-of select="@resource"/>
        </code>
      </xsl:when>
      <xsl:otherwise>
		    <a>
			    <xsl:choose>
			      <xsl:when test="@resource">
			        <xsl:attribute name="href">
			          #<xsl:value-of select="@resource"/>
			        </xsl:attribute>
			        <xsl:choose>
			          <xsl:when test="text()">
                  <xsl:apply-templates select="*|text()"/>
			          </xsl:when>
			          <xsl:otherwise>
			            <code>
				            <xsl:value-of select="@resource"/>
			            </code>
			          </xsl:otherwise>
			        </xsl:choose>
			      </xsl:when>
			      <xsl:otherwise>
			        <xsl:attribute name="href">
			          <xsl:value-of select="@url"/>
			        </xsl:attribute>
			        <xsl:apply-templates select="*|text()"/>
			      </xsl:otherwise>
			    </xsl:choose>
		    </a>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="media-type-ref">
    <xsl:variable name="mediaTypeId" select="@id"/>
    <xsl:variable name="mediaRoot" select="@root"/>
    <xsl:variable name="mediaType" select="//media-type[@id = $mediaTypeId]"/>
    <xsl:variable name="schema" select="$mediaType/schema[@id= $mediaRoot]"/>
    <h4>Media type</h4>
    <p>
      The media type for this resource is <code><xsl:value-of select="//media-type[@id = $mediaType]/@name"/></code>.
    </p>
    <xsl:if test="$schema/xs:element">
      <table>
        <tr>
          <th>Property</th>
          <th>Description</th>
        </tr>
        <xsl:call-template name="extended-properties">
         <xsl:with-param name="schema" select="$schema"/>
        </xsl:call-template>
        <xsl:call-template name="properties">
          <xsl:with-param name="schema" select="$schema"/>
        </xsl:call-template>
      </table>
    </xsl:if>
    <xsl:variable name="id"><xsl:value-of select="../@id"/>_schema_get</xsl:variable>
    <a href="#" class="button">
      <xsl:attribute name="onclick">toggleVisibility('<xsl:value-of select="$id"/>')</xsl:attribute>
      Schema for <code>GET</code>
    </a>
    <pre class="schema">
      <xsl:attribute name="id"><xsl:value-of select="$id"/></xsl:attribute>
      <xsl:choose>
        <xsl:when test="$schema">
          <xsl:apply-templates select="$schema" mode="schema-with-links"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:for-each select="$mediaType/schema[not(@id)]">
	          <xsl:call-template name="empty-schema-with-links">
	            <xsl:with-param name="type" select="$mediaRoot"/>
	          </xsl:call-template>
          </xsl:for-each>
        </xsl:otherwise>
      </xsl:choose>
    </pre>
  </xsl:template>

  <xsl:template name="empty-schema-with-links">
    <xsl:param name="type"/>
<span class="elt">&lt;xs:element</span><xsl:text> </xsl:text><span class="attr">name</span>="<span class="content"><xsl:value-of select="$type"/></span><span class="attr">"</span><span class="elt">&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;xs:complexType&gt;</span><xsl:text>
    </xsl:text><span class="elt">&lt;xs:sequence&gt;</span><xsl:text>  
      </xsl:text><span class="elt">&lt;xs:element</span><span class="attr"> ref="</span>
   <span class="content">resource</span><span class="attr">" minOccurs="</span><span class="content">0</span>
   <span class="attr">" maxOccurs="</span><span class="content">unbounded</span>
   <span class="attr">"</span><span class="elt">/&gt;</span><xsl:text>
   </xsl:text><span class="elt">&lt;/xs:sequence&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;/xs:complexType&gt;</span><xsl:text>
</xsl:text><span class="elt">&lt;/xs:element&gt;</span>
    <xsl:call-template name="include-type">
      <xsl:with-param name="type" select="'resource'"/>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template name="properties">
    <xsl:param name="schema"/>
	  <xsl:for-each select="$schema/xs:element">
	    <tr>
	      <td>
	        <code><xsl:value-of select="@name"/></code>
	      </td>
	      <td>
	        <xsl:apply-templates select="description/*|description/text()"/>
	      </td>
	    </tr>
	  </xsl:for-each>
  </xsl:template>  
  
  <xsl:template name="extended-properties">
    <xsl:param name="schema"/>
    <xsl:variable name="base" select="$schema/@extends"/>
    <xsl:if test="$base">
      <xsl:call-template name="properties">
        <xsl:with-param name="schema" select="$schema/ancestor::media-type/schema[not(@id)]/xs:complexType[@name = $base]/xs:sequence"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="schema[@extends]" mode="schema-with-links">
<span class="elt">&lt;xs:element</span><xsl:text> </xsl:text><span class="attr">name</span>="<span class="content"><xsl:value-of select="@id"/></span><span class="attr">"</span><span class="elt">&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;xs:complexType&gt;</span><xsl:text>
    </xsl:text><span class="elt">&lt;xs:complexContent&gt;</span><xsl:text>
      </xsl:text><span class="elt">&lt;xs:extension&gt;</span><xsl:text> </xsl:text><span class="attr">base</span>="<span class="content"><xsl:value-of select="@extends"/></span><span class="attr">"</span><span class="elt">&gt;</span><xsl:text>
        </xsl:text><span class="elt">&lt;xs:sequence&gt;</span>
    <xsl:apply-templates mode="html">
      <xsl:with-param name="indent" select="'          '"/>
    </xsl:apply-templates>
    <xsl:text>  
          </xsl:text><span class="elt">&lt;xs:element</span><span class="attr"> ref="</span>
   <span class="content">resource</span><span class="attr">" minOccurs="</span><span class="content">0</span>
   <span class="attr">" maxOccurs="</span><span class="content">unbounded</span>
   <span class="attr">"</span><span class="elt">/&gt;</span><xsl:text>
        </xsl:text><span class="elt">&lt;/xs:sequence&gt;</span><xsl:text>
      </xsl:text><span class="elt">&lt;/xs:extension&gt;</span><xsl:text>
    </xsl:text><span class="elt">&lt;/xs:complexContent&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;/xs:complexType&gt;</span><xsl:text>
</xsl:text><span class="elt">&lt;/xs:element&gt;</span>
    <xsl:variable name="type" select="@extends"/>
    <xsl:variable name="base" select="ancestor::media-type/schema/xs:complexType[@name = $type]"/>
    <br/>
   <xsl:apply-templates mode="html" select="$base"/>
    <xsl:call-template name="include-types">
      <xsl:with-param name="root" select="$base/xs:sequence"/>
    </xsl:call-template>
    <xsl:call-template name="include-types"/>
    <xsl:call-template name="include-type">
      <xsl:with-param name="type" select="'resource'"/>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template match="schema" mode="schema-with-links">
<span class="elt">&lt;xs:element</span><xsl:text> </xsl:text><span class="attr">name</span>="<span class="content"><xsl:value-of select="@id"/></span><span class="attr">"</span><span class="elt">&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;xs:complexType&gt;</span><xsl:text>
    </xsl:text><span class="elt">&lt;xs:sequence&gt;</span>
    <xsl:apply-templates mode="html">
      <xsl:with-param name="indent" select="'      '"/>
    </xsl:apply-templates>
    <xsl:text>  
      </xsl:text><span class="elt">&lt;xs:element</span><span class="attr"> ref="</span>
   <span class="content">resource</span><span class="attr">" minOccurs="</span><span class="content">0</span>
   <span class="attr">" maxOccurs="</span><span class="content">unbounded</span>
   <span class="attr">"</span><span class="elt">/&gt;</span><xsl:text>
   </xsl:text><span class="elt">&lt;/xs:sequence&gt;</span><xsl:text>
  </xsl:text><span class="elt">&lt;/xs:complexType&gt;</span><xsl:text>
</xsl:text><span class="elt">&lt;/xs:element&gt;</span>
    <xsl:call-template name="include-types"/>
    <xsl:call-template name="include-type">
      <xsl:with-param name="type" select="'resource'"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="include-types">
    <xsl:param name="root" select="."/>
    <xsl:for-each select="$root/*[not(starts-with(@type, 'xs:'))]/@type">
      <xsl:call-template name="include-type">
        <xsl:with-param name="type" select="."/>
      </xsl:call-template>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template name="include-type">
    <xsl:param name="type"/>
    <br/>
    <xsl:apply-templates mode="html" select="ancestor::media-type/schema/*[@name = $type and (not(local-name() = 'element') or not(@type))]"/>
    <xsl:for-each select="ancestor::media-type/schema/*[@name = $type]//xs:extension[not(starts-with(@base, 'xs:'))]/@base">
      <xsl:call-template name="include-type">
        <xsl:with-param name="type" select="."/>
      </xsl:call-template>
    </xsl:for-each>
    <xsl:for-each select="ancestor::media-type/schema/*[@name = $type]//xs:element[not(starts-with(@ref, 'xs:'))]/@ref">
      <xsl:call-template name="include-type">
        <xsl:with-param name="type" select="."/>
      </xsl:call-template>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="links">
    <xsl:if test="link">
      <h4>Links to other resources</h4>
      <xsl:variable name="showStatus" select="link/@implemented"/>
	    <table>
	      <tr>
	        <xsl:if test="$showStatus"> 
            <th>Status</th>
	        </xsl:if>
	        <th>Link Relation</th>
	        <th>Method</th>
	        <th>URI</th>
	        <th>Description</th>
	      </tr>
	      <xsl:for-each select="link">
	        <xsl:sort select="@rel"/>
	        <tr>
            <xsl:if test="$showStatus">
              <td class="center">
                <xsl:call-template name="implemented"/>
              </td>
            </xsl:if>
	          <td>
	            <code>
	              <xsl:value-of select="@rel"/>
	            </code>
	          </td>
	          <td class="center">
	            <code><xsl:choose>
	              <xsl:when test="@method">
	                <xsl:value-of select="@method"/>
	              </xsl:when>
	              <xsl:otherwise>GET</xsl:otherwise>
	            </xsl:choose></code>
	          </td>
	          <td>
	            <xsl:choose>
	              <xsl:when test="@uri-source = 'self'">
	                URI of resource
	              </xsl:when>
	              <xsl:when test="@uri-source = 'link'">
	                <code class="one-piece">@href</code>
	              </xsl:when>
	              <xsl:when test="@uri-source = 'template'">
	                <code class="one-piece">@href-template</code>
	              </xsl:when>
	            </xsl:choose>
	          </td>
	          <td>
	            <xsl:apply-templates select="description/*|description/text()"/>
	            <xsl:if test="@uri-source = 'template'">
	              <xsl:apply-templates select="template"/>
	            </xsl:if>
	          </td>
	        </tr>
	      </xsl:for-each>
	    </table>
    </xsl:if>
  </xsl:template>
    
  <xsl:template match="template">
    <xsl:for-each select="var">
	    <br/>This <a href="http://tools.ietf.org/html/rfc6570">URI template</a> contains a parameter of type <code>
	      <xsl:value-of select="@type"/>
    </code> that should be replaced by <xsl:value-of select="text()"/>.
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="collection">
    The <code><xsl:value-of select="../@id"/></code> resource is a collection.<p/>
    <table>
      <tr>
        <th><code>atom:id</code></th>
        <th><code>atom:title</code></th>
        <th>Entry</th>
        <th>Supports <code>POST</code>?</th>
      </tr>
      <tr>
        <td><code><xsl:value-of select="../@id"/></code></td>
        <td><code><xsl:value-of select="@title"/></code></td>
        <td>
	        <a>
            <xsl:attribute name="href">
              #<xsl:value-of select="@entry"/>
            </xsl:attribute>
            <code>
              <xsl:value-of select="@entry"/>
            </code>
	        </a>
        </td>
        <td>
			    <xsl:choose>
			      <xsl:when test="media-type-ref">
			        <span id="full">&#x2714;</span>
			        <xsl:for-each select="media-type-ref">
						    <xsl:variable name="mediaType" select="@id"/>
						    <xsl:variable name="mediaRoot" select="@root"/>
						    <xsl:variable name="media" select="//media-type[@id = $mediaType]/@name"/>
						    <xsl:variable name="url" select="//media-type[@id = $mediaType]/@href"/>
						    <xsl:if test="position() &gt; 1"><xsl:text> or </xsl:text></xsl:if>
						    <xsl:choose>
						      <xsl:when test="$url">
						        <a>
						          <xsl:attribute name="href"><xsl:value-of select="$url"/></xsl:attribute>
						          <code><xsl:value-of select="$media"/></code>
						        </a>
						      </xsl:when>
						      <xsl:otherwise>
						        <code><xsl:value-of select="$media"/></code>
						      </xsl:otherwise>
						    </xsl:choose>
			        </xsl:for-each>
			      </xsl:when>
			      <xsl:otherwise>
			        <span id="no">&#x2718;</span>
			      </xsl:otherwise>
			    </xsl:choose>
        </td>
      </tr>
    </table>
  </xsl:template>

  <xsl:template match="*" mode="html">
    <xsl:param name="indent-elements" select="true()" />
    <xsl:param name="indent" select="''" />
    <xsl:param name="indent-increment" select="'  '" />
    <xsl:if test="$indent-elements">
       <br />
       <xsl:value-of select="$indent" />
    </xsl:if>
    <span class="elt">&lt;<xsl:value-of select="name()"/></span>
    <xsl:for-each select="@*">
       <xsl:call-template name="xml-attrs" />
    </xsl:for-each>
    <xsl:choose>
      <xsl:when test="*[local-name() != 'description']">
        <span class="elt">&gt;</span>
          <xsl:apply-templates mode="html">
            <xsl:with-param name="indent-elements" select="$indent-elements" />
            <xsl:with-param name="indent" select="concat($indent, $indent-increment)" />
            <xsl:with-param name="indent-increment" select="$indent-increment" />
          </xsl:apply-templates>
	      <xsl:if test="$indent-elements">
	         <br />
	         <xsl:value-of select="$indent" />
	      </xsl:if>
          <span class="elt">&lt;/<xsl:value-of select="name()"/>&gt;</span>
      </xsl:when>
      <xsl:otherwise>
        <span class="elt">/&gt;</span>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="not(parent::*)"><br /><xsl:text>
</xsl:text></xsl:if>
  </xsl:template>

  <xsl:template match="description" mode="html">
    <!-- Suppress -->
  </xsl:template>
  
   <xsl:template name="xml-attrs">
      <xsl:text> </xsl:text>
      <span class="attr">
         <xsl:value-of select="name()" />
      </span>
      <xsl:text>="</xsl:text>
      <span class="content">
         <xsl:call-template name="html-replace-entities">
            <xsl:with-param name="text" select="normalize-space(.)" />
            <xsl:with-param name="attrs" select="true()" />
         </xsl:call-template>
      </span>
      <xsl:text>"</xsl:text>
   </xsl:template>

   <xsl:template name="xml-ns">
      <xsl:if test="name()!='xml'">
         <span class="xml-ns-name">
            <xsl:text> xmlns</xsl:text>
            <xsl:if test="name()!=''">
               <xsl:text>:</xsl:text>
            </xsl:if>
            <xsl:value-of select="name()" />
         </span>
         <xsl:text>="</xsl:text>
         <span class="xml-ns-uri">
            <xsl:value-of select="." />
         </span>
         <xsl:text>"</xsl:text>
      </xsl:if>
   </xsl:template>

   <xsl:template match="text()" mode="html">
      <span class="text">
         <xsl:call-template name="preformatted-output">
            <xsl:with-param name="text">
               <xsl:call-template name="html-replace-entities">
                  <xsl:with-param name="text" select="." />
               </xsl:call-template>
            </xsl:with-param>
         </xsl:call-template>
      </span>
   </xsl:template>
  
   <xsl:template name="html-replace-entities">
      <xsl:param name="text" />
      <xsl:param name="attrs" select="false()"/>
      <xsl:variable name="tmp">
         <xsl:call-template name="replace-substring">
            <xsl:with-param name="from" select="'&gt;'" />
            <xsl:with-param name="to" select="'&amp;gt;'" />
            <xsl:with-param name="value">
               <xsl:call-template name="replace-substring">
                  <xsl:with-param name="from" select="'&lt;'" />
                  <xsl:with-param name="to" select="'&amp;lt;'" />
                  <xsl:with-param name="value">
                     <xsl:call-template name="replace-substring">
                        <xsl:with-param name="from" select="'&amp;'" />
                        <xsl:with-param name="to" select="'&amp;amp;'" />
                        <xsl:with-param name="value" select="$text" />
                     </xsl:call-template>
                  </xsl:with-param>
               </xsl:call-template>
            </xsl:with-param>
         </xsl:call-template>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="$attrs">
            <xsl:call-template name="replace-substring">
               <xsl:with-param name="from" select="' '" />
               <xsl:with-param name="to" select="'&amp;#xA;'" />
               <xsl:with-param name="value">
                  <xsl:call-template name="replace-substring">
                     <xsl:with-param name="from" select="'&quot;'" />
                     <xsl:with-param name="to" select="'&amp;quot;'" />
                     <xsl:with-param name="value" select="$tmp" />
                  </xsl:call-template>
               </xsl:with-param>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$tmp" />
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template name="replace-substring">
      <xsl:param name="value" />
      <xsl:param name="from" />
      <xsl:param name="to" />
      <xsl:choose>
         <xsl:when test="contains($value,$from)">
            <xsl:value-of select="substring-before($value,$from)" />
            <xsl:value-of select="$to" />
            <xsl:call-template name="replace-substring">
               <xsl:with-param name="value" select="substring-after($value,$from)" />
               <xsl:with-param name="from" select="$from" />
               <xsl:with-param name="to" select="$to" />
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$value" />
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template name="preformatted-output">
      <xsl:param name="text" />
      <xsl:call-template name="output-nl">
         <xsl:with-param name="text">
            <xsl:call-template name="replace-substring">
               <xsl:with-param name="value" select="translate($text,' ',' ')" />
               <xsl:with-param name="from" select="' '" />
               <xsl:with-param name="to" select="'  '" />
            </xsl:call-template>
         </xsl:with-param>
      </xsl:call-template>
   </xsl:template>

   <xsl:template name="output-nl">
      <xsl:param name="text" />
      <xsl:choose>
         <xsl:when test="contains($text,' ')">
            <xsl:value-of select="substring-before($text,' ')" />
            <br />
            <xsl:text>
</xsl:text>
            <xsl:call-template name="output-nl">
               <xsl:with-param name="text" select="substring-after($text,' ')" />
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$text" />
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   
</xsl:stylesheet>
