module binaryupdowncounter(clk, load, data, up, down, Q);

            input clk, load, up, down;
            input [3:0] data;
            output reg [3:0]Q;
            always @(posedge clk)
            begin
                     if(load) Q<= data;
                     else if (up) Q<= Q+1;
                     else if (down) Q<= Q-1;
                     else Q<= Q;
            end
 endmodule
             