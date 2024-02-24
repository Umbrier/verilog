module test_bench;
reg [47:0] data;
reg [2:0] sel;
wire [47:0] din;
reg clk;

MUX U1 (.IN(din), .S(sel), .Q());

initial
begin
	clk = 0;
	forever
	begin
		#10 clk=~clk;
		#10 clk=~clk;
		#10;
	end
end

initial
begin
	data = {{47{1'b0}}, 1'b1};
	forever #30 data = data << 1;
end

assign
din = {48{clk}}&data;
initial
begin
	sel = 0;
	forever #240 sel = sel + 1;
end
endmodule