//Semáforo
//Dibuja cómo sería el diagrama de flujo para la decisión de
//cruzar una calle dependiendo del color de la luz de un
//semáforo (solo rojo y verde)

Algoritmo dia03_ejercicio01_semaforo
	Definir estado Como Caracter
	Escribir 'Introduce el color del semaforo'
	Leer estado
	Si estado == 'verde' Entonces
		Escribir 'El peaton puede cruzar la calle'
	SiNo
		Si estado == 'rojo' Entonces
			Escribir 'El peaton debe detenerse y esperar'
			Repetir
				Escribir 'Introduce el color del semaforo'
				Leer estado
				Si estado == 'verde' Entonces
					Escribir 'El peaton puede cruzar la calle'
				SiNo
					Escribir 'El peaton debe detenerse y esperar'
				FinSi
			Hasta Que estado == 'verde'
		FinSi
	FinSi
	
FinAlgoritmo
