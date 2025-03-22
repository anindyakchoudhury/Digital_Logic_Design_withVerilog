module dflipflopsynposedge(clk, d, reset, Q);

   input clk,d,reset;
   output reg Q;
   always@(posedge clk) //active low reset--means will reset at the negedge of the reset
   begin 
            if(reset == 0) Q<=0;
            else Q<= d;
   end
   
endmodule
