`timescale 1ns / 1ns

module encoder(y, x);

// Implement here
// Custom Encoder: The first module takes 7-bit input x and prepares 3-bit output y.
// The encoder counts the number of 1s in input x. 7 wires may contain zero to seven 1s. So, 3 bits are enough to encode it.
// You may use the addition operation as you are writing at the behavioral level.

output reg [2:0] y;
input wire [6:0] x;

integer i;

always@(x) begin
    y = 0;
    for (i = 0; i < 7; i = i + 1) begin
        y = y + x[i];
    end
end

endmodule

module mux(z, y, s);

// Implement here
// Custom Mux: The second module takes 3-bit y and 2-bit s as inputs. It prepares 1-bit z as the output.
// The selection bits checks for four different situations. From 00 to 11, conditions are listed as follows.
// when s == 00, checks if y contains zero 1s.
// when s == 01, checks if y contains one 1.
// when s == 10, checks if y contains two 1s.
// when s == 11, checks if y contains three 1s.

output reg z;
input wire [2:0] y;
input wire [1:0] s;

integer i;
integer p;

always@(y, s) begin
    // Count the number of ones
    p = 0;
    for(i = 0; i < 3; i = i + 1) begin
        p = p + y[i];
    end

    if (s == 2'b00) begin
        if (p == 0) begin
            z = 1'b1;
        end
        else begin
            z = 1'b0;
        end
    end

    else if (s == 2'b01) begin
        if (p == 1) begin
            z = 1'b1;
        end
        else begin
            z = 1'b0;
        end
    end

    else if (s == 2'b10) begin
        if (p == 2) begin
            z = 1'b1;
        end
        else begin
            z = 1'b0;
        end
    end

    else if (s == 2'b11) begin
        if (p == 3) begin
            z = 1'b1;
        end
        else begin
            z = 1'b0;
        end
    end

end


endmodule