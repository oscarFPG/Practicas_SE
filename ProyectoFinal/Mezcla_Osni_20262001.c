/*Dani y Oscar 20_1_2026*/
#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xbasic_types.h"
#include "xil_io.h"
#include "xil_types.h"



// ----------------------- MATRIZ DE PUNTOS ----------------------- //
#include "matriz.h"
#define NUM_ROWS 7
#define NUM_COLS 8
#define MATRIZ_ADDR XPAR_MATRIZ_0_S00_AXI_BASEADDR
#define MATRIZ_REG0 MATRIZ_S00_AXI_SLV_REG0_OFFSET

// Constantes para definir los valores de una fila
// O = Apagado
// T = Encendido
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


u32 MATRIZ_escribir(int fila, int columna, u32 valor){

	if(fila < 0 || NUM_ROWS <= fila){ return valor + 1; }
	if(columna < 0 || NUM_COLS <= columna){ return valor + 1; }


	u32 dato = 0;
	dato = (fila << 11) | (columna << 8) | (valor << 0);

	MATRIZ_mWriteReg(MATRIZ_ADDR, MATRIZ_REG0, dato);
	return dato;
}
// ----------------------- MATRIZ DE PUNTOS ----------------------- //


// -----------------------       VGA        ----------------------- //
/*
 *	Modificar el valor de la RAM de VGA para modificar el pixel (fila, columna) con el color indicado
 */

#define VGA_DIM 16
void VGA_print(u32 fila, u32 columna, u32 color){

	if(0 < fila || VGA_DIM <= fila)
		return;
	if(0 < columna || VGA_DIM <= columna)
		return;

	u32 valor = (columna << 16) + (fila << 12) + color;
	putfsl(valor, 0);
}

/*
 * Metodo para pintar un numero en la posicion (origenRow, origenCol) en la VGA
 * Cada numero esta representado como se haria en un display de 7 segmentos
 * Cada dos casillas es un segmento, los espacios entre estos son de una casilla
 */
void VGA_printNumber(int origenRow, int origenCol, u32 color, int number){

	switch(number){
	case 0:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	case 1:

		VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
		break;

	case 2:

		VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
		break;

	case 3:

		VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
		break;

	case 4:

		VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
				VGA_print(origenRow, origenCol, color);
		break;

	case 5:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	case 6:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	case 7:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	case 8:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	case 9:

		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		VGA_print(origenRow, origenCol, color);
		break;

	default:
		break;
	}

}
// -----------------------       VGA        ----------------------- //

// -----------------------      KEYPAD      ----------------------- //
#include "keypad.h"
#define KEYPAD_ADDR XPAR_KEYPAD_0_S00_AXI_BASEADDR
#define KEYPAD_REG0 KEYPAD_S00_AXI_SLV_REG0_OFFSET
#define NO_KEY 0xFFFF

/**
 * Funcion bloqueante para leer un caracter del keypad
 */
char KEYPAD_read(){

	KEYPAD_mWriteReg(KEYPAD_ADDR, KEYPAD_REG0, NO_KEY);
	u32 keycode = NO_KEY;

	while( keycode == NO_KEY ){
		keycode = KEYPAD_mReadReg(KEYPAD_ADDR, KEYPAD_REG0);
	}

	if(0 <= keycode && keycode <= 9 )
		return keycode + '0';
	else
		return 'a' + (keycode - 10);
}
// -----------------------      KEYPAD      ----------------------- //

// ----------------------        LEDs       ----------------------- //
#include "led.h"
#define LED0_ADDR XPAR_LED_0_S00_AXI_BASEADDR
#define RED_CHANNEL LED_S00_AXI_SLV_REG0_OFFSET
#define GREEN_CHANNEL LED_S00_AXI_SLV_REG1_OFFSET
#define BLUE_CHANNEL LED_S00_AXI_SLV_REG2_OFFSET

#define RED 0
#define GREEN 1
#define BLUE 2

#define LED_UP 255
#define LED_DOWN 0


