<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:include href="../lib/libhtml.xsl"/>
    <xsl:template match="/prediccion">
    <html>
        <head>
            <title>7 XSLT Santiago González Vicente</title>

        </head>
        <body>
            <header>
                <h1>Predicción Por Municipios</h1>
            </header>
            <main>
                <table>
                    <thead>
                        <tr>
                            <th><xsl:value-of select="concat('El Tiempo. ', upper-case(municipio/nombre), '(', municipio/provincia,')')"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <xsl:element name="dia">
                                <th><xsl:value-of select="concat(name(current()))"/></th>
                            </xsl:element>
                            <xsl:element name="dia/prob_precipitacion">
                                <th><xsl:value-of select="concat(name(current()))"/></th>
                            </xsl:element>
                            <xsl:element name="dia/temperatura">
                                <th><xsl:value-of select="concat(name(current()), ' (ºC)')"/></th>
                            </xsl:element>
                            <xsl:element name="dia/viento">
                                <th><xsl:value-of select="concat(name(current()))"/></th>
                            </xsl:element>
                        </tr>
                        <tr>
                            <xsl:for-each select="dia">
                                <th><xsl:value-of select="estado_cielo"/></th>
                                <th><xsl:value-of select="concat(prob_precipitacion, '%')"/></th>
                                <th><img scr="../images/.gif" alt=""/></th>
                                <th><xsl:value-of select="concat(temperatura/minima,'/', temperatura/maxima)"/></th>
                                <th><img scr="../images/.gif" alt=""/> <xsl:value-of select="estado_cielo"/></th>
                            </xsl:for-each>
                        </tr>
                    </tbody>
                </table>
            </main>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>