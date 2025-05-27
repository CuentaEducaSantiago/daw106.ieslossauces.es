(:Mostrar la suma total de los precios con la etiqueta total:)
<books>
{for $x in sum(/bookstore/book/price)
return <total>{$x}</total>}
</books>