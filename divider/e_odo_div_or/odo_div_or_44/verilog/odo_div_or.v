module odo_div_or
  #(parameter DIV_CLK = 9)
   (
    input               rstn ,
    input               clk,
    output              clk_div9
    );

   //计数器
   reg [3:0]            cnt ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         cnt    <= 'b0 ;
      end
      else if (cnt == DIV_CLK-1) begin
         cnt    <= 'b0 ;
      end
      else begin
         cnt    <= cnt + 1'b1 ;
      end
   end

   //在上升沿产生9分频
   reg                  clkp_div9_r ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         clkp_div9_r <= 1'b0 ;
      end
      else if (cnt == (DIV_CLK>>1)-1 ) begin //计数4-8位低电平
        clkp_div9_r <= 0 ;
      end
      else if (cnt == DIV_CLK-1) begin //计数 0-3 为高电平
        clkp_div9_r <= 1 ;
      end
   end

   //在下降沿产生9分频
   reg                  clkn_div9_r ;
   always @(negedge clk or negedge rstn) begin
      if (!rstn) begin
         clkn_div9_r <= 1'b0 ;
      end
      else if (cnt == (DIV_CLK>>1)-1 ) begin 
        clkn_div9_r <= 0 ;
      end
      else if (cnt == DIV_CLK-1) begin 
        clkn_div9_r <= 1 ;
      end
   end

   //或操作，往往使用基本逻辑单元库
   // or (clk_div9, clkp_div9_r, clkn_div9_r) ;
   assign clk_div9 = clkp_div9_r | clkn_div9_r ;

endmodule