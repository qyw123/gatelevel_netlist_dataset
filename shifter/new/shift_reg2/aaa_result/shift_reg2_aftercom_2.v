
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n57, n50, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n50), .K(n50), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[0]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n50), .K(n50), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[5]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n50), .K(n50), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[3]), .QN(n65) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n50), .K(n50), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[7]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n50), .K(n50), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[1]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n50), .K(n50), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[6]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n50), .K(n50), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[4]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n50), .K(n50), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n57), .Q(data_out[2]), .QN(n66) );
  GTECH_ZERO U67 ( .Z(n50) );
  GTECH_OA21 U68 ( .A(n67), .B(n68), .C(n69), .Z(shift_in[7]) );
  GTECH_OAI21 U69 ( .A(n70), .B(n71), .C(n72), .Z(n68) );
  GTECH_OA22 U70 ( .A(n65), .B(n73), .C(n60), .D(n74), .Z(n72) );
  GTECH_OAI21 U71 ( .A(n66), .B(n75), .C(n76), .Z(n67) );
  GTECH_OA22 U72 ( .A(n77), .B(n78), .C(n59), .D(n79), .Z(n76) );
  GTECH_OAI21 U73 ( .A(n61), .B(n70), .C(n80), .Z(shift_in[6]) );
  GTECH_OAI21 U74 ( .A(n81), .B(n82), .C(n69), .Z(n80) );
  GTECH_OAI22 U75 ( .A(n63), .B(n74), .C(n66), .D(n73), .Z(n82) );
  GTECH_OAI21 U76 ( .A(n60), .B(n75), .C(n83), .Z(n81) );
  GTECH_OA22 U77 ( .A(n77), .B(n84), .C(n62), .D(n79), .Z(n83) );
  GTECH_NOT U78 ( .A(n85), .Z(n77) );
  GTECH_NAND2 U79 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_OAI21 U80 ( .A(n59), .B(n70), .C(n88), .Z(shift_in[5]) );
  GTECH_OAI21 U81 ( .A(n89), .B(n90), .C(n69), .Z(n88) );
  GTECH_OAI22 U82 ( .A(n86), .B(n91), .C(n61), .D(n87), .Z(n90) );
  GTECH_OAI21 U83 ( .A(n60), .B(n73), .C(n92), .Z(n89) );
  GTECH_OA22 U84 ( .A(n64), .B(n79), .C(n63), .D(n75), .Z(n92) );
  GTECH_OAI21 U85 ( .A(n62), .B(n70), .C(n93), .Z(shift_in[4]) );
  GTECH_OAI21 U86 ( .A(n94), .B(n95), .C(n69), .Z(n93) );
  GTECH_OAI22 U87 ( .A(n86), .B(n96), .C(n59), .D(n87), .Z(n95) );
  GTECH_OAI21 U88 ( .A(n63), .B(n73), .C(n97), .Z(n94) );
  GTECH_OA22 U89 ( .A(n65), .B(n79), .C(n78), .D(n75), .Z(n97) );
  GTECH_NOT U90 ( .A(data_in[7]), .Z(n78) );
  GTECH_OAI21 U91 ( .A(n64), .B(n70), .C(n98), .Z(shift_in[3]) );
  GTECH_OAI21 U92 ( .A(n99), .B(n100), .C(n69), .Z(n98) );
  GTECH_OAI22 U93 ( .A(n86), .B(n101), .C(n62), .D(n87), .Z(n100) );
  GTECH_OAI22 U94 ( .A(n75), .B(n84), .C(n66), .D(n79), .Z(n99) );
  GTECH_NOT U95 ( .A(data_in[6]), .Z(n84) );
  GTECH_OAI21 U96 ( .A(n65), .B(n70), .C(n102), .Z(shift_in[2]) );
  GTECH_OAI21 U97 ( .A(n103), .B(n104), .C(n69), .Z(n102) );
  GTECH_OAI2N2 U98 ( .A(n61), .B(n74), .C(data_in[2]), .D(n105), .Z(n104) );
  GTECH_OAI21 U99 ( .A(n64), .B(n87), .C(n106), .Z(n103) );
  GTECH_OA22 U100 ( .A(n60), .B(n79), .C(n75), .D(n91), .Z(n106) );
  GTECH_NOT U101 ( .A(data_in[5]), .Z(n91) );
  GTECH_OAI21 U102 ( .A(n66), .B(n70), .C(n107), .Z(shift_in[1]) );
  GTECH_OAI21 U103 ( .A(n108), .B(n109), .C(n69), .Z(n107) );
  GTECH_OAI21 U104 ( .A(n59), .B(n74), .C(n110), .Z(n109) );
  GTECH_AOI2N2 U105 ( .A(data_in[1]), .B(n105), .C(n65), .D(n87), .Z(n110) );
  GTECH_NOT U106 ( .A(n86), .Z(n105) );
  GTECH_OAI21 U107 ( .A(n61), .B(n73), .C(n111), .Z(n108) );
  GTECH_OA22 U108 ( .A(n63), .B(n79), .C(n75), .D(n96), .Z(n111) );
  GTECH_NOT U109 ( .A(data_in[4]), .Z(n96) );
  GTECH_NAND2 U110 ( .A(n112), .B(n113), .Z(n79) );
  GTECH_OAI21 U111 ( .A(n60), .B(n70), .C(n114), .Z(shift_in[0]) );
  GTECH_OAI21 U112 ( .A(n115), .B(n116), .C(n69), .Z(n114) );
  GTECH_NAND2 U113 ( .A(n117), .B(n113), .Z(n69) );
  GTECH_NOT U114 ( .A(n70), .Z(n117) );
  GTECH_OAI22 U115 ( .A(n62), .B(n74), .C(n71), .D(n86), .Z(n116) );
  GTECH_NAND3 U116 ( .A(shift_direction[0]), .B(n112), .C(shift_direction[1]), 
        .Z(n86) );
  GTECH_NOT U117 ( .A(data_in[0]), .Z(n71) );
  GTECH_NAND3 U118 ( .A(shift_direction[2]), .B(n113), .C(shift_direction[1]), 
        .Z(n74) );
  GTECH_OAI21 U119 ( .A(n66), .B(n87), .C(n118), .Z(n115) );
  GTECH_OA22 U120 ( .A(n75), .B(n101), .C(n59), .D(n73), .Z(n118) );
  GTECH_NAND2 U121 ( .A(n119), .B(n113), .Z(n73) );
  GTECH_NOT U122 ( .A(shift_direction[0]), .Z(n113) );
  GTECH_NOT U123 ( .A(data_in[3]), .Z(n101) );
  GTECH_NAND3 U124 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n75) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[2]), 
        .Z(n87) );
  GTECH_NAND2 U126 ( .A(n119), .B(n112), .Z(n70) );
  GTECH_NOT U127 ( .A(shift_direction[2]), .Z(n112) );
  GTECH_NOT U128 ( .A(shift_direction[1]), .Z(n119) );
  GTECH_NOT U129 ( .A(reset), .Z(n57) );
endmodule

