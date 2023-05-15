
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n59, n52, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n52), .K(n52), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n52), .K(n52), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n52), .K(n52), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n52), .K(n52), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n52), .K(n52), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n52), .K(n52), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n52), .K(n52), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n52), .K(n52), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[1]), .QN(n9) );
  GTECH_ZERO U61 ( .Z(n52) );
  GTECH_AOI21 U62 ( .A(n61), .B(n62), .C(n63), .Z(shift_in[7]) );
  GTECH_AOI222 U63 ( .A(data_in[0]), .B(n64), .C(data_in[7]), .D(n65), .E(n66), 
        .F(n67), .Z(n62) );
  GTECH_AOI222 U64 ( .A(n68), .B(n69), .C(n70), .D(n71), .E(n72), .F(n73), .Z(
        n61) );
  GTECH_OAI2N2 U65 ( .A(n63), .B(n74), .C(n64), .D(n75), .Z(shift_in[6]) );
  GTECH_AND2 U66 ( .A(n76), .B(n77), .Z(n74) );
  GTECH_AOI222 U67 ( .A(n70), .B(n73), .C(data_in[6]), .D(n65), .E(n66), .F(
        n78), .Z(n77) );
  GTECH_NAND2 U68 ( .A(n79), .B(n80), .Z(n65) );
  GTECH_OA22 U69 ( .A(n2), .B(n81), .C(n8), .D(n82), .Z(n76) );
  GTECH_OAI2N2 U70 ( .A(n63), .B(n83), .C(n64), .D(n67), .Z(shift_in[5]) );
  GTECH_AND2 U71 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U72 ( .A(data_in[5]), .B(n86), .C(n66), .D(n87), .E(n70), .F(
        n88), .Z(n85) );
  GTECH_OA22 U73 ( .A(n4), .B(n79), .C(n9), .D(n82), .Z(n84) );
  GTECH_OAI2N2 U74 ( .A(n63), .B(n89), .C(n64), .D(n78), .Z(shift_in[4]) );
  GTECH_NOT U75 ( .A(n5), .Z(n78) );
  GTECH_AND2 U76 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_AOI222 U77 ( .A(data_in[4]), .B(n86), .C(n66), .D(n69), .E(n70), .F(
        data_in[7]), .Z(n91) );
  GTECH_OA22 U78 ( .A(n3), .B(n79), .C(n2), .D(n82), .Z(n90) );
  GTECH_OAI2N2 U79 ( .A(n63), .B(n92), .C(n64), .D(n87), .Z(shift_in[3]) );
  GTECH_NOT U80 ( .A(n6), .Z(n87) );
  GTECH_AND2 U81 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OA22 U82 ( .A(n8), .B(n95), .C(n96), .D(n97), .Z(n94) );
  GTECH_NOT U83 ( .A(data_in[6]), .Z(n97) );
  GTECH_OA22 U84 ( .A(n80), .B(n98), .C(n5), .D(n79), .Z(n93) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n98) );
  GTECH_OAI2N2 U86 ( .A(n63), .B(n99), .C(n64), .D(n69), .Z(shift_in[2]) );
  GTECH_AND2 U87 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_AOI222 U88 ( .A(data_in[2]), .B(n86), .C(n66), .D(n73), .E(data_in[5]), 
        .F(n70), .Z(n101) );
  GTECH_OA22 U89 ( .A(n6), .B(n79), .C(n4), .D(n81), .Z(n100) );
  GTECH_OAI2N2 U90 ( .A(n63), .B(n102), .C(n64), .D(n71), .Z(shift_in[1]) );
  GTECH_AND2 U91 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_AOI222 U92 ( .A(data_in[1]), .B(n86), .C(n66), .D(n88), .E(data_in[4]), 
        .F(n70), .Z(n104) );
  GTECH_NOT U93 ( .A(n2), .Z(n88) );
  GTECH_NOT U94 ( .A(n95), .Z(n66) );
  GTECH_NAND2 U95 ( .A(n105), .B(n106), .Z(n95) );
  GTECH_AOI222 U96 ( .A(n68), .B(n75), .C(n107), .D(n69), .E(n72), .F(n67), 
        .Z(n103) );
  GTECH_NOT U97 ( .A(n3), .Z(n67) );
  GTECH_NOT U98 ( .A(n81), .Z(n72) );
  GTECH_NOT U99 ( .A(n7), .Z(n69) );
  GTECH_NOT U100 ( .A(n4), .Z(n75) );
  GTECH_OAI2N2 U101 ( .A(n63), .B(n108), .C(n64), .D(n73), .Z(shift_in[0]) );
  GTECH_NOT U102 ( .A(n9), .Z(n73) );
  GTECH_NOT U103 ( .A(n109), .Z(n64) );
  GTECH_NAND2 U104 ( .A(n110), .B(n106), .Z(n109) );
  GTECH_AND2 U105 ( .A(n111), .B(n112), .Z(n108) );
  GTECH_AOI222 U106 ( .A(n107), .B(n71), .C(data_in[3]), .D(n70), .E(n86), .F(
        data_in[0]), .Z(n112) );
  GTECH_NOT U107 ( .A(n80), .Z(n86) );
  GTECH_OR3 U108 ( .A(shift_direction[2]), .B(n105), .C(n110), .Z(n80) );
  GTECH_NOT U109 ( .A(n96), .Z(n70) );
  GTECH_OR3 U110 ( .A(n105), .B(n110), .C(n106), .Z(n96) );
  GTECH_NOT U111 ( .A(n8), .Z(n71) );
  GTECH_NOT U112 ( .A(n79), .Z(n107) );
  GTECH_OR3 U113 ( .A(shift_direction[1]), .B(n105), .C(n106), .Z(n79) );
  GTECH_OA22 U114 ( .A(n5), .B(n81), .C(n3), .D(n82), .Z(n111) );
  GTECH_OR3 U115 ( .A(shift_direction[0]), .B(n110), .C(n106), .Z(n81) );
  GTECH_NOT U116 ( .A(n113), .Z(n63) );
  GTECH_NAND2 U117 ( .A(n68), .B(n106), .Z(n113) );
  GTECH_NOT U118 ( .A(shift_direction[2]), .Z(n106) );
  GTECH_NOT U119 ( .A(n82), .Z(n68) );
  GTECH_NAND2 U120 ( .A(n105), .B(n110), .Z(n82) );
  GTECH_NOT U121 ( .A(shift_direction[1]), .Z(n110) );
  GTECH_NOT U122 ( .A(shift_direction[0]), .Z(n105) );
  GTECH_NOT U123 ( .A(reset), .Z(n59) );
endmodule

