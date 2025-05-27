(:27. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.:)
<libros>
{for $t in distinct-values(/bookstore/book/author)
order by string-length($t)
return <author>{$t}</author>
}
</libros>