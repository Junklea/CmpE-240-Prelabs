`timescale 1ns / 1ns
module source(c, a, b);

input wire [1:0] a; // 2 bit
input wire [1:0] b; // 2 bit
output wire [1:0] c; // 2 bit

// Fill here for the gates
// p => a[1]
// q => a[0]
// r => b[1]
// s => b[0]

wire a0not;
wire a1not;
wire b1not;

not(a0not, a[0]);
not(a1not, a[1]);
not(b1not, b[1]);

// For c[0] = (p + q + r' + s)(p + q + r)(p' + r)
wire or0;
wire or1;
wire or2;

or(or0, a[1], a[0], b1not, b[0]);
or(or1, a[1], a[0], b[1]);
or(or2, a1not, b[1]);

and(c[0], or0, or1, or2);

// For c[1] = p'q'rs + p'qr + pr'
wire and0;
wire and1;
wire and2;

and(and0, a1not, a0not, b[1], b[0]);
and(and1, a1not, a[0], b[1]);
and(and2, a[1], b1not);

or(c[1], and0, and1, and2);

endmodule
