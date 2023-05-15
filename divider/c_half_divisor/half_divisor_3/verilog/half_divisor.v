module half_divisor(
    input               rstn ,
    input               clk,
    output              clk_div3p5
    );

   //计数器
   parameter            MUL2_DIV_CLK = 7 ;
   reg [3:0]            cnt ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         cnt    <= 'b0 ;
      end
      else if (cnt == MUL2_DIV_CLK-1) begin //计数2倍分频比
         cnt    <= 'b0 ;
      end
      else begin
         cnt    <= cnt + 1'b1 ;
      end
   end

   reg                  clk_ave_r ;
   always @(posedge clk or negedge rstn) begin
      if (!rstn) begin
         clk_ave_r <= 1'b0 ;
      end
      //first cycle: 4 source clk cycle
      else if (cnt == 0) begin
         clk_ave_r <= 1 ;
      end
      //2nd cycle: 3 source clk cycle
      else if (cnt == (MUL2_DIV_CLK/2)+1) begin
         clk_ave_r <= 1 ;
      end
      else begin
         clk_ave_r <= 0 ;
      end
   end

   //adjust
   reg                  clk_adjust_r ;
   always @(negedge clk or negedge rstn) begin
      if (!rstn) begin
         clk_adjust_r <= 1'b0 ;
      end
      //本次时钟只为调整一致的占空比
      else if (cnt == 1) begin
         clk_adjust_r <= 1 ;
      end
      //本次时钟只为调整一致的精确分频比
      else if (cnt == (MUL2_DIV_CLK/2)+1 ) begin
         clk_adjust_r <= 1 ;
      end
      else begin
         clk_adjust_r <= 0 ;
      end
   end

   assign clk_div3p5 = clk_adjust_r | clk_ave_r ;

endmodule