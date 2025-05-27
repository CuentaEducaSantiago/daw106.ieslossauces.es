(:3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)
for $doc in collection("Academia")/profesor
let $cur :=collection("Academia")/curso[nombre="Bases de Datos OR"]/profesor/@idref
where $doc/@id=$cur
return concat(data($doc/nombre)," ", data($doc/email))