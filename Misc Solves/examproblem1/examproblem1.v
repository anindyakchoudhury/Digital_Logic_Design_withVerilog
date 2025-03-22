module examproblem1(clk, En, w1,w2,w3,w4,out,clk2, clk4);
             input clk,En;
             input [2:0] w1, w2, w3, w4;
             output reg out;
             output clk2;
             integer i,j;
             output reg clk4;
             
             reg  Q ;
             initial i =0;
             initial j = 1;
             always@(posedge clk)
             begin
                      if (Q == 1'b0)
                      clk4 <= 1'b0;
                      else
                      clk4 <= 1'b1;
                      
                      Q <= Q+1'b1; 
             end
             wire #2.5 clk3 = clk;
             assign clk2 = clk^clk3;
             always@(posedge clk2)
             begin
                     out = 0;
                     if(En) 
                     begin
					     if(j ==1)
					         out=w1[i];
					     else if (j == 2)
					         out=w2[i];
					     else if(j == 3)
					         out=w3[i];
					      else if(j ==4)
					          out=w4[i];             
                         // out[0] <= w1[i];
                          //out[1] <= w2[i];
                          //out[2] <= w3[i];
                         // out[3] <= w4[i];
					 end
				  if (i==3)	 
				 i =0;
				 else
				 i= i+1;
				 if(j ==4)
				 j = 1;
				 else
				 j= j+1;             
             end
endmodule
