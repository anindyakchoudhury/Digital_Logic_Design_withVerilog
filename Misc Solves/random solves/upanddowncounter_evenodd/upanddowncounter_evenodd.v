module upanddowncounter_evenodd(A, clk,Q,load);
             input wire [7:0] A;
             input clk,load;
             output reg [7:0] Q;
             initial Q = A;
             
             always@(posedge clk)
             begin
                      //if(load) Q<=A;
                      if(A % 2 == 0)
                         Q<= Q+1;
                      else
                          Q<= Q-1;   
             end
endmodule 
             
             