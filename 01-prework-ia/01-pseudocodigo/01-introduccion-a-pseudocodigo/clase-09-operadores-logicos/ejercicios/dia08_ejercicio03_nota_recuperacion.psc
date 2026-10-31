//Ejercicio 3 Nota y recuperación
//
//Enunciado
//	Pida la nota del alumno
//	Pida si ha hecho recuperación (respuesta: "si" o "no")
//	Muestre el resultado de la expresión: nota >= 5 O recuperacion = "si"
		
Algoritmo dia08_ejercicio03_nota_recuperacion
	
	Definir nota Como Real
	Definir recuperacion Como Caracter
	Definir resultado Como Logico
		
	Escribir Sin Saltar 'Ingresa tu nota: '
	Leer nota
	Escribir Sin Saltar '¿Has hecho recuperación? '
	Leer recuperacion
	resultado = nota >= 5 o recuperacion = 'si'
	
	Escribir ''
	Escribir 'El resultado de la expresión nota >= 5 o recuperacion = si es: ' resultado	
	 
FinAlgoritmo