module mem(
input clk,
input rst,
input wr_rd, 						// 1= wr, 0 = rd 
input [9:0]addr,
input [7:0]wr_data,
input en,
output reg [7:0]rd_data
);

reg [7:0]mem_1k [0:1023];

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		$display("Reset detected");
	end

	else begin
	case ({en, wr_rd})
		'b0x: 	begin
			$display("Memory not enbled");
			rd_data<= 8'bz;
			end

		'b10:   begin				//read
			rd_data <= mem_1k[addr];
			end

		'b11:   begin				// write
			mem_1k[addr] <= wr_data;
			end
					
	endcase
	end	
	
end

endmodule
