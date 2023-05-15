
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
         n125;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n49), .K(n49), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[0]), .QN(n72) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n49), .K(n49), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[5]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n49), .K(n49), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[3]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n49), .K(n49), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[4]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n49), .K(n49), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[2]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n49), .K(n49), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[7]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n49), .K(n49), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[1]), .QN(n53) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n49), .K(n49), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[6]), .QN(n50) );
  GTECH_ZERO U73 ( .Z(n49) );
  GTECH_ONE U74 ( .Z(n48) );
  GTECH_AND2 U75 ( .A(n73), .B(n74), .Z(shift_in[7]) );
  GTECH_OR3 U76 ( .A(n75), .B(n76), .C(n77), .Z(n74) );
  GTECH_OAI21 U77 ( .A(n59), .B(n78), .C(n79), .Z(n77) );
  GTECH_AOI2N2 U78 ( .A(n80), .B(data_in[7]), .C(n50), .D(n81), .Z(n79) );
  GTECH_OAI22 U79 ( .A(n53), .B(n82), .C(n83), .D(n65), .Z(n76) );
  GTECH_AND_NOT U80 ( .A(data_in[0]), .B(n84), .Z(n75) );
  GTECH_OAI21 U81 ( .A(n56), .B(n84), .C(n85), .Z(shift_in[6]) );
  GTECH_OAI21 U82 ( .A(n86), .B(n87), .C(n73), .Z(n85) );
  GTECH_OAI22 U83 ( .A(n72), .B(n82), .C(n59), .D(n83), .Z(n87) );
  GTECH_OAI21 U84 ( .A(n53), .B(n78), .C(n88), .Z(n86) );
  GTECH_AOI2N2 U85 ( .A(n80), .B(data_in[6]), .C(n68), .D(n81), .Z(n88) );
  GTECH_NAND2 U86 ( .A(n89), .B(n90), .Z(n80) );
  GTECH_OAI2N2 U87 ( .A(n50), .B(n84), .C(n73), .D(n91), .Z(shift_in[5]) );
  GTECH_OR3 U88 ( .A(n92), .B(n93), .C(n94), .Z(n91) );
  GTECH_OAI21 U89 ( .A(n56), .B(n90), .C(n95), .Z(n94) );
  GTECH_OR_NOT U90 ( .A(n89), .B(data_in[5]), .Z(n95) );
  GTECH_OAI22 U91 ( .A(n72), .B(n78), .C(n81), .D(n62), .Z(n93) );
  GTECH_NOR2 U92 ( .A(n53), .B(n83), .Z(n92) );
  GTECH_OAI21 U93 ( .A(n68), .B(n84), .C(n96), .Z(shift_in[4]) );
  GTECH_OAI21 U94 ( .A(n97), .B(n98), .C(n73), .Z(n96) );
  GTECH_OAI22 U95 ( .A(n89), .B(n99), .C(n50), .D(n90), .Z(n98) );
  GTECH_NOT U96 ( .A(data_in[4]), .Z(n99) );
  GTECH_OAI21 U97 ( .A(n72), .B(n83), .C(n100), .Z(n97) );
  GTECH_AOI2N2 U98 ( .A(n101), .B(data_in[7]), .C(n65), .D(n81), .Z(n100) );
  GTECH_OAI21 U99 ( .A(n62), .B(n84), .C(n102), .Z(shift_in[3]) );
  GTECH_OAI21 U100 ( .A(n103), .B(n104), .C(n73), .Z(n102) );
  GTECH_OAI22 U101 ( .A(n89), .B(n105), .C(n68), .D(n90), .Z(n104) );
  GTECH_OAI22 U102 ( .A(n78), .B(n106), .C(n59), .D(n81), .Z(n103) );
  GTECH_NOT U103 ( .A(data_in[6]), .Z(n106) );
  GTECH_OAI21 U104 ( .A(n65), .B(n84), .C(n107), .Z(shift_in[2]) );
  GTECH_OAI21 U105 ( .A(n108), .B(n109), .C(n73), .Z(n107) );
  GTECH_OAI2N2 U106 ( .A(n56), .B(n82), .C(data_in[2]), .D(n110), .Z(n109) );
  GTECH_OAI21 U107 ( .A(n62), .B(n90), .C(n111), .Z(n108) );
  GTECH_AOI2N2 U108 ( .A(data_in[5]), .B(n101), .C(n53), .D(n81), .Z(n111) );
  GTECH_OAI21 U109 ( .A(n59), .B(n84), .C(n112), .Z(shift_in[1]) );
  GTECH_OAI21 U110 ( .A(n113), .B(n114), .C(n73), .Z(n112) );
  GTECH_OAI21 U111 ( .A(n50), .B(n82), .C(n115), .Z(n114) );
  GTECH_AOI2N2 U112 ( .A(data_in[1]), .B(n110), .C(n65), .D(n90), .Z(n115) );
  GTECH_NOT U113 ( .A(n89), .Z(n110) );
  GTECH_OAI21 U114 ( .A(n56), .B(n83), .C(n116), .Z(n113) );
  GTECH_AOI2N2 U115 ( .A(data_in[4]), .B(n101), .C(n72), .D(n81), .Z(n116) );
  GTECH_NAND2 U116 ( .A(n117), .B(n118), .Z(n81) );
  GTECH_NOT U117 ( .A(n78), .Z(n101) );
  GTECH_OAI2N2 U118 ( .A(n53), .B(n84), .C(n73), .D(n119), .Z(shift_in[0]) );
  GTECH_OR3 U119 ( .A(n120), .B(n121), .C(n122), .Z(n119) );
  GTECH_OAI21 U120 ( .A(n68), .B(n82), .C(n123), .Z(n122) );
  GTECH_OR_NOT U121 ( .A(n89), .B(data_in[0]), .Z(n123) );
  GTECH_NAND3 U122 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[1]), 
        .Z(n89) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(n118), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_OAI22 U124 ( .A(n50), .B(n83), .C(n105), .D(n78), .Z(n121) );
  GTECH_NAND3 U125 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n78) );
  GTECH_NOT U126 ( .A(data_in[3]), .Z(n105) );
  GTECH_NAND2 U127 ( .A(n124), .B(n118), .Z(n83) );
  GTECH_NOR2 U128 ( .A(n59), .B(n90), .Z(n120) );
  GTECH_NAND3 U129 ( .A(shift_direction[0]), .B(n124), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND2 U130 ( .A(n125), .B(n118), .Z(n73) );
  GTECH_NOT U131 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_NOT U132 ( .A(n84), .Z(n125) );
  GTECH_NAND2 U133 ( .A(n124), .B(n117), .Z(n84) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n124) );
  GTECH_NOT U136 ( .A(reset), .Z(n69) );
endmodule

