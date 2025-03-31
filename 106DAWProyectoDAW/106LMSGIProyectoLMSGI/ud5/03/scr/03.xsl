<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>  
    <xsl:template match="/ticket">
        <html>
            <head> 
                <title>03 -Ticket  Santiago González Vicente</title>
                <meta charset="utf-8"/>
            </head>
            <body>
                <h1>Información de tickets</h1>
                <h2>Listado de tickets</h2>
                <xsl:apply-templates select="ticket" />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="/ticket">
        <h3>Tickets <xsl:value-of select="numero"/></h3>
        <table>
        <caption> Fecha del ticket <xsl:value-of select="fecha"/></caption>
            <thead>
            <tr>
            <th>Producto</th>
            <th>Precio</th>
            </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="producto" />
            </tbody>
            <tfoot>
                <tr>
                    <th>Total </th>
                    <th><xsl:value-of select="sum(producto/precio)"/></th>
                </tr>
            </tfoot>
        </table>
    </xsl:template>
    <xsl:template match="alumno" mode="lista">
        <li><xsl:value-of select="concat(nombre, ' ',apellido)"/></li>
    </xsl:template>
</xsl:stylesheet>
