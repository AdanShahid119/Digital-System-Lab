module mycircuit (output red, green, blue,
                input[1:0] a, b
    
);
assign red = (b[1] & b[0]) | (~(a[1]) & ~(a[0])) | (~(a[1]) & b[1]) | (~(a[0]) & b[1]) | (~(a[1]) & b[0]);
assign green = (a[0] & ~(b[1]) & ~(b[0])) | (a[1] & ~(b[1]) & b[0]) | (~(a[1]) & ~(a[0]) & b[0]) | (b[1]);
assign blue = (~(b[1]) & ~(b[0])) | (a[1] & a[0]) | (~(b[1]) & a[0]) | (b[0] & a[1]);

    
endmodule