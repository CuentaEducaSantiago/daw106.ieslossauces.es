(:Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios.:)
<books>{for $x in /bookstore/book/price
return <precio>{data($x)}</precio>}
{let $y:= sum(/bookstore/book/price)
return <total>{$y}</total>}
</books>