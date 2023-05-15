
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n58, n51, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n51), .K(n51), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[0]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n51), .K(n51), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[5]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n51), .K(n51), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[6]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n51), .K(n51), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[1]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n51), .K(n51), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[2]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n51), .K(n51), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[3]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n51), .K(n51), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[4]), .QN(n66) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n51), .K(n51), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n58), .Q(data_out[7]), .QN(n62) );
  GTECH_ZERO U68 ( .Z(n51) );
  GTECH_OA21 U69 ( .A(n68), .B(n69), .C(n70), .Z(shift_in[7]) );
  GTECH_OAI21 U70 ( .A(n71), .B(n72), .C(n73), .Z(n69) );
  GTECH_OA22 U71 ( .A(n67), .B(n74), .C(n61), .D(n75), .Z(n73) );
  GTECH_OAI21 U72 ( .A(n63), .B(n76), .C(n77), .Z(n68) );
  GTECH_OA22 U73 ( .A(n78), .B(n79), .C(n60), .D(n80), .Z(n77) );
  GTECH_NOT U74 ( .A(n81), .Z(n78) );
  GTECH_OAI2N2 U75 ( .A(n62), .B(n71), .C(n70), .D(n82), .Z(shift_in[6]) );
  GTECH_NAND2 U76 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_OA21 U77 ( .A(n61), .B(n76), .C(n85), .Z(n84) );
  GTECH_AOI2N2 U78 ( .A(n81), .B(data_in[6]), .C(n80), .D(n65), .Z(n85) );
  GTECH_NAND2 U79 ( .A(n86), .B(n87), .Z(n81) );
  GTECH_OA22 U80 ( .A(n64), .B(n75), .C(n63), .D(n74), .Z(n83) );
  GTECH_OAI21 U81 ( .A(n60), .B(n71), .C(n88), .Z(shift_in[5]) );
  GTECH_OAI21 U82 ( .A(n89), .B(n90), .C(n70), .Z(n88) );
  GTECH_OAI2N2 U83 ( .A(n62), .B(n87), .C(data_in[5]), .D(n91), .Z(n90) );
  GTECH_OAI21 U84 ( .A(n61), .B(n74), .C(n92), .Z(n89) );
  GTECH_OA22 U85 ( .A(n66), .B(n80), .C(n64), .D(n76), .Z(n92) );
  GTECH_OAI21 U86 ( .A(n65), .B(n71), .C(n93), .Z(shift_in[4]) );
  GTECH_OAI21 U87 ( .A(n94), .B(n95), .C(n70), .Z(n93) );
  GTECH_OAI2N2 U88 ( .A(n60), .B(n87), .C(data_in[4]), .D(n91), .Z(n95) );
  GTECH_OAI21 U89 ( .A(n64), .B(n74), .C(n96), .Z(n94) );
  GTECH_OA22 U90 ( .A(n67), .B(n80), .C(n79), .D(n76), .Z(n96) );
  GTECH_NOT U91 ( .A(data_in[7]), .Z(n79) );
  GTECH_OAI21 U92 ( .A(n66), .B(n71), .C(n97), .Z(shift_in[3]) );
  GTECH_OAI21 U93 ( .A(n98), .B(n99), .C(n70), .Z(n97) );
  GTECH_OAI2N2 U94 ( .A(n65), .B(n87), .C(data_in[3]), .D(n91), .Z(n99) );
  GTECH_OAI2N2 U95 ( .A(n63), .B(n80), .C(data_in[6]), .D(n100), .Z(n98) );
  GTECH_NOT U96 ( .A(n76), .Z(n100) );
  GTECH_OAI21 U97 ( .A(n67), .B(n71), .C(n101), .Z(shift_in[2]) );
  GTECH_OAI21 U98 ( .A(n102), .B(n103), .C(n70), .Z(n101) );
  GTECH_OAI2N2 U99 ( .A(n62), .B(n75), .C(data_in[2]), .D(n91), .Z(n103) );
  GTECH_OAI21 U100 ( .A(n66), .B(n87), .C(n104), .Z(n102) );
  GTECH_OA22 U101 ( .A(n61), .B(n80), .C(n76), .D(n105), .Z(n104) );
  GTECH_NOT U102 ( .A(data_in[5]), .Z(n105) );
  GTECH_OAI21 U103 ( .A(n63), .B(n71), .C(n106), .Z(shift_in[1]) );
  GTECH_OAI21 U104 ( .A(n107), .B(n108), .C(n70), .Z(n106) );
  GTECH_OAI21 U105 ( .A(n60), .B(n75), .C(n109), .Z(n108) );
  GTECH_AOI2N2 U106 ( .A(data_in[1]), .B(n91), .C(n67), .D(n87), .Z(n109) );
  GTECH_NOT U107 ( .A(n86), .Z(n91) );
  GTECH_OAI21 U108 ( .A(n62), .B(n74), .C(n110), .Z(n107) );
  GTECH_OA22 U109 ( .A(n64), .B(n80), .C(n76), .D(n111), .Z(n110) );
  GTECH_NOT U110 ( .A(data_in[4]), .Z(n111) );
  GTECH_NAND2 U111 ( .A(n112), .B(n113), .Z(n80) );
  GTECH_OAI2N2 U112 ( .A(n61), .B(n71), .C(n70), .D(n114), .Z(shift_in[0]) );
  GTECH_NAND2 U113 ( .A(n115), .B(n116), .Z(n114) );
  GTECH_OA21 U114 ( .A(n63), .B(n87), .C(n117), .Z(n116) );
  GTECH_OA21 U115 ( .A(n74), .B(n60), .C(n118), .Z(n117) );
  GTECH_OR_NOT U116 ( .A(n76), .B(data_in[3]), .Z(n118) );
  GTECH_NAND3 U117 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n76) );
  GTECH_NAND2 U118 ( .A(n119), .B(n113), .Z(n74) );
  GTECH_NAND3 U119 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[2]), 
        .Z(n87) );
  GTECH_OA22 U120 ( .A(n75), .B(n65), .C(n72), .D(n86), .Z(n115) );
  GTECH_NAND3 U121 ( .A(shift_direction[0]), .B(n112), .C(shift_direction[1]), 
        .Z(n86) );
  GTECH_NOT U122 ( .A(data_in[0]), .Z(n72) );
  GTECH_NAND3 U123 ( .A(shift_direction[2]), .B(n113), .C(shift_direction[1]), 
        .Z(n75) );
  GTECH_NAND2 U124 ( .A(n120), .B(n113), .Z(n70) );
  GTECH_NOT U125 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_NOT U126 ( .A(n71), .Z(n120) );
  GTECH_NAND2 U127 ( .A(n119), .B(n112), .Z(n71) );
  GTECH_NOT U128 ( .A(shift_direction[2]), .Z(n112) );
  GTECH_NOT U129 ( .A(shift_direction[1]), .Z(n119) );
  GTECH_NOT U130 ( .A(reset), .Z(n58) );
endmodule

