module mycircuit(output x, y,
                input a , b , c);
assign A1 = ~(a & b);
assign A2 = a | b;
assign A3 = A1 ^ A2;
assign y = A2 & A3;
assign c1 = ~c;
assign x = c1 ^ A2;
endmodule