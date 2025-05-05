<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/federacion">
        <html lang="es">
        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Torneo de Ajedrez</title>
            <link rel="stylesheet" href="tablas.css" />
        </head>
        <body>
            <header>
                <a href="main.html">
                    <img src="logo.png" alt="Logo Crónicas de Jaque" class="logo" />
                </a>
                <h1>Crónicas de Jaque</h1>
                <nav>
                    <a href="main.html">Inicio</a>
                    <a href="#historia">Historia</a>
                    <a href="#reglas">Reglas</a>
                    <a href="#lista">Lista de Torneos</a>
                </nav>
            </header>
            <main>
                <xsl:for-each select="torneo[@id='04']">
                    <h2><xsl:value-of select="nombre" /></h2>
                    <p><strong>Fecha:</strong> <xsl:value-of select="fecha" /></p>
                    <table border="1" style="width: 100%; border-collapse: collapse; text-align: left;">
                        <tr>
			                <th>Partido</th>
                            <th>Jugador 1</th>
                            <th>Jugador 2</th>
                            <th>Resultado</th>
                            <th>Duración (minutos)</th>
                        </tr>
                        <xsl:for-each select="partida">
                            <tr>
                                <td><xsl:value-of select="@id" /></td>
                                <td><xsl:value-of select="jugador1" /></td>
                                <td><xsl:value-of select="jugador2" /></td>
                                <td><xsl:value-of select="resultado" /></td>
                                <td><xsl:value-of select="duracion" /></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </main>
            <footer>
                <p>2025 Crónicas del Jaque. Todos los derechos reservados.</p>
            </footer>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>