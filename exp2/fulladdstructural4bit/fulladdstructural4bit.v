module fulladdstructual4bit(cin, a, b, sum, cout);
             input a,b,cin;
             output sum, cout;
             wire ab,aandb,c;
             
             xor(ab,a,b);
             xor(sum, ab, cin);
             
             and(aandb, a,b);
             and(c, ab, cin);
             or(cout, aandb,c);
             
endmodule
