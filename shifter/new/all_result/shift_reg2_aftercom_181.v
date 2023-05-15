
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n48, n51, n54, n57, n60, n63, n66, n67, n46, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[0]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[6]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[7]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[5]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[4]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[3]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[2]), .QN(n51) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[1]), .QN(n48) );
  GTECH_ONE U71 ( .Z(n46) );
  GTECH_AOI21 U72 ( .A(n71), .B(n72), .C(n73), .Z(shift_in[7]) );
  GTECH_AOI222 U73 ( .A(data_in[0]), .B(n74), .C(data_in[7]), .D(n75), .E(n76), 
        .F(n77), .Z(n72) );
  GTECH_NOT U74 ( .A(n78), .Z(n74) );
  GTECH_AOI222 U75 ( .A(n79), .B(n80), .C(n81), .D(n82), .E(n83), .F(n84), .Z(
        n71) );
  GTECH_OAI22 U76 ( .A(n63), .B(n78), .C(n73), .D(n85), .Z(shift_in[6]) );
  GTECH_AND2 U77 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_AOI222 U78 ( .A(n81), .B(n84), .C(data_in[6]), .D(n75), .E(n76), .F(
        n88), .Z(n87) );
  GTECH_NOT U79 ( .A(n60), .Z(n88) );
  GTECH_NAND2 U80 ( .A(n89), .B(n90), .Z(n75) );
  GTECH_OA22 U81 ( .A(n70), .B(n91), .C(n51), .D(n92), .Z(n86) );
  GTECH_OAI22 U82 ( .A(n66), .B(n78), .C(n73), .D(n93), .Z(shift_in[5]) );
  GTECH_AND2 U83 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_AOI222 U84 ( .A(data_in[5]), .B(n96), .C(n76), .D(n97), .E(n81), .F(
        n98), .Z(n95) );
  GTECH_NOT U85 ( .A(n57), .Z(n97) );
  GTECH_OA22 U86 ( .A(n63), .B(n89), .C(n48), .D(n92), .Z(n94) );
  GTECH_OAI22 U87 ( .A(n60), .B(n78), .C(n73), .D(n99), .Z(shift_in[4]) );
  GTECH_AND2 U88 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_AOI222 U89 ( .A(data_in[4]), .B(n96), .C(n76), .D(n80), .E(n81), .F(
        data_in[7]), .Z(n101) );
  GTECH_OA22 U90 ( .A(n66), .B(n89), .C(n70), .D(n92), .Z(n100) );
  GTECH_OAI22 U91 ( .A(n57), .B(n78), .C(n73), .D(n102), .Z(shift_in[3]) );
  GTECH_AND2 U92 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_OA22 U93 ( .A(n51), .B(n105), .C(n106), .D(n107), .Z(n104) );
  GTECH_NOT U94 ( .A(data_in[6]), .Z(n107) );
  GTECH_OA22 U95 ( .A(n90), .B(n108), .C(n60), .D(n89), .Z(n103) );
  GTECH_NOT U96 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI22 U97 ( .A(n54), .B(n78), .C(n73), .D(n109), .Z(shift_in[2]) );
  GTECH_AND2 U98 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_AOI222 U99 ( .A(data_in[2]), .B(n96), .C(n76), .D(n84), .E(data_in[5]), 
        .F(n81), .Z(n111) );
  GTECH_NOT U100 ( .A(n48), .Z(n84) );
  GTECH_OA22 U101 ( .A(n57), .B(n89), .C(n63), .D(n91), .Z(n110) );
  GTECH_OAI22 U102 ( .A(n51), .B(n78), .C(n73), .D(n112), .Z(shift_in[1]) );
  GTECH_AND2 U103 ( .A(n113), .B(n114), .Z(n112) );
  GTECH_AOI222 U104 ( .A(data_in[1]), .B(n96), .C(n76), .D(n98), .E(data_in[4]), .F(n81), .Z(n114) );
  GTECH_NOT U105 ( .A(n70), .Z(n98) );
  GTECH_NOT U106 ( .A(n105), .Z(n76) );
  GTECH_NAND2 U107 ( .A(n115), .B(n116), .Z(n105) );
  GTECH_AOI222 U108 ( .A(n79), .B(n117), .C(n118), .D(n80), .E(n83), .F(n77), 
        .Z(n113) );
  GTECH_NOT U109 ( .A(n66), .Z(n77) );
  GTECH_NOT U110 ( .A(n91), .Z(n83) );
  GTECH_NOT U111 ( .A(n54), .Z(n80) );
  GTECH_NOT U112 ( .A(n63), .Z(n117) );
  GTECH_OAI22 U113 ( .A(n48), .B(n78), .C(n73), .D(n119), .Z(shift_in[0]) );
  GTECH_AND2 U114 ( .A(n120), .B(n121), .Z(n119) );
  GTECH_AOI222 U115 ( .A(n118), .B(n82), .C(data_in[3]), .D(n81), .E(n96), .F(
        data_in[0]), .Z(n121) );
  GTECH_NOT U116 ( .A(n90), .Z(n96) );
  GTECH_NAND3 U117 ( .A(shift_direction[0]), .B(n116), .C(shift_direction[1]), 
        .Z(n90) );
  GTECH_NOT U118 ( .A(n106), .Z(n81) );
  GTECH_NAND3 U119 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n106) );
  GTECH_NOT U120 ( .A(n51), .Z(n82) );
  GTECH_NOT U121 ( .A(n89), .Z(n118) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n122), .C(shift_direction[2]), 
        .Z(n89) );
  GTECH_OA22 U123 ( .A(n60), .B(n91), .C(n66), .D(n92), .Z(n120) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(n115), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_NOT U125 ( .A(n123), .Z(n73) );
  GTECH_NAND2 U126 ( .A(n79), .B(n116), .Z(n123) );
  GTECH_NOT U127 ( .A(n92), .Z(n79) );
  GTECH_NAND2 U128 ( .A(n115), .B(n122), .Z(n92) );
  GTECH_NOT U129 ( .A(shift_direction[0]), .Z(n115) );
  GTECH_NAND2 U130 ( .A(n122), .B(n116), .Z(n78) );
  GTECH_NOT U131 ( .A(shift_direction[2]), .Z(n116) );
  GTECH_NOT U132 ( .A(shift_direction[1]), .Z(n122) );
  GTECH_NOT U133 ( .A(reset), .Z(n67) );
endmodule

