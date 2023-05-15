
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n60, n53, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n53), .K(n53), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[0]), .QN(n66) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n53), .K(n53), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[5]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n53), .K(n53), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[3]), .QN(n68) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n53), .K(n53), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[7]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n53), .K(n53), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[1]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n53), .K(n53), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[6]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n53), .K(n53), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[4]), .QN(n67) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n53), .K(n53), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[2]), .QN(n69) );
  GTECH_ZERO U70 ( .Z(n53) );
  GTECH_OA21 U71 ( .A(n70), .B(n71), .C(n72), .Z(shift_in[7]) );
  GTECH_OAI21 U72 ( .A(n69), .B(n73), .C(n74), .Z(n71) );
  GTECH_AOI2N2 U73 ( .A(n75), .B(data_in[7]), .C(n62), .D(n76), .Z(n74) );
  GTECH_OAI21 U74 ( .A(n77), .B(n78), .C(n79), .Z(n70) );
  GTECH_OA21 U75 ( .A(n63), .B(n80), .C(n81), .Z(n79) );
  GTECH_OR2 U76 ( .A(n82), .B(n68), .Z(n81) );
  GTECH_OAI21 U77 ( .A(n64), .B(n77), .C(n83), .Z(shift_in[6]) );
  GTECH_OAI21 U78 ( .A(n84), .B(n85), .C(n72), .Z(n83) );
  GTECH_OAI2N2 U79 ( .A(n69), .B(n82), .C(n86), .D(n87), .Z(n85) );
  GTECH_OAI21 U80 ( .A(n63), .B(n73), .C(n88), .Z(n84) );
  GTECH_AOI2N2 U81 ( .A(n75), .B(data_in[6]), .C(n65), .D(n76), .Z(n88) );
  GTECH_NAND2 U82 ( .A(n89), .B(n90), .Z(n75) );
  GTECH_OAI21 U83 ( .A(n62), .B(n77), .C(n91), .Z(shift_in[5]) );
  GTECH_OAI21 U84 ( .A(n92), .B(n93), .C(n72), .Z(n91) );
  GTECH_OAI2N2 U85 ( .A(n64), .B(n90), .C(data_in[5]), .D(n94), .Z(n93) );
  GTECH_OAI21 U86 ( .A(n63), .B(n82), .C(n95), .Z(n92) );
  GTECH_AOI2N2 U87 ( .A(n96), .B(n87), .C(n67), .D(n76), .Z(n95) );
  GTECH_NOT U88 ( .A(n66), .Z(n87) );
  GTECH_OAI21 U89 ( .A(n65), .B(n77), .C(n97), .Z(shift_in[4]) );
  GTECH_OAI21 U90 ( .A(n98), .B(n99), .C(n72), .Z(n97) );
  GTECH_OAI2N2 U91 ( .A(n62), .B(n90), .C(data_in[4]), .D(n94), .Z(n99) );
  GTECH_OAI21 U92 ( .A(n66), .B(n82), .C(n100), .Z(n98) );
  GTECH_AOI2N2 U93 ( .A(n96), .B(data_in[7]), .C(n68), .D(n76), .Z(n100) );
  GTECH_OAI21 U94 ( .A(n67), .B(n77), .C(n101), .Z(shift_in[3]) );
  GTECH_OAI21 U95 ( .A(n102), .B(n103), .C(n72), .Z(n101) );
  GTECH_OAI2N2 U96 ( .A(n65), .B(n90), .C(data_in[3]), .D(n94), .Z(n103) );
  GTECH_OAI2N2 U97 ( .A(n69), .B(n76), .C(data_in[6]), .D(n96), .Z(n102) );
  GTECH_OAI21 U98 ( .A(n68), .B(n77), .C(n104), .Z(shift_in[2]) );
  GTECH_OAI21 U99 ( .A(n105), .B(n106), .C(n72), .Z(n104) );
  GTECH_OAI2N2 U100 ( .A(n64), .B(n80), .C(data_in[2]), .D(n94), .Z(n106) );
  GTECH_OAI21 U101 ( .A(n67), .B(n90), .C(n107), .Z(n105) );
  GTECH_AOI2N2 U102 ( .A(data_in[5]), .B(n96), .C(n63), .D(n76), .Z(n107) );
  GTECH_OAI21 U103 ( .A(n69), .B(n77), .C(n108), .Z(shift_in[1]) );
  GTECH_OAI21 U104 ( .A(n109), .B(n110), .C(n72), .Z(n108) );
  GTECH_OAI21 U105 ( .A(n62), .B(n80), .C(n111), .Z(n110) );
  GTECH_AOI2N2 U106 ( .A(data_in[1]), .B(n94), .C(n68), .D(n90), .Z(n111) );
  GTECH_NOT U107 ( .A(n89), .Z(n94) );
  GTECH_OAI21 U108 ( .A(n64), .B(n82), .C(n112), .Z(n109) );
  GTECH_AOI2N2 U109 ( .A(data_in[4]), .B(n96), .C(n66), .D(n76), .Z(n112) );
  GTECH_NAND2 U110 ( .A(n113), .B(n114), .Z(n76) );
  GTECH_NOT U111 ( .A(n73), .Z(n96) );
  GTECH_OAI21 U112 ( .A(n63), .B(n77), .C(n115), .Z(shift_in[0]) );
  GTECH_OAI21 U113 ( .A(n116), .B(n117), .C(n72), .Z(n115) );
  GTECH_NAND2 U114 ( .A(n118), .B(n113), .Z(n72) );
  GTECH_NOT U115 ( .A(n77), .Z(n118) );
  GTECH_OAI21 U116 ( .A(n78), .B(n89), .C(n119), .Z(n117) );
  GTECH_OR_NOT U117 ( .A(n65), .B(n86), .Z(n119) );
  GTECH_NOT U118 ( .A(n80), .Z(n86) );
  GTECH_NAND3 U119 ( .A(shift_direction[2]), .B(n113), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NAND3 U120 ( .A(shift_direction[0]), .B(n114), .C(shift_direction[1]), 
        .Z(n89) );
  GTECH_NOT U121 ( .A(data_in[0]), .Z(n78) );
  GTECH_OAI21 U122 ( .A(n69), .B(n90), .C(n120), .Z(n116) );
  GTECH_OA21 U123 ( .A(n62), .B(n82), .C(n121), .Z(n120) );
  GTECH_OR_NOT U124 ( .A(n73), .B(data_in[3]), .Z(n121) );
  GTECH_NAND3 U125 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n73) );
  GTECH_NAND2 U126 ( .A(n113), .B(n122), .Z(n82) );
  GTECH_NOT U127 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_NAND3 U128 ( .A(shift_direction[0]), .B(n122), .C(shift_direction[2]), 
        .Z(n90) );
  GTECH_NAND2 U129 ( .A(n122), .B(n114), .Z(n77) );
  GTECH_NOT U130 ( .A(shift_direction[2]), .Z(n114) );
  GTECH_NOT U131 ( .A(shift_direction[1]), .Z(n122) );
  GTECH_NOT U132 ( .A(reset), .Z(n60) );
endmodule

