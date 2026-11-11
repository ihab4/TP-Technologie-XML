<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
   <xsl:template match="/">
       <html>
           <head>
               <title>Rapport Mandat</title>
           </head>
           <body>
               <h1>Rapport Mandat</h1>
               <table border="1" width="90%">
                   <tr>
                       <th>Num</th><th>Date</th><th>Expéditeur</th><th>Destinataire</th><th>Etat</th><th>Montant</th>
                   </tr>
                   <xsl:for-each select="rapport/mandat">
                       <tr>
                           <td><xsl:value-of select="@num"></xsl:value-of></td>
                           <td><xsl:value-of select="@date"/></td>
                           <td>
                               <ul>
                                   <li><xsl:value-of select="expediteur/@cin"/></li>
                                   <li><xsl:value-of select="expediteur/@nom"/></li>
                               </ul>
                           </td>
                           <td>
                               <ul>
                                   <li><xsl:value-of select="destinataire/@cin"/></li>
                                   <li><xsl:value-of select="destinataire/@nom"/></li>
                               </ul>
                           </td>
                           <td><xsl:value-of select="@etat"/></td>
                           <td><xsl:value-of select="@montant"/></td>
                       </tr>
                   </xsl:for-each>
                   <tr>
                       <td colspan="5">Montant Total des Mandats</td>
                       <td><xsl:value-of select="sum(rapport/mandat/@montant)"/></td>
                   </tr>
                   <tr>
                       <td colspan="5">Montant Total des Mandats reçus</td>
                       <td><xsl:value-of select="sum(rapport/mandat[@etat='reçu']/@montant)"/></td>
                   </tr>
                   <tr>
                       <td colspan="5">Montant Total des Mandats non reçus</td>
                       <td><xsl:value-of select="sum(rapport/mandat[@etat='non reçu']/@montant)"/></td>
                   </tr>
               </table>
           </body>
       </html>
   </xsl:template> 
</xsl:stylesheet>