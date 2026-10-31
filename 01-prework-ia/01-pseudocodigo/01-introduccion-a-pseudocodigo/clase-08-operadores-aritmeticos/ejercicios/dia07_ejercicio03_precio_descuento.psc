//Ejercicio 3 Precio con descuento
//
//Enunciado
//Escribe un programa que:
//	Pida el precio de un producto
//	Pida la cantidad comprada
//	Calque el total sin descuento
//	Aplique un descuento fijo de 5 unidades
//	Muestre el total final
	
Algoritmo dia07_ejercicio03_precio_descuento
	
	Definir precioProducto,totalSinDescuento, descuento, totalConDescuento Como Real
	Definir cantidadComprada Como Entero
	
	descuento = 5	
	
	Escribir Sin Saltar 'Por favor ingrese el precio del producto: '
	Leer precioProducto
	Escribir Sin Saltar 'Por favor ingrese la cantidad de productos comprada: '
	Leer cantidadComprada
	
	totalSinDescuento = precioProducto * cantidadComprada
	totalConDescuento = totalSinDescuento - descuento
	
	Escribir ''	
	Si totalSinDescuento >= descuento Entonces
		Escribir 'El total de la compra con descuento es: ', totalConDescuento				
	SiNo	
		Escribir 'El total de la compra es: ', totalSinDescuento
	FinSi	
	
FinAlgoritmo
