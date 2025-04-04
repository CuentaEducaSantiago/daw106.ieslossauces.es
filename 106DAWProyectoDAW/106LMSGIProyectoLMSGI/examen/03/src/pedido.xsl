<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="pedido/@fecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de 
        <xsl:value-of select="$anio"/>
        </xsl:template>
        <xsl:template match="pedido">
        <html lang="es">
            <head>
                <meta name="viewport" content="width-device-width, initial-scale=1.0"/>
                <meta name="author" content="Santiago González Vicente"/>
                <meta name="keywords" content="html, css, xslt, xml"/>
                <meta name="robots" content="index, follow"/>
                <meta charset="UTF-8"/>
                <!--<link rel="stylesheet" type="text/css" href="css/estilos.css">-->
                <title>Pedidos Santiago González Vicente</title>
            </head>
            <body>
                <header>
                    <h1><xsl:text>PEDIDO ID: </xsl:text> <xsl:value-of select="@idPedido"/></h1>
                </header>
            <xsl:for-each select="tractor">
                <div class="seccion">
                    <div><h2><xsl:text>Fabricante: </xsl:text><xsl:value-of select="@codigoFabricante"/><xsl:text> </xsl:text><xsl:value-of select="document('../input/fabricantes.xml')/fabricantes/fabricante[@codigo=current()/@codigoFabricante]/@nombre"/></h2></div>
                    <div>
                        <table>
                            <tr class="First">
                                <th></th>
                                <th>Referencia</th>
                                <th>Descripcion</th>
                                <th>Fecha Entrega</th>
                                <th>Peso</th>
                                <th>Numero de Serie</th>
                                <th>Km Máximos</th>
                                <th>Cantidad</th>
                            </tr>
                            <xsl:for-each select="componente">
                            <tr>
                                <th></th>
                                <th><xsl:value-of select="@referencia"/></th>
                                <th><xsl:value-of select="document('../input/componentes.xml')/componentes/componente[@codigo=current()/@referencia]/@nombre"/></th>
                                <th><xsl:if test="fechaEntrega"><xsl:if test="fechaEntrega/@dia"><xsl:value-of select="fechaEntrega/@dia"/><xsl:text>-</xsl:text></xsl:if><xsl:value-of select="fechaEntrega/@mes"/><xsl:text>-</xsl:text><xsl:value-of select="fechaEntrega/@anio"/></xsl:if></th>
                                <th><xsl:value-of select="peso"/></th>
                                <th><xsl:value-of select="numeroSerie"/></th>
                                <th><xsl:if test="kmMaximos"><xsl:value-of select="kmMaximos"/></xsl:if></th>
                                <th><xsl:value-of select="cantidad"/></th>
                            </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>
            </xsl:for-each>
            </body>
        </html>
    <!-- Plantilla que dado un pedido lo escribe en una tabla -->
        </xsl:template>
    </xsl:stylesheet>
