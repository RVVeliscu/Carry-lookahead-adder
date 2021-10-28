`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:41:01 AM
// Design Name: 
// Module Name: sim_sum
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


module sim_sum(

    );
    reg a, b, c_in;
    wire p, g, sum;
    
    sum s(a, b, c_in, p, g, sum);
    initial begin
        a = 0;
        b = 0;
        c_in = 0;
        
        #50 a = 1; b = 0;
        #50 c_in = 1;
        #50 a = 0; b = 1;
        #50 c_in = 0;
        #50 a = 1; b = 1; c_in = 1;
        #50 $stop;
        #50 $finish;
    end
endmodule
