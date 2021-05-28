<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>
    <head>
        <title>Instituto Tecnólogico Edix</title>
        <link rel="stylesheet" type="text/css" href="ite.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       
    </head>

        <body>
            <header>
                <a href="#" class="logo"><img src="edix-formacion.png" width="80px"></a>
                <ul>  
                  <li><a href="#">Sobre edix</a></li> 
                  <li><a href="#">Formación</a>
                    <ul class="dropdown" aria-label="submenu">
                      <li><a href="#">DAM</a></li>
                      <li><a href="#">DAW</a></li>
                      <li><a href="#">ASIR</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Profesores</a></li> 
                  <li><a href="#">Direccion</a></li> 
                  <li><a href="#">Contacto</a></li> 
                </ul>
              </header>
       

        <h1 style="color:black"><xsl:value-of select="ite/empresa"/></h1>
        <!--TABLA GRADOS ..................................................................-->
        <h3>Grados Academicos</h3>
        
                <table class="tabla1" border="1">
                    <tr>
                        <th></th>
                        <th>Ciclos formativos</th>
                        <th>Grado</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="//ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
				    </xsl:for-each> <!-- Fin de for each de ciclo-->
                </table>
        <!--FIN TABLA GRADOS ...............................................................-->
        <!--TABLA Profesores ...............................................................-->
                <h3>Profesorado</h3>
        
                <table class="tabla1" border="1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="//profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                        </tr>
				    </xsl:for-each> <!-- Fin de for each de ciclo-->
                </table>
            <!--FIN TABLA Profesores ..............................................................-->        
            <!--TABLA DIRECTIVOS ..................................................................-->
        
                <table border="1">
                <caption><h4>Dirrecion</h4></caption>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Despacho</th>
                        </tr>
                    </thead>
                        <tbody>
                            <tr>
                                <td><xsl:value-of select="//director/nombre"/></td>
                                <td><xsl:value-of select="//director/despacho"/></td>
                            </tr>
                            <tr>
                                <td><xsl:value-of select="//jefe_estudios/nombre"/></td>
                                <td><xsl:value-of select="//jefe_estudios/despacho"/></td>
                            </tr>
                        </tbody>
                        <!-- <tfoot>Tabla1. Listado de peliculas</tfoot> -->
                </table>
            <!--FIN TABLA DIRECTIVOS ..............................................................-->

            <!--FORMULARIO ........................................................................-->
                
                
            
            <!--FIN FORMULARIO ....................................................................-->
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>
