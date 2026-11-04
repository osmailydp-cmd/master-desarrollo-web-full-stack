//Reto final
//Elige uno de los ejercicios anteriores y añádele una mejora (un caso nuevo, una validación extra o un comportamiento adicional). 
//Actualiza su diagrama y su pseudocódigo.

Algoritmo dia17_reto_final_iniciales_nombre_completo	
		Definir nombre, apellidos, nombreCompleto, iniciales, letra Como Caracter
		Definir i Como Entero
				
		Repetir
			Escribir Sin Saltar 'Ingrese su nombre: '
			Leer nombre
		Hasta Que Longitud(nombre) > 0 Y Subcadena(nombre,0,0) <> ' '
		
		Repetir
			Escribir Sin Saltar 'Ingrese sus apellidos:'
			Leer apellidos
		Hasta Que Longitud(apellidos) > 0 Y Subcadena(apellidos,0,0) <> ' '	
		
		Escribir ' '
		nombreCompleto = nombre + ' ' + apellidos
		//Las iniciales las obtuve com un Mientras recorriendo la cadena nombreCompleto
		letra = Subcadena(nombreCompleto,0,0)		
		iniciales = ''
		i=0
		Mientras i<Longitud(nombreCompleto) Hacer
			letra = Subcadena(nombreCompleto,i,i)
			Si i=0 Entonces
				Si letra <> ' ' Entonces
					iniciales = iniciales + Mayusculas(letra)+'.'
				FinSi
			SiNo
				Si Subcadena(nombreCompleto, i-1, i-1)=' ' Y letra <> ' ' Entonces
					iniciales = iniciales + Mayusculas(letra) +'.'
				FinSi
			FinSi
			i<-i+1		
		FinMientras
		
		Escribir 'Datos del usuario: '
		Escribir 'Nombre completo: ', nombreCompleto
		Escribir 'Número total de caracteres: ', Longitud(nombreCompleto)
		Escribir 'Iniciales: ', iniciales
		
FinAlgoritmo


