module labex5_oddis1(s,f);
             input [3:0] s;
             output reg f;
             always @(s)
             begin
                      if(s %2 == 0)
                         f = 0;
                      else f = 1;
             end
endmodule 