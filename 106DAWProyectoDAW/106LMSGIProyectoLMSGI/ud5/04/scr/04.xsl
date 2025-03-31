<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/examen">
    <html lang="es">
        <head>
            <title>4 XSLT Santiago González Vicente</title>
            <meta charset="UTF-8"/>
        </head>
        <body>
            <header>
                <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                <h2><xsl:value-of select="document('../input/modulosdaw1.xml')/modulos/modulo[@codM=current()/datos/nombreModulo]"/></h2>
                <h3><xsl:value-of select="datos/fecha/dia"/> de <xsl:value-of select="document('../input/meses.xml')/meses/mes[@id=current()/datos/fecha/mes]"/> de <xsl:value-of select="datos/fecha/anyo"/></h3>
            </header>
            <main>
                <xsl:for-each select="preguntas/pregunta">
                <form class="preguntas">
                    <div class="pregunta">
                        <div><p><xsl:value-of select="enunciado"/></p></div>
                        <xsl:for-each select="respuestas/respuesta">
                            <label>
                                <div>
                                    <xsl:element name="input">
                                        <xsl:attribute name="type" select="'radio'"/>
                                        <xsl:attribute name="nombre" select="concat('p',../../../@id)"/>
                                        <xsl:attribute name="value" select="position()"/>
                                        <xsl:if test="@corregido='yes' and test=@correcta='correcta'">
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:if>
                                        <xsl:if test="@corregido='yes'">
                                            <xsl:attribute name="disable">disable</xsl:attribute>
                                        </xsl:if>
                                    </xsl:element>
                                    <xsl:value-of select="text()"/>
                                </div>
                            </label>
                        </xsl:for-each>
                    </div>
                </form>
                </xsl:for-each>
                <input type="button" value="Enviar Formulario" id="corregido" form="preguntas"/>
                <input type="button" value="Borrar Formulario" id="Borrar" form="preguntas"/>
            </main>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>