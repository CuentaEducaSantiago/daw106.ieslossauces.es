(:Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
<books>{for $x in /bookstore/book
return <titles><title>{data($x/title)}</title>
<totalautores>{count($x/author)}</totalautores></titles>}
</books>