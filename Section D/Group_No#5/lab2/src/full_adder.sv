module full_adder (
    input logic a,
    input logic b,
    input logic c,
    output logic sum,
    output logic carry
);
    //Extra variables for convenience
    logic x1,a1, b1, c1;
    //sum:
    xor (x1, a, b);
    xor (sum, x1, c);                 
    //and gates:
    and (a1, a, b);          
    and (b1, b, c);         
    and (c1, a, c);     
    //or gate and cout:
    or (carry,a1,b1,c1);   

endmodule