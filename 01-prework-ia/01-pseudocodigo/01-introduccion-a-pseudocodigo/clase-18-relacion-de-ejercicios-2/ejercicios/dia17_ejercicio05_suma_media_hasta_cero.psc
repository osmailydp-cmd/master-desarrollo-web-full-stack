//Ejercicio 5 Contadores y acumuladores
//Lee números enteros uno a uno hasta que el usuario introduzca un 0. 
//Al terminar, muestra cuántos números se introdujeron, su suma total y su media.

Algoritmo dia17_ejercicio05_suma_media_hasta_cero
	Definir numero, contador Como Entero
	Definir suma, media Como Real
	suma = 0	
	contador =0
	media=0
	numero =-1
	
	Mientras numero <> 0 Hacer		
		Escribir Sin Saltar 'Ingrese un número: '
		Leer numero		
		Si numero <> 0 Entonces
			contador = contador + 1	
			suma = suma + numero
		FinSi		
	FinMientras	
	
	Si contador > 0 Entonces
		media = suma / contador
	SiNo
		media = 0
	FinSi	
	
	Escribir ' '
	Escribir 'Se introdujeron ', contador, ' números '
	Escribir 'La suma total es: ',  suma	
	Escribir 'La media es es: ',  media	
FinAlgoritmo
