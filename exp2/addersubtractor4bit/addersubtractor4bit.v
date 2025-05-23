module addersubtractor4bit(a,b,cin, s,cout, ctrl,f);
             input cin, ctrl;
             input [3:0] a,b;
             output [3:0] s;
             output cout, f;
             wire [3:1] c;
             

task fulladd;
             input reg a,b,cin ;
             output reg s, cout;
             
              s = (a^b)^cin;
              cout = (a&b) | (cin&(a^b));
endtask

                                    

task fullsub;
             input reg a,b,cin;
             output reg s, cout;
             
              s = a^b^cin;
              cout = (~a & b ) | (~a & cin) | (b & cin);
endtask        
             always@* // multiple module cannot be called under one always block, that's why used the task statement
             begin
                      if(ctrl == 0)
                      begin // for multiple statements to execute in the if block, you have to use begin and end
                         fulladd (a[0], b[0], cin, s[0], c[1]);  
                         fulladd (a[1], b[1], c[1], s[1], c[2]);
                         fulladd (a[2], b[2], c[2], s[2], c[3]);
                         fulladd (a[3], b[3], c[3], s[3], cout);
                         end
                         
                      else
                      begin 
                         fullsub  (a[0], b[0], cin, s[0], c[1]);
                         fullsub  (a[1], b[1], c[1], s[1], c[2]);
                         fullsub (a[2], b[2], c[2], s[2], c[3]);
                         fullsub (a[3], b[3], c[3], s[3], cout);   
                      end
              end
              assign f = a[1] + b[1]; // test line for + sign test
 endmodule    