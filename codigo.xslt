<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
    <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="red">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Price</th>
      <th style="text-align:left">Indicator</th>
    </tr>
      <xsl:for-each select="catalog/cd">
        <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="price"/></td>
        <td>
        <xsl:choose>
        <xsl:when test="price &gt; 10">
        <span style="color:green;">●</span>
        </xsl:when>
        <xsl:otherwise>
        <span style="color:red;">●</span>
        </xsl:otherwise>
        </xsl:choose>
        </td>
        </tr>
      </xsl:for-each>
    </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


