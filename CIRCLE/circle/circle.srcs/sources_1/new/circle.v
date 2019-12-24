`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2019 11:59:16
// Design Name: 
// Module Name: circle
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


module circle(
    output reg signed [15:0]sine,
    input clk,rst
    );
    reg [1:0]count;
    reg [15:0] amplitude,x,y;
    initial begin
    amplitude<=20;
    x<=20;
    y<=0;
    count<=0;
    end
    parameter amp=20;
    always @(posedge clk)
    begin
        if(rst)
            begin
                amplitude<=20;
                x<=20;
                y<=0;
                count<=0;
            end
    end/*
    genvar i;
     generate
        for(i=0;i<=amp;i=i+1)
        begin:w*/
            always @(posedge clk)
                begin
                   if(count==0)
                     if(y*y<((amplitude*amplitude)-(x*x)))
                          y=y+1;
                     else
                        begin
                            sine<=amplitude+y;
                            x<=x-1;
                        if(y==amplitude)
                            count<=1;
                        end   
                    if(count==1)
                        if(x*x<((amplitude*amplitude)-(y*y)))
                          x=x+1;
                    else
                        begin
                            sine<=amplitude+y;
                            y<=y-1;
                            if(x==amplitude)
                                count<=2;
                        end   
                        
                        
                        if(count==2)
                     if(y*y<((amplitude*amplitude)-(x*x)))
                          y=y+1;
                     else
                        begin
                            sine<=amplitude-y;
                            x<=x-1;
                        if(y==amplitude)
                            count<=3;
                        end   
                    if(count==3)
                        if(x*x<((amplitude*amplitude)-(y*y)))
                          x=x+1;
                    else
                        begin
                            sine<=amplitude-y;
                            y<=y-1;
                            if(x==amplitude)
                                count<=0;
                        end   
                end
        /*end
        
    endgenerate*/
endmodule