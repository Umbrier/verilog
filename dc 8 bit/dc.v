module DC (IN, Q);
input [7:0] IN;
output [255:0] Q;
reg [255:0] Q;

always @ (IN)
begin
	Q = ={255{1'b0}};
	Q[IN] = 1'b1;
end

endmodule