module addersubtractor4bit_efficientway(a,b,s,cout, ctrl);
             input [3:0] a,b;
             output [3:0] s;
             reg [4:0] m;
             output cout;
             input ctrl;
             
             always@*
             begin
                      if (ctrl == 0)
                         m = a + b;
                      else if (ctrl == 1 & a>b)
                         m = a -b;
                      else 
                         m = b - a;
              end
          
             assign s = m[3:0];
             assign cout = m[4];
endmodule
