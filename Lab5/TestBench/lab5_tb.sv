module mycircuit_tb ();
    logic seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, s1, s2, s3, s4, s5, s6, s7, s8;
    logic [3:0]inp;
    logic [2:0]sel;

mycircuit dut(
    .seg_a(seg_a),
    .seg_b(seg_b),
    .seg_c(seg_c),
    .seg_d(seg_d),
    .seg_e(seg_e),
    .seg_f(seg_f),
    .seg_g(seg_g),

    .s1(s1),
    .s2(s2),
    .s3(s3),
    .s4(s4),
    .s5(s5),
    .s6(s6),
    .s7(s7),
    .s8(s8),

    .a(inp),
    .s(sel)   

);

initial begin
    for (int i;i<8;i++)begin
    sel=i;
     for (int j;j<16;j++)begin
     inp=j;
     #10;
     end
    end
end

initial begin 
    $monitor("sel = %h; inp = %b; seg_a = %b; seg_b = %b; seg_c = %b; seg_d = %b; seg_e = %b; seg_f = %b; seg_g = %b;  s1 = %b; s2 = %b; s3 = %b; s4 = %b; s5 = %b; s6 = %b; s7 = %b; s8 = %b;", sel, inp, , seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g, s1, s2, s3, s4, s5, s6, s7, s8  );
end



    
endmodule