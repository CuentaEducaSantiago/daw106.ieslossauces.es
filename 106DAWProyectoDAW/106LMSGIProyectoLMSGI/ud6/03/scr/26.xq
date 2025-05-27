(:26. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétanos con "año".:)
<libros>
{for $t in distinct-values(/bookstore/book/year)
return <libro><año>{$t}</año>
</libro>}
</libros>