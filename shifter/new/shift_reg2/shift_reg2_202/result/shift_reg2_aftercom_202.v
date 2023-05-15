
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
  GTECH_AOI222 U74 ( .A(data_in[0]), .B(n74), .C(data_in[7]), .D(n75), .E(n76), 
        .F(n77), .Z(n72) );
  GTECH_NOT U75 ( .A(n78), .Z(n74) );
  GTECH_AOI222 U76 ( .A(n79), .B(n80), .C(n81), .D(n82), .E(n83), .F(n84), .Z(
        n71) );
  GTECH_OAI22 U77 ( .A(n63), .B(n78), .C(n73), .D(n85), .Z(shift_in[6]) );
  GTECH_AND2 U78 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_AOI222 U79 ( .A(n81), .B(n84), .C(data_in[6]), .D(n75), .E(n76), .F(
        n88), .Z(n87) );
  GTECH_NOT U80 ( .A(n60), .Z(n88) );
  GTECH_NAND2 U81 ( .A(n89), .B(n90), .Z(n75) );
  GTECH_AOI2N2 U82 ( .A(n79), .B(n82), .C(n70), .D(n91), .Z(n86) );
  GTECH_OAI22 U83 ( .A(n66), .B(n78), .C(n73), .D(n92), .Z(shift_in[5]) );
  GTECH_AND2 U84 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_AOI222 U85 ( .A(data_in[5]), .B(n95), .C(n76), .D(n96), .E(n81), .F(
        n97), .Z(n94) );
  GTECH_NOT U86 ( .A(n57), .Z(n96) );
  GTECH_AOI2N2 U87 ( .A(n79), .B(n84), .C(n63), .D(n89), .Z(n93) );
  GTECH_OAI22 U88 ( .A(n60), .B(n78), .C(n73), .D(n98), .Z(shift_in[4]) );
  GTECH_AND2 U89 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_AOI222 U90 ( .A(data_in[4]), .B(n95), .C(n76), .D(n80), .E(n81), .F(
        data_in[7]), .Z(n100) );
  GTECH_AOI2N2 U91 ( .A(n79), .B(n97), .C(n66), .D(n89), .Z(n99) );
  GTECH_OAI21 U92 ( .A(n57), .B(n78), .C(n101), .Z(shift_in[3]) );
  GTECH_OAI21 U93 ( .A(n102), .B(n103), .C(n104), .Z(n101) );
  GTECH_OAI22 U94 ( .A(n60), .B(n89), .C(n90), .D(n105), .Z(n103) );
  GTECH_NOT U95 ( .A(data_in[3]), .Z(n105) );
  GTECH_OAI22 U96 ( .A(n106), .B(n107), .C(n51), .D(n108), .Z(n102) );
  GTECH_NOT U97 ( .A(data_in[6]), .Z(n107) );
  GTECH_OAI22 U98 ( .A(n54), .B(n78), .C(n73), .D(n109), .Z(shift_in[2]) );
  GTECH_AND2 U99 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_AOI222 U100 ( .A(data_in[2]), .B(n95), .C(n76), .D(n84), .E(data_in[5]), .F(n81), .Z(n111) );
  GTECH_NOT U101 ( .A(n48), .Z(n84) );
  GTECH_AOI2N2 U102 ( .A(n83), .B(n112), .C(n57), .D(n89), .Z(n110) );
  GTECH_OAI22 U103 ( .A(n51), .B(n78), .C(n73), .D(n113), .Z(shift_in[1]) );
  GTECH_AND2 U104 ( .A(n114), .B(n115), .Z(n113) );
  GTECH_AOI222 U105 ( .A(data_in[1]), .B(n95), .C(n76), .D(n97), .E(data_in[4]), .F(n81), .Z(n115) );
  GTECH_NOT U106 ( .A(n70), .Z(n97) );
  GTECH_NOT U107 ( .A(n108), .Z(n76) );
  GTECH_NAND2 U108 ( .A(n116), .B(n117), .Z(n108) );
  GTECH_AOI222 U109 ( .A(n79), .B(n112), .C(n118), .D(n80), .E(n83), .F(n77), 
        .Z(n114) );
  GTECH_NOT U110 ( .A(n91), .Z(n83) );
  GTECH_NOT U111 ( .A(n54), .Z(n80) );
  GTECH_NOT U112 ( .A(n63), .Z(n112) );
  GTECH_OAI22 U113 ( .A(n48), .B(n78), .C(n73), .D(n119), .Z(shift_in[0]) );
  GTECH_AND2 U114 ( .A(n120), .B(n121), .Z(n119) );
  GTECH_AOI222 U115 ( .A(n118), .B(n82), .C(data_in[3]), .D(n81), .E(n95), .F(
        data_in[0]), .Z(n121) );
  GTECH_NOT U116 ( .A(n90), .Z(n95) );
  GTECH_NAND3 U117 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[1]), 
        .Z(n90) );
  GTECH_NOT U118 ( .A(n106), .Z(n81) );
  GTECH_NAND3 U119 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n106) );
  GTECH_NOT U120 ( .A(n51), .Z(n82) );
  GTECH_NOT U121 ( .A(n89), .Z(n118) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n122), .C(shift_direction[2]), 
        .Z(n89) );
  GTECH_AOI2N2 U123 ( .A(n79), .B(n77), .C(n60), .D(n91), .Z(n120) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(n116), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_NOT U125 ( .A(n66), .Z(n77) );
  GTECH_NOT U126 ( .A(n104), .Z(n73) );
  GTECH_NAND2 U127 ( .A(n79), .B(n117), .Z(n104) );
  GTECH_NOT U128 ( .A(n123), .Z(n79) );
  GTECH_NAND2 U129 ( .A(n116), .B(n122), .Z(n123) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n116) );
  GTECH_NAND2 U131 ( .A(n122), .B(n117), .Z(n78) );
  GTECH_NOT U132 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U133 ( .A(shift_direction[1]), .Z(n122) );
  GTECH_NOT U134 ( .A(reset), .Z(n67) );
endmodule

