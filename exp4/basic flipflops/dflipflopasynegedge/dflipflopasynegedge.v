module dflipflopasynegedge(clk, d, reset, Q);

   input clk,d,reset;
   output reg Q;
   always@(negedge clk or negedge reset) //active low reset--means will reset at the negedge of the reset
   begin 
            if(reset == 0) Q<=0;
            else Q<= d;
   end
   
endmodule
