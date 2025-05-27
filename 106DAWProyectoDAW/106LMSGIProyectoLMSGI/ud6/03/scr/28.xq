(:28. Mostrar los títulos en una tabla de HTML.:)
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6-3.3 Mostrar los títulos en una tabla de HTML. Santiago González Vicente</title>
    <link rel="stylesheet" type="text/css" href="css/estilos4.css"/>
</head>
<body>
    <table>
      <tr><th>Titulos</th></tr>
      {for $c in /bookstore/book/title
      return <tr><th>{data($c)}</th></tr>}
    </table>
</body>
</html>