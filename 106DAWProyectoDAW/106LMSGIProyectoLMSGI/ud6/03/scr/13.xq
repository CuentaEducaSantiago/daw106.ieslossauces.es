(:13. Mostrar los libros ordenador primero por “category” y luego por “title” en una sola consulta.:)
for $x in /bookstore/book
let $y:=/bookstore/book/title/text()
order by $x/@category
return concat($x/title/text(), $x/text())
