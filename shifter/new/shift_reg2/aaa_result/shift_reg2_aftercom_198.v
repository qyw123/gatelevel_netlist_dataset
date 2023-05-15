
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n50, n53, n56, n59, n62, n65, n68, n69, n48, n49, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n49), .K(n49), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[0]), .QN(n72) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n49), .K(n49), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[6]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n49), .K(n49), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[7]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n49), .K(n49), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[5]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n49), .K(n49), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[4]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n49), .K(n49), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[3]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n49), .K(n49), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[2]), .QN(n53) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n49), .K(n49), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[1]), .QN(n50) );
  GTECH_ZERO U73 ( .Z(n49) );
  GTECH_ONE U74 ( .Z(n48) );
  GTECH_NOT U75 ( .A(n73), .Z(shift_in[7]) );
  GTECH_AO21 U76 ( .A(n74), .B(n75), .C(n76), .Z(n73) );
  GTECH_AOI222 U77 ( .A(n77), .B(n78), .C(data_in[7]), .D(n79), .E(n80), .F(
        n81), .Z(n75) );
  GTECH_AOI222 U78 ( .A(data_in[0]), .B(n82), .C(n83), .D(n84), .E(n85), .F(
        n86), .Z(n74) );
  GTECH_OAI21 U79 ( .A(n65), .B(n87), .C(n88), .Z(shift_in[6]) );
  GTECH_AO21 U80 ( .A(n89), .B(n90), .C(n76), .Z(n88) );
  GTECH_AOI222 U81 ( .A(n77), .B(n84), .C(data_in[6]), .D(n79), .E(n80), .F(
        n91), .Z(n90) );
  GTECH_NAND2 U82 ( .A(n92), .B(n93), .Z(n79) );
  GTECH_AOI2N2 U83 ( .A(n85), .B(n78), .C(n72), .D(n94), .Z(n89) );
  GTECH_OAI21 U84 ( .A(n68), .B(n87), .C(n95), .Z(shift_in[5]) );
  GTECH_AO21 U85 ( .A(n96), .B(n97), .C(n76), .Z(n95) );
  GTECH_AOI222 U86 ( .A(n85), .B(n84), .C(n80), .D(n98), .E(n77), .F(n99), .Z(
        n97) );
  GTECH_NOT U87 ( .A(n59), .Z(n98) );
  GTECH_AOI2N2 U88 ( .A(n100), .B(n101), .C(n93), .D(n102), .Z(n96) );
  GTECH_NOT U89 ( .A(data_in[5]), .Z(n102) );
  GTECH_OAI21 U90 ( .A(n62), .B(n87), .C(n103), .Z(shift_in[4]) );
  GTECH_AO21 U91 ( .A(n104), .B(n105), .C(n76), .Z(n103) );
  GTECH_AOI222 U92 ( .A(n85), .B(n99), .C(n80), .D(n86), .E(n77), .F(
        data_in[7]), .Z(n105) );
  GTECH_AOI2N2 U93 ( .A(n100), .B(n81), .C(n93), .D(n106), .Z(n104) );
  GTECH_NOT U94 ( .A(data_in[4]), .Z(n106) );
  GTECH_OAI21 U95 ( .A(n59), .B(n87), .C(n107), .Z(shift_in[3]) );
  GTECH_OAI21 U96 ( .A(n108), .B(n109), .C(n110), .Z(n107) );
  GTECH_OAI22 U97 ( .A(n62), .B(n92), .C(n93), .D(n111), .Z(n109) );
  GTECH_NOT U98 ( .A(data_in[3]), .Z(n111) );
  GTECH_OAI22 U99 ( .A(n112), .B(n113), .C(n53), .D(n114), .Z(n108) );
  GTECH_NOT U100 ( .A(data_in[6]), .Z(n113) );
  GTECH_OAI21 U101 ( .A(n56), .B(n87), .C(n115), .Z(shift_in[2]) );
  GTECH_AO21 U102 ( .A(n116), .B(n117), .C(n76), .Z(n115) );
  GTECH_AOI222 U103 ( .A(n83), .B(n101), .C(n80), .D(n84), .E(data_in[5]), .F(
        n77), .Z(n117) );
  GTECH_NOT U104 ( .A(n50), .Z(n84) );
  GTECH_AOI2N2 U105 ( .A(data_in[2]), .B(n118), .C(n59), .D(n92), .Z(n116) );
  GTECH_OAI21 U106 ( .A(n53), .B(n87), .C(n119), .Z(shift_in[1]) );
  GTECH_AO21 U107 ( .A(n120), .B(n121), .C(n76), .Z(n119) );
  GTECH_AOI222 U108 ( .A(n83), .B(n81), .C(n80), .D(n99), .E(data_in[4]), .F(
        n77), .Z(n121) );
  GTECH_NOT U109 ( .A(n72), .Z(n99) );
  GTECH_NOT U110 ( .A(n114), .Z(n80) );
  GTECH_NAND2 U111 ( .A(n122), .B(n123), .Z(n114) );
  GTECH_AOI222 U112 ( .A(n100), .B(n86), .C(n85), .D(n101), .E(data_in[1]), 
        .F(n118), .Z(n120) );
  GTECH_NOT U113 ( .A(n93), .Z(n118) );
  GTECH_NOT U114 ( .A(n65), .Z(n101) );
  GTECH_NOT U115 ( .A(n56), .Z(n86) );
  GTECH_OAI21 U116 ( .A(n50), .B(n87), .C(n124), .Z(shift_in[0]) );
  GTECH_AO21 U117 ( .A(n125), .B(n126), .C(n76), .Z(n124) );
  GTECH_NOT U118 ( .A(n110), .Z(n76) );
  GTECH_NAND2 U119 ( .A(n82), .B(n122), .Z(n110) );
  GTECH_NOT U120 ( .A(n87), .Z(n82) );
  GTECH_AOI222 U121 ( .A(n85), .B(n81), .C(data_in[3]), .D(n77), .E(n83), .F(
        n91), .Z(n126) );
  GTECH_NOT U122 ( .A(n62), .Z(n91) );
  GTECH_NOT U123 ( .A(n94), .Z(n83) );
  GTECH_NAND3 U124 ( .A(shift_direction[1]), .B(n122), .C(shift_direction[2]), 
        .Z(n94) );
  GTECH_NOT U125 ( .A(n112), .Z(n77) );
  GTECH_NAND3 U126 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n112) );
  GTECH_NOT U127 ( .A(n68), .Z(n81) );
  GTECH_NOT U128 ( .A(n127), .Z(n85) );
  GTECH_NAND2 U129 ( .A(n122), .B(n128), .Z(n127) );
  GTECH_NOT U130 ( .A(shift_direction[0]), .Z(n122) );
  GTECH_AOI2N2 U131 ( .A(n100), .B(n78), .C(n129), .D(n93), .Z(n125) );
  GTECH_NAND3 U132 ( .A(shift_direction[0]), .B(n123), .C(shift_direction[1]), 
        .Z(n93) );
  GTECH_NOT U133 ( .A(data_in[0]), .Z(n129) );
  GTECH_NOT U134 ( .A(n53), .Z(n78) );
  GTECH_NOT U135 ( .A(n92), .Z(n100) );
  GTECH_NAND3 U136 ( .A(shift_direction[0]), .B(n128), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_NAND2 U137 ( .A(n128), .B(n123), .Z(n87) );
  GTECH_NOT U138 ( .A(shift_direction[2]), .Z(n123) );
  GTECH_NOT U139 ( .A(shift_direction[1]), .Z(n128) );
  GTECH_NOT U140 ( .A(reset), .Z(n69) );
endmodule

