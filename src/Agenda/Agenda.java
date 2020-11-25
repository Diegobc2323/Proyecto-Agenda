package Agenda;

import java.util.Scanner;

public class Agenda {

	public static int pintarMenu() {
		Scanner leer = new Scanner(System.in);
		int opc=0;
		
		
		System.out.println("Pulsa 1 para AÑADIR un contacto");
		System.out.println("Pulsa 2 para BUSCAR un contacto");
		System.out.println("Pulsa 3 para BORRAR un contacto");
		System.out.println("Pulsa 4 para EDITAR un contacto");
		System.out.println("Pulsa 5 para VER todos tus contactos");
		System.out.println("Pulsa 6 para SALIR");
		opc = leer.nextInt();
		
		return opc;
		
	}
	
	public static int volverMenu() {
		int opc=1;
		Scanner leer = new Scanner(System.in);
		
		System.out.println("Quieres hacer otra accion, si es asi pulsa 1, si quieres salir pulsa 2");
		
		
		do {
			
			opc = leer.nextInt();
			
			if (opc==1) {
				opc=7;
				System.out.println("\n\n\n\n");
				return opc;
			} else if (opc==2) {
				System.out.println("Fin");
				System.exit(0);
			}
			
		} while (opc<1 || opc>2);
		
		return opc;
	}
	
	public static String[][] addContacto(String[][] vContacto) {
		Scanner leer = new Scanner(System.in);
		String nombre="", numero="";
		int pos=0;
		
		System.out.println("Dime el nombre de tu nuevo contacto");
		nombre = leer.nextLine();
		
		for (int i = 0; i < vContacto.length; i++) {
			if (vContacto[i][0].equals("_")) {
				vContacto[i][0] = nombre;
				pos=i;
				break;
			}
		}
		
		System.out.println("Dime el numero de "+nombre);
		numero = leer.nextLine();
		vContacto[pos][1]= numero;
		
		return vContacto;
	}
	
	public static void buscarContacto(String[][] vContacto) {
		Scanner leer = new Scanner(System.in);
		String nombre="";
		boolean bandera=false;
		
		System.out.println("Dime que contacto quieres buscar");
		nombre = leer.nextLine();
		
		for (int i = 0; i < vContacto.length; i++) {
			if (vContacto[i][0].equalsIgnoreCase(nombre)) {
				System.out.println("Nombre: "+vContacto[i][0]+" ----------- "+" Numero: "+vContacto[i][1]);
				bandera=true;
			}
		}
	
		if (bandera==false) {
			System.out.println("No hay ningun contacto con ese nombre.");
		}
		
	}

	private static void borrarContacto(String[][] vContacto) {
		Scanner leer = new Scanner(System.in);
		String nombre="", resp="";
		boolean bandera=false;
		
		System.out.println("Dime el nombre del contacto que quieres eliminar");
		nombre = leer.nextLine();
		
		
		for (int i = 0; i < vContacto.length; i++) {
			
			if (vContacto[i][0].equalsIgnoreCase(nombre)) {
				
				do {
					System.out.println("Si estas seguro de borrar el contacto "+vContacto[i][0]+" pulsa la letra 's', si quieres cancelar pulsa 'n'.");
					resp = leer.nextLine();
					
					if (resp.equalsIgnoreCase("s")) {
						vContacto[i][0]= "_";
						vContacto[i][1]= "_";
						System.out.println("Tu contacto ha sido eliminado");
						break;
					} else if (resp.equalsIgnoreCase("n")) {
						System.out.println("Opcion cancelada");
						break;
					}
					
				} while (!resp.equalsIgnoreCase("s") || !resp.equalsIgnoreCase("n"));
				
				bandera=true;
			}
		}
		
		if (bandera==false) {
			System.out.println("No hay ningun contacto a eliminar con ese nombre");
		}
		
	}
		
