
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n60, n53, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n53), .K(n53), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n53), .K(n53), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[6]), .QN(n63) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n53), .K(n53), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[7]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n53), .K(n53), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[2]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n53), .K(n53), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[3]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n53), .K(n53), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[1]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n53), .K(n53), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n53), .K(n53), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[5]), .QN(n7) );
  GTECH_ZERO U64 ( .Z(n53) );
  GTECH_AOI21 U65 ( .A(n64), .B(n65), .C(n66), .Z(shift_in[7]) );
  GTECH_OA21 U66 ( .A(n67), .B(n68), .C(n69), .Z(n65) );
  GTECH_OA22 U67 ( .A(n70), .B(n71), .C(n63), .D(n72), .Z(n69) );
  GTECH_OA21 U68 ( .A(n4), .B(n73), .C(n74), .Z(n64) );
  GTECH_OA22 U69 ( .A(n3), .B(n75), .C(n5), .D(n76), .Z(n74) );
  GTECH_OAI22 U70 ( .A(n62), .B(n67), .C(n66), .D(n77), .Z(shift_in[6]) );
  GTECH_AND2 U71 ( .A(n78), .B(n79), .Z(n77) );
  GTECH_OA21 U72 ( .A(n5), .B(n75), .C(n80), .Z(n79) );
  GTECH_OA22 U73 ( .A(n70), .B(n81), .C(n7), .D(n72), .Z(n80) );
  GTECH_NOT U74 ( .A(n82), .Z(n70) );
  GTECH_NAND2 U75 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_OA22 U76 ( .A(n2), .B(n76), .C(n3), .D(n73), .Z(n78) );
  GTECH_OAI22 U77 ( .A(n63), .B(n67), .C(n66), .D(n85), .Z(shift_in[5]) );
  GTECH_AND2 U78 ( .A(n86), .B(n87), .Z(n85) );
  GTECH_OA21 U79 ( .A(n62), .B(n84), .C(n88), .Z(n87) );
  GTECH_OA22 U80 ( .A(n6), .B(n72), .C(n2), .D(n75), .Z(n88) );
  GTECH_OA22 U81 ( .A(n83), .B(n89), .C(n5), .D(n73), .Z(n86) );
  GTECH_OAI22 U82 ( .A(n7), .B(n67), .C(n66), .D(n90), .Z(shift_in[4]) );
  GTECH_AND2 U83 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_OA21 U84 ( .A(n63), .B(n84), .C(n93), .Z(n92) );
  GTECH_OA22 U85 ( .A(n4), .B(n72), .C(n71), .D(n75), .Z(n93) );
  GTECH_NOT U86 ( .A(data_in[7]), .Z(n71) );
  GTECH_OA22 U87 ( .A(n83), .B(n94), .C(n2), .D(n73), .Z(n91) );
  GTECH_OAI22 U88 ( .A(n6), .B(n67), .C(n66), .D(n95), .Z(shift_in[3]) );
  GTECH_AND2 U89 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_OA22 U90 ( .A(n3), .B(n72), .C(n75), .D(n81), .Z(n97) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n81) );
  GTECH_OA22 U92 ( .A(n7), .B(n84), .C(n83), .D(n98), .Z(n96) );
  GTECH_OAI22 U93 ( .A(n4), .B(n67), .C(n66), .D(n99), .Z(shift_in[2]) );
  GTECH_AND2 U94 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_OA21 U95 ( .A(n6), .B(n84), .C(n102), .Z(n101) );
  GTECH_OA22 U96 ( .A(n5), .B(n72), .C(n75), .D(n89), .Z(n102) );
  GTECH_NOT U97 ( .A(data_in[5]), .Z(n89) );
  GTECH_AOI2N2 U98 ( .A(data_in[2]), .B(n103), .C(n62), .D(n76), .Z(n100) );
  GTECH_OAI22 U99 ( .A(n3), .B(n67), .C(n66), .D(n104), .Z(shift_in[1]) );
  GTECH_AND2 U100 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_OA21 U101 ( .A(n4), .B(n84), .C(n107), .Z(n106) );
  GTECH_OA22 U102 ( .A(n2), .B(n72), .C(n75), .D(n94), .Z(n107) );
  GTECH_NOT U103 ( .A(data_in[4]), .Z(n94) );
  GTECH_NAND2 U104 ( .A(n108), .B(n109), .Z(n72) );
  GTECH_OA21 U105 ( .A(n62), .B(n73), .C(n110), .Z(n105) );
  GTECH_AOI2N2 U106 ( .A(data_in[1]), .B(n103), .C(n63), .D(n76), .Z(n110) );
  GTECH_NOT U107 ( .A(n83), .Z(n103) );
  GTECH_OAI22 U108 ( .A(n5), .B(n67), .C(n66), .D(n111), .Z(shift_in[0]) );
  GTECH_AND2 U109 ( .A(n112), .B(n113), .Z(n111) );
  GTECH_OA21 U110 ( .A(n68), .B(n83), .C(n114), .Z(n113) );
  GTECH_OA22 U111 ( .A(n75), .B(n98), .C(n3), .D(n84), .Z(n114) );
  GTECH_NAND3 U112 ( .A(shift_direction[0]), .B(n115), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_NOT U113 ( .A(data_in[3]), .Z(n98) );
  GTECH_NAND3 U114 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n75) );
  GTECH_NAND3 U115 ( .A(shift_direction[0]), .B(n108), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_NOT U116 ( .A(data_in[0]), .Z(n68) );
  GTECH_OA22 U117 ( .A(n7), .B(n76), .C(n63), .D(n73), .Z(n112) );
  GTECH_NAND3 U118 ( .A(shift_direction[2]), .B(n109), .C(shift_direction[1]), 
        .Z(n76) );
  GTECH_NOT U119 ( .A(n116), .Z(n66) );
  GTECH_NAND2 U120 ( .A(n117), .B(n108), .Z(n116) );
  GTECH_NOT U121 ( .A(n73), .Z(n117) );
  GTECH_NAND2 U122 ( .A(n115), .B(n109), .Z(n73) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n109) );
  GTECH_NAND2 U124 ( .A(n115), .B(n108), .Z(n67) );
  GTECH_NOT U125 ( .A(shift_direction[2]), .Z(n108) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n115) );
  GTECH_NOT U127 ( .A(reset), .Z(n60) );
endmodule

