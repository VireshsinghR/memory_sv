//`include "mem.v"
module mem_tb ();
reg clk =0;
reg rst;
reg wr_rd; 						// 1= wr, 0 = rd 
reg [9:0]addr;
reg [7:0]wr_data;
reg en;
wire [7:0]rd_data; 

mem dut (.clk(clk), .rst(rst), .wr_rd(wr_rd), .addr(addr), .wr_data(wr_data), .en(en), .rd_data(rd_data));

initial 
begin
	forever #5 clk = ~clk;
end

initial begin
	rst = 0;
	#10;
	rst =1;


	#200 $finish;
end
endmodule
