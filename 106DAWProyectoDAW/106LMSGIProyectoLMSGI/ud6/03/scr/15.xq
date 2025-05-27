(:15. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros:)
<libros>
{
  let $x:= for $r in /bookstore/book/title
  return <book>{data($r)}</book>,
  $c:=<total>{count(//book)}</total>
  return ($x, $c)
}
</libros>