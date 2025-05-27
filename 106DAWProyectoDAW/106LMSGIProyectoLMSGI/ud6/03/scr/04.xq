(:Crea un documento XML(04.xml) clasificación de los libros según categoría, donde el elemento
raíz es libros. Y si la categoría del libro es children el título aparece entre las etiquetas <children>
y en caso contrario aparece con la etiqueta <adult>.:)
<libros>
{
for $x in /bookstore/book[@category="children"]
return <children>{data($x/title)}</children>
}
{
for $x in /bookstore/book[@category!="children"]
return <adult>{data($x/title)}</adult>
}
</libros>