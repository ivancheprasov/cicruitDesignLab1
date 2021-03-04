`timescale lns / lps

module binary_adder(
    input a,
    input b,
    input c,
    output s,
    output p
    );
    wire d, e, f, g, h, i, j;
    nor(d, a, b);
    nor(e, d, a);
    nor(f, d, b);
    nor(g, e, f);
    nor(h, g, c);
    nor(i, g, h);
    nor(j, c, h);
    nor(s, i, j);
    nor(p, d, h);
endmodule
