`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:15:01 AM
// Design Name: 
// Module Name: sum_16
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


module sum_16(
    input [15:0]a,
    input [15:0]b,
    input c_in,
    output G,
    output P,
    output [15:0] sum,
    output c_out
    );
    
    wire [15:0]s;
    wire [3:0]g_in, p_in;
    wire [3:0]C_UAT;
    
    uat UAT1(c_in, g_in, p_in, G, P, C_UAT);
    
    sum_4 s1(a[3:0],   b[3:0],   c_in,     g_in[0], p_in[0], sum[3:0]);
    sum_4 s2(a[7:4],   b[7:4],   C_UAT[0], g_in[1], p_in[1], sum[7:4]);
    sum_4 s3(a[11:8],  b[11:8],  C_UAT[1], g_in[2], p_in[2], sum[11:8]);
    sum_4 s4(a[15:12], b[15:12], C_UAT[2], g_in[3], p_in[3], sum[15:12]);
    
    assign c_out = C_UAT[3];
    
endmodule
