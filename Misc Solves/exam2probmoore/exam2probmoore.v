module exam2probmoore(clk, reset, w1, w2, w3, z);

            input clk, reset, w1,w2,w3;
            output z;
            reg [3:1] y, Y;
            parameter [3:1] A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
            wire k;
            assign k = w1^w2^w3;
           //define the combinational circuit
           always@(k, y) begin
               case(y)
                    A: if(k) Y = B;
                         else Y = A;
                   B: if(k) Y = C;
                         else Y = A;
                   C: if(k) Y = D;
                         else Y = A;
                   D: if(k) Y = D;
                         else Y = A;
                   
                   default: Y = 2'bxx;
                endcase   
            end
            //define sequential block
            always@(posedge clk) begin
                 if (reset == 0) y<=A;
                 else y <=Y;
            end
            //define output
            assign z = (y ==D);

endmodule                               