module endaroundshiftregister4bit(clk, load, data, Q);

             input clk, load;
             input [3:0] data;
             output reg [3:0] Q;
             
             always @(posedge clk)
             begin
                     if (load) Q <= data;
                     else
                           Q <= {Q[0], Q[3:1]};
                           
             
             end
endmodule             