module zerozerooroneone_moore(clk, reset, w, z);

            input clk, reset, w;
            output z;
            reg [3:1] y, Y;
            parameter [3:1] A = 3'b000, B = 3'b001, C = 3'b011, D = 3'b100, E = 3'b101;
            
           //define the combinational circuit
           always@(w, y) begin
               case(y)
                    A: if(w) Y = C;
                         else Y = B;
                   B: if(w) Y = C;
                         else Y = D;
                   C: if(w) Y = E;
                         else Y = B;
                   D: if(w) Y = C;
                         else Y = D;
                   E: if(w) Y = E;
                         else Y = B;
                   default: Y = 3'bxxx;
                endcase   
            end
            //define sequential block
            always@(posedge clk) begin
                 if (reset == 0) y<=A;
                 else y <=Y;
            end
            //define output
            assign z = (y ==D)| (y==E);

endmodule                               