//Enciende el LED de color colLed
void EnciendeLed(int colLed) {

	xil_printf("\n Encendiendo LED \r\n");
	switch (colLed) {
	case RED:
		LED_mWriteReg(LED0_ADDR, RED_CHANNEL, LED_UP);
		break;

	case GREEN:
		LEDS_mWriteReg(LED0_ADDR, GREEN_CHANNEL, LED_UP);
		break;

	case BLUE:
		LEDS_mWriteReg(LED0_ADDR, BLUE_CHANNEL, LED_UP);
		break;

	default:
		xil_printf("\n colLed Corrompido %d \r\n", colLed);
		break;
	}
}

void ApagaLed(int colLed) {

	xil_printf("\n Apaga LED \r\n");
	switch (colLed) {
	case RED:
		LEDS_mWriteReg(LED0_ADDR, RED_CHANNEL, LED_DOWN);
		break;

	case GREEN:
		LEDS_mWriteReg(LED0_ADDR, GREEN_CHANNEL, LED_DOWN);
		break;

	case BLUE:
		LEDS_mWriteReg(LED0_ADDR, BLUE_CHANNEL, LED_DOWN);
		break;

	default:
		xil_printf("\n colLed Corrompido %d \r\n", colLed);
		break;
	}
}
// ----------------------        LEDs       ----------------------- //

// ----------------------       PROYECTO    ----------------------- //

//define global parameters
int NUMRULE = 13;
int shouldPrint = 1;

// ----------------------------- Aux Funtions ----------------------------- //
void initialize(){

	// Matriz de puntos vacia
	for(int f = 0; f < NUM_ROWS; f++){
		for(int c = 0; c < NUM_COLS; c++){
			MATRIZ_escribir(f, c, 0);
		}
	}

	// LED apagado
	LEDS_mWriteReg(LED0_ADDR, RED_CHANNEL, LED_DOWN);
	LEDS_mWriteReg(LED0_ADDR, GREEN_CHANNEL, LED_DOWN);
	LEDS_mWriteReg(LED0_ADDR, BLUE_CHANNEL, LED_DOWN);

	// VGA en negro
	for(int f = 0; f < NUM_ROWS; f++){
		for(int c = 0; c < NUM_COLS; c++){
			VGA_print(f, c, 0);
		}
	}
}

int SwAcarreo(int acarreo, u32 tecla) {

	switch (tecla) {
		// Seleccionar opcion
	case 0x1:
		acarreo = acarreo * 10;
		acarreo = acarreo + 1;
		break;
	case 0x2:
		acarreo = acarreo * 10;
		acarreo = acarreo + 2;
		break;
	case 0x3:
		acarreo = acarreo * 10;
		acarreo = acarreo + 3;
		break;
	case 0x4:
		acarreo = acarreo * 10;
		acarreo = acarreo + 4;
		break;
	case 0x5:
		acarreo = acarreo * 10;
		acarreo = acarreo + 5;
		break;
	case 0x6:
		acarreo = acarreo * 10;
		acarreo = acarreo + 6;
		break;
	case 0x7:
		acarreo = acarreo * 10;
		acarreo = acarreo + 7;
		break;
	case 0x8:
		acarreo = acarreo * 10;
		acarreo = acarreo + 8;
		break;
	case 0x9:
		acarreo = acarreo * 10;
		acarreo = acarreo + 9;
		break;
	}

	return acarreo;
}

void escribeMENU(){
	// Mostrar M en columna 0
	matriz_escribir(0, 0, TOOOT);
	matriz_escribir(1, 0, TOOOT);
	matriz_escribir(2, 0, TOOOT);
	matriz_escribir(3, 0, TTOTT);
	matriz_escribir(4, 0, TOTOT);
	matriz_escribir(5, 0, TOOOT);
	matriz_escribir(6, 0, TOOOT);

	// Mostrar E en columna 1
	matriz_escribir(0, 1, TTTTT);
	matriz_escribir(1, 1, TOOOO);
	matriz_escribir(2, 1, TOOOO);
	matriz_escribir(3, 1, TTTTT);
	matriz_escribir(4, 1, TOOOO);
	matriz_escribir(5, 1, TOOOO);
	matriz_escribir(6, 1, TTTTT);

	// Mostrar N en columna 2
	matriz_escribir(0, 2, TOOOT);
	matriz_escribir(1, 2, TTOOT);
	matriz_escribir(2, 2, TOTOT);
	matriz_escribir(3, 2, TOOTT);
	matriz_escribir(4, 2, TOOOO);
	matriz_escribir(5, 2, TOOOO);
	matriz_escribir(6, 2, TOOOO);

	// Mostrar U en columna 3
	matriz_escribir(0, 3, TOOOT);
	matriz_escribir(1, 3, TOOOT);
	matriz_escribir(2, 3, TOOOT);
	matriz_escribir(3, 3, TOOOT);
	matriz_escribir(4, 3, TOOOT);
	matriz_escribir(5, 3, TOOOT);
	matriz_escribir(6, 3, TTTTT);

	// Rellenar con 0 la RAM desde la columna 'col' hasta el final
	int col = 4;
	for(int i = col; i < NUM_COLS; i++){
		for(int j = 0; j < NUM_ROWS; j++){
			matriz_escribir(j, i, OOOOO);
		}
	}
}
// ----------------------------- Aux Funtions ----------------------------- //




// ----------------------------------------- Maquina de estados ---------------------------------------- //

// ---------------------------------------- Ajustes ---------------------------------------- //
	// -------------------------------- Monedas -------------------------------- //
