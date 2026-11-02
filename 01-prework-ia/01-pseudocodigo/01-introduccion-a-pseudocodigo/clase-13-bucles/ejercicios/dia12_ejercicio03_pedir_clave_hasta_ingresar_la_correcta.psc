//Ejercicio 3
//Enunciado:	
//	Escribe un programa que pida una clave hasta que el usuario escriba "contraseña maestra".

Algoritmo dia12_ejercicio03_pedir_clave_hasta_ingresar_la_correcta	
	Definir password Como Caracter	
	password = ''
	
	Mientras password <> 'contraseña maestra' Hacer
		Escribir Sin Saltar 'Introducir clave: '
		Leer password
	FinMientras
	
	Escribir 'Acceso permitido'
	
FinAlgoritmo
