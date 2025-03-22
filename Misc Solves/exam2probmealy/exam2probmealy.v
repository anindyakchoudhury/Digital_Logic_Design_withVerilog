module exam2probmealy(clk, reset, w, z);
             input clk, reset, w;
             output reg z;
             reg [2:1] y, Y;
             parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b10;
             
             
             always@(w, y) begin
                       case(y)
                                   A: if(w) begin Y = C; z = 0; end
                                   else begin Y = B; z = 0; end
                                   
                                   B: if(w) begin Y = C; z = 0; end
                                   else begin Y = B; z = 1; end
                                   
                                   C: if(w) begin Y = C; z = 1; end
                                   else begin Y = B; z = 0; end
                                   default: begin Y = 2'bxx; z = 0; end 
                                   
                      endcase
              end         
              always@(posedge clk or negedge reset) begin
              if(reset ==0) y <=A;
              else y<=Y;                                           
              end                     
endmodule             