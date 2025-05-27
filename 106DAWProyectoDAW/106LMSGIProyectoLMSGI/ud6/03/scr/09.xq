(:Mostrar el título del libro cuando tenga más de dos autores.:)
for $x in /bookstore/book
where count($x/author)>2 (:o gt:)
return  data($x/title)