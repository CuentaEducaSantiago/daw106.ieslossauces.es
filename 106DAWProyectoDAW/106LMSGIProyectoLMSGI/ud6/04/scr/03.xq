(:3. Mostrar el ID de factura como ID de cliente y correo del cliente :)
<clientes>
  {for $x in collection("factura3")/factura
  return <cliente id="{$x/@id}">{$x/cliente/nombre/text()}</cliente>

}
</clientes>