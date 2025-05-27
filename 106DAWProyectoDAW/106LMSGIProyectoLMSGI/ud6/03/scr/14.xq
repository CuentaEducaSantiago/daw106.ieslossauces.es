(:14. Mostrar cuántos libros hay, y etiquetarlo con “total”:)
let $w:=count(/bookstore/book)
return <total>{$w}</total>