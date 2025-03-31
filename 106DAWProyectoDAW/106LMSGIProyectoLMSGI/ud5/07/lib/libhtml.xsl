<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:template name="meta">
        <meta name="viewport" content="width-device-width, initial-scale=1.0"/>
        <meta name="author" content="Santiago González Vicente"/>
        <meta name="keywords" content="html, css, xslt, xml"/>
        <meta name="robots" content="index, follow"/>
        <meta charset="UTF-8"/>
        <tittle><xsl:value-of select="{$titulo}"/></tittle>
    </xsl:template>
</xsl:stylesheet>