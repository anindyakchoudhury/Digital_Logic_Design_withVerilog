module mux16to1(w,s,f);
             input [0:15] w;
             input [3:0] s;
             output f;
             wire [0:3] M;
             