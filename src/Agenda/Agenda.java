package Agenda;

import java.util.Scanner;

public class Agenda {

	public static void pintarMenu() {
		
		System.out.println("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
		System.out.println("Pulsa 1 para AÑADIR un contacto");
		System.out.println("Pulsa 2 para BUSCAR un contacto");
		System.out.println("Pulsa 3 para BORRAR un contacto");
		System.out.println("Pulsa 4 para EDITAR un contacto");
		System.out.println("Pulsa 5 para VER todos tus contactos");
		System.out.println("Pulsa 6 para SALIR");
		
	}
	
	public static void verTodosContactos(String vContacto[][]) {
		
		for (int i = 0; i < vContacto.length; i++) {
			for (int j = 0; j < vContacto[i].length; j++) {
				if (j==0) {
					System.out.print("Nombre: "+vContacto[i][j]+" ----------- ");	
				}else {
					System.out.print("Numero: "+vContacto[i][j]);
				}
				
			}
			System.out.println();
		}
		
	} 
	
	public static int volverMenu() {
		int opc=1;
		Scanner leer = new Scanner(System.in);
		
		System.out.println("Quieres hacer otra accion, si es asi pulsa 1, si quieres salir pulsa 2");
		
		
		
		do {
			
			opc = leer.nextInt();
			
			if (opc==1) {
				opc=7;
				return opc;
			} else if (opc==2) {
				opc=6;
				return opc;
			}
			
		} while (opc<1 || opc>2);
		
		return opc;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner leer = new Scanner(System.in);
		
		int opc=0, tam=2;
		
		String vContacto[][] = new String[tam][2];
		
		for (int i = 0; i < vContacto.length; i++) {
			for (int j = 0; j < vContacto[i].length; j++) {
				vContacto[i][j] = "_";
			}
		}
		
		
		do {
			pintarMenu();
			opc = leer.nextInt();
			
			switch (opc) {
			case 1:
					//añadirContacto();
				opc = volverMenu();
				break;
				
			case 2:
					//buscarContacto();
				break;
				
			case 3:
					//borrarContacto();
				break;
				
			case 4:
//					editarContacto();
				break;
				
			case 5:
					verTodosContactos(vContacto);
			
				
				break;
			case 6:
				System.out.print("");
				break;
				
			default:
				pintarMenu();
				opc = leer.nextInt();
				if (opc==6) {
					break;
				}
			}
			
		} while (opc!=6);
		
		
		System.out.println("Fin");
		
		
		
	}

			
}
