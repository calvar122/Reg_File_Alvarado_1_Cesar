//Packages

`ifndef MY_PKG_SV			//Directiva: Si xx_SV no esta definido
    `define MY_PKG_SV		//Directiva: pues se define
	 
package my_pkg;

localparam WD = 32; 		//Wide bits 32bits MIPS arch
localparam SEL = 5;

typedef logic 	[2**SEL-1:0][WD-1:0]	in_bus;

//para 32 FFD
typedef logic  [WD-1:0] enablet;	
typedef logic  [WD-1:0][WD-1:0] FFD_O;	
	 
endpackage	 
	 `endif