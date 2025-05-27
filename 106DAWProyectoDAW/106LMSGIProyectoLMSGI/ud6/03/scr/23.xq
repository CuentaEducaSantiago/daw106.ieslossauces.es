(:23. Mostrar los libros cuya categoría empiece por C:)
for $c in /bookstore/book[starts-with(@category,"c")]
return data($c/title)