(:Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece
distintos colores el título en función de la categoría.:)
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="estilos.css"/>
    <title>UD6-3.5 Listado de libros Y Tabla de Libros. Santiago González Vicente</title>
</head>
<body>
<h1>BOOKSTORE</h1>
  <table>
    <thead>
      <tr><th>Titulo</th><th>Categoría</th></tr>
    </thead>
      {for $x in /bookstore/book
      return  <tr><th>{data($x/title)}</th><th>{data($x/@category)}</th></tr>
    }
    <ul>
      {for $x in /bookstore/book
      return  <li class="{data($x/@category)}">{data($x/title)}</li>
    }
    </ul>
  </table>
</body>
</html>