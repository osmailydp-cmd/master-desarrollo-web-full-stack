//Ejercicio 7  Listas y cadenas combinadas
//Dada una lista de nombres, recórrela y muestra solo aquellos que empiezan por una letra que pida el usuario. 
//Indica al final cuántos coincidieron.

Algoritmo dia17_ejercicio07_buscar_nombres_por_inicial
	Definir nombresDisponibles, listaNombres,nombresCoincidentes, letra Como Caracter
	Definir i, posicion, contador Como Entero
	
	Dimension nombresDisponibles[10]
	Dimension listaNombres[5]
	Dimension nombresCoincidentes[5]
	
	nombresDisponibles[0] <- "Ana"
	nombresDisponibles[1] <- "Sofia"
	nombresDisponibles[2] <- "Amalia"
	nombresDisponibles[3] <- "Analia"
	nombresDisponibles[4] <- "Daniel"
	nombresDisponibles[5] <- "Carlos"
	nombresDisponibles[6] <- "Maria"
	nombresDisponibles[7] <- "Pedro"
	nombresDisponibles[8] <- "Lucia"
	nombresDisponibles[9] <- "Andres"
	
	i = 0	
	Mientras i < 5 Hacer
		posicion = Aleatorio(0,9)
		listaNombres[i] = nombresDisponibles[posicion]
		i = i + 1
	FinMientras
	
	Escribir 'Lista de nombres'
	Escribir Sin Saltar'['
	i = 0
	Mientras i < 5 Hacer		
		Escribir Sin Saltar ' ',  listaNombres[i]  
		i = i + 1
	FinMientras
	Escribir ' ]'
	
	Escribir ''
	Repetir
		Escribir Sin Saltar 'Por favor ingrese una letra: '
		Leer letra
	Hasta Que Longitud(letra) = 1
	
	Escribir ''
	i = 0
	contador = 0	
	Mientras i < 5 Hacer		
		Si Mayusculas(letra) = Mayusculas(Subcadena(listaNombres[i],0,0))  Entonces
			nombresCoincidentes[contador] = listaNombres[i]
			contador = contador + 1
		FinSi 				
		i = i + 1	
	FinMientras
	
	Si contador > 0 Entonces
		Escribir 'En total coincidieron ', contador, ' nombres.', ' Los nombres que empiezan con la letra ', letra, ' son: '
	Sino 
		Escribir  'No hay coincidencias con la inicial ', letra		
	FinSi
	
	i = 0
	Mientras i < contador  Hacer				
		Escribir nombresCoincidentes[i]
		i = i +1		
	FinMientras	
FinAlgoritmo

//nombresDisponibles[10]: los diez nombres originales.
//listaNombres[5]: los cinco seleccionados aleatoriamente.	
//nombresCoincidentes[5]: los nombres que coinciden con la inicial indicada.
