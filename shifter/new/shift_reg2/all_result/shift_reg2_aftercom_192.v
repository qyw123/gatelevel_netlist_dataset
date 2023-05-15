
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n60, n53, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n53), .K(n53), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n53), .K(n53), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n53), .K(n53), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n53), .K(n53), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n53), .K(n53), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n53), .K(n53), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n53), .K(n53), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n53), .K(n53), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U62 ( .Z(n53) );
  GTECH_AOI21 U63 ( .A(n62), .B(n63), .C(n64), .Z(shift_in[7]) );
  GTECH_AOI222 U64 ( .A(data_in[0]), .B(n65), .C(data_in[7]), .D(n66), .E(n67), 
        .F(n68), .Z(n63) );
  GTECH_AOI222 U65 ( .A(n69), .B(n70), .C(n71), .D(n72), .E(n73), .F(n74), .Z(
        n62) );
  GTECH_OAI2N2 U66 ( .A(n64), .B(n75), .C(n65), .D(n76), .Z(shift_in[6]) );
  GTECH_AND2 U67 ( .A(n77), .B(n78), .Z(n75) );
  GTECH_AOI222 U68 ( .A(n71), .B(n74), .C(data_in[6]), .D(n66), .E(n67), .F(
        n79), .Z(n78) );
  GTECH_OR_NOT U69 ( .A(n80), .B(n81), .Z(n66) );
  GTECH_OA22 U70 ( .A(n2), .B(n82), .C(n8), .D(n83), .Z(n77) );
  GTECH_OAI2N2 U71 ( .A(n64), .B(n84), .C(n65), .D(n68), .Z(shift_in[5]) );
  GTECH_AND2 U72 ( .A(n85), .B(n86), .Z(n84) );
  GTECH_AOI222 U73 ( .A(data_in[5]), .B(n80), .C(n67), .D(n87), .E(n71), .F(
        n88), .Z(n86) );
  GTECH_OA22 U74 ( .A(n4), .B(n81), .C(n9), .D(n83), .Z(n85) );
  GTECH_OAI2N2 U75 ( .A(n64), .B(n89), .C(n65), .D(n79), .Z(shift_in[4]) );
  GTECH_NOT U76 ( .A(n5), .Z(n79) );
  GTECH_AND2 U77 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_AOI222 U78 ( .A(data_in[4]), .B(n80), .C(n67), .D(n70), .E(n71), .F(
        data_in[7]), .Z(n91) );
  GTECH_OA22 U79 ( .A(n3), .B(n81), .C(n2), .D(n83), .Z(n90) );
  GTECH_OAI2N2 U80 ( .A(n64), .B(n92), .C(n65), .D(n87), .Z(shift_in[3]) );
  GTECH_NOT U81 ( .A(n6), .Z(n87) );
  GTECH_AND2 U82 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OA22 U83 ( .A(n8), .B(n95), .C(n96), .D(n97), .Z(n94) );
  GTECH_NOT U84 ( .A(data_in[6]), .Z(n97) );
  GTECH_OA22 U85 ( .A(n98), .B(n99), .C(n5), .D(n81), .Z(n93) );
  GTECH_NOT U86 ( .A(data_in[3]), .Z(n99) );
  GTECH_OAI2N2 U87 ( .A(n64), .B(n100), .C(n65), .D(n70), .Z(shift_in[2]) );
  GTECH_AND2 U88 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_AOI222 U89 ( .A(data_in[2]), .B(n80), .C(n67), .D(n74), .E(data_in[5]), 
        .F(n71), .Z(n102) );
  GTECH_OA22 U90 ( .A(n6), .B(n81), .C(n4), .D(n82), .Z(n101) );
  GTECH_OAI2N2 U91 ( .A(n64), .B(n103), .C(n65), .D(n72), .Z(shift_in[1]) );
  GTECH_AND2 U92 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_AOI222 U93 ( .A(data_in[1]), .B(n80), .C(n67), .D(n88), .E(data_in[4]), 
        .F(n71), .Z(n105) );
  GTECH_NOT U94 ( .A(n2), .Z(n88) );
  GTECH_NOT U95 ( .A(n95), .Z(n67) );
  GTECH_OR_NOT U96 ( .A(shift_direction[2]), .B(n106), .Z(n95) );
  GTECH_AOI222 U97 ( .A(n69), .B(n76), .C(n107), .D(n70), .E(n73), .F(n68), 
        .Z(n104) );
  GTECH_NOT U98 ( .A(n3), .Z(n68) );
  GTECH_NOT U99 ( .A(n82), .Z(n73) );
  GTECH_NOT U100 ( .A(n7), .Z(n70) );
  GTECH_NOT U101 ( .A(n4), .Z(n76) );
  GTECH_OAI2N2 U102 ( .A(n64), .B(n108), .C(n65), .D(n74), .Z(shift_in[0]) );
  GTECH_NOT U103 ( .A(n9), .Z(n74) );
  GTECH_NOT U104 ( .A(n109), .Z(n65) );
  GTECH_OR_NOT U105 ( .A(shift_direction[2]), .B(n110), .Z(n109) );
  GTECH_AND2 U106 ( .A(n111), .B(n112), .Z(n108) );
  GTECH_AOI222 U107 ( .A(n107), .B(n72), .C(data_in[3]), .D(n71), .E(n80), .F(
        data_in[0]), .Z(n112) );
  GTECH_NOT U108 ( .A(n98), .Z(n80) );
  GTECH_NAND3 U109 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[1]), 
        .Z(n98) );
  GTECH_NOT U110 ( .A(shift_direction[2]), .Z(n113) );
  GTECH_NOT U111 ( .A(n96), .Z(n71) );
  GTECH_NAND3 U112 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n96) );
  GTECH_NOT U113 ( .A(n8), .Z(n72) );
  GTECH_NOT U114 ( .A(n81), .Z(n107) );
  GTECH_NAND3 U115 ( .A(shift_direction[0]), .B(n110), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NOT U116 ( .A(shift_direction[1]), .Z(n110) );
  GTECH_OA22 U117 ( .A(n5), .B(n82), .C(n3), .D(n83), .Z(n111) );
  GTECH_NAND3 U118 ( .A(shift_direction[1]), .B(n106), .C(shift_direction[2]), 
        .Z(n82) );
  GTECH_NOT U119 ( .A(n114), .Z(n64) );
  GTECH_OR_NOT U120 ( .A(shift_direction[2]), .B(n69), .Z(n114) );
  GTECH_NOT U121 ( .A(n83), .Z(n69) );
  GTECH_OR_NOT U122 ( .A(shift_direction[1]), .B(n106), .Z(n83) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n106) );
  GTECH_NOT U124 ( .A(reset), .Z(n60) );
endmodule

