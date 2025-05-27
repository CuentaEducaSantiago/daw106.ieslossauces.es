(:25. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.:)
<libros>
{for $t in /bookstore/book
return <libro><title>{$t/title/text()}</title>
  <caracteres>{string-length(data($t/title))}</caracteres>
</libro>}
</libros>