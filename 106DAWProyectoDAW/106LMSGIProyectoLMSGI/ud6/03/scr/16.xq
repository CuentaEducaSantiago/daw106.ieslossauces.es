(:16. Mostrar el precio mínimo y el máximo de los libros:)
for $x in min(/bookstore/book/price)
let $y :=max(/bookstore/book/price)
return concat(($x)," ",($y))