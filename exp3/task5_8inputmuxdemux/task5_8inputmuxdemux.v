module task5_8inputmuxdemux(s,f,w,g);
             input wire [2:0] s;
             input wire [0:7] w;
             output reg f = 0;
             output reg [0:7] g;
           
     
             always@*
             begin 
                     if (s  == 0) f = w[0];
                     else if (s == 1) f = w[1];
                     else if (s == 2) f = w[2];
                     else if (s == 3) f = w[3];
                     else if (s == 4) f = w[4];
                     else if (s == 5) f = w[5];
                     else if (s == 6) f = w[6];
                     else if (s == 7) f = w[7];
            end
          
          always @*
          begin
                    g = 0; // if you do not use this line, the circuit will not be changing the decoder output line based on the input
                    //as the g has a register type variable, it will hold the garbage value until initiation, and will hold the value once stored
                    //after initiation even the selector changes.
                    if (s  == 0) g[0] = w[0];
                     else if (s == 1) g[1] = w[1];
                     else if (s == 2) g[2] = w[2];
                     else if (s == 3) g[3] = w[3];
                     else if (s == 4) g[4] = w[4];
                     else if (s == 5) g[5] = w[5];
                     else if (s == 6) g[6] = w[6];
                     else if (s == 7) g[7] = w[7];
           end
endmodule
                     