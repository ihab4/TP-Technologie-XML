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
    
                        <li>CODE : <xsl:value-of select="@code"/></li>
                        <li>NOM : <xsl:value-of select="@nom"/></li>
                        <h4>Liste des Abonnement</h4>
                        <table border="1" width="90%">
                        <tr>
                            <th>NUMERO</th><th>TYPE</th><th>DATE</th><th>TOTAL FACTURES</th>
                        </tr>
                        <xsl:for-each select="abonnement">
                            <tr>
                                <td><xsl:value-of select="@num"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:value-of select="@dateAb"/></td>
                                <td><xsl:value-of select="sum(facture/@montant)"/></td>
                            </tr>   
                        </xsl:for-each>
                        </table>

                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>