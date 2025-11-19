#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"


#include "keypad.h"
#define KEYPAD_ADDR XPAR_KEYPAD_0_S00_AXI_BASEADDR
#define KEYPAD_REG0 KEYPAD_S00_AXI_SLV_REG0_OFFSET
#define NO_KEY 0xFFFF

#include "led.h"
#define LED0_ADDR XPAR_LED_0_S00_AXI_BASEADDR
#define LED1_ADDR XPAR_LED_1_S00_AXI_BASEADDR
#define LED2_ADDR XPAR_LED_2_S00_AXI_BASEADDR
#define RED_CHANNEL LED_S00_AXI_SLV_REG0_OFFSET
#define GREEN_CHANNEL LED_S00_AXI_SLV_REG1_OFFSET
#define BLUE_CHANNEL LED_S00_AXI_SLV_REG2_OFFSET

/*
	Oscar Fabian Pineda German
	Daniel Lafuente Bazo
*/

/* //////////////////////////////////////// KEYPAD //////////////////////////////////////// */
/**
 * Funcion bloqueante para leer un caracter del keypad
 */
u32 KEYPAD_read(){

	KEYPAD_mWriteReg(KEYPAD_ADDR, KEYPAD_REG0, NO_KEY);
	u32 caracter = NO_KEY;

	while( caracter == NO_KEY ){
	   caracter = KEYPAD_mReadReg(KEYPAD_ADDR, KEYPAD_REG0);
	}

	return caracter;
}

/**
 * Funcion que recibe un keycode y devuelve el caracter concreto
 */
char KEYPAD_convertToChar(u32 keycode){
	if(0 <= keycode && keycode <= 9 )
		return keycode + '0';
	else
		return 'a' + (keycode - 10);
}


/* //////////////////////////////////////// LEDs //////////////////////////////////////// */
/**
 * Configurar la intensidad del color rojo para un led
 */
void led_setRedColor(void* ledAddr, int8_t intensity){
	LED_mWriteReg(ledAddr, RED_CHANNEL, intensity);
}

/**
 * Configurar la intensidad del color verde para un led
 */
void led_setGreenColor(void* ledAddr, int8_t intensity){
	LED_mWriteReg(ledAddr, GREEN_CHANNEL, intensity);
}

/**
 * Configurar la intensidad del color azul para un led
 */
void led_setBlueColor(void* ledAddr, int8_t intensity){
	LED_mWriteReg(ledAddr, BLUE_CHANNEL, intensity);
}

/**
 * Obtener la intensidad del color rojo para un led
 */
int8_t led_getRedIntensity(void* ledAddr){
	return LED_mReadReg(ledAddr, RED_CHANNEL);
}

/**
 * Obtener la intensidad del color verde para un led
 */
int8_t led_getGreenIntensity(void* ledAddr){
	return LED_mReadReg(ledAddr, GREEN_CHANNEL);
}

/**
 * Obtener la intensidad del color azul para un led
 */
int8_t led_getBlueIntensity(void* ledAddr){
	return LED_mReadReg(ledAddr, BLUE_CHANNEL);
}



int main () 
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");

   /* Inicializacion */
   led_setRedColor(LED0_ADDR, 0);
   led_setGreenColor(LED0_ADDR, 0);
   led_setBlueColor(LED0_ADDR, 0);

   led_setRedColor(LED1_ADDR, 0);
   led_setGreenColor(LED1_ADDR, 0);
   led_setBlueColor(LED1_ADDR, 0);

   led_setGreenColor(LED2_ADDR, 0);
   led_setRedColor(LED2_ADDR, 0);
   led_setBlueColor(LED2_ADDR, 0);

   xil_printf("Todos los LEDs apagados y listos para ser utilizados!\n\r");

   void* led_ADDR = LED0_ADDR;
   uint8_t intensity = 0;
   int salir = 0;
   while(salir == 0){

	   xil_printf("MENU\n\r");
	   xil_printf("Seleccionar LED 0: \'a\'\n\r");
	   xil_printf("Seleccionar LED 1: \'b\'\n\r");
	   xil_printf("Seleccionar LED 2: \'c\'\n\r");
	   xil_printf("Conmutar intensidad de color ROJO: \'0\'\n\r");
	   xil_printf("Conmutar intensidad de color VERDE: \'1\'\n\r");
	   xil_printf("Conmutar intensidad de color AZUL: \'2\'\n\r");
	   xil_printf("Salir: \'f\'\n\r");
	   xil_printf("\n\r");


	   char caracter = KEYPAD_convertToChar( KEYPAD_read() );
	   xil_printf("Caracter leido: %c\n\r", caracter);

	   // Seleccionar LED
	   if(caracter == 'a'){
			led_ADDR = (void *)LED0_ADDR;
			xil_printf("LED 0 seleccionado\n\r");
	   }
	   else if(caracter == 'b'){
			led_ADDR = (void *)LED1_ADDR;
			xil_printf("LED 1 seleccionado\n\r");
	   }
	   else if(caracter == 'c'){
			led_ADDR = (void *)LED2_ADDR;
			xil_printf("LED 2 seleccionado\n\r");
	   }

	   // Cambiar intensidad de canal RED, GREEN o BLUE
	   else if(caracter == '0'){
			intensity = led_getRedIntensity(led_ADDR);
			intensity = (intensity == 0) ? 255 : 0;
			led_setRedColor(led_ADDR, intensity);
			xil_printf("Intensidad color ROJO a %d\n\r", intensity);
	   }
	   else if(caracter == '1'){
			intensity = led_getGreenIntensity(led_ADDR);
			intensity = (intensity == 0) ? 255 : 0;
			led_setGreenColor(led_ADDR, intensity);
			xil_printf("Intensidad color VERDE a %d\n\r", intensity);
	   }
	   else if(caracter == '2'){
			intensity = led_getBlueIntensity(led_ADDR);
			intensity = (intensity == 0) ? 255 : 0;
			led_setBlueColor(led_ADDR, intensity);
			xil_printf("Intensidad color AZUL a %d\n\r", intensity);
	   }
	   else if(caracter == 'f'){
		   salir = 1;
	   }
	   else{
		   xil_printf("Tecla %c no utilizada!\n\r", caracter);
	   }

	   xil_printf("------------------\n\r");
   }

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
