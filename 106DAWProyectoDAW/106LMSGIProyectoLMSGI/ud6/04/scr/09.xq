(:9. Actualizar todas las facturas con importe inferior a 100 con el valor 100.:)
let $doc := collection("factura3")/factura[importeTotal<200]
return replace value of node $doc/importeTotal with 200