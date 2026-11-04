<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>RELEVE BANQUE</title>
            </head>
            <body>
                <h1>RELEVE BANQUE</h1>
                <ul>
                    <li>RIB : <xsl:value-of select="releve/@RIB"/></li>
                    <li>DATE : <xsl:value-of select="releve/dateReleve"/></li>
                    <li>SOLDE : <xsl:value-of select="releve/solde"/></li>
                </ul>
                <h5>LISTE DES OPERATIONS DE <xsl:value-of select="releve/operations/@dateDebut"/> A
                <xsl:value-of select="releve/operations/@dateFin"/>
                </h5>
                <table border="1" width="90%">
                    <tr>
                        <th>TYPE</th>
                        <th>DATE</th>
                        <th>MONTANT</th>
                        <th>DESCRIPTION</th>
                    </tr>
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>