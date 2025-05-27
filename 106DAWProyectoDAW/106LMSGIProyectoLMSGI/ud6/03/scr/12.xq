(:Mostrar los años de publicación, primero con for y luego con let. Etiquetar la salida con publicación:)
<books>
{for $x in /bookstore/book
return <publicacion>{data($x/year)}</publicacion>,
let $y:=/bookstore/book
return <publicacion>{data($y/year)}</publicacion>
}
</books>