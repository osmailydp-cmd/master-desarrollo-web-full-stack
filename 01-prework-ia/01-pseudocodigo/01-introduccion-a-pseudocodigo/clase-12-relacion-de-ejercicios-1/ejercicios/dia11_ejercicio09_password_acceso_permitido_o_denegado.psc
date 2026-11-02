//Ejercicio 9: Password: acceso permitido o denegado
//	Pide una contraseña. Si es igual a 'admin', muestra 'Acceso permitido'. En caso contrario,
//	muestra 'Acceso denegado'.

Algoritmo dia11_ejercicio09_password_acceso_permitido_o_denegado
	
	Definir contrasenna, contrasennaGuardada Como Caracter	
	contrasennaGuardada = 'admin'
	
	Escribir Sin Saltar 'Ingresar contraseña: '
	Leer contrasenna
	
	Escribir ''
	Si contrasenna = contrasennaGuardada Entonces
		Escribir 'Acceso permitido'
	SiNo
		Escribir 'Acceso denegado'
	FinSi
	
FinAlgoritmo
