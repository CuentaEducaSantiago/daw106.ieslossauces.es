(:24. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera descendente:)
for $x in /bookstore/book[contains(title,"x") or contains(title,"X")]
order by $x/title descending
return data($x/title)