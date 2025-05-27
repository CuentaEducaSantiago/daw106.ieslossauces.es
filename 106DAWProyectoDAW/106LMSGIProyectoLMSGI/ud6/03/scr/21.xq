(:Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título:)
<books>{for $x in /bookstore/book
return <titles><title autores='{count($x/author)}'>{data($x/title)}</title>
</titles>}
</books>