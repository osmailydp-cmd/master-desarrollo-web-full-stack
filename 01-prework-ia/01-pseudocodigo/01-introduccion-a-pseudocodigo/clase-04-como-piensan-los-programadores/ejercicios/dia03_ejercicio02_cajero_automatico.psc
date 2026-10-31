//Cajero automático
//Ahora intenta dibujar el diagrama
//de flujo de lo que ocurre cuando
//una persona va a sacar dinero en un
//cajero automático con su tarjeta.

Algoritmo dia03_ejercicio02_cajero_automatico
	Definir deslizarTarjeta Como Logico
	Definir codigoTarjeta Como Entero
	Definir codigoUsuario Como Entero
	Definir dineroTargeta Como Entero
	Definir montoUsuario Como Entero
	
	deslizarTarjeta=Verdadero
	codigoTarjeta=1234
	dineroTargeta=500
	
	Escribir 'Deliza la tarjeta por banda'
	Si deslizarTarjeta  Entonces
		Escribir 'La tarjeta se ha deslizado corrrectamente'	
		Escribir 'Ingresa el codigo'
		Leer codigoUsuario
		
		Si codigoUsuario= codigoTarjeta Entonces
			Escribir 'Ingresa el monto'
			Leer montoUsuario
			Si montoUsuario <= dineroTargeta Entonces 
				Escribir 'La operación se ha realizado con éxito.', ' Se ha extraido ', montoUsuario, ' de su tarjeta de ahorro'
			sino 
				Escribir 'La operación fue rechazada, el monto ingresado supera su fondo disponible'
			FinSi
			
		sino 
			Escribir 'La operación fue rechazada. El códogo ingresado no es correcto'
		FinSi
	sino 
		Escribir 'Por favor intente nuevamente deslizar la tarjeta'
	FinSi

FinAlgoritmo
