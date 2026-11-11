<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblio</title>
            </head>
            <body>
                <h1>Bibliothèque</h1>
                <xsl:for-each select="biblio/etudiant">
                    <ul>
                        <li>Code :<xsl:value-of select="@code"/></li>
                        <li>Nom :<xsl:value-of select="@nom"/></li>
                        <li>Prénom :<xsl:value-of select="@prenom"/></li>
                        <table border="1" width="90%">
                            <tr>
                                <th>ID</th><th>Titre</th><th>Date</th><th>Rendu</th>
                            </tr>
                            <xsl:for-each select="livre[@rendu='non']">
                                <tr>
                                    <td><xsl:value-of select="@id"/></td>
                                    <td><xsl:value-of select="@titre"/></td>
                                    <td><xsl:value-of select="@dateEmprunt"/></td>
                                    <td><xsl:value-of select="@rendu"/></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td colspan="3">Nombre de livres empruntés</td>
                                <td><xsl:value-of select="count(livre)"/></td>
                            </tr>
                            <tr>
                                <td colspan="3">Nombre de livres rendu</td>
                                <td><xsl:value-of select="count(livre[@rendu='oui'])"/></td>
                            </tr>
                            <tr>
                                <td colspan="3">Nombre de livres non rendu</td>
                                <td><xsl:value-of select="count(livre[@rendu='non'])"/></td>
                            </tr>
                        </table>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>