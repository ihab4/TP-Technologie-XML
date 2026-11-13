<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>COUPE DU MONDE 2026</title>
            </head>
            <body>
                <h1>COUPE DU MONDE 2026</h1>
                <h2>LISTE DES EQUIPES</h2>
                <ul>
                    <xsl:for-each select="worldcup/teams/team">
                        <li><xsl:value-of select="data()"/></li>
                    </xsl:for-each>
                </ul>
                
                <h2>LES GROUPES</h2>
                <xsl:for-each select="worldcup/groups/group">
                    <h4>GROUPE <xsl:value-of select="@name"/></h4>
                    <h5>Classement</h5>
                    <table border="1" width="60%">
                        <tr>
                            <th>Equipe</th><th>Victoire</th><th>Egalité</th><th>Perte</th>
                            <th>But marqués</th><th>But reçu</th><th>But différence</th><th>Points</th>
                        </tr>
                        <xsl:for-each select="standings/entry">
                            <tr>
                                <td><xsl:value-of select="replace(@team,'^t_','')"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>