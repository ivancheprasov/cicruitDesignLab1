`timescale lns / lps

module bcd_to_binary_tb();
    reg a, b, c, d, e, f, g, h;
    wire i, j, k, l, m, n, o, p;
    bcd_to_binary btb0 (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);
    initial begin
        a=0; b=1; c=1; d=0; e=1; f=0; g=0; h=1;
    end
endmodule
