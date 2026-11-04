//Ejercicio 3  Operaciones con cadenas
//Pide el nombre y los apellidos del usuario por separado. 
//Muestra el nombre completo, su número total de caracteres y las iniciales (por ejemplo, "Ana López Ruiz" ? "A.L.R.")

Algoritmo dia17_ejercicio03_nombre_completo_e_iniciales
	Definir nombre, apellido1, apellido2, nombreCompleto Como Caracter
	Definir ultimo Como Entero
	
	//Solicitar y validar nombre
	Repetir
		Escribir Sin Saltar 'Ingrese su nombre: '
		Leer nombre
	Hasta Que Longitud(nombre) > 0 Y Subcadena(nombre,0,0) <> " "
	
	// Eliminar espacios al final del nombre
	ultimo <- Longitud(nombre) - 1	
	Mientras ultimo > 0 Y Subcadena(nombre,ultimo,ultimo) = " " Hacer
		nombre <- Subcadena(nombre,0,ultimo-1)
		ultimo <- ultimo - 1
	FinMientras
	
	//Solicitar y validar apellido1
	Repetir
		Escribir Sin Saltar 'Ingrese su primer apellido: '
		Leer apellido1
	Hasta Que Longitud(apellido1) > 0 Y Subcadena(apellido1,0,0) <> " "
	
	//Eliminar espacios finales del primer apellido
	ultimo <- Longitud(apellido1) - 1	
	Mientras ultimo > 0 Y Subcadena(apellido1,ultimo,ultimo) = " " Hacer
		apellido1 <- Subcadena(apellido1,0,ultimo-1)
		ultimo <- ultimo - 1
	FinMientras
	
	//Solicitar y validar apellido2
	Repetir
		Escribir Sin Saltar 'Ingrese su segundo apellido: '
		Leer apellido2
	Hasta Que Longitud(apellido2) > 0 Y Subcadena(apellido2,0,0) <> " "	
	
	//Eliminar espacios finales del segundo apellido
	ultimo <- Longitud(apellido2) - 1	
	Mientras ultimo > 0 Y Subcadena(apellido2,ultimo,ultimo) = " " Hacer
		apellido2 <- Subcadena(apellido2,0,ultimo-1)
		ultimo <- ultimo - 1
	FinMientras
	
	nombreCompleto = nombre + ' ' + apellido1+ ' ' + apellido2

	Escribir ''
	Escribir 'Datos del usuario: '
	Escribir 'Nombre completo: ', nombreCompleto
	Escribir 'Número total de caracteres: ', Longitud(nombreCompleto)
	Escribir 'Iniciales: ', Subcadena(nombre,0,0), '.',Subcadena(apellido1,0,0), '.',Subcadena(apellido2,0,0), '.'
	
FinAlgoritmo


//Notas:
//Longitud(nombre) > 0: que no esté vacío.	
//Subcadena(nombre,0,0) <> " ": que el primer carácter no sea un espacio.	
//Y: exige que ambas condiciones se cumplan.