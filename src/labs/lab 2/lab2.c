#include <stdio.h>

int main(int argc, char* argv[]) {
    int opcion;
    int numero;
    int salir = 0;

    printf("Le damos la bienvenida al progama\n");
    while (salir == 0) {

        printf("-----------------------------------------------\n");
        printf("| Opcion 1: Imprimir el cuadrado de un numero |\n");
        printf("| Opcion 2: Imprimir la tabla de un numero    |\n");
        printf("| Opcion 3: Salir del programa                |\n");
        printf("-----------------------------------------------\n");
    
        printf("Ingrese una opcion:\n");
        scanf("%d", &opcion);
        
        switch(opcion) {
            case 1:
                printf("Ingrese un numero entero:\n");
                scanf("%d", &numero);
    
                int cuadrado = numero*numero;
                printf("El cuadrado de %d es: %d\n", numero, cuadrado);
                
                break;
            case 2:
                printf("Ingrese un numero entero:\n");
                scanf("%d", &numero);
    
                printf("Tabla del %d desde el 0 a 10:\n", numero);
                
                int i;
                int numeroMult;
                for (i = 0; i < 11; i++) {
                    numeroMult = i*numero;
                    printf("%d*%d: %d\n", numero, i, numeroMult);
                }
                
                break;
            case 3:
                printf("Fin del programa\n");
                salir = 1;
                
                break;
            default:
                printf("Ingrese una opcion valida.\n");
                break;
        }
    }
    return 0;
}