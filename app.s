	.include "data.s"
	.include "ejec.s"
	.include "shapes.s"

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	bl registers					//inicializa algunas variables globales para el programa en data.s
	
	bl fondo
	
	mov x0, x28
	mov x1, tamaño_casa1			//seteo los parametros de la casa1
	mov x2, tamaño_casa1

	bl casa

	mov x0, x27
	mov x1, tamaño_casa2			//seteo los parametros de la casa2
	mov x2, tamaño_casa2

	bl casa

	bl draw_borthers				//hago bordes negros para que las figuras no salgan de la pantalla
	
	bl leer



	

InfLoop:
	b InfLoop
