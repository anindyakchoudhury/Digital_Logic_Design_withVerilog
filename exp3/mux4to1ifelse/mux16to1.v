module mux16to1(w,s,f);
             input [0:15] w;
             input [3:0] s;
             output f;
             wire [0:3] M;
             mux4to1ifelse Mux1 (w[0:3], s[1:0], M[0]);
             mux4to1ifelse Mux2 (w[4:7], s[1:0], M[1]);
             mux4to1ifelse Mux3 (w[8:11], s[1:0], M[2]);
             mux4to1ifelse Mux4 (w[12:15], s[1:0], M[3]);
             mux4to1ifelse Mux5 (M[0:3], s[3:2], f);
             
endmodule 