(:8. Renombrar el nodo total por importeTotal:)
for $doc in collection("factura3")
return rename node $doc/factura/total as "importeTotal"