(: Lista el título de los libros ordenados por título:)
for $p in /bookstore/book
order by $p/title/text()
return data($p/title)