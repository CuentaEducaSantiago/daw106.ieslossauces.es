(:Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta.
Ordenado de precio con IVA (4% en España):)
<books>
{for $x in /bookstore/book
let $y:= sum($x/price*0.04)
order by $y
return <libro><title>{data($x/title)}</title>
 <precio>{data($x/price)}</precio>
 <total>{data($y)}</total></libro>}
</books>