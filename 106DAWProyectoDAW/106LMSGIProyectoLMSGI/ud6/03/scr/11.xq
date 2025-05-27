(:11. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con “lib2005”.:)
<libros>
{for $x in /bookstore/book[year=2005]
return
<lib2005>{concat(data($x/title),": ",data($x/author))}</lib2005>}
</libros>