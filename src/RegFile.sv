//FFD
//lectura asincrona
`ifndef REGFILE_SV			//Directiva: Si xx_SV no esta definido
    `define REGFILE_SV		//Directiva: pues se define

module RegFile
import my_pkg::*;	
(
input clk, 
input reset, 

//input [WD-1:0]Reg_Write_i,
input Reg_Write_i,
input [SEL-1:0]Read_Register_1_i,
input [SEL-1:0]Read_Register_2_i,
input [SEL-1:0]Write_Register_i,
input [WD-1:0]Write_Data_i,
output [WD-1:0]Read_Data_1_o,
output [WD-1:0]Read_Data_2_o
);


logic [WD-1:0][WD-1:0] intercon1;
logic [WD-1:0] intercon2; //paraa conectarsalida de bcd a los 32 in de ands


bcd mybcd(
				.entrada(Write_Register_i), .salida(intercon2)
);

FFD32 FFD32(
				.data(Write_Data_i), .clk(clk), .reset(reset), .and_i1(Reg_Write_i), .and_i2(intercon2), .q(intercon1)
);

mux32 mux32_data1(
				.sel(Read_Register_1_i), .in(intercon1),	.out(Read_Data_1_o)
);

mux32 mux32_data2(
				.sel(Read_Register_2_i), .in(intercon1),	.out(Read_Data_2_o)
);



endmodule

`endif