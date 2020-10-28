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


//-----------------------------------------------------------------------------------------------//


//AÑADIR
SubAlgoritmo opcion_añadir(mContacto, tam)
	
	Definir contacto, num_contacto Como Caracter;
	Definir  i, j, option Como Entero;
	
	//Pedir nombre y numero
	Escribir "Nombre del nuevo contacto";
	leer contacto;
	Escribir "número del nuevo contacto";
	leer num_contacto;
	
	
	//Buscar posicion vacia y asignar el contacto
	Para j=0 Hasta tam-1 Con Paso 1 Hacer
		Para i=0 Hasta 1 Con Paso 1 Hacer
			si i==0 y mContacto[i,j]=="" Entonces
				mContacto[i,j] = contacto;
			SiNo
				mContacto[i,j] = num_contacto;
			FinSi
		Fin Para
		j=tam;
	Fin Para
	
	
FinSubAlgoritmo

//-----------------------------------------------------------------------------------------------//

//BUSCAR
SubAlgoritmo opcion_buscar(mContacto, tam)
	
	Definir buscar Como Caracter;
	Definir  i, j, option Como Entero;
	Definir bandera Como Logico;
	
	Escribir "Cual es el contacto que quiere buscar";
	leer buscar;
	
	bandera=Falso;
	
	//recorre todo el vector en busca de un nombre dado y te lo devuelve 
	Para j=0 Hasta tam-1 Con Paso 1 Hacer
		Si mContacto[i,j]==buscar Entonces
			Escribir "Nombre: " mContacto[i,j] " ------  Numero: " mContacto[i+1,j];
			bandera=Verdadero;
		Fin Si
	Fin Para
	
	//Mensaje confirmacion
	si bandera==Falso Entonces
		Escribir "No se ha encontrado ningun contacto con ese nombre";
	FinSi
	
	
	
FinSubAlgoritmo

//-----------------------------------------------------------------------------------------------//

//BORRAR
SubAlgoritmo opcion_borrar(mContacto, tam)
	
	Definir delete Como Caracter;
	Definir  i, j, option Como Entero;
	Definir bandera Como Logico;
	
	
	Escribir "Cual es el contacto que quiere borrar";
	leer delete;
	
	Para j=0 Hasta tam-1 Con Paso 1 Hacer
		bandera=Falso;
		
		
		Si mContacto[i,j]==delete Entonces
			mContacto[i,j]="";
			mContacto[i+1,j]="";
			bandera=Verdadero;
			j=tam;
		Fin Si
		
		
	FinPara
	
	si bandera==Verdadero Entonces
		Escribir "Se a eliminado el contacto";
		Escribir "";
	SiNo
		Escribir "No habia ningun contacto que eliminar con ese nombre";
		Escribir "";
	FinSi
	
FinSubAlgoritmo

//-----------------------------------------------------------------------------------------------//

//EDITAR
SubAlgoritmo opcion_editar(mContacto,tam)
	
	Definir option, i, j Como Entero;
	Definir edit, nombre, num_contacto Como Caracter;
	Definir bandera Como Logico;
	
	Escribir "Digame el contacto que quiere editar";
	leer edit;
	bandera=falso;
	
	
	Para j=0 Hasta tam-1 Con Paso 1 Hacer
		si edit==mContacto[0,j] Entonces
			bandera=Verdadero;
			Escribir "Si quieres editar solo el nombre pulsa 1, si quieres editar solo el numero pulsa 2, si quieres modificar ambos pulsa 3 y si te has equiocado pulsa 4";
			leer option;
			
			Segun option Hacer
				1:
					Escribir "Cual es el nuevo nombre";
					leer nombre;
					mContacto[0,j]=nombre;
				2:
					Escribir "Cual es el nuevo numero";
					leer num_contacto;
					mContacto[1,j]=num_contacto;
				3:
					Escribir "Cual es el nuevo nombre";
					leer nombre;
					mContacto[0,j]=nombre;
					
					Escribir "Cual es el nuevo numero";
					leer num_contacto;
					mContacto[1,j]=num_contacto;
				4:
					Escribir "" Sin Saltar;
				De Otro Modo:
					Escribir "" Sin Saltar;
			Fin Segun
			
		FinSi
	Fin Para
	
	si bandera==Verdadero Entonces
		Escribir "Se han cambiado los valores correspondientes";
		Escribir "";
	SiNo
		Escribir "No habia ningun contacto que eliminar con ese nombre";
		Escribir "";
	FinSi
	
FinSubAlgoritmo

//-----------------------------------------------------------------------------------------------//

//VER TODOS LOS CONTACTOS
SubAlgoritmo opcion_ver(mContacto, tam)
	
	Definir i,j Como Entero;
	Escribir "Estos son tus contactos";
	
	
	Para j=0 Hasta tam-1 Con Paso 1 Hacer
		i=0;
		si mContacto[i,j]<>"" Entonces
			Escribir "Nombre: " mContacto[i,j] " ------  Numero: " mContacto[i+1,j];
		FinSi
		
	Fin Para
	
FinSubAlgoritmo

//-----------------------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------------------//


//ALGORITMO PRINCIPAL
Algoritmo Agenda
	Definir option, i, j, tam, pto_coma Como Entero;
	Definir contacto, num_contacto, registro_contacto, buscar, delete, edit, final, mContacto Como caracter;
	Definir bandera Como Logico;
	
	registro_contacto="";
	i=0;
	tam=10;
	Dimension mContacto[2,tam];
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Para j=0 Hasta 1 Con Paso 1 Hacer
			mContacto[j,i]="";
		Fin Para		
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
				opcion_añadir(mContacto, tam);
				
				option = volver_menu();
			2:
				opcion_buscar(mContacto, tam);
				
				option = volver_menu();
			3:
				opcion_borrar(mContacto, tam);
				
				option = volver_menu();
			4:
				opcion_editar(mContacto,tam);
				
				option = volver_menu();
			5:
				opcion_ver(mContacto, tam);
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
