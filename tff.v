
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2023 11:21:53 AM
// Design Name: 
// Module Name: t_ff
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

module t_ff(clk,rst,t,q);
input clk,rst,t;
output reg q;

always @(posedge clk,posedge rst)
begin
      if(rst)
          q<= 1'b0;
      else 
          begin
          //q<= (t^q);
          if(t)
             q<= ~q;
          else
             q<= q;   
          end 
end 
             
endmodule
