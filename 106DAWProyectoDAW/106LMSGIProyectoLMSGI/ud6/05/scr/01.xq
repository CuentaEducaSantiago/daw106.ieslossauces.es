(:1. Mostrar el código del "Aula 1":)
let $doc := collection("Academia")/aula[@id=1]
return data($doc/@id)