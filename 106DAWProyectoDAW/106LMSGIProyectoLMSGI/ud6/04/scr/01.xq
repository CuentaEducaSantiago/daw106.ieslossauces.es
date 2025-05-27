(:1. Listar el nombre de todos los clientes:)
for $x in collection("factura3")/factura/cliente
return $x/nombre/text()