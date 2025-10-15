#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"
#include "copro.h"


int main () {

   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");

   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG0_OFFSET, 0);
   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG1_OFFSET, 10);
   COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG2_OFFSET, 4);

   while(1){

	   int reg0 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG0_OFFSET);
	   int reg1 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG1_OFFSET);
	   int reg2 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG2_OFFSET);
	   int reg3 = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, COPRO_S00_AXI_SLV_REG3_OFFSET);

	   xil_printf("Valor del registro 0:%d\n\r", reg0);
	   xil_printf("Valor del registro 1:%d\n\r", reg1);
	   xil_printf("Valor del registro 2:%d\n\r", reg2);
	   xil_printf("Valor del registro 3:%d\n\r", reg3);
	   xil_printf("---\n\r");

	   int i = 0;
	   while(i < 1000000){
		   i++;
	   }

   }


   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
