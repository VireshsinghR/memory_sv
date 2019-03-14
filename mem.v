module mem(
input clk,
input rst,
input [31:0]addr,
input [7:0]wr_data,
input en,
output [7:0]rd_data
);

bit [31:0] mem_1k [1023];

always @(posedge clk or negedge rst)
begin
	if (!rst)
	begin

	end





end

endmodule
