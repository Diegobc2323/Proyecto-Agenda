//VOLVER AL MENU
Funcion  option <- volver_menu()

	Definir option Como Entero;
	
	Escribir "quiere hacer alguna otra operacion, si es asi pulse 1, sino pulse 2";
	leer option;				
	si option==1 Entonces
		option=7;
	SiNo
		option=6;
	FinSi

FinFuncion


//BUSCAR LA POSICION DEL PUNTO Y COMA
Funcion pto_coma <- buscar_pto_coma(vcontacto, tam)
	
	Definir j, i, pto_coma Como Entero;
	
	Para j=0 Hasta Longitud(vcontacto[i]) Con Paso 1 Hacer
		si subcadena(vcontacto[i],j,j)==";" entonces
			pto_coma = j;
			j = Longitud(vcontacto[i]);
		FinSi
	Fin Para
	
FinFuncion


//BUSCAR
SubAlgoritmo opcion_añadir(vcontacto, tam)
	
	Definir contacto, num_contacto Como Caracter;
	Definir  i, option Como Entero;
	
	//Pedir nombre y numero
	Escribir "Nombre del nuevo contacto";
	leer contacto;
	Escribir "número del nuevo contacto";
	leer num_contacto;
	
	
	//Buscar posicion vacia y asignar el contacto
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		
		si vcontacto[i]=="" Entonces
			vcontacto[i] = contacto + ";" +  num_contacto;
			i=tam;
		FinSi
	Fin Para
	
	option = volver_menu();
	
FinSubAlgoritmo


//ALGORITMO PRINCIPAL
Algoritmo Agenda
	Definir option, i, j, tam, pto_coma Como Entero;
	Definir contacto, num_contacto, registro_contacto, buscar, delete, edit, final, vcontacto Como caracter;
	Definir bandera Como Logico;
	
	registro_contacto="";
	i=0;
	tam=10;
	Dimension vcontacto[tam];
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		vcontacto[i]="";
	Fin Para
	
	
	Repetir
		Limpiar Pantalla;
		Escribir "Bienvenido a su agenda personal";
		Escribir "Para AÑADIR un contacto pulse 1";
		Escribir "Para BUSCAR un contacto pulse 2";
		Escribir "Para BORRAR un contacto pulse 3";
		Escribir "Para EDITAR un contacto pulse 4";
		Escribir "Para VER todos sus contacto pulse 5";
		Escribir "Para salir pulse 6";
		leer option;
		
		
		Segun option Hacer
			1:
				opcion_añadir(vcontacto, tam);
				
			2:
				Escribir "Cual es el contacto que quiere buscar";
				leer buscar;
				
				bandera=Falso;
				
				//recorre todo el vector en busca de un nombre dado y te lo devuelve 
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					pto_coma=0;
					
					//Encuentra la posicion del pto_coma
					
					pto_coma=buscar_pto_coma(vcontacto, tam);
					
					si buscar==Subcadena(vcontacto[i],0,pto_coma-1) Entonces
						Escribir "Nombre: " + Subcadena(vcontacto[i],0,pto_coma-1) + "   -   Numero: " + Subcadena(vcontacto[i],pto_coma+1,Longitud(vcontacto[i]));
						bandera=Verdadero;
					FinSi
					
				FinPara
				
				//Mensaje confirmacion
				si bandera==Falso Entonces
					Escribir "No se ha encontrado ningun contacto con ese nombre";
				FinSi
				
				
				option = volver_menu();
				
			3:
				Escribir "Cual es el contacto que quiere borrar";
				leer delete;
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					pto_coma=0;
					bandera=Falso;
					//Encuentra la posicion del pto_coma
					
					pto_coma=buscar_pto_coma(vcontacto, tam);
					
					si delete==Subcadena(vcontacto[i],0,pto_coma-1) Entonces
						vcontacto[i]="";
						bandera=Verdadero;
						i=tam;
					FinSi
					
					
				FinPara
				
				//Mensaje confirmacion
				si bandera==Verdadero Entonces
					Escribir "Se a eliminado el contacto";
					Escribir "";
				SiNo
					Escribir "No habia ningun contacto que eliminar con ese nombre";
					Escribir "";
				FinSi
				
				
				option = volver_menu();
				
			4:
				Escribir "Digame el contacto que quiere editar";
				leer edit;
				
				//recorre todo el vector en busca de un nombre dado y te lo devuelve 
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					pto_coma=0;
					
					//Encuentra la posicion del pto_coma
					pto_coma=buscar_pto_coma(vcontacto, tam);
					
					si edit==Subcadena(vcontacto[i],0,pto_coma-1) Entonces
						Escribir "si solo quieres modificar el nombre pulsa 1, si solo es el numero pulsa 2, si son ambos pulsa 3 si te has equivocado y quieres salir pulsa 4";
						
						leer option;
						
						contacto=Subcadena(vcontacto[i],0,pto_coma-1);
						num_contacto=Subcadena(vcontacto[i],pto_coma+1,Longitud(vcontacto[i]));
						
						Segun option Hacer
							1:
								Escribir "¿Cual es el nombre nuevo para tu contacto?";
								leer final;
								contacto=final;
								
								vcontacto[i]= contacto + ";" + num_contacto;
							2:
								Escribir "¿Cual es el numero nuevo para tu contacto?";
								leer final;
								num_contacto=final;
								
								vcontacto[i]= contacto + ";" + num_contacto;
							3:
								Escribir "¿Cual es el nombre nuevo para tu contacto?";
								leer final;
								contacto=final;
								
								vcontacto[i]= contacto + ";" + num_contacto;
								
								Escribir "¿Y cual es el numero nuevo para tu contacto";
								leer final;
								num_contacto=final;
								
								vcontacto[i]= contacto + ";" + num_contacto;
								
							De Otro Modo:
								
								option = volver_menu();
						Fin Segun
					FinSi
					
				FinPara
				
				
			5:
				Escribir "Estos son tus contactos";
				
				
				Para i=0 Hasta tam-1 Con Paso 1 Hacer
					
					si vcontacto[i]<>"" entonces
						pto_coma=0;
						
						//Encuentra la posicion del pto_coma
						pto_coma=buscar_pto_coma(vcontacto, tam);
						
						Escribir "Nombre: " + Subcadena(vcontacto[i],0,pto_coma-1) + "   -   Numero: " + Subcadena(vcontacto[i],pto_coma+1,Longitud(vcontacto[i]));
					FinSi
					
				Fin Para
				
				
				
				option = volver_menu();
			6:
				Escribir "" Sin Saltar;
				
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Bienvenido a su agenda personal";
				Escribir "Para AÑADIR un contacto pulse 1";
				Escribir "Para BUSCAR un contacto pulse 2";
				Escribir "Para BORRAR un contacto pulse 3";
				Escribir "Para EDITAR un contacto pulse 4";
				Escribir "Para VER todos sus contacto pulse 5";
				Escribir "Para salir pulse 6";
				leer option;
		Fin Segun
		
	Hasta Que option==6
	
	
	
FinAlgoritmo
