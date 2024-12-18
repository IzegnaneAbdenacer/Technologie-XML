<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:template match="/">
       <html>
           <head>
               <title>TP Biblio</title>
           </head>
           <body>
               <h3>Liste des étudiants : </h3>
               <xsl:for-each select="/biblio/etudiant">
               <ul>
                   <li> Code : <xsl:value-of select="@code"></xsl:value-of></li>
                   <li> Nom : <xsl:value-of select="@nom"></xsl:value-of></li>
                   <li> Prenom : <xsl:value-of select="@prenom"></xsl:value-of></li>
                   <li> Age : <xsl:value-of select="@age"></xsl:value-of></li>
               </ul>
          
               <table border="1" width="80%">
                   <tr>
                       <th>Id</th><th>Titre</th><th>Date de prunt</th><th>Rendu</th>
                   </tr>
                   <xsl:for-each select="livre">
                   <tr>
                       <td><xsl:value-of select="@id"></xsl:value-of> </td>
                       <td><xsl:value-of select="@titre"></xsl:value-of> </td>
                       <td><xsl:value-of select="@datePret"></xsl:value-of> </td>
                       <td><xsl:value-of select="@rendu"></xsl:value-of> </td>
                   </tr>
                   </xsl:for-each>
                   
                   <tr>
                       <td colspan="4"> Nombre de livre empruntés : </td>
                       <td > <xsl:value-of select="count(livre)"></xsl:value-of></td>
                   </tr>
                   <tr>
                       <td colspan="4"> Nombre de livre nom rendu : </td>
                       <td > <xsl:value-of select="count(livre [@rendu='non'])"></xsl:value-of></td>
                   </tr>
               </table>
               </xsl:for-each>
           </body>
       </html>
   </xsl:template> 
</xsl:stylesheet>