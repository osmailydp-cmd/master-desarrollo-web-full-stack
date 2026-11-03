//Ejercicio 3
//Enunciado
//Guardar notas de 3 alumnos con 2 exámenes.

//Ejercicio 4
//Enunciado
//Mostrar la segunda nota del tercer alumno


Algoritmo dia15_ejercicio03_04_guardar_notas_y_mostrar_segunda_nota_del_tercer_alumno		
	Definir notas Como Real
	Definir fila, columna Como Entero
	Dimension notas[3,2]
	
	fila=0
	Mientras fila<3 Hacer
		columna=0
		Mientras columna<2  Hacer
			Escribir Sin Saltar'Ingrasa la nota del alumno en la fila: ' ,fila, '  y la columna: ', columna
			Leer notas[fila,columna]
			columna = columna+1
		FinMientras
		Escribir ' '
		fila= fila+1
	FinMientras 

	Escribir 'La segunda nota del tercer alumno es: ', notas[2,1]
FinAlgoritmo

