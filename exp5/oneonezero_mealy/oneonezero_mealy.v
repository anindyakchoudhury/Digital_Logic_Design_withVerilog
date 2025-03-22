module oneonezero_mealy(clk, reset, w, z,y, Y);
             input clk, reset, w;
             output reg z;
             output reg [2:1] y, Y;
             parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b10;
             
             
             always@(w, y) begin
                       case(y)
                                   A: if(w) begin Y = B; z = 0; end
                                   else begin Y = A; z = 0; end
                                   
                                   B: if(w) begin Y = C; z = 0; end
                                   else begin Y = A; z = 0; end
                                   
                                   C: if(w) begin Y = C; z = 0; end
                                   else begin Y = A; z = 1; end
                                //   default: begin Y = 2'bxx; z = 0; end 
                                   
                      endcase
              end         
              always@(posedge clk or negedge reset) begin
              if(reset ==0) y <=A;
              else y<=Y;                                           
              end                     
endmodule  