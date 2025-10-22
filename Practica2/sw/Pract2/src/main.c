#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "copro.h"


int main () 
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");

   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG0_OFFSET, 0xFFFFFFFF);
   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG1_OFFSET, 0x00000020);
   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG2_OFFSET, 0x00000008);
   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG3_OFFSET, 0x00000015);

   while(1){

	   int reg0 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG0_OFFSET);
	   int reg1 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG1_OFFSET);
	   int reg2 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG2_OFFSET);
	   int reg3 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG3_OFFSET);

	   xil_printf("Valor de reg0: %d\n\r", reg0);
	   xil_printf("Valor de reg1: %d\n\r", reg1);
	   xil_printf("Valor de reg2: %d\n\r", reg2);
	   xil_printf("Valor de reg3: %d\n\r", reg3);
	   xil_printf("----------\n\r");
	   sleep(1);
   }

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
