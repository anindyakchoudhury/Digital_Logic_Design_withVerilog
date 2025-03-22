module mux2to1ifelse(w0, w1,selector, out);
           input w0, w1, selector;
           output reg out;
           always @(selector) // omitted the w0,w1 inside the sensitivity list, does this work?
           begin
                     out = w1; // omitting the else command
                     if(selector == 0)
                        out = w0;
                     
           end
endmodule
