`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:32:03 AM
// Design Name: 
// Module Name: sim_sum_16
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


module sim_sum_16(

    );
    reg c_in;
    reg [15:0]a, b;
    wire G, P;
    wire [15:0]sum;
    wire c;

    sum_16 s(a, b, c_in, G, P, sum, c);
    
   initial begin
       a = 0; b = 0; c_in =0;
       #50 a = 20; b = 15; c_in = 0;
       #50 a = 63000; b = 1000; c_in = 0;
       #50 a = 1; b = 1; c_in = 1;
       #50 $stop;
       #50 $finish;
   end
endmodule