	//Hacer este metodo
	/*
	public static int damePosContacto(String[][] vContacto, String nombre) {
		
		int pos=0;
		
		for (int i = 0; i < vContacto.length; i++) {
			if (vContacto[i][0].equalsIgnoreCase(nombre)) {
				pos=i;
				return pos;
			}
		
		}
		
		return -1;
	}
	*/
		
	private static void editarContacto(String[][] vContacto) {
		Scanner leer = new Scanner(System.in);
		Scanner leerNum = new Scanner(System.in);
		String nombre="", numero="";
		boolean bandera=false;
		int opc=0;
		
		System.out.println("Dime que contacto quieres buscar");
		nombre = leer.nextLine();
		
		
		
		for (int i = 0; i < vContacto.length; i++) {
			if (vContacto[i][0].equalsIgnoreCase(nombre)) {
				
				do {
					System.out.println("Si quieres cambiar el nombre solo pulsa 1, si quieres cambiar solo el numero pulsa 2.");
					System.out.println("Si quieres cambiar ambos pulsa 3 y si no quieres cambiarlo pulsa 4");
					opc=leerNum.nextInt();
					
					switch (opc) {
					case 1:
						System.out.println("Dime el nuevo nombre que le quieres poner a "+vContacto[i][0]);
						nombre = leer.nextLine();
						vContacto[i][0] = nombre;
						break;
						
					case 2:
						System.out.println("Dime el nuevo numero que le quieres poner a "+vContacto[i][0]);
						numero = leer.nextLine();
						vContacto[i][1] = numero;
						break;
						
					case 3:
						System.out.println("Dime el nuevo nombre que le quieres poner a "+vContacto[i][0]);
						nombre = leer.nextLine();
						vContacto[i][0] = nombre;
						
						System.out.println("");
						
						System.out.println("Dime el nuevo numero que le quieres poner a "+vContacto[i][0]);
						numero = leer.nextLine();
						vContacto[i][1] = numero;
						break;
						
					case 4:
						System.out.println("Opcion cancelada");
						break;

					default:
						break;
					}
					
					
				} while (opc<1 || opc>4);
				
				bandera=true;
			}
			
		}
	
		if (bandera==false) {
			System.out.println("No hay ningun contacto con ese nombre.");
		}
		
	}
		
	public static void verTodosContactos(String[][] vContacto) {
		boolean bandera=false;
		
		for (int i = 0; i < vContacto.length; i++) {
			
			if (!vContacto[i][0].equals("_")) {
				for (int j = 0; j < vContacto[i].length; j++) {
					if (j==0) {
						System.out.print("Nombre del contacto "+(i+1)+": "+vContacto[i][j]+" ----------- ");	
						bandera=true;
					}else {
						System.out.print("Numero: "+vContacto[i][j]);
					}
					
				}
				System.out.println();
			}					
			
		}
		
		System.out.println();
		
		if (bandera==false) {
			System.out.println("Aun no hay ningun contacto añadido");
		}
		
	} 

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner leer = new Scanner(System.in);
		
		int opc=0, tam=15;
		
		String vContacto[][] = new String[tam][2];
		
		for (int i = 0; i < vContacto.length; i++) {
			for (int j = 0; j < vContacto[i].length; j++) {
				vContacto[i][j] = "_";
			}
		}
		
		
		do {
			
			opc = pintarMenu();
			
			switch (opc) {
			
			case 1:
				addContacto(vContacto);
				System.out.println();
				opc = volverMenu();
				break;
				
			case 2:
				buscarContacto(vContacto);
				System.out.println();
				opc = volverMenu();
				break;
				
			case 3:
				borrarContacto(vContacto);
				System.out.println();
				opc = volverMenu();
				break;
				
			case 4:
				editarContacto(vContacto);
				System.out.println();
				opc = volverMenu();
				break;
				
			case 5:
				verTodosContactos(vContacto);
				System.out.println();
				opc = volverMenu();		
				break;
				
			case 6:
				System.out.print("");
				break;
				
			default:
				
				opc = pintarMenu();
				
				if (opc==6) {
					break;
				}
			}
			
		} while (opc!=6);
		System.out.println("Fin");
	}			
}
