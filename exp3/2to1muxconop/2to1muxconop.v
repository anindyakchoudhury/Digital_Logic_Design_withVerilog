module mux2to1conop(w0, w1,selector, out);
           input w0, w1, selector;
           output outl;
           assign out = selector? w1:w0;
endmodule

