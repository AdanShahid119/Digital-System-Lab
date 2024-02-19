module mycircuit(output x, y,
                input a , b , c);
assign p1 = ~(a & b);
assign p2 = a | b;
assign p3 = p1 ^ p2;
assign y = p2 & p3;
assign c1 = ~c;
assign x = c1 ^ p2;
endmodule