module test_bench;
reg [7:0] data;
wire [7:0] din;
reg clk;

DC U1 (.IN(din), .Q());

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
	data = {8{1'b0}};
	forever #30 data = data + 1;
end

assign
din = {8{}clk}&data;

initial
begin
wait (&data);
wait (~|data);
$finish
end

endmodule
