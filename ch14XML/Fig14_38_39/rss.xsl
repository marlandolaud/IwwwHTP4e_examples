<?xml version = "1.0" encoding = "utf-8"?>

<!-- Fig. 14.X: rss.xsl -->
<!-- XSLT transformation for RSS -->
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
   xmlns:rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:rss = "http://purl.org/rss/1.0/"
   xmlns:dc = "http://purl.org/dc/elements/1.1/">

<xsl:output method = "html"/>
<xsl:template match = "/">
   <table>
      <!-- choose the correct RSS version -->
      <xsl:choose>
         <!-- RSS 0.9x or 2.0 -->
         <xsl:when test = "/rss/channel">
            <tr style = "height: 70px">
               <xsl:for-each select = "rss/channel">
                  <th style = "vertical-align: top">
                     <img src = "{image/url}" alt = "{image/title}"/>
                  </th>
                  <th style = "vertical-align: top">
                     <a href = "{link}" alt = "{description}">
                        <xsl:value-of select = "title"/>
                     </a>
                  </th>
               </xsl:for-each>
            </tr>
            <tr>
               <td colspan = "2">
                  <xsl:for-each select = "rss/channel/item">
                     <p>
                        <a href = "{link}" title = "{pubDate}">
                           <xsl:value-of select = "title" 
                              disable-output-escaping = "yes"/>
                        </a>
                        <xsl:if test = "enclosure/@url">
                           <br/>
                           <a href = "{enclosure/@url}">Download file</a>
                        </xsl:if>
                        <br/>
                        <xsl:value-of select = "description" 
                           disable-output-escaping = "yes"/>
                        <xsl:if test = "category">
                           <xsl:for-each select = "category">
                              Category: <xsl:value-of select = "." /><br/>
                           </xsl:for-each>
                        </xsl:if>
                     </p><hr/>
                  </xsl:for-each>
               </td>
            </tr>
         </xsl:when>
         <!-- otherwise, display message -->
         <xsl:otherwise>
			   <tr><td>RSS version cannot be used with this XSL
				   </td></tr></xsl:otherwise>
      </xsl:choose>
   </table>
</xsl:template>
</xsl:stylesheet>

