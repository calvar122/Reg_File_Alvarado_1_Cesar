//MUX 32 BITS
`ifndef MUX32_SV			//Directiva: Si xx_SV no esta definido
    `define MUX32_SV		//Directiva: pues se define
	 
module mux32
import my_pkg::*;	
(
input logic [SEL-1:0]	sel,
input in_bus  				in,
output [WD-1:0]			out
);


assign out = in[sel];

endmodule
	 
	 
`endif