`timescale lns / lps

module bcd_to_binary(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h,
    output reg i,
    output reg j,
    output reg k,
    output reg l,
    output reg m,
    output reg n,
    output reg o,
    output reg p
    );
    reg input_array [0:7];
    reg result [0: 7];
    integer outer_loop, inner_loop;
    reg adder0, adder1, carry0;
    wire sum, carry1;
    binary_adder ba0 (adder0, adder1, carry0, sum, carry1);
    initial begin
    adder0 = 0;
    adder1 = 0;
    carry0 = 0; 
    #1
    input_array[0] = d;
    input_array[1] = c;
    input_array[2] = b;
    input_array[3] = a;
    input_array[4] = 0;
    input_array[5] = 0;
    input_array[6] = 0;
    input_array[7] = 0;
    result[0] = 0;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;    
    for (outer_loop = 0; outer_loop < 10; outer_loop = outer_loop + 1) begin
        for (inner_loop = 0; inner_loop < 8; inner_loop = inner_loop + 1) begin
            adder0 = input_array[inner_loop];
            adder1 = result[inner_loop];
            carry0 = carry1;
            #1
            result[inner_loop] = sum;
        end
    end
    input_array[0] = h;
    input_array[1] = g;
    input_array[2] = f;
    input_array[3] = e;
    adder0 = 0;
    adder1 = 0;
    carry0 = 0;
    #1 
    for (inner_loop = 0; inner_loop < 8; inner_loop = inner_loop + 1) begin
        adder0 = input_array[inner_loop];
        adder1 = result[inner_loop];
        carry0 = carry1;
        #1
        result[inner_loop] = sum;
    end
    i = result[7];
    j = result[6];
    k = result[5];
    l = result[4];
    m = result[3];
    n = result[2];
    o = result[1];
    p = result[0];
    $display(i,j,k,l,m,n,o,p);
    end
endmodule
