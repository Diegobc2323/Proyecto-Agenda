Algoritmo Agenda
	Definir option, num_contacto Como Entero;
	Definir contacto, registro_contacto Como caracter;
	
	registro_contacto="";
	Repetir
		Escribir "Bienvenido a su agenda personal";
		Escribir "Para AÑADIR un contacto pulse 1";
		Escribir "Para BUSCAR un contacto pulse 2";
		Escribir "Para BORRAR un contacto pulse 3";
		Escribir "Para ELIMINAR un contacto pulse 4";
		Escribir "Para VER todos sus contacto pulse 5";
		Escribir "Para salir pulse 6";
		leer option;
		
		
		Segun option Hacer
			1:
				Escribir "Nombre del nuevo contacto";
				leer contacto;
				registro_contacto = registro_contacto + " " + contacto;
			2:
				Escribir "hola";
			3:
				Escribir "hola";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Bienvenido a su agenda personal";
				Escribir "Para AÑADIR un contacto pulse 1";
				Escribir "Para BUSCAR un contacto pulse 2";
				Escribir "Para BORRAR un contacto pulse 3";
				Escribir "Para ELIMINAR un contacto pulse 4";
				Escribir "Para VER todos sus contacto pulse 5";
				Escribir "Para salir pulse 6";
				leer option;
		Fin Segun
		
	Hasta Que option==6
	
	
	
FinAlgoritmo
