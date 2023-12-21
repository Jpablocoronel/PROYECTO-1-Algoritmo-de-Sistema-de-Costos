Algoritmo CostoProducto
	
	Definir costo_original Como Real  
	
	Definir descuento_producto Como Real
	
	Definir iva Como Real
	
	Definir descuento_cantidad Como Real
	
	Definir costo_envio Como Real
	
	Definir costo_final Como Real
	
	Escribir "Ingrese el nombre del producto a comprar: "
	
	leer nombre_producto
	
	Escribir "Ingrese precio del producto: "
	
	Leer costo_original
	
	Escribir "ingrese la cantidad de productos a comprar: " 
	leer cantidad_producto
	
	subtotal = costo_original * cantidad_producto
	
	Escribir "Ingrese descuento del producto: "
	
	Leer descuento_producto
	
	descuento = subtotal * descuento_producto
	
	negativodescuento = descuento * (- 1)
	
	costo_con_descuento = subtotal - descuento
	
	total_iva = costo_con_descuento * 1.12
	
	iva = total_iva - costo_con_descuento
	
	Escribir " ingrese el peso total de producto en kg: "
	
	Leer peso_producto 
	
	Escribir "ingrese la distacia de envio en km: "
	
	Leer distancia_envio
	
	costo_envio = peso_producto * distancia_envio + 10
	
	costo_con_iva_envio = costo_envio + costo_con_iva
	
	Si cantidad_producto >= 2 Entonces
        descuento_cantidad = total_iva * 0.95
    Sino
        descuento_cantidad = total_iva
    FinSi
	
	costo_final = descuento_cantidad + costo_con_iva_envio
	
	descuento_total = total_iva  * 0.05 
	descuento_total_negativo = descuento_total * (-1)
	
	Escribir "  - Producto: " nombre_producto
	Escribir "  - Cantidad de productos comprado: " cantidad_producto
	Escribir "  - Precio del Producto: " + ConvertirATexto(costo_original)
	Escribir "  - Subtotal:  " + ConvertirATexto(subtotal)
	Escribir "  - Descuento: " + ConvertirATexto(negativodescuento)
    Escribir "  - Impuestos: " + ConvertirATexto(iva)
    Escribir "  - Descuento por Cantidad: " + ConvertirATexto(descuento_total_negativo)
    Escribir "  - Costo de Envío: " + ConvertirATexto(costo_envio)
	Escribir "  - Costo Final del Pedido: " + ConvertirATexto(costo_final)
	
	
	
	
FinAlgoritmo
