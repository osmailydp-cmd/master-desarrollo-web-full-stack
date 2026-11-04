//Ejercicio 1 - Variables y operaciones aritméticas
//Pide al usuario el precio de un producto y un porcentaje de descuento. Calcula y muestra el precio final con el descuento aplicado y el ahorro obtenido.

Algoritmo dia17_ejercicio01_precio_final_con_descuento
	Definir precio, porcentajeDeDescuento, descuento, precioConDescuento Como Real
	
	Repetir
		Escribir Sin Saltar 'Ingrese el precio del producto: '
		Leer precio
	Hasta Que precio >= 0
	
	Repetir
		Escribir Sin Saltar 'Ingrese un descuento entre 0 y 100: '
		Leer porcentajeDeDescuento
	Hasta Que porcentajeDeDescuento >= 0 Y porcentajeDeDescuento <= 100
	
	descuento = precio * (porcentajeDeDescuento/100)
	precioConDescuento= precio - descuento
	
	Escribir ' '
	Escribir 'El precio del producto es: ', precio  
	Escribir 'El porcentaje de descuento es: ', porcentajeDeDescuento
	Escribir 'El ahorro obtenido es de: ' descuento
	Escribir 'El precio final con el descuento aplicado es: ' precioConDescuento
	
FinAlgoritmo
