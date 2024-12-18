<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Releve Bancaire</title>
            </head>
            <body>
                <h3> Liste des releves</h3>
                <xsl:for-each select="releves/releve">
                    
                    
                        <ul>
                            <li>RIB : <xsl:value-of select="@RIB"></xsl:value-of></li>
                            <li>Date Releve : <xsl:value-of select="@dateReleve"></xsl:value-of></li>
                            <li> Solde : <xsl:value-of select="@solde"></xsl:value-of></li>
                            <xsl:for-each select="operations">
                                <ul>
                                    <li>Date début : <xsl:value-of select="@dateDebut"/></li>
                                    <li>Date fin : <xsl:value-of select="@dateFin"/></li>
                                </ul>
                            </xsl:for-each>
                        </ul>
                   <table border="1" width="80%">
                       <tr>
                           <th>Date</th><th>Montant</th><th>Description</th><th>Type</th>
                       </tr>
                       <xsl:for-each select="operations/operation">
                       <tr>
                       <td><xsl:value-of select="@date"></xsl:value-of></td>
                       <td><xsl:value-of select="@montant"></xsl:value-of></td>
                       <td><xsl:value-of select="@description"></xsl:value-of></td>
                       <td><xsl:value-of select="@type"></xsl:value-of></td>
                       </tr>
                       </xsl:for-each>
                   </table>
               
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>