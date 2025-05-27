(:5. Nombre de los cursos que no han finalizado:)
for $doc in collection("Academia")/curso[fin<format-date(current-date(),'[D]-[M]-[Y]')]
return data($doc/nombre)