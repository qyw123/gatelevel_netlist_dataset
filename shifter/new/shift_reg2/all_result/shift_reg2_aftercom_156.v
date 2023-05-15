
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n48, n51, n54, n57, n60, n63, n66, n67, n46, n47, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n47), .K(n47), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[0]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n47), .K(n47), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[6]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n47), .K(n47), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[7]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n47), .K(n47), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[5]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n47), .K(n47), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[4]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n47), .K(n47), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[3]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n47), .K(n47), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[2]), .QN(n51) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n47), .K(n47), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n67), .SD(n46), .Q(data_out[1]), .QN(n48) );
  GTECH_ZERO U71 ( .Z(n47) );
  GTECH_ONE U72 ( .Z(n46) );
  GTECH_AOI21 U73 ( .A(n71), .B(n72), .C(n73), .Z(shift_in[7]) );
  GTECH_AOI222 U74 ( .A(n74), .B(n75), .C(data_in[7]), .D(n76), .E(n77), .F(
        n78), .Z(n72) );
  GTECH_AOI222 U75 ( .A(data_in[0]), .B(n79), .C(n80), .D(n81), .E(n82), .F(
        n83), .Z(n71) );
  GTECH_OAI21 U76 ( .A(n63), .B(n84), .C(n85), .Z(shift_in[6]) );
  GTECH_AO21 U77 ( .A(n86), .B(n87), .C(n73), .Z(n85) );
  GTECH_AOI222 U78 ( .A(n74), .B(n81), .C(data_in[6]), .D(n76), .E(n77), .F(
        n88), .Z(n87) );
  GTECH_NAND2 U79 ( .A(n89), .B(n90), .Z(n76) );
  GTECH_AOI22 U80 ( .A(n80), .B(n91), .C(n82), .D(n75), .Z(n86) );
  GTECH_OAI21 U81 ( .A(n66), .B(n84), .C(n92), .Z(shift_in[5]) );
  GTECH_AO21 U82 ( .A(n93), .B(n94), .C(n73), .Z(n92) );
  GTECH_AOI222 U83 ( .A(n82), .B(n81), .C(n77), .D(n95), .E(n74), .F(n91), .Z(
        n94) );
  GTECH_AOI22 U84 ( .A(n96), .B(n97), .C(data_in[5]), .D(n98), .Z(n93) );
  GTECH_OAI21 U85 ( .A(n60), .B(n84), .C(n99), .Z(shift_in[4]) );
  GTECH_AO21 U86 ( .A(n100), .B(n101), .C(n73), .Z(n99) );
  GTECH_AOI222 U87 ( .A(n82), .B(n91), .C(n77), .D(n83), .E(n74), .F(
        data_in[7]), .Z(n101) );
  GTECH_AOI22 U88 ( .A(n96), .B(n78), .C(data_in[4]), .D(n98), .Z(n100) );
  GTECH_OAI21 U89 ( .A(n57), .B(n84), .C(n102), .Z(shift_in[3]) );
  GTECH_OAI21 U90 ( .A(n103), .B(n104), .C(n105), .Z(n102) );
  GTECH_OAI22 U91 ( .A(n89), .B(n106), .C(n60), .D(n90), .Z(n104) );
  GTECH_NOT U92 ( .A(data_in[3]), .Z(n106) );
  GTECH_OAI22 U93 ( .A(n107), .B(n108), .C(n51), .D(n109), .Z(n103) );
  GTECH_NOT U94 ( .A(data_in[6]), .Z(n108) );
  GTECH_OAI21 U95 ( .A(n54), .B(n84), .C(n110), .Z(shift_in[2]) );
  GTECH_AO21 U96 ( .A(n111), .B(n112), .C(n73), .Z(n110) );
  GTECH_AOI222 U97 ( .A(n80), .B(n97), .C(n77), .D(n81), .E(data_in[5]), .F(
        n74), .Z(n112) );
  GTECH_NOT U98 ( .A(n48), .Z(n81) );
  GTECH_AOI22 U99 ( .A(n96), .B(n95), .C(data_in[2]), .D(n98), .Z(n111) );
  GTECH_NOT U100 ( .A(n57), .Z(n95) );
  GTECH_OAI21 U101 ( .A(n51), .B(n84), .C(n113), .Z(shift_in[1]) );
  GTECH_AO21 U102 ( .A(n114), .B(n115), .C(n73), .Z(n113) );
  GTECH_AOI222 U103 ( .A(n80), .B(n78), .C(n77), .D(n91), .E(data_in[4]), .F(
        n74), .Z(n115) );
  GTECH_NOT U104 ( .A(n70), .Z(n91) );
  GTECH_NOT U105 ( .A(n109), .Z(n77) );
  GTECH_NAND2 U106 ( .A(n116), .B(n117), .Z(n109) );
  GTECH_AOI222 U107 ( .A(data_in[1]), .B(n98), .C(n82), .D(n97), .E(n96), .F(
        n83), .Z(n114) );
  GTECH_NOT U108 ( .A(n54), .Z(n83) );
  GTECH_NOT U109 ( .A(n63), .Z(n97) );
  GTECH_OAI21 U110 ( .A(n48), .B(n84), .C(n118), .Z(shift_in[0]) );
  GTECH_AO21 U111 ( .A(n119), .B(n120), .C(n73), .Z(n118) );
  GTECH_NOT U112 ( .A(n105), .Z(n73) );
  GTECH_NAND2 U113 ( .A(n79), .B(n116), .Z(n105) );
  GTECH_NOT U114 ( .A(n84), .Z(n79) );
  GTECH_AOI222 U115 ( .A(n82), .B(n78), .C(data_in[3]), .D(n74), .E(n80), .F(
        n88), .Z(n120) );
  GTECH_NOT U116 ( .A(n60), .Z(n88) );
  GTECH_NOT U117 ( .A(n121), .Z(n80) );
  GTECH_NAND3 U118 ( .A(shift_direction[2]), .B(n116), .C(shift_direction[1]), 
        .Z(n121) );
  GTECH_NOT U119 ( .A(n107), .Z(n74) );
  GTECH_NAND3 U120 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n107) );
  GTECH_NOT U121 ( .A(n66), .Z(n78) );
  GTECH_NOT U122 ( .A(n122), .Z(n82) );
  GTECH_NAND2 U123 ( .A(n116), .B(n123), .Z(n122) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n116) );
  GTECH_AOI22 U125 ( .A(n96), .B(n75), .C(n98), .D(data_in[0]), .Z(n119) );
  GTECH_NOT U126 ( .A(n89), .Z(n98) );
  GTECH_NAND3 U127 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[1]), 
        .Z(n89) );
  GTECH_NOT U128 ( .A(n51), .Z(n75) );
  GTECH_NOT U129 ( .A(n90), .Z(n96) );
  GTECH_NAND3 U130 ( .A(shift_direction[0]), .B(n123), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND2 U131 ( .A(n123), .B(n117), .Z(n84) );
  GTECH_NOT U132 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U133 ( .A(shift_direction[1]), .Z(n123) );
  GTECH_NOT U134 ( .A(reset), .Z(n67) );
endmodule

