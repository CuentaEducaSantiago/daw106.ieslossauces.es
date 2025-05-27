(:2. Qué cursos imparten/o han impartido clases en el "Aula 1":)
for $doc in collection("Academia")/curso
let $y := collection("Academia")/aula[nombre="Aula 1"]/@id
where $doc/aula/@idref=$y
return data($doc/nombre)