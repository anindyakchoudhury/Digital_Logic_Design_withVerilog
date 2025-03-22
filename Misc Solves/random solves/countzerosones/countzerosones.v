module countzerosones(diff);
             reg [n-1:0] A;
             parameter n = 8;
             output wire [3:0] diff;
             integer i;
             reg [3:0] ones, zeros;
             initial A = 8'b01111111;
             always@*
             begin
                     ones = 0;
                     zeros = 0;
                     for (i = 0; i <n ; i = i+1) begin
                     if(A[i]) ones = ones + 1;
                     else zeros = zeros +1; end
             end
             assign diff = (ones >= zeros ) ? ones - zeros: zeros-ones;
endmodule
