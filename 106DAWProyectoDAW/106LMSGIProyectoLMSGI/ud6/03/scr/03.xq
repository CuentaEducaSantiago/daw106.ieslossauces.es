(:Crea una página web (03.html) cuyo título de la web “UD6-3.3 Listado de libros. Nombre y
apellidos” y que contenga una lista con viñetas con los títulos de los libros.:)

<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6-3.3 Listado de libros. Santiago González Vicente</title>
</head>
<body>
    <ul>
    {for $x in /bookstore/book
    return  <li>{data($x/title)}</li>
  }
    </ul>
</body>
</html>