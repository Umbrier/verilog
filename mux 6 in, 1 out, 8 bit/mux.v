module MUX (IN, S, Q);
input [47:0] IN;
input [2:0] S;
output [7:0] Q;

reg [8:0] Q;
always @ (IN or S)
begin
case (S)
	3'b0000 : Q = IN [7:0];
	3'b0001 : Q = IN [15:8];
	3'b0010 : Q = IN [23:16];
	3'b0011 : Q = IN [31:24];
	3'b0100 : Q = IN [39:32];
	3'b0101 : Q = IN [47:40];
	default : Q = 0;
endcase
end
endmodule