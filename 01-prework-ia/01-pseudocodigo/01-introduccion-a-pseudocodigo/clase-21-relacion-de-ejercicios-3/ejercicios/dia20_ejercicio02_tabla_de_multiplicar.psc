//Ejercicio 2. Tabla de multiplicar
//Crea un algoritmo que:
//		a. Pida un número entero por pantalla.
//		b. Llame a un procedimiento que imprima la tabla de multiplicar de ese número, del
//		1 al 10.
//	Parámetros: el número introducido por el usuario (entero).
//	Retorno: ninguno.
//	Resultado de ejemplo:
//		Tabla de multiplicar del 35
//		----------------------------
//		35 x 1 = 35
//		35 x 2 = 70
//		...
//		35 x 10 = 350

Algoritmo dia20_ejercicio02_tabla_de_multiplicar
	Definir numero Como Entero
	Escribir 'Ingrese un número entero por pantalla: ' Sin Saltar
	Leer numero
	Escribir ' '
	Escribir 'Tabla de multiplicar del ', numero
	separador()
	TablaDeMultiplicar(numero)
FinAlgoritmo

SubProceso separador
 Escribir '--------------------------'
FinSubProceso

SubProceso TablaDeMultiplicar(numero)
	Definir i Como Entero
	Para i=1 Hasta 10 Hacer
		Escribir numero, ' * ', i, ' = ', numero * i
	FinPara
FinSubProceso
