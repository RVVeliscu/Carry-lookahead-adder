`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:08:34 AM
// Design Name: 
// Module Name: sum_4
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


module sum_4(
    input [3:0]a,
    input [3:0]b,
    input c_in,
    output G,
    output P,
    output [3:0] sum,
    output c_out
    );
    
    wire [3:0]s;
    wire [3:0]g_in, p_in;
    wire [3:0]C_UAT;
    
    uat UAT1(c_in, g_in, p_in, G, P, C_UAT);
    
    sum s1(a[0], b[0], c_in,     g_in[0], p_in[0], sum[0]);
    sum s2(a[1], b[1], C_UAT[0], g_in[1], p_in[1], sum[1]);
    sum s3(a[2], b[2], C_UAT[1], g_in[2], p_in[2], sum[2]);
    sum s4(a[3], b[3], C_UAT[2], g_in[3], p_in[3], sum[3]);
    assign c_out = C_UAT[3];
    
endmodule

