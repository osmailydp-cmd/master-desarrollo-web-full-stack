//Ejercicio 4  Bucle MIENTRAS con validación
//Solicita una contraseña repetidamente hasta que el usuario introduzca la correcta ("clave123"). 
//Cuenta cuántos intentos ha necesitado y muéstralo al final.

Algoritmo dia17_ejercicio04_validacion_clave_contador_intentos
	Definir password, claveCorrecta Como Caracter
	Definir  intentos Como Entero
	
	claveCorrecta = 'clave123'	
	intentos=1
	
	Escribir Sin Saltar 'Por favor ingrese la clave: '
	Leer password	
		
	Mientras password <> claveCorrecta Hacer
		Escribir Sin Saltar 'Por favor ingrese la clave: '
		Leer password		
		intentos = intentos+1		
	FinMientras
	
	Escribir ' '
	Si intentos = 1 Entonces
		Escribir 'Clave correcta. Ha necesitado 1 intento'
	SiNo
		Escribir 'Clave correcta. Ha necesitado ', intentos, ' intentos'
	FinSi
FinAlgoritmo
