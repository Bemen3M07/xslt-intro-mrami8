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
          <xsl:apply-templates select="catalog/cd"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cd">
    <tr>
      <td><xsl:apply-templates select="title"/></td>
      <td><xsl:apply-templates select="artist"/></td>
      <td><xsl:apply-templates select="price"/></td>
      <td><xsl:apply-templates select="price" mode="indicator"/></td>
    </tr>
  </xsl:template>

  <xsl:template match="title">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="artist">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="price">
    <xsl:value-of select="."/>
  </xsl:template>

  <!-- Template para el indicador según el precio -->
  <xsl:template match="price" mode="indicator">
    <xsl:choose>
      <xsl:when test=". &gt; 10">
        &#128994;
      </xsl:when>
      <xsl:otherwise>
        &#128308;
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
