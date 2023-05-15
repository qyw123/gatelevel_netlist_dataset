module even_divisor
  # (parameter DIV_CLK = 10 )
    (
    input               rstn ,
    input               clk,
    output              clk_div2,
    output              clk_div4,
    output              clk_div10
    );

   //2 分频
   reg                  clk_div2_r ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         clk_div2_r     <= 'b0 ;
      end
      else begin
         clk_div2_r     <= ~clk_div2_r ;
      end
   end
   assign       clk_div2 = clk_div2_r ;

   //4 分频
   reg                  clk_div4_r ;
   always @(posedge clk_div2 or negedge rstn) begin
      if (!rstn) begin
         clk_div4_r     <= 'b0 ;
      end
      else begin
         clk_div4_r     <= ~clk_div4_r ;
      end
   end
   assign clk_div4      = clk_div4_r ;

   //N/2 计数
   reg [3:0]            cnt ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         cnt    <= 'b0 ;
      end
      else if (cnt == (DIV_CLK/2)-1) begin
         cnt    <= 'b0 ;
      end
      else begin
         cnt    <= cnt + 1'b1 ;
      end
   end

   //输出时钟
   reg                  clk_div10_r ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         clk_div10_r <= 1'b0 ;
      end
      else if (cnt == (DIV_CLK/2)-1 ) begin
         clk_div10_r <= ~clk_div10_r ;
      end
   end
   assign clk_div10 = clk_div10_r ;
endmodule