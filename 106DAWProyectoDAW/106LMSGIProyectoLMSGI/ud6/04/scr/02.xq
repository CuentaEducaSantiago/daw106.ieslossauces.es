(:2. Filtrar facturas con un importe total mayor que 200:)
let $x := collection("factura3")/factura[total>200]
return $x