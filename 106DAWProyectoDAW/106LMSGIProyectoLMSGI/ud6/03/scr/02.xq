(:Lista el título de los libros ordenados por título cuyo precio es superior a 30.:)
for $x in /bookstore/book[price>30]
order by $x/title/text()
return data($x/title)