The system contains 4-bit inputs as 2-bit a and 2-bit b, and 2-bit output as 2-bit c. Fill in the truth table provided in the text file.

Write the equations of c0 and c1 bits. You will pick PoS or SoP forms for each bit. You may pick different forms for both bits. One of them may be PoS, and one of them may be SoP.

Minimize the c0 and c1 equations as much as you can. The final equation must be in PoS or SoP form. You can follow the example in Problem Session. Do not forget to write the used rule in each statement. You do not need to indicate commutativity and associativity rules.

Write the corresponding Verilog module in the source.v file. testbench.v file is provided. You do not need to make a change in the testbench.v file in this PreLab. You can use three or more input wired "and" and "or" gates.

iverilog.exe -o output.vvp .\source.v .\testbench.v

vvp.exe .\output.vvp

gtkwave.exe .\TimingDiagram.vcd