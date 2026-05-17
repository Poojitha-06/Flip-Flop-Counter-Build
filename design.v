module dff(
input d,clk,
output reg q
);

always @(posedge clk)
q <= d;

endmodule

module counter(
input clk,
output reg [3:0] q
);

initial begin
q = 0;
end

always @(posedge clk)
q <= q + 1;

endmodule
