//Ejercicio 5. Suma de los valores de cada fila (array bidimensional)
//Crea un algoritmo que:
//a. Cree un array bidimensional de 5 filas y 7 columnas con números aleatorios (10-50).
//b. Llame a una función que recorra el array y devuelva, en formato texto, la suma de los valores de cada fila.
//c. Imprima el array y las sumas de cada fila.

Algoritmo dia20_ejercicio05_suma_valores_por_fila
	Definir numeros,i,j,fila,columna Como Entero
	Dimension numeros[5,7]
	fila =5
	columna =7
	Escribir ' Array bidimensional de 5 filas y 7 columnas'
	LlenarArrayBidimensionalConNumerosAleatorios(numeros,fila,columna) 	
	
	Para i = 0 Hasta fila-1 Hacer
		Para j = 0 Hasta columna-1 Hacer
			Escribir Sin Saltar '  ', numeros[i,j]
		FinPara
		Escribir ' '
	FinPara
	
	Escribir ' '
	Escribir ' La suma de los valores de cada fila: [ ', SumaDeLosValoresDeCadaFila(numeros,fila,columna),']' 	
FinAlgoritmo

SubProceso LlenarArrayBidimensionalConNumerosAleatorios(numeros,fila,columna)	
	Definir i,j Como Entero
	Para i =0 Hasta fila-1 Hacer		
		Para j =0 Hasta columna-1 Hacer
			numeros[i,j] =Aleatorio(10,50)
		FinPara		
	FinPara	
FinSubProceso

Funcion resultado = SumaDeLosValoresDeCadaFila(numeros,fila,columna)
	Definir resultado Como Texto	
	Definir suma,i,j Como Entero	
	resultado = ''	
	Para i =0 Hasta fila-1  Hacer	
		suma =0
		Para j =0 Hasta columna-1 Hacer
			suma= suma + numeros[i,j]			
		FinPara
		resultado =	resultado + ConvertirATexto(suma) + ' '
	FinPara	 
FinFuncion
