module tb;

reg d,clk;
wire q;

wire [3:0] count;

dff d1(d,clk,q);
counter c1(clk,count);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,tb);

clk = 0;
d = 0;

#10 d = 1;
#10 d = 0;
#10 d = 1;

#50 $finish;

end

always #5 clk = ~clk;

endmodule
