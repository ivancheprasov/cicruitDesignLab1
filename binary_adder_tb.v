`timescale lns / lps

module binary_adder_tb();
    reg a, b, c;
    wire s, p;
    binary_adder ba0 (a, b, c, s, p);
    initial begin
        a = 0; b = 0; c=0;
        #1 a=0; b=0; c=1;
        #1 a=0; b=1; c=0;
        #1 a=0; b=1; c=1;
        #1 a=1; b=0; c=0;
        #1 a=1; b=0; c=1;
        #1 a=1; b=1; c=0;
        #1 a=1; b=1; c=1;
    end
endmodule
