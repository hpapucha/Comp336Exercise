<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--python3 -m http.server 4040-->

    
    <xsl:template match="/">
  <html>
  <body>
    <h2>Team Collection</h2>
    <table border="1">
      <tr>
        <th>Team</th>
        <th>Stadium</th>
        <th>Jersey</th>
        <th>Titles</th>


      </tr>
      <xsl:for-each select="catalog/team">
          


<!--
            <xsl:choose>
              <xsl:when test="expression">
                ... some output ...
              </xsl:when>
              <xsl:otherwise>
                ... some output ....
              </xsl:otherwise>
            </xsl:choose>
-->

<!--          If test > 5 titles filter teams (adds xsl"if closing tag)-->
<!--      <xsl:if test="titles &gt; 5">-->
          
<!--          For each team sort by letter descending-->
<!--                <xsl:sort select="name"/>-->

<!--For each team named liverpool filter that          -->
<!--              <xsl:for-each select="catalog/team[name='Liverpool']">-->

        
        <tr>
            
          <td bgcolor="#9acd32"><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="stadium"/></td>
          <td><xsl:value-of select="jersey"/></td>
          <td><xsl:value-of select="titles"/></td>


        </tr>
<!--        </xsl:if>-->
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>


                