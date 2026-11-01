//Ejercicio 2 Nombre y ciudad con Concatenar()
//
//Enunciado
//Leer nombre y ciudad y mostrar: Hola Marta, vives en Valencia
	
Algoritmo dia09_ejercicio02_nombre_ciudad
	
	Definir nombre, ciudad, mensaje  Como Caracter
	
	Escribir Sin Saltar 'Introduce tu nombre: '
	Leer nombre
	Escribir Sin Saltar 'Introduce tu ciudad: '
	Leer ciudad
	
	Escribir ''
	//Opción 1: Utilizando Concatenar()
	//Concatenar(cadena,cadena)
	mensaje = Concatenar('Hola ', nombre)
	mensaje = Concatenar(mensaje, ', vives en ')
	mensaje = Concatenar(mensaje, ciudad)
	
	Escribir mensaje
	
	//Opcion 2 Escribir
	//Escribir 'Hola ', nombre, ', vives en ', ciudad	
	
FinAlgoritmo