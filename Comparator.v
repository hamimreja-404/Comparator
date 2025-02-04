`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 01:30:07
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input [2:0] A, B,
    output reg A_equal_B, A_greater_B, A_less_B
);
    always @(*)
    begin
        A_equal_B = (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] ~^ B[0]);
        A_greater_B = A[2] & ~B[2] | (A[2] ~^ B[2]) & (A[1] & ~B[1]) | (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] & ~B[0]);
        A_less_B =  ~A[2] & B[2] | (A[2] ~^ B[2]) & (~A[1] & B[1]) | (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (~A[0] & B[0]);
    end
    
endmodule

