`timescale 1ns/1ps

module testbench;

reg [3:0] a, b;
reg sel;
wire [3:0] out;

mux uut (
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
);

initial begin
    //$dumpvars(0, testbench);

    a = 4'b0000; b = 4'b1111; sel = 1'b0; #10;
    $display("a=%d b = %d sel = %d out=%d", a, b, sel, out);

    a = 4'b0000; b = 4'b1111; sel = 1'b1; #10;
    $display("a=%d b = %d sel = %d out=%d", a, b, sel, out);

    $finish;
end

endmodule