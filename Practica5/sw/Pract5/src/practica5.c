#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xbasic_types.h"


int getNumber (){
	Xuint8 byte;
	Xuint8 uartBuffer[16];
	Xboolean validNumber;
	int digitIndex;
	int digit, number, sign;
	int c;

	while(1){
		byte = 0x00;
		digit = 0;
		digitIndex = 0;
		number = 0;
		validNumber = XTRUE;

		//get bytes from uart until RETURN is entered
		while(byte != 0x0d){
			byte = XUartLite_RecvByte(XPAR_UARTLITE_0_BASEADDR);
			uartBuffer[digitIndex] = byte;
			XUartLite_SendByte(XPAR_UARTLITE_0_BASEADDR,byte);
			digitIndex++;
		}

		//calculate number from string of digits
		for(c = 0; c < (digitIndex - 1); c++){
			if(c == 0){
				//check if first byte is a "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				//check if first byte is a digit
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else
					validNumber = XFALSE;
			}
			else {
				//check byte is a digit
				if((uartBuffer[c] >> 4) == 0x03)
					digit = (uartBuffer[c] & 0x0F);
				else
					validNumber = XFALSE;
			}
			number = (number * 10) + digit;
		}
		number *= sign;
		if(validNumber == XTRUE) {
			return number;
		}
		print("This is not a valid number.\n\r");
	}
}


int main () {

   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");

   u32 columna = 0x0;
   u32 fila = 0x0;
   u32 valor = 0x0;
   int colaux = 1;
   int rowaux = 1;



   while(1){

	   colaux = 1;
	   while(colaux == 1){
		   xil_printf("Elige una columna: ");
		   columna = (u32)getNumber();
		   xil_printf("%d \n\r", columna);
		   if(0 <= columna && columna < 16){ 
			   colaux = 2;
		   }
		   else {
			   xil_printf("Columna a de ser MENOR a 16 No %d\n\r", columna);
		   }
	   }

	   rowaux = 1;
	   while(rowaux == 1){
		   xil_printf("Elige una fila: ");
		   fila = (u32)getNumber();
		   xil_printf("%d\n\r", fila);
		   if(0 <= fila && fila < 16){
			   rowaux = 2;
		   }
		   else {
			   xil_printf("Fila a de ser MENOR a 16 No %d\n\r", fila);
		   }
	   }

	   xil_printf("Elige un color: ");
	   u32 color = (u32)getNumber();
	   xil_printf("%d\n\r", color);
	   valor = (columna << 16) + (fila << 12) + color;


	   putfsl(valor, 0);
   }


   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
