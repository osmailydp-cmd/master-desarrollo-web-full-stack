//Ejercicio 4
//Enunciado:	
//	De este código, identifica qué error tiene y cómo podrías corregirlo.
	
//Código proporcionado:
Algoritmo dia12_ejercicio04_identificar_error1_y_como_corregirlo
	
	Definir contador Como Entero
	
	contador <- 1
	
	MIENTRAS contador <= 5 HACER
		ESCRIBIR contador
	FIN MIENTRAS
	
FinAlgoritmo

//Respuesta:
//el error es que entra en un bucle infinito porque no se incrementa el contador, es decir falta  contador = contador +1
//Respuesta resumida:
//falta el incremento y el bucle nunca termina
