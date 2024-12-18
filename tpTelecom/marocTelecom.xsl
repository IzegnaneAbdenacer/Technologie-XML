<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
  <xsl:template match="/">
   <html>
       <head>
           <title>Mon TP</title>
       </head>
       <body>
           <xsl:for-each select="operateur/client">
               <h3>Nom client : <xsl:value-of select="@nom"/> </h3>
           <table border="1" width="90%">
                    <tr>
                        <th>Num</th><th>Date Abonnement</th><th>Type abonnement</th>
                    </tr>
                <xsl:for-each select="abonnement">
                    <tr>
                        <td><xsl:value-of select="@num"></xsl:value-of></td>
                        <td><xsl:value-of select="@dateAb"></xsl:value-of></td>
                        <td><xsl:value-of select="@type"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
           </xsl:for-each>
       </body>
   </html> 
    </xsl:template>
</xsl:stylesheet>