
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n62, n55, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n55), .K(n55), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n55), .K(n55), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n55), .K(n55), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n55), .K(n55), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n55), .K(n55), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[4]), .QN(n64) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n55), .K(n55), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[3]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n55), .K(n55), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[2]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n55), .K(n55), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[1]), .QN(n8) );
  GTECH_ZERO U65 ( .Z(n55) );
  GTECH_AND2 U66 ( .A(n65), .B(n66), .Z(shift_in[7]) );
  GTECH_NAND2 U67 ( .A(n67), .B(n68), .Z(n65) );
  GTECH_AOI222 U68 ( .A(data_in[0]), .B(n69), .C(data_in[7]), .D(n70), .E(n71), 
        .F(n72), .Z(n68) );
  GTECH_AOI222 U69 ( .A(n73), .B(n74), .C(n75), .D(n76), .E(n77), .F(n78), .Z(
        n67) );
  GTECH_OAI2N2 U70 ( .A(n79), .B(n80), .C(n69), .D(n81), .Z(shift_in[6]) );
  GTECH_AND2 U71 ( .A(n82), .B(n83), .Z(n80) );
  GTECH_AOI222 U72 ( .A(n75), .B(n78), .C(data_in[6]), .D(n70), .E(n71), .F(
        n84), .Z(n83) );
  GTECH_NAND2 U73 ( .A(n85), .B(n86), .Z(n70) );
  GTECH_OA22 U74 ( .A(n2), .B(n87), .C(n7), .D(n88), .Z(n82) );
  GTECH_OAI2N2 U75 ( .A(n79), .B(n89), .C(n69), .D(n72), .Z(shift_in[5]) );
  GTECH_AND2 U76 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_AOI222 U77 ( .A(data_in[5]), .B(n92), .C(n71), .D(n93), .E(n75), .F(
        n94), .Z(n91) );
  GTECH_NOT U78 ( .A(n64), .Z(n93) );
  GTECH_OA22 U79 ( .A(n4), .B(n85), .C(n8), .D(n88), .Z(n90) );
  GTECH_OAI2N2 U80 ( .A(n79), .B(n95), .C(n69), .D(n84), .Z(shift_in[4]) );
  GTECH_AND2 U81 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_AOI222 U82 ( .A(data_in[4]), .B(n92), .C(n71), .D(n74), .E(n75), .F(
        data_in[7]), .Z(n97) );
  GTECH_OA22 U83 ( .A(n3), .B(n85), .C(n2), .D(n88), .Z(n96) );
  GTECH_OAI21 U84 ( .A(n64), .B(n98), .C(n99), .Z(shift_in[3]) );
  GTECH_OAI21 U85 ( .A(n100), .B(n101), .C(n66), .Z(n99) );
  GTECH_OAI2N2 U86 ( .A(n86), .B(n102), .C(n103), .D(n84), .Z(n101) );
  GTECH_NOT U87 ( .A(n5), .Z(n84) );
  GTECH_NOT U88 ( .A(data_in[3]), .Z(n102) );
  GTECH_OAI2N2 U89 ( .A(n7), .B(n104), .C(data_in[6]), .D(n75), .Z(n100) );
  GTECH_OAI2N2 U90 ( .A(n79), .B(n105), .C(n69), .D(n74), .Z(shift_in[2]) );
  GTECH_AND2 U91 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U92 ( .A(data_in[2]), .B(n92), .C(n71), .D(n78), .E(data_in[5]), 
        .F(n75), .Z(n107) );
  GTECH_OA22 U93 ( .A(n64), .B(n85), .C(n4), .D(n87), .Z(n106) );
  GTECH_OAI2N2 U94 ( .A(n79), .B(n108), .C(n69), .D(n76), .Z(shift_in[1]) );
  GTECH_AND2 U95 ( .A(n109), .B(n110), .Z(n108) );
  GTECH_AOI222 U96 ( .A(data_in[1]), .B(n92), .C(n71), .D(n94), .E(data_in[4]), 
        .F(n75), .Z(n110) );
  GTECH_NOT U97 ( .A(n2), .Z(n94) );
  GTECH_NOT U98 ( .A(n104), .Z(n71) );
  GTECH_NAND2 U99 ( .A(n111), .B(n112), .Z(n104) );
  GTECH_AOI222 U100 ( .A(n73), .B(n81), .C(n103), .D(n74), .E(n77), .F(n72), 
        .Z(n109) );
  GTECH_NOT U101 ( .A(n3), .Z(n72) );
  GTECH_NOT U102 ( .A(n87), .Z(n77) );
  GTECH_NOT U103 ( .A(n6), .Z(n74) );
  GTECH_NOT U104 ( .A(n4), .Z(n81) );
  GTECH_OAI2N2 U105 ( .A(n79), .B(n113), .C(n69), .D(n78), .Z(shift_in[0]) );
  GTECH_NOT U106 ( .A(n8), .Z(n78) );
  GTECH_NOT U107 ( .A(n98), .Z(n69) );
  GTECH_NAND2 U108 ( .A(n114), .B(n112), .Z(n98) );
  GTECH_AND2 U109 ( .A(n115), .B(n116), .Z(n113) );
  GTECH_AOI222 U110 ( .A(n103), .B(n76), .C(data_in[3]), .D(n75), .E(n92), .F(
        data_in[0]), .Z(n116) );
  GTECH_NOT U111 ( .A(n86), .Z(n92) );
  GTECH_NAND3 U112 ( .A(shift_direction[0]), .B(n112), .C(shift_direction[1]), 
        .Z(n86) );
  GTECH_NOT U113 ( .A(n117), .Z(n75) );
  GTECH_NAND3 U114 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n117) );
  GTECH_NOT U115 ( .A(n7), .Z(n76) );
  GTECH_NOT U116 ( .A(n85), .Z(n103) );
  GTECH_NAND3 U117 ( .A(shift_direction[0]), .B(n114), .C(shift_direction[2]), 
        .Z(n85) );
  GTECH_OA22 U118 ( .A(n5), .B(n87), .C(n3), .D(n88), .Z(n115) );
  GTECH_NAND3 U119 ( .A(shift_direction[1]), .B(n111), .C(shift_direction[2]), 
        .Z(n87) );
  GTECH_NOT U120 ( .A(n66), .Z(n79) );
  GTECH_NAND2 U121 ( .A(n73), .B(n112), .Z(n66) );
  GTECH_NOT U122 ( .A(shift_direction[2]), .Z(n112) );
  GTECH_NOT U123 ( .A(n88), .Z(n73) );
  GTECH_NAND2 U124 ( .A(n111), .B(n114), .Z(n88) );
  GTECH_NOT U125 ( .A(shift_direction[1]), .Z(n114) );
  GTECH_NOT U126 ( .A(shift_direction[0]), .Z(n111) );
  GTECH_NOT U127 ( .A(reset), .Z(n62) );
endmodule

