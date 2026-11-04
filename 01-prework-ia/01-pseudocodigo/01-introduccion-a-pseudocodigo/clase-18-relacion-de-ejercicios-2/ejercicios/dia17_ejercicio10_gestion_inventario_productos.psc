//Ejercicio 10 Ejercicio integrador
//Gestiona el inventario de una tienda. Para cada uno de los 5 productos, pide nombre y cantidad en stock (guardándolos en dos listas). Después muestra: el producto con menos stock, 
//cuántos productos están agotados (stock = 0) y el stock total. Si algún nombre tiene menos de 3 letras, avisa de que el nombre es demasiado corto.
	
Algoritmo dia17_ejercicio10_gestion_inventario_productos	
	Definir nombreProductos, productoConMenosStock Como Caracter
	Definir cantidadStockProductos, menorStock, i, stockAgotado, stockTotal  Como Entero
	
	Dimension nombreProductos[5]
	Dimension cantidadStockProductos[5]
		
	//pide nombre y cantidad en stock (guardándolos en dos listas)	
	i=0		
	Mientras i<5  Hacer		
		Escribir Sin Saltar ' Ingrese el nombre del producto: ', i
		Leer nombreProductos[i]	
		Si Longitud(nombreProductos[i])>=3 Entonces			
			Repetir
				Escribir Sin Saltar ' Ingrese la cantidad en stock: '
				Leer cantidadStockProductos[i]
				Si cantidadStockProductos[i] < 0 Entonces
					Escribir ' El stock no puede ser negativo.'
				FinSi
			Hasta Que cantidadStockProductos[i] >= 0
			i=i+1
			Escribir '----------------------------'
			
		SiNo //Si algún nombre tiene menos de 3 letras, avisa de que el nombre es demasiado corto.	
				Escribir ' El nombre es demasiado corto. '
				Escribir '----------------------------'										
		FinSi			
		
	FinMientras	
	
	menorStock=cantidadStockProductos[0]	
	productoConMenosStock = nombreProductos[0]	
	stockTotal =cantidadStockProductos[0]
	stockAgotado = 0
	
	Si cantidadStockProductos[0] = 0 Entonces //cuántos productos están agotados (stock = 0)
		stockAgotado = stockAgotado +1 			
	FinSi
	
	i=1
	Mientras i<5 Hacer
		Si menorStock>cantidadStockProductos[i] Entonces //muestra: el producto con menos stock 
			menorStock= cantidadStockProductos[i]	
			productoConMenosStock = nombreProductos[i]			
		FinSi	
		
		Si cantidadStockProductos[i] = 0 Entonces //cuántos productos están agotados (stock = 0)
			stockAgotado = stockAgotado +1 			
		FinSi
		stockTotal = stockTotal + cantidadStockProductos[i] // stock total	
		i=i+1
	FinMientras
	
	
	Escribir ' El nombre del producto con menos stock es: ', productoConMenosStock
	Escribir ' Hay ', stockAgotado, ' productos agotados '
	Escribir ' El stock total es de: ',  stockTotal

FinAlgoritmo
