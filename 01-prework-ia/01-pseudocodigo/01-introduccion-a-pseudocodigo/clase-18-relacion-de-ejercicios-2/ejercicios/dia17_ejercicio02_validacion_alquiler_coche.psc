//Ejercicio 2 Condicionales y lógica
//Lee la edad de una persona y si tiene o no carnet de conducir (sí/no). 
//Indica si puede alquilar un coche: debe ser mayor de 18 años Y tener carnet. Muestra el motivo si no puede.

Algoritmo dia17_ejercicio02_validacion_alquiler_coche
	Definir edad Como Entero
	Definir tineCarnetDeConducir Como Caracter
	Definir puedeAlquilar Como Logico	
	
	Repetir
		Escribir Sin Saltar "Ingrese su edad: "
		Leer edad
	Hasta Que edad >= 0
	
	Repetir
		Escribir Sin Saltar "¿Tiene carnet de conducir? (si/no): "
		Leer tineCarnetDeConducir
	Hasta Que tineCarnetDeConducir = "si" O tineCarnetDeConducir = "no"
	
	puedeAlquilar = edad >= 18 Y tineCarnetDeConducir = "si"
	
	Escribir ''		
	Si puedeAlquilar Entonces 		
		Escribir "Puede alquilar un coche"
	sino
		
		Si edad<18 Entonces			
			Escribir "La persona es menor de edad"			
		sino
			Escribir "La persona no tiene carnet de conducir"			
			
		FinSi
	FinSi
	
FinAlgoritmo
