`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 07:22:48 AM
// Design Name: 
// Module Name: sim_uat
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


module sim_uat(

    );
    
    reg c_in;
    reg [3:0]a, b;
    wire [3:0]g_in, p_in;
    wire [3:0] sum;
    wire UAT_G, UAT_P;
    wire [3:0]C_UAT;
   
    sum s1(a[0], b[0], c_in,     g_in[0], p_in[0], sum[0]);
    sum s2(a[1], b[1], C_UAT[0], g_in[1], p_in[1], sum[1]);
    sum s3(a[2], b[2], C_UAT[1], g_in[2], p_in[2], sum[2]);
    sum s4(a[3], b[3], C_UAT[2], g_in[3], p_in[3], sum[3]);

    uat UAT1(c_in, g_in, p_in, UAT_G, UAT_P, C_UAT);
    integer i,j;
    
    initial begin
        c_in=0;
        a=0;
        b=0;
        for(i=0;i<16;i=i+1)
        begin
            #10 a=i;
            for(j=i;j<16;j=j+1)
            begin
                #10 b=j;
            end
        end
    end

endmodule
