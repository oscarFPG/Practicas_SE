#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"


// MATRIZ DE PUNTOS
#include "matriz.h"
#define NUM_ROWS 7
#define NUM_COLS 8
#define MATRIZ_ADDR XPAR_MATRIZ_0_S00_AXI_BASEADDR
#define MATRIZ_REG0 MATRIZ_S00_AXI_SLV_REG0_OFFSET

//  ----------------------- SELECCIONAR LEDS ENCENDIDOS(T=encendido, O=apagado) -----------------------
#define OOOOO 0
#define OOOOT 1
#define OOOTO 2
#define OOOTT 3
#define OOTOO 4
#define OOTOT 5
#define OOTTO 6
#define OOTTT 7
#define OTOOO 8
#define OTOOT 9
#define OTOTO 10
#define OTOTT 11
#define OTTOO 12
#define OTTOT 13
#define OTTTO 14
#define OTTTT 15
#define TOOOO 16
#define TOOOT 17
#define TOOTO 18
#define TOOTT 19
#define TOTOO 20
#define TOTOT 21
#define TOTTO 22
#define TOTTT 23
#define TTOOO 24
#define TTOOT 25
#define TTOTO 26
#define TTOTT 27
#define TTTOO 28
#define TTTOT 29
#define TTTTO 30
#define TTTTT 31

u32 matriz_escribir(int fila, int columna, u32 valor){

	if(fila < 0 || NUM_ROWS <= fila){ return valor + 1; }
	if(columna < 0 || NUM_COLS <= columna){ return valor + 1; }


	u32 dato = 0;
	dato = (fila << 11) | (columna << 8) | (valor << 0);

	MATRIZ_mWriteReg(MATRIZ_ADDR, MATRIZ_REG0, dato);
	return dato;
}


// CONVERSOR ANALOGICO-DIGITAL
#include "conversorAD.h"
#define CONVERSOR_ADDR XPAR_CONVERSORAD_0_S00_AXI_BASEADDR
#define CHANNEL_0 0
#define CONVERSOR_REG0 CONVERSORAD_S00_AXI_SLV_REG0_OFFSET
#define CONVERSOR_REG1 CONVERSORAD_S00_AXI_SLV_REG1_OFFSET


u8 conversor_leerConversion(int c){

	if(c < 0 || 8 <= c)
		return;

	u32 canal = 0;
	canal = (c << 24);
	CONVERSORAD_mWriteReg(CONVERSOR_ADDR, CONVERSOR_REG0, canal);

	u32 valor = 0;
	while( (valor & 0x00800000) == 0 ){
		valor = CONVERSORAD_mReadReg(CONVERSOR_ADDR, CONVERSOR_REG0);
	}

	u8 result = CONVERSORAD_mReadReg(CONVERSOR_ADDR, CONVERSOR_REG1);
	return result;
}

int main ()
{

	while(1){

		u8 valor = conversor_leerConversion(CHANNEL_0);

		if(valor == 0){

			for(int i = 0; i < NUM_COLS; i++){
				for(int j = 0; j < NUM_ROWS; j++){
					matriz_escribir(j, i, OOOOO);
				}
			}
		}
		else{

			// Mostrar H en columna 0
			matriz_escribir(0, 0, TOOOT);
			matriz_escribir(1, 0, TOOOT);
			matriz_escribir(2, 0, TOOOT);
			matriz_escribir(3, 0, TTTTT);
			matriz_escribir(4, 0, TOOOT);
			matriz_escribir(5, 0, TOOOT);
			matriz_escribir(6, 0, TOOOT);

			// Mostrar O en columna 1
			matriz_escribir(0, 1, TTTTT);
			matriz_escribir(1, 1, TOOOT);
			matriz_escribir(2, 1, TOOOT);
			matriz_escribir(3, 1, TOOOT);
			matriz_escribir(4, 1, TOOOT);
			matriz_escribir(5, 1, TOOOT);
			matriz_escribir(6, 1, TTTTT);

			// Mostrar L en columna 2
			matriz_escribir(0, 2, TOOOO);
			matriz_escribir(1, 2, TOOOO);
			matriz_escribir(2, 2, TOOOO);
			matriz_escribir(3, 2, TOOOO);
			matriz_escribir(4, 2, TOOOO);
			matriz_escribir(5, 2, TOOOO);
			matriz_escribir(6, 2, TTTTT);

			// Mostrar A en columna 3
			matriz_escribir(0, 3, TTTTT);
			matriz_escribir(1, 3, TOOOT);
			matriz_escribir(2, 3, TOOOT);
			matriz_escribir(3, 3, TTTTT);
			matriz_escribir(4, 3, TOOOT);
			matriz_escribir(5, 3, TOOOT);
			matriz_escribir(6, 3, TOOOT);

			// Rellenar con 0 la RAM desde la columna 'col' hasta el final
			int col = 4;
			for(int i = col; i < NUM_COLS; i++){
				for(int j = 0; j < NUM_ROWS; j++){
					matriz_escribir(j, i, OOOOO);
				}
			}

		}

	}

	return 0;
}