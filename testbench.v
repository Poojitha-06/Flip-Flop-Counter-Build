module tb;

reg [3:0] d;
wire [1:0] y1;

reg [1:0] a;
wire [3:0] y2;

encoder enc(d,y1);
decoder dec(a,y2);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,tb);

d = 4'b0001;
a = 2'b00;
#10;

d = 4'b0010;
a = 2'b01;
#10;

d = 4'b0100;
a = 2'b10;
#10;

d = 4'b1000;
a = 2'b11;
#10;

$finish;

end

endmodule