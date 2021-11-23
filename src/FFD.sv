//FFD
//lectura asincrona
`ifndef FFD_SV			//Directiva: Si xx_SV no esta definido
    `define FFD_SV		//Directiva: pues se define

module FFD
import my_pkg::*;	
(
input logic [WD-1:0]d, 
input bit clk, reset, 
input bit enable, 
output logic [WD-1:0]q
);

always@(posedge clk, negedge reset)
	begin

		if(!reset) q <= 0;
				
		else if(enable) q <= d;
		
		
	end

endmodule

`endif
	 
