module testbench;
reg clk, rstn;
wire [2:0] out;
 
program_counter uut (
    .clk (clk),
    .rstn(rstn),
    .out(out)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("pc_tb.vcd");
    $dumpvars(0, testbench);
end

initial begin
    
    clk = 0;
    rstn = 0;
    #(CLK_PERIOD);

    rstn = 1;
    $monitor("Count: %d", out);
    #(CLK_PERIOD);
    #(CLK_PERIOD);
    #(CLK_PERIOD);
    #(CLK_PERIOD);
    #(CLK_PERIOD);
    $finish;
end

endmodule
