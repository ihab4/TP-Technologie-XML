<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
            <line x1="100" y1="100" x2="100" y2="600" stroke="blue" stroke-width="2"></line>
            <line x1="100" y1="600" x2="1000" y2="600" stroke="blue" stroke-width="2"></line>
            <line x1="90" y1="500" x2="110" y2="500" stroke="red" stroke-width="2"></line>
            <text x="70" y="505" stroke="red">10</text>
            <line x1="90" y1="400" x2="110" y2="400" stroke="red" stroke-width="2"></line>
            <text x="70" y="405" stroke="red">20</text>
            <line x1="90" y1="300" x2="110" y2="300" stroke="red" stroke-width="2"></line>
            <text x="70" y="305" stroke="red">30</text>
            <xsl:for-each select="meteo/mesure[@date='2026-10-29']/ville">
                <xsl:variable name="pos" select="position()*120"/>
                <xsl:variable name="temp" select="@temperature*10"/>
                <text stroke="blue" x="{$pos}" y="620">
                    <xsl:value-of select="@nom"/>
                </text>
                <rect width="20" height="{$temp}" x="{$pos}" y="{600-$temp}"
                    stroke="blue" fill="orange">
                    <!--
                    <animate attributeName="height" dur="3s"
                        values="0;{$temp};0"
                        repeatCount="indefinite"                
                        ></animate>
                    <animate attributeName="y" dur="3s"
                        values="600;{600-$temp};600"
                        repeatCount="indefinite"
                        ></animate>
                        -->
                </rect>
                <text stroke="black" x="{$pos}" y="600-{$temp}-10">
                    <xsl:value-of select="@temperature"/>
                </text>
                
            </xsl:for-each>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>