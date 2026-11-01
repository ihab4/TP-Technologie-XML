<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    LISTES DES CLIENTS DE IAM
                </title>
            </head>
            <body>
               <h1>LISTES DES CLIETS DE IAM</h1>
                <xsl:for-each select="operateur/client">
                    <ul>
                        <li>CODE : <xsl:value-of select="@code"/></li>
                        <li>NOM : <xsl:value-of select="@nom"/></li>
                        <xsl:for-each select="abonnement">
                            <li>NUMERO : <xsl:value-of select="@num"/></li>
                            <li>TYPE : <xsl:value-of select="@type"/></li>
                            <li>DATE : <xsl:value-of select="@dateAb"/></li>
                            <xsl:for-each select="facture">
                                <table border="1" width="90%">
                                    <tr>
                                        <th>numero facture</th><th>date facture</th><th>montant</th>
                                    </tr>
                                    <tr>
                                        <td><xsl:value-of select="@numFact"/></td>
                                        <td><xsl:value-of select="@dateFact"/></td>
                                        <td><xsl:value-of select="@montant"/></td>
                                    </tr>
                                </table>
                            </xsl:for-each>     
                        </xsl:for-each>
                        
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>