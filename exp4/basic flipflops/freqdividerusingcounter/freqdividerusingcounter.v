module freqdividerusingcounter(clk,out);
             // implemented a frequency divider using 5bit up counter and making the clk frequency 1/32
             input clk;
             reg [4:0] counter;
             output out;
             always@(posedge clk)
             begin
                      if(counter == 5'b11111)
                         counter <= 5'b00000;
                      else
                         counter <= counter + 1;   
             end
             assign out = counter [4];
endmodule
             