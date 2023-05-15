
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n62, n55, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118;
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
  GTECH_NOT U69 ( .A(n73), .Z(n69) );
  GTECH_AOI222 U70 ( .A(n74), .B(n75), .C(n76), .D(n77), .E(n78), .F(n79), .Z(
        n67) );
  GTECH_OAI22 U71 ( .A(n4), .B(n73), .C(n80), .D(n81), .Z(shift_in[6]) );
  GTECH_AND2 U72 ( .A(n82), .B(n83), .Z(n81) );
  GTECH_AOI222 U73 ( .A(n76), .B(n79), .C(data_in[6]), .D(n70), .E(n71), .F(
        n84), .Z(n83) );
  GTECH_NOT U74 ( .A(n5), .Z(n84) );
  GTECH_NAND2 U75 ( .A(n85), .B(n86), .Z(n70) );
  GTECH_OA22 U76 ( .A(n2), .B(n87), .C(n7), .D(n88), .Z(n82) );
  GTECH_OAI22 U77 ( .A(n3), .B(n73), .C(n80), .D(n89), .Z(shift_in[5]) );
  GTECH_AND2 U78 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_AOI222 U79 ( .A(data_in[5]), .B(n92), .C(n71), .D(n93), .E(n76), .F(
        n94), .Z(n91) );
  GTECH_NOT U80 ( .A(n64), .Z(n93) );
  GTECH_OA22 U81 ( .A(n4), .B(n85), .C(n8), .D(n88), .Z(n90) );
  GTECH_OAI22 U82 ( .A(n5), .B(n73), .C(n80), .D(n95), .Z(shift_in[4]) );
  GTECH_AND2 U83 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_AOI222 U84 ( .A(data_in[4]), .B(n92), .C(n71), .D(n75), .E(n76), .F(
        data_in[7]), .Z(n97) );
  GTECH_OA22 U85 ( .A(n3), .B(n85), .C(n2), .D(n88), .Z(n96) );
  GTECH_OAI21 U86 ( .A(n64), .B(n73), .C(n98), .Z(shift_in[3]) );
  GTECH_OAI21 U87 ( .A(n99), .B(n100), .C(n66), .Z(n98) );
  GTECH_OAI22 U88 ( .A(n5), .B(n85), .C(n86), .D(n101), .Z(n100) );
  GTECH_NOT U89 ( .A(data_in[3]), .Z(n101) );
  GTECH_OAI22 U90 ( .A(n102), .B(n103), .C(n7), .D(n104), .Z(n99) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n103) );
  GTECH_OAI22 U92 ( .A(n6), .B(n73), .C(n80), .D(n105), .Z(shift_in[2]) );
  GTECH_AND2 U93 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U94 ( .A(data_in[2]), .B(n92), .C(n71), .D(n79), .E(data_in[5]), 
        .F(n76), .Z(n107) );
  GTECH_NOT U95 ( .A(n8), .Z(n79) );
  GTECH_OA22 U96 ( .A(n64), .B(n85), .C(n4), .D(n87), .Z(n106) );
  GTECH_OAI22 U97 ( .A(n7), .B(n73), .C(n80), .D(n108), .Z(shift_in[1]) );
  GTECH_AND2 U98 ( .A(n109), .B(n110), .Z(n108) );
  GTECH_AOI222 U99 ( .A(data_in[1]), .B(n92), .C(n71), .D(n94), .E(data_in[4]), 
        .F(n76), .Z(n110) );
  GTECH_NOT U100 ( .A(n2), .Z(n94) );
  GTECH_NOT U101 ( .A(n104), .Z(n71) );
  GTECH_NAND2 U102 ( .A(n111), .B(n112), .Z(n104) );
  GTECH_AOI222 U103 ( .A(n74), .B(n113), .C(n114), .D(n75), .E(n78), .F(n72), 
        .Z(n109) );
  GTECH_NOT U104 ( .A(n3), .Z(n72) );
  GTECH_NOT U105 ( .A(n87), .Z(n78) );
  GTECH_NOT U106 ( .A(n6), .Z(n75) );
  GTECH_NOT U107 ( .A(n4), .Z(n113) );
  GTECH_OAI22 U108 ( .A(n8), .B(n73), .C(n80), .D(n115), .Z(shift_in[0]) );
  GTECH_AND2 U109 ( .A(n116), .B(n117), .Z(n115) );
  GTECH_AOI222 U110 ( .A(n114), .B(n77), .C(data_in[3]), .D(n76), .E(n92), .F(
        data_in[0]), .Z(n117) );
  GTECH_NOT U111 ( .A(n86), .Z(n92) );
  GTECH_OR3 U112 ( .A(shift_direction[2]), .B(n111), .C(n118), .Z(n86) );
  GTECH_NOT U113 ( .A(n102), .Z(n76) );
  GTECH_OR3 U114 ( .A(n111), .B(n118), .C(n112), .Z(n102) );
  GTECH_NOT U115 ( .A(n7), .Z(n77) );
  GTECH_NOT U116 ( .A(n85), .Z(n114) );
  GTECH_OR3 U117 ( .A(shift_direction[1]), .B(n111), .C(n112), .Z(n85) );
  GTECH_OA22 U118 ( .A(n5), .B(n87), .C(n3), .D(n88), .Z(n116) );
  GTECH_OR3 U119 ( .A(shift_direction[0]), .B(n118), .C(n112), .Z(n87) );
  GTECH_NOT U120 ( .A(n66), .Z(n80) );
  GTECH_NAND2 U121 ( .A(n74), .B(n112), .Z(n66) );
  GTECH_NOT U122 ( .A(n88), .Z(n74) );
  GTECH_NAND2 U123 ( .A(n111), .B(n118), .Z(n88) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n111) );
  GTECH_NAND2 U125 ( .A(n118), .B(n112), .Z(n73) );
  GTECH_NOT U126 ( .A(shift_direction[2]), .Z(n112) );
  GTECH_NOT U127 ( .A(shift_direction[1]), .Z(n118) );
  GTECH_NOT U128 ( .A(reset), .Z(n62) );
endmodule

