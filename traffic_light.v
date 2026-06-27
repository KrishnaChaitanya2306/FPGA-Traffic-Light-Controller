`timescale 1ns / 1ps

module traffic_light(

    input clk,
    input reset,
    input emergency,

    output reg NG,
    output reg NY,
    output reg NR,

    output reg EG,
    output reg EY,
    output reg ER

);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state;

reg [3:0] timer;

always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        state <= S0;
        timer <= 0;
    end

    else if(emergency)
    begin
        state <= S0;
        timer <= 0;
    end

    else
    begin

        if(timer == 4)
        begin

            timer <= 0;

            case(state)

            S0:
                state <= S1;

            S1:
                state <= S2;

            S2:
                state <= S3;

            S3:
                state <= S0;

            default:
                state <= S0;

            endcase

        end

        else

            timer <= timer + 1;

    end

end



always @(*)
begin

NG=0;
NY=0;
NR=0;

EG=0;
EY=0;
ER=0;

case(state)

S0:
begin
NG=1;
ER=1;
end

S1:
begin
NY=1;
ER=1;
end

S2:
begin
NR=1;
EG=1;
end

S3:
begin
NR=1;
EY=1;
end

default:
begin
NG=1;
ER=1;
end

endcase

end

endmodule