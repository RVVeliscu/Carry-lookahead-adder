`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:05:57 AM
// Design Name: 
// Module Name: sum
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


module sum(
    input a,
    input b,
    input c_in,
    output reg g,
    output reg p,
    output reg sum
);

always@(a, b, c_in)
    begin
       g = a & b;
       p = a | b;
       sum = a + b + c_in;
    end

endmodule
