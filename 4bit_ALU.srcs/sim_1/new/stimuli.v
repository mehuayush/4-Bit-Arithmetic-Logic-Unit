`timescale 1ns / 1ps
////////////

module stimuli( );

reg [3:0]a,b;
reg [2:0]s; 
wire [3:0]y; 

ALU dut(a,b,s,y);

integer i;
initial begin
a = 4'b1100;
b = 4'b0011;


for(i = 0; i<8; i = i+1) begin
s = i[2:0];
#10;
end
$finish;


end


endmodule
