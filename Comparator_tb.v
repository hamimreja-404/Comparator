`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 01:39:45
// Design Name: 
// Module Name: Comparator_tb
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


module Comparator_tb();

    reg [2:0]A,B;
    wire A_equal_B,A_greater_B,A_less_B;
    
    Comparator uut(
        .A(A),
        .B(B),
        .A_equal_B(A_equal_B),
        .A_greater_B(A_greater_B),
        .A_less_B(A_less_B)
    );
    
    initial
    begin
        A=3'b0;
        B=3'b0;
        
         #10 A=3'd7;
         B= 3'd7;
        #10 A=3'd7;
         B= 3'd2;
                 
         #10 A=3'd3;
         B= 3'd7;
    end
    
endmodule
