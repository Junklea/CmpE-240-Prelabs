// Custom Encoder: The first module takes 7-bit input x and prepares 3-bit output y.
// The encoder counts the number of 1s in input x. 7 wires may contain zero to seven 1s. So, 3 bits are enough to encode it.
// You may use the addition operation as you are writing at the behavioral level.

// Custom Mux: The second module takes 3-bit y and 2-bit s as inputs. It prepares 1-bit z as the output.
// The selection bits checks for four different situations. From 00 to 11, conditions are listed as follows.
// when s == 00, checks if y contains zero 1s.
// when s == 01, checks if y contains one 1.
// when s == 10, checks if y contains two 1s.
// when s == 11, checks if y contains three 1s.

iverilog.exe -o output.vvp .\source.v .\testbench.v

vvp.exe .\output.vvp

gtkwave.exe .\TimingDiagram.vcd