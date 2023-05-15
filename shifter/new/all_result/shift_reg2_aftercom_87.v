
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n67, n60, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n60), .K(n60), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n60), .K(n60), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[6]), .QN(n70) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n60), .K(n60), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[7]), .QN(n69) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n60), .K(n60), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[5]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n60), .K(n60), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[4]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n60), .K(n60), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n60), .K(n60), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[2]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n60), .K(n60), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n67), .Q(data_out[1]), .QN(n7) );
  GTECH_ZERO U71 ( .Z(n60) );
  GTECH_AND2 U72 ( .A(n71), .B(n72), .Z(shift_in[7]) );
  GTECH_NAND3 U73 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_OA21 U74 ( .A(n5), .B(n76), .C(n77), .Z(n75) );
  GTECH_OA22 U75 ( .A(n7), .B(n78), .C(n6), .D(n79), .Z(n77) );
  GTECH_OR_NOT U76 ( .A(n80), .B(data_in[0]), .Z(n74) );
  GTECH_OA22 U77 ( .A(n81), .B(n82), .C(n70), .D(n83), .Z(n73) );
  GTECH_OAI22 U78 ( .A(n69), .B(n80), .C(n84), .D(n85), .Z(shift_in[6]) );
  GTECH_AND2 U79 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_OA21 U80 ( .A(n2), .B(n78), .C(n88), .Z(n87) );
  GTECH_OA22 U81 ( .A(n81), .B(n89), .C(n3), .D(n83), .Z(n88) );
  GTECH_NOT U82 ( .A(n90), .Z(n81) );
  GTECH_NAND2 U83 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_OA22 U84 ( .A(n7), .B(n79), .C(n6), .D(n76), .Z(n86) );
  GTECH_OAI22 U85 ( .A(n70), .B(n80), .C(n84), .D(n93), .Z(shift_in[5]) );
  GTECH_AND2 U86 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_OA21 U87 ( .A(n69), .B(n92), .C(n96), .Z(n95) );
  GTECH_OA22 U88 ( .A(n4), .B(n83), .C(n2), .D(n79), .Z(n96) );
  GTECH_OA22 U89 ( .A(n91), .B(n97), .C(n7), .D(n76), .Z(n94) );
  GTECH_OAI22 U90 ( .A(n3), .B(n80), .C(n84), .D(n98), .Z(shift_in[4]) );
  GTECH_AND2 U91 ( .A(n99), .B(n100), .Z(n98) );
  GTECH_OA21 U92 ( .A(n70), .B(n92), .C(n101), .Z(n100) );
  GTECH_OA22 U93 ( .A(n5), .B(n83), .C(n82), .D(n79), .Z(n101) );
  GTECH_NOT U94 ( .A(data_in[7]), .Z(n82) );
  GTECH_OA22 U95 ( .A(n91), .B(n102), .C(n2), .D(n76), .Z(n99) );
  GTECH_OAI22 U96 ( .A(n4), .B(n80), .C(n84), .D(n103), .Z(shift_in[3]) );
  GTECH_AND2 U97 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_OA22 U98 ( .A(n6), .B(n83), .C(n79), .D(n89), .Z(n105) );
  GTECH_NOT U99 ( .A(data_in[6]), .Z(n89) );
  GTECH_OA22 U100 ( .A(n3), .B(n92), .C(n91), .D(n106), .Z(n104) );
  GTECH_OAI22 U101 ( .A(n5), .B(n80), .C(n84), .D(n107), .Z(shift_in[2]) );
  GTECH_AND2 U102 ( .A(n108), .B(n109), .Z(n107) );
  GTECH_OA21 U103 ( .A(n79), .B(n97), .C(n110), .Z(n109) );
  GTECH_OA22 U104 ( .A(n7), .B(n83), .C(n69), .D(n78), .Z(n110) );
  GTECH_NOT U105 ( .A(data_in[5]), .Z(n97) );
  GTECH_AOI2N2 U106 ( .A(data_in[2]), .B(n111), .C(n4), .D(n92), .Z(n108) );
  GTECH_OAI22 U107 ( .A(n6), .B(n80), .C(n84), .D(n112), .Z(shift_in[1]) );
  GTECH_AND2 U108 ( .A(n113), .B(n114), .Z(n112) );
  GTECH_OA21 U109 ( .A(n79), .B(n102), .C(n115), .Z(n114) );
  GTECH_OA22 U110 ( .A(n2), .B(n83), .C(n70), .D(n78), .Z(n115) );
  GTECH_NAND2 U111 ( .A(n116), .B(n117), .Z(n83) );
  GTECH_NOT U112 ( .A(data_in[4]), .Z(n102) );
  GTECH_OA21 U113 ( .A(n69), .B(n76), .C(n118), .Z(n113) );
  GTECH_AOI2N2 U114 ( .A(data_in[1]), .B(n111), .C(n5), .D(n92), .Z(n118) );
  GTECH_NOT U115 ( .A(n91), .Z(n111) );
  GTECH_OAI22 U116 ( .A(n7), .B(n80), .C(n84), .D(n119), .Z(shift_in[0]) );
  GTECH_AND2 U117 ( .A(n120), .B(n121), .Z(n119) );
  GTECH_OA21 U118 ( .A(n6), .B(n92), .C(n122), .Z(n121) );
  GTECH_OA22 U119 ( .A(n3), .B(n78), .C(n79), .D(n106), .Z(n122) );
  GTECH_NOT U120 ( .A(data_in[3]), .Z(n106) );
  GTECH_NAND3 U121 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n79) );
  GTECH_NAND3 U122 ( .A(shift_direction[2]), .B(n116), .C(shift_direction[1]), 
        .Z(n78) );
  GTECH_NAND3 U123 ( .A(shift_direction[0]), .B(n123), .C(shift_direction[2]), 
        .Z(n92) );
  GTECH_OA22 U124 ( .A(n124), .B(n91), .C(n70), .D(n76), .Z(n120) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n117), .C(shift_direction[1]), 
        .Z(n91) );
  GTECH_NOT U126 ( .A(data_in[0]), .Z(n124) );
  GTECH_NOT U127 ( .A(n71), .Z(n84) );
  GTECH_NAND2 U128 ( .A(n125), .B(n117), .Z(n71) );
  GTECH_NOT U129 ( .A(n76), .Z(n125) );
  GTECH_NAND2 U130 ( .A(n116), .B(n123), .Z(n76) );
  GTECH_NOT U131 ( .A(shift_direction[0]), .Z(n116) );
  GTECH_NAND2 U132 ( .A(n123), .B(n117), .Z(n80) );
  GTECH_NOT U133 ( .A(shift_direction[2]), .Z(n117) );
  GTECH_NOT U134 ( .A(shift_direction[1]), .Z(n123) );
  GTECH_NOT U135 ( .A(reset), .Z(n67) );
endmodule