void LogicMoneda(int* monedas, int op) {
	u32 tecla = 0xF;
	int acarreo = 0;

	int bool = 1;
	while (bool == 1) {

		if (shouldPrint == 1) {
			if (op == 0) {
				xil_printf("\n Aniadir Monedas \r\n");
			}
			else if (op == 0) {
				xil_printf("\n Quitar Monedas \r\n");
			}

			xil_printf("\n Selecione un numero || B->Salir || C->Confirmar\r\n");
			xil_printf("Acarreo %d\n\r", acarreo);
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();
		switch (tecla) {
		case 0x1:
		case 0x2:
		case 0x3:
		case 0x4:
		case 0x5:
		case 0x6:
		case 0x7:
		case 0x8:
		case 0x9:
			shouldPrint = 1;
			acarreo = SwAcarreo(acarreo, tecla);
			limpiarTeclado();
			break;
		case 0xB:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 0;
			break;
		case 0xC:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 2;
			break;

		default:
			limpiarTeclado();

			break;
		}
		tecla = 0xF;

	}
	if (bool == 2 && op == 0) {
		monedas += acarreo;
	}
	else if (bool == 2 && op == 1) {
		monedas -= acarreo;
		if (monedas < 0) {
			monedas = 0;
		}
	}
}

void Moneda(int* monedas) {
	u32 tecla = 0xF;

	int bool = 1;
	while (bool) {

		if (shouldPrint == 1) {
			//xil_printf("\n Moneda \r\n");
			xil_printf("\n 1->Aniadir Monedas || 2->Quitar Monedas || B->Salir \r\n");
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();
		switch (tecla) {
			// Seleccionar opcion
		case 0x1:
			limpiarTeclado();
			LogicMoneda(&monedas, 0);
			break;

		case 0x2:
			limpiarTeclado();
			LogicMoneda(&monedas, 1);
			break;

		case 0xB:
			limpiarTeclado();
			bool = 0;
			break;

		default:
			limpiarTeclado();

			break;
		}
		tecla = 0xF;
	}
}
// -------------------------------- Monedas -------------------------------- //
// --------------------------------- Color --------------------------------- //
void CambiaColor(int* colLed) {
	u32 tecla = 0xF;

	int bool = 1;
	while (bool) {

		if (shouldPrint == 1) {
			//xil_printf("\n Cambiar Color \r\n");
			xil_printf("\n 1->Cambiar a RED || 2->Cambiar a GREEN || 3->Cambiar a BLUE || B->Salir \r\n");
			shouldPrint = 0;
		}
		tecla = KEYPAD_read();

		switch (tecla) {
			// Seleccionar opcion
		case 0x1:
			shouldPrint = 1;
			limpiarTeclado();
			colLed = RED;
			break;

		case 0x2:
			shouldPrint = 1;
			limpiarTeclado();
			colLed = GREEN;
			break;

		case 0x3:
			shouldPrint = 1;
			limpiarTeclado();
			colLed = BLUE;
			break;

		case 0xB:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 0;
			break;

		default:
			limpiarTeclado();

			break;
		}
		tecla = 0xF;
	}
}

void Color(int* colLedAc, int* colLedFa) {
	u32 tecla = 0xF;

	int bool = 1;
	while (bool) {

		if (shouldPrint == 1) {
			//xil_printf("\n Ajustes Color \r\n");
			xil_printf("\n 1->Color led Acierto || 2->Color led Fallo || B->Salir \r\n");
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();

		switch (tecla) {
			// Seleccionar opcion
		case 0x1:
			limpiarTeclado();
			shouldPrint = 1;
			CambiaColor(&colLedAc);
			xil_printf("\n Cambiaste el led de Acierto \r\n");
			break;

		case 0x2:
			limpiarTeclado();
			shouldPrint = 1;
			CambiaColor(&colLedFa);
			xil_printf("\n Cambiaste el led de Fallo \r\n");
			break;

		case 0xB:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 0;
			break;

		default:
			limpiarTeclado();

			break;
		}
		tecla = 0xF;
	}
}
// --------------------------------- Color --------------------------------- //

void Ajustes(int* monedas, int* colLedAc, int* colLedFa) {

	u32 tecla = 0xF;

	int bool = 1;
	while (bool) {

		if (shouldPrint == 1) {
			//xil_printf("\n Ajustes \r\n");
			xil_printf("\n 1->Moneda || 2->Color || B->Salir \r\n");
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();

		switch (tecla) {
			// Seleccionar opcion
		case 0x1:
			shouldPrint = 1;
			limpiarTeclado();
			Moneda(&monedas);
			break;

		case 0x2:
			shouldPrint = 1;
			limpiarTeclado();
			Color(&colLedAc, &colLedFa);
			break;

		case 0xB:
			limpiarTeclado();
			shouldPrint = 1;
			bool = 0;
			break;

		default:
			limpiarTeclado();

			break;
		}
		tecla = 0xF;
	}
}
// ---------------------------------------- Ajustes ---------------------------------------- //

// ---------------------------------------- La Rule ---------------------------------------- //
	// ------------------------------ Gira la Rule ------------------------------ //


void CorreRuleta(int* monedas, int colLedAc, int colLedFa, int numAp, int apuesta) {
	u32 tecla = 0xF;
	limpiarTeclado();

	xil_printf("\n Girando la Rule... \r\n");
	//Genera el numero random
	int NumGanador = 0;

	xil_printf("\n Ha Salido el Numero: %d \r\n", NumGanador);

	//Compruebo
	if (NumGanador == numAp) {

		EnciendeLed(colLedAc);

		apuesta = apuesta * 2;
		xil_printf("\n Has GANDADO %d monedas\r\n", apuesta);
		monedas = monedas + apuesta;

		int teclaaux = 1;
		xil_printf("\n Pulse cualquier tecla para continuar \r\n");
		while (teclaaux == 1) {
			tecla = leerTeclado();
			if (tecla == 0xF) {
				teclaaux = 0;
			}
		}

		ApagaLed(colLedAc);

	}
	else {

		EnciendeLed(colLedFa);
		xil_printf("\n Oh No... has palmado %d monedas\r\n", apuesta);
		monedas = monedas - apuesta;

		int teclaaux = 1;
		xil_printf("\n Pulse la tecla F para continuar \r\n");
		while (teclaaux == 1) {
			tecla = leerTeclado();
			if (tecla == 0xF) {
				teclaaux = 0;
			}
		}

		ApagaLed(colLedAc);

	}

	Menu(monedas, colLedAc, colLedFa);
}
// ------------------------------ Gira la Rule ------------------------------ //

void Apuesta(int* monedas, int colLedAc, int colLedFa, int numAp) {
	u32 tecla = 0xF;
	int acarreo = 0;

	int bool = 1;
	while (bool == 1) {

		if (shouldPrint == 1) {
			//xil_printf("\n Apueste, Doble de riesgo => DOBLE de GANANCIA \r\n");
			xil_printf("\n Selecione un numero (inferior a: %d) || B->Salir || C->Confirmar\r\n", monedas);
			xil_printf("Acarreo %d\n\r", acarreo);
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();
		switch (tecla) {
		case 0x1:
		case 0x2:
		case 0x3:
		case 0x4:
		case 0x5:
		case 0x6:
		case 0x7:
		case 0x8:
		case 0x9:
			shouldPrint = 1;
			limpiarTeclado();
			acarreo = SwAcarreo(acarreo, tecla);
			break;
		case 0xB:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 0;
			break;
		case 0xC:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 2;
			break;

		default:
			limpiarTeclado();
			//xil_printf("\n Selecione un numero (inferior a: %d || B->Salir || C->Confirmar\r\n", monedas);
			break;
		}
		tecla = 0xF;

		if (bool == 2 && acarreo > monedas) {

			acarreo = 0;
			bool = 1;
			xil_printf("El acarreo debe ser menor a: %d\n\r", monedas);
		}
	}

	if (bool == 2) {
		CorreRuleta(&monedas, colLedAc, colLedFa, numAp, acarreo);
	}

}

void Rule(int* monedas, int colLedAc, int colLedFa) {
	u32 tecla = 0xF;
	int acarreo = 0;

	int bool = 1;
	while (bool == 1) {

		if (shouldPrint == 1) {
			//xil_printf("\n Elija su numero de la SUERTE \r\n");
			xil_printf("\n Selecione un numero al que apostar (inferior a: %d) || B->Salir || C->Confirmar\r\n", NUMRULE);
			xil_printf("Acarreo %d\n\r", acarreo);
			shouldPrint = 0;
		}

		tecla = KEYPAD_read();
		switch (tecla) {
		case 0x1:
		case 0x2:
		case 0x3:
		case 0x4:
		case 0x5:
		case 0x6:
		case 0x7:
		case 0x8:
		case 0x9:
			shouldPrint = 1;
			acarreo = SwAcarreo(acarreo, tecla);
			limpiarTeclado();
			break;
		case 0xB:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 0;
			break;
		case 0xC:
			shouldPrint = 1;
			limpiarTeclado();
			bool = 2;
			break;

		default:
			limpiarTeclado();
			break;
		}
		tecla = 0xF;


		if (bool == 2 && acarreo > NUMRULE) {

			acarreo = 0;
			bool = 1;
			xil_printf("El acarreo debe ser menor a: %d\n\r", NUMRULE);
		}
	}

	if (bool == 2) {
		Apuesta(&monedas, colLedAc, colLedFa, acarreo);
	}
}
// ---------------------------------------- La Rule ---------------------------------------- //

void Menu(int monedas, int colLedAc, int colLedFa) {
	u32 tecla = 0xF;

	int bool = 1;


	while (bool) {

		if (shouldPrint == 1) {
			//xil_printf("\n MENU \r\n");
			xil_printf("\n 1->Ajustes || 2->Rule || B->Salir del programa \r\n");
			shouldPrint = 0;
		}
		escribeMENU();

		tecla = KEYPAD_read();
		switch (tecla) {
			// Seleccionar opcion
		case 0x1:
			shouldPrint = 1;
			limpiarTeclado();
			Ajustes(&monedas, &colLedAc, &colLedFa);
			break;

		case 0x2:
			shouldPrint = 1;
			limpiarTeclado();
			Rule(&monedas, colLedAc, colLedFa);
			break;

		case 0xB:
			limpiarTeclado();
			bool = 0;
			break;


		default:
			limpiarTeclado();
			break;
		}
		tecla = 0xF;
	}
}
// ---------------------------------------- La Rule ---------------------------------------- //

// ----------------------------------------- Maquina de estados ---------------------------------------- //

// --------------------------------- Main --------------------------------- //
int main() {

	Xil_ICacheEnable();
	Xil_DCacheEnable();
	//print("--------- Entering main ---------\n\r");

	initialize();


	int monedas = 100;
	int colLedAc = GREEN;
	int colLedFa = RED;
	xil_printf("JUEGO DE LA RULETA\n\r");
	Menu(monedas, colLedAc, colLedFa);

	//print("--------- Exiting main ---------\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();

	return 0;
}
// --------------------------------- Main --------------------------------- //

