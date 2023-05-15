
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n62, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n62), .Q(data_out[1]), .QN(n9) );
  GTECH_AOI21 U64 ( .A(n64), .B(n65), .C(n66), .Z(shift_in[7]) );
  GTECH_AOI222 U65 ( .A(n67), .B(n68), .C(data_in[7]), .D(n69), .E(n70), .F(
        n71), .Z(n65) );
  GTECH_NOT U66 ( .A(n8), .Z(n68) );
  GTECH_AOI222 U67 ( .A(data_in[0]), .B(n72), .C(n73), .D(n74), .E(n75), .F(
        n76), .Z(n64) );
  GTECH_OAI21 U68 ( .A(n4), .B(n77), .C(n78), .Z(shift_in[6]) );
  GTECH_AO21 U69 ( .A(n79), .B(n80), .C(n66), .Z(n78) );
  GTECH_AOI222 U70 ( .A(n67), .B(n74), .C(data_in[6]), .D(n69), .E(n70), .F(
        n81), .Z(n80) );
  GTECH_OR_NOT U71 ( .A(n82), .B(n83), .Z(n69) );
  GTECH_OA22 U72 ( .A(n2), .B(n84), .C(n8), .D(n85), .Z(n79) );
  GTECH_OAI21 U73 ( .A(n3), .B(n77), .C(n86), .Z(shift_in[5]) );
  GTECH_AO21 U74 ( .A(n87), .B(n88), .C(n66), .Z(n86) );
  GTECH_AOI222 U75 ( .A(n75), .B(n74), .C(n70), .D(n89), .E(n67), .F(n90), .Z(
        n88) );
  GTECH_NOT U76 ( .A(n6), .Z(n89) );
  GTECH_OA22 U77 ( .A(n91), .B(n92), .C(n4), .D(n83), .Z(n87) );
  GTECH_NOT U78 ( .A(data_in[5]), .Z(n92) );
  GTECH_OAI21 U79 ( .A(n5), .B(n77), .C(n93), .Z(shift_in[4]) );
  GTECH_AO21 U80 ( .A(n94), .B(n95), .C(n66), .Z(n93) );
  GTECH_AOI222 U81 ( .A(n75), .B(n90), .C(n70), .D(n76), .E(n67), .F(
        data_in[7]), .Z(n95) );
  GTECH_OA22 U82 ( .A(n91), .B(n96), .C(n3), .D(n83), .Z(n94) );
  GTECH_NOT U83 ( .A(data_in[4]), .Z(n96) );
  GTECH_OAI21 U84 ( .A(n6), .B(n77), .C(n97), .Z(shift_in[3]) );
  GTECH_OAI21 U85 ( .A(n98), .B(n99), .C(n100), .Z(n97) );
  GTECH_OAI22 U86 ( .A(n5), .B(n83), .C(n91), .D(n101), .Z(n99) );
  GTECH_NOT U87 ( .A(data_in[3]), .Z(n101) );
  GTECH_OAI22 U88 ( .A(n102), .B(n103), .C(n8), .D(n104), .Z(n98) );
  GTECH_NOT U89 ( .A(data_in[6]), .Z(n103) );
  GTECH_OAI21 U90 ( .A(n7), .B(n77), .C(n105), .Z(shift_in[2]) );
  GTECH_AO21 U91 ( .A(n106), .B(n107), .C(n66), .Z(n105) );
  GTECH_AOI222 U92 ( .A(n73), .B(n108), .C(n70), .D(n74), .E(data_in[5]), .F(
        n67), .Z(n107) );
  GTECH_NOT U93 ( .A(n9), .Z(n74) );
  GTECH_AOI2N2 U94 ( .A(data_in[2]), .B(n82), .C(n6), .D(n83), .Z(n106) );
  GTECH_OAI21 U95 ( .A(n8), .B(n77), .C(n109), .Z(shift_in[1]) );
  GTECH_AO21 U96 ( .A(n110), .B(n111), .C(n66), .Z(n109) );
  GTECH_AOI222 U97 ( .A(n73), .B(n71), .C(n70), .D(n90), .E(data_in[4]), .F(
        n67), .Z(n111) );
  GTECH_NOT U98 ( .A(n2), .Z(n90) );
  GTECH_NOT U99 ( .A(n104), .Z(n70) );
  GTECH_OR_NOT U100 ( .A(shift_direction[2]), .B(n112), .Z(n104) );
  GTECH_AOI222 U101 ( .A(n113), .B(n76), .C(n75), .D(n108), .E(data_in[1]), 
        .F(n82), .Z(n110) );
  GTECH_NOT U102 ( .A(n91), .Z(n82) );
  GTECH_NOT U103 ( .A(n4), .Z(n108) );
  GTECH_NOT U104 ( .A(n7), .Z(n76) );
  GTECH_NOT U105 ( .A(n83), .Z(n113) );
  GTECH_OAI21 U106 ( .A(n9), .B(n77), .C(n114), .Z(shift_in[0]) );
  GTECH_AO21 U107 ( .A(n115), .B(n116), .C(n66), .Z(n114) );
  GTECH_NOT U108 ( .A(n100), .Z(n66) );
  GTECH_OR_NOT U109 ( .A(shift_direction[0]), .B(n72), .Z(n100) );
  GTECH_NOT U110 ( .A(n77), .Z(n72) );
  GTECH_AOI222 U111 ( .A(n75), .B(n71), .C(data_in[3]), .D(n67), .E(n73), .F(
        n81), .Z(n116) );
  GTECH_NOT U112 ( .A(n5), .Z(n81) );
  GTECH_NOT U113 ( .A(n84), .Z(n73) );
  GTECH_OR3 U114 ( .A(shift_direction[0]), .B(n117), .C(n118), .Z(n84) );
  GTECH_NOT U115 ( .A(n102), .Z(n67) );
  GTECH_OR3 U116 ( .A(n112), .B(n117), .C(n118), .Z(n102) );
  GTECH_NOT U117 ( .A(n3), .Z(n71) );
  GTECH_NOT U118 ( .A(n85), .Z(n75) );
  GTECH_OR_NOT U119 ( .A(shift_direction[1]), .B(n112), .Z(n85) );
  GTECH_OA22 U120 ( .A(n119), .B(n91), .C(n8), .D(n83), .Z(n115) );
  GTECH_OR3 U121 ( .A(shift_direction[1]), .B(n112), .C(n118), .Z(n83) );
  GTECH_NOT U122 ( .A(shift_direction[2]), .Z(n118) );
  GTECH_OR3 U123 ( .A(shift_direction[2]), .B(n112), .C(n117), .Z(n91) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n112) );
  GTECH_NOT U125 ( .A(data_in[0]), .Z(n119) );
  GTECH_OR_NOT U126 ( .A(shift_direction[2]), .B(n117), .Z(n77) );
  GTECH_NOT U127 ( .A(shift_direction[1]), .Z(n117) );
  GTECH_NOT U128 ( .A(reset), .Z(n62) );
endmodule

