module varfreqdivider(clk, C);
             parameter n = 4;
             input clk;
             reg [(n-1):0] Q ;
             output C;
             
             always@(posedge clk)
             begin
                       Q <= Q + 1;
             end
             assign C = Q[n-1];
endmodule
             