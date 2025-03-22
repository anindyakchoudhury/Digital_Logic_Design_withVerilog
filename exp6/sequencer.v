module sequencer(clk,reset,opcode,cont);
input [4:1] opcode;
input clk, reset;
output reg [12:1] cont;
reg [4:1]y;
reg [4:1]Y;
parameter [3:0] LDA= 4'b000,ADD= 4'b0001, SUB= 4'b010, OUT= 4'b1110, HLT = 4'b1111;
parameter [3:0] t1=1,t2=2,t3=3,t4=4,t5=5,t6=6;

always@(opcode,y)
begin
case(y)

t1: begin
cont=12'b010111100011;
Y=t2;
end

t2: begin
cont=12'b101111100011;
Y=t3;
end

t3: begin
cont=12'b001001100011;
if (opcode==HLT) Y=t3;
else Y=t4;
end

t4: begin
case(opcode)

LDA: cont=12'b000110100011;
ADD: cont=12'b000110100011;
SUB: cont=12'b000110100011;
OUT: cont=12'b001111110010;

endcase
Y=t5;
end

t5: begin
case(opcode)

LDA: cont=12'b001011000011;
ADD: cont=12'b001011100001;
SUB: cont=12'b001011100001;
OUT: cont=12'b001111100011;

endcase
Y=t6;
end

t6: begin
case(opcode)

LDA: cont=12'b001111100011;
ADD: cont=12'b001111000111;
SUB: cont=12'b001111000111;
OUT: cont=12'b001111000111;

endcase
Y=t1;
end

default: Y=t1;
endcase
end

always @ (negedge clk or negedge reset)
begin
if(reset==0) y<=t1;
else y<=Y;
end

endmodule
