#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"

#include "matriz.h"
#define MATRIZ_ADDR XPAR_MATRIZ_0_S00_AXI_BASEADDR
#define NUM_FILAS 7
#define NUM_COLUMNS 5

#include "conversorAD.h"
#define CONV_ADDR XPAR_CONVERSORAD_0_S00_AXI_BASEADDR



void MATRIZ_write(const int fila, const int columna, const int dato){

	// Valores no permitidos
	if(fila < 0 || NUM_FILAS < fila)
		return;
	if(columna < 0 || NUM_COLUMNS < columna)
		return;
	if(dato < 0 || 32 <= dato)
		return;

	u32 valor = 0;
	valor = (fila << 23) | (columna << 16) | (dato << 7);

	MATRIZ_mWriteReg(MATRIZ_ADDR, MATRIZ_S00_AXI_SLV_REG0_OFFSET, valor);
}

void testConversor(){

	CONVERSORAD_mWriteReg(CONV_ADDR, CONVERSORAD_S00_AXI_SLV_REG0_OFFSET, 0);
	while(1){

	   uint32_t valor = CONVERSORAD_mReadReg(CONV_ADDR, CONVERSORAD_S00_AXI_SLV_REG1_OFFSET);
	   uint8_t valorReal = (valor & 0x000000FF);	// Seleccionar los 8 primeros bits

	   xil_printf("Valor leido %d\n\r", valorReal);
	}
}


int main () 
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	xil_printf("---Entering main---\n\r");


	for(int i = 0; i < NUM_FILAS; i++){
		for(int j = 0; j < NUM_COLUMNS; j++){
			MATRIZ_write(i, j, 0);
		}
	}

	while(1){}

	xil_printf("---Exiting main---\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();
	return 0;
}
