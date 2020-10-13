Algoritmo Agenda
	Definir option Como Entero;
	Definir contacto, num_contacto, registro_contacto, buscar, delete, edit, final Como caracter;
	
	registro_contacto="";
	Repetir
		Limpiar Pantalla;
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
				Escribir "número del nuevo contacto";
				leer num_contacto;
				
				Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
				
				leer option;
				
				si option==1 Entonces
					option=7;
				SiNo
					option=6;
				FinSi
			2:
				Escribir "Cual es el contacto que quiere buscar";
				leer buscar;
				
				si buscar==contacto Entonces
					Escribir contacto, " " num_contacto;
				SiNo
					Escribir "no tiene ningun contacto con ese nombre";
				FinSi
				
				Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
				
				leer option;
				
				si option==2 Entonces
					option=6;
				FinSi
				
			3:
				Escribir "Cual es el contacto que quiere borrar";
				leer delete;
				
				si contacto==delete Entonces
					contacto="";
					num_contacto="";
				FinSi
				
				Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
				
				leer option;
				
				si option==2 Entonces
					option=6;
				FinSi
			4:
				Escribir "Digame el contacto que quiere editar";
				leer edit;
				
				si contacto==edit Entonces
					Escribir "si solo quieres modificar el nombre pulsa 1, si solo es el numero pulsa 2, si son ambos pulsa 3 si te has equivocado y quieres salir pulsa 4";
					
					leer option;
					
					Segun option Hacer
						1:
							Escribir "¿Cual es el nombre nuevo para tu contacto?";
							leer final;
							contacto=final;
						2:
							Escribir "¿Cual es el numero nuevo para tu contacto?";
							leer final;
							num_contactocontacto=final;
						3:
							Escribir "¿Cual es el nombre nuevo para tu contacto?";
							leer final;
							contacto=final;
							
							Escribir "¿Y cual es el numero nuevo para tu contacto";
							leer final;
							num_contacto=final;
						De Otro Modo:
							Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
							
							leer option;
							
							si option==2 Entonces
								option=6;
							FinSi
					Fin Segun
					
				FinSi
			5:
				Escribir "Estos son tus contactos";
				Escribir contacto;
				Escribir "";
				
				Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
				
				leer option;
				
				si option==2 Entonces
					option=6;
				FinSi
				
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
