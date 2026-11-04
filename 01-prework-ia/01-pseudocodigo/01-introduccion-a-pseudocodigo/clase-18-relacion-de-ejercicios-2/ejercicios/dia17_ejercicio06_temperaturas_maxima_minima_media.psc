//Ejercicio 6  Listas: recorrido y búsqueda
//Crea una lista con 8 temperaturas. Recórrela y muestra la temperatura máxima, 
//la mínima y cuántas están por encima de la media.

Algoritmo dia17_ejercicio06_temperaturas_maxima_minima_media
	Definir listaTemperaturas, temperaturaMaxima, temperaturaMinima, suma, media Como Real
	Definir i, contadorEncimaMedia Como Entero
	Dimension listaTemperaturas[8]
	
	Escribir 'Lista de temperaturas'	
	i = 0	
	Mientras i < 8 Hacer
		listaTemperaturas[i] = Aleatorio(-50,50)
		i = i + 1
	FinMientras
	
	Escribir Sin Saltar'['
	i = 0
	Mientras i < 8 Hacer
		Escribir Sin Saltar ' ',listaTemperaturas[i]
		i = i + 1
	FinMientras
	Escribir ' ]'
	
	i = 1
	temperaturaMaxima = listaTemperaturas[0]
	temperaturaMinima = listaTemperaturas[0]
	suma = listaTemperaturas[0]
	contadorEncimaMedia = 0	
	Mientras i < 8 Hacer
		suma = suma + listaTemperaturas[i]
		Si temperaturaMaxima < listaTemperaturas[i] Entonces
			temperaturaMaxima = listaTemperaturas[i]
		FinSi
		Si temperaturaMinima > listaTemperaturas[i] Entonces
			temperaturaMinima = listaTemperaturas[i]
		FinSi			
		i= i + 1
	FinMientras
	
	media = suma/8
	
	i = 0
	Mientras i < 8 Hacer
		Si listaTemperaturas[i] > media Entonces			
			contadorEncimaMedia = contadorEncimaMedia + 1
		FinSi
		i=i+1		
	FinMientras
	
	Escribir ' '
	Escribir 'La temperatura máxima: ', temperaturaMaxima, ' °C'	
	Escribir 'La temperatura minima: ', temperaturaMinima, ' °C'		
	Escribir 'La suma de las temperaturas es: ', suma
	Escribir 'La temperatura media es: ', media, ' °C'	
	Escribir 'Hay ', contadorEncimaMedia, ' temperaturas por encima de la media'
FinAlgoritmo
