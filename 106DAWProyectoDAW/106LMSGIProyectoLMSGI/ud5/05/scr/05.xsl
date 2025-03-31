<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/root">
    <xml>
        <root>
            <xsl:for-each select="row">
            <row>
                <fecha><xsl:value-of select="@Anyo"/></fecha>
                <concepto><xsl:value-of select="@Concepto"/></concepto>
                <usuarios_registrados><xsl:value-of select="@Usuarios_registrados"/></usuarios_registrados>
            </row>
            </xsl:for-each>
        </root>
    </xml>
    </xsl:template>
</xsl:stylesheet>