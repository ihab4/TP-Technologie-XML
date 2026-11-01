<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>METEO</title>
            </head>
            <body>
                <h1>Tableau de température dans quelques villes au Maroc</h1>
                <xsl:for-each select="meteo/mesure">
                    JOUR : <xsl:value-of select="@date"/>
                    <table border="1">
                        <tr>
                            <th>VILLE</th><th>TEMPERATURE</th>
                        </tr>
                        <xsl:for-each select="ville">
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                                <td><xsl:value-of select="@temperature"/></td>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                    
                </xsl:for-each>
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>