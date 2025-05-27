(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315:)
for $doc in collection("Academia")/curso
let $y := collection("Academia")/profesor[dni="33856315"]/@id
where $doc/profesor/@idref=$y
return data($doc/nombre)