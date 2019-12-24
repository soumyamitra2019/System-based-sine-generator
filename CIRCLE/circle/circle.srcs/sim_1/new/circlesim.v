`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2019 13:04:28
// Design Name: 
// Module Name: circlesim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circlesim(

    );
    wire signed [7:0]sine;
    reg clk,rst;
    circle w(
     sine,
     clk,rst
    );
    initial begin
    clk<=0;
    rst<=1;
    end
    initial begin
    rst<=0;
    end
    always #10 clk=~clk;
endmodule
