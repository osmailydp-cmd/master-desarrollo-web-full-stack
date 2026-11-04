//Ejercicio 8  Clasificación con condicionales múltiples
//Lee las notas de una lista de alumnos. Por cada nota, clasifícala (Suspenso < 5, Aprobado 5 a 6.9, Notable 7 a 8.9, Sobresaliente >= 9) 
//y cuenta cuántos hay de cada categoría.

Algoritmo dia17_ejercicio08_clasificacion_notas_alumnos
	Definir alumnos Como Caracter
	Definir notas Como Real
	Definir i , contadorSuspenso, contadorAprobado,contadorNotable, contadorSobresaliente Como Entero
	Dimension alumnos[6]
	Dimension notas[6]
	
	alumnos[0]='Ana'
	alumnos[1]='Elena'
	alumnos[2]='Paris'
	alumnos[3]='Marta'
	alumnos[4]='Pedro'
	alumnos[5]='Juan'
	
	contadorSuspenso = 0
	contadorAprobado = 0
	contadorNotable = 0
	contadorSobresaliente = 0
	i = 0
	Mientras i < 6 Hacer
		//aceptarás notas entre 0 y 10.
		Repetir
			Escribir Sin Saltar 'Ingresa la nota para el alumno ', alumnos[i], ': '
			Leer notas[i]
		Hasta Que notas[i] >= 0 Y notas[i] <= 10
		
		Si notas[i] < 5 Entonces
			Escribir 'Suspenso'
			contadorSuspenso = contadorSuspenso+1
		Sino Si notas[i] >= 5 Y notas[i] < 7 Entonces
				Escribir 'Aprobado'
				contadorAprobado = contadorAprobado+1
			Sino Si notas[i] >= 7 Y notas[i] < 9 Entonces
					Escribir 'Notable'	
					contadorNotable = contadorNotable+1
				Sino Si notas[i] >= 9 Entonces
						Escribir 'Sobresaliente'
						contadorSobresaliente = contadorSobresaliente+1
					FinSi
				FinSi
			FinSi
		FinSi
		i=i+1
	FinMientras
	
	Escribir 'En total hay ', contadorSuspenso, ' Suspensos ', contadorAprobado, ' Aprobados ', contadorNotable,  ' Notables ', contadorSobresaliente, ' Sobresaliente '
FinAlgoritmo
