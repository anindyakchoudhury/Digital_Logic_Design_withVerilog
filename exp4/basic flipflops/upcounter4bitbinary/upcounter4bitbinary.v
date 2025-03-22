module upcounter4bitbinary(clk, reset, Q); //code can be modified for up and down counter both

            input clk, reset;
            output reg [3:0] Q;
            
            always @(posedge clk or negedge reset) //positive edge triggered with asynchoronous active low reset
            begin
                      
                      if(reset == 0) Q<=4'b0111; //coded for down counter starts counting from 7
                      else Q<= Q-1; //verilog waveform cannot display negative numbers, so it does rotatory shifts for negatives
            end
endmodule
            
