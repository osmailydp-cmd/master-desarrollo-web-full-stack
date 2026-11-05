//Ejercicio 4. Posición del número más alto (array bidimensional)
//Crea un algoritmo que:
//		a. Cree un array bidimensional de 5 filas y 7 columnas con números aleatorios
//		(10-50).
//		b. Llame a una función que recorra el array y devuelva, en formato texto, la posición
//		del número más alto.
//	Parámetros: array bidimensional 5x7 con números aleatorios (10-50).
//	Retorno: la posición del número más alto (texto).
//		c. Imprima el array y la posición del número más alto.
//	Nota: Si el número más alto aparece en varias posiciones, devuelve únicamente la primera
//			en la que aparece.
//		Resultado de ejemplo:
//		Ejemplo con un array 2x3:
//			5 6 2
//			6 9 5
//			La posición en la que aparece el número más alto es la [1,1]

Algoritmo  dia20_ejercicio04_posicion_numero_maximo_matriz
	Definir numeros, fila,columna Como Entero
	Dimension numeros[5,7]
	Escribir 'Array bidimensional de 5 filas y 7 columnas '
	LlenarArrayBidimensionalConNumerosAleatorios(numeros) 	
	fila=0	
	Mientras fila<5 Hacer	
		columna =0
		Mientras columna <7 Hacer
			Escribir Sin Saltar numeros[fila,columna], ' ' 			
			columna = columna + 1
		FinMientras
		Escribir ' '
		fila = fila+1	
	FinMientras
	Escribir  ' '	
	Escribir PosicionDelNumeroMasAlto(numeros) 
FinAlgoritmo

SubProceso LlenarArrayBidimensionalConNumerosAleatorios(numeros) 
	Definir fila,columna Como Entero	
	fila=0	
	Mientras fila<5 Hacer	
		columna =0
		Mientras columna <7 Hacer
			numeros[fila,columna] =Aleatorio(10,50)
			columna = columna + 1
		FinMientras		
		fila = fila+1	
	FinMientras	
FinSubProceso

Funcion resultado = PosicionDelNumeroMasAlto(numeros) 
	Definir fila,columna,NumeroMasAlto, posicionFila,posicionColumna Como Entero
	Definir resultado Como Texto
	
	fila=0
	posicionFila=0
	posicionColumna=0
	NumeroMasAlto = numeros[0,0]
	
	Mientras fila<5 Hacer	
		columna =0		
		Mientras columna <7 Hacer
			Si 	NumeroMasAlto < numeros[fila,columna] Entonces				
				NumeroMasAlto = numeros[fila,columna] 
				posicionFila = fila
				posicionColumna= columna			
			FinSi
			columna = columna + 1
		FinMientras		
		fila = fila+1
	FinMientras
	
	resultado = 'El número más alto es: ' + ConvertirATexto(NumeroMasAlto) + ' y su posición es: [' + ConvertirATexto(posicionFila) + ',' + ConvertirATexto(posicionColumna) + ']'	
	
FinFuncion
