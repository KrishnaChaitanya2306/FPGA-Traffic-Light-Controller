`timescale 1ns / 1ps

module traffic_tb;

reg clk;
reg reset;
reg emergency;

wire NG;
wire NY;
wire NR;

wire EG;
wire EY;
wire ER;

traffic_light uut(

.clk(clk),
.reset(reset),
.emergency(emergency),

.NG(NG),
.NY(NY),
.NR(NR),

.EG(EG),
.EY(EY),
.ER(ER)

);

always
#5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
emergency = 0;

#20;

reset = 0;

#120;

emergency = 1;

#40;

emergency = 0;

#100;

$finish;

end

endmodule