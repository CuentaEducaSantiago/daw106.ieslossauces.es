<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/network">
    <xsl:variable name="nuevaL" select="'&#10;'"/>
    <xsl:variable name="newtab" select="'   '"/>
    <xsl:value-of select="concat(name(current()),':')"/>
        <xsl:for-each select="ethernets">
            <xsl:value-of select="$nuevaL, $newtab, concat(name(current()),':')"/>
            <xsl:value-of select="$nuevaL, $newtab, $newtab, name, ':'"/>
            <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, 'addresses:'"/>
            <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, $newtab, addresses"/>
            <xsl:if test="exists(gateway4)">
                <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, 'routes:'"/>
                <xsl:apply-templates select="concat($nuevaL, $newtab, $newtab, $newtab, $newtab, 'to: default')"/>
                <xsl:apply-templates select="concat($nuevaL, $newtab, $newtab, $newtab, $newtab, 'via: ', gateway4)"/>
            </xsl:if>
            <xsl:if test="exists(nameservers)">
                <xsl:for-each select="nameservers">
                    <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, concat(name(current()),':')"/>
                    <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, $newtab, 'addresses:'"/>
                    <xsl:for-each select="addresses">
                        <xsl:value-of select="$nuevaL, $newtab, $newtab, $newtab, $newtab, $newtab, current()"/>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>