(:Mostrar los libros escritos en años que terminan en “3”:)
for $c in /bookstore/book
where ends-with(string($c/year),"3")
return data($c/title)
