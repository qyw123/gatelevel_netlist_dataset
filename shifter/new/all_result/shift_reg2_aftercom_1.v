
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n62, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115;
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
  GTECH_AOI222 U65 ( .A(data_in[0]), .B(n67), .C(data_in[7]), .D(n68), .E(n69), 
        .F(n70), .Z(n65) );
  GTECH_AOI222 U66 ( .A(n71), .B(n72), .C(n73), .D(n74), .E(n75), .F(n76), .Z(
        n64) );
  GTECH_OAI2N2 U67 ( .A(n66), .B(n77), .C(n67), .D(n78), .Z(shift_in[6]) );
  GTECH_AND2 U68 ( .A(n79), .B(n80), .Z(n77) );
  GTECH_AOI222 U69 ( .A(n73), .B(n76), .C(data_in[6]), .D(n68), .E(n69), .F(
        n81), .Z(n80) );
  GTECH_NAND2 U70 ( .A(n82), .B(n83), .Z(n68) );
  GTECH_OA22 U71 ( .A(n2), .B(n84), .C(n8), .D(n85), .Z(n79) );
  GTECH_OAI2N2 U72 ( .A(n66), .B(n86), .C(n67), .D(n70), .Z(shift_in[5]) );
  GTECH_AND2 U73 ( .A(n87), .B(n88), .Z(n86) );
  GTECH_AOI222 U74 ( .A(data_in[5]), .B(n89), .C(n69), .D(n90), .E(n73), .F(
        n91), .Z(n88) );
  GTECH_NOT U75 ( .A(n6), .Z(n90) );
  GTECH_OA22 U76 ( .A(n4), .B(n82), .C(n9), .D(n85), .Z(n87) );
  GTECH_OAI2N2 U77 ( .A(n66), .B(n92), .C(n67), .D(n81), .Z(shift_in[4]) );
  GTECH_AND2 U78 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_AOI222 U79 ( .A(data_in[4]), .B(n89), .C(n69), .D(n72), .E(n73), .F(
        data_in[7]), .Z(n94) );
  GTECH_OA22 U80 ( .A(n3), .B(n82), .C(n2), .D(n85), .Z(n93) );
  GTECH_OAI21 U81 ( .A(n6), .B(n95), .C(n96), .Z(shift_in[3]) );
  GTECH_OAI21 U82 ( .A(n97), .B(n98), .C(n99), .Z(n96) );
  GTECH_OAI2N2 U83 ( .A(n83), .B(n100), .C(n101), .D(n81), .Z(n98) );
  GTECH_NOT U84 ( .A(n5), .Z(n81) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n100) );
  GTECH_OAI2N2 U86 ( .A(n8), .B(n102), .C(data_in[6]), .D(n73), .Z(n97) );
  GTECH_OAI2N2 U87 ( .A(n66), .B(n103), .C(n67), .D(n72), .Z(shift_in[2]) );
  GTECH_AND2 U88 ( .A(n104), .B(n105), .Z(n103) );
  GTECH_AOI222 U89 ( .A(data_in[2]), .B(n89), .C(n69), .D(n76), .E(data_in[5]), 
        .F(n73), .Z(n105) );
  GTECH_OA22 U90 ( .A(n6), .B(n82), .C(n4), .D(n84), .Z(n104) );
  GTECH_OAI2N2 U91 ( .A(n66), .B(n106), .C(n67), .D(n74), .Z(shift_in[1]) );
  GTECH_AND2 U92 ( .A(n107), .B(n108), .Z(n106) );
  GTECH_AOI222 U93 ( .A(data_in[1]), .B(n89), .C(n69), .D(n91), .E(data_in[4]), 
        .F(n73), .Z(n108) );
  GTECH_NOT U94 ( .A(n2), .Z(n91) );
  GTECH_NOT U95 ( .A(n102), .Z(n69) );
  GTECH_NAND2 U96 ( .A(n109), .B(n110), .Z(n102) );
  GTECH_AOI222 U97 ( .A(n71), .B(n78), .C(n101), .D(n72), .E(n75), .F(n70), 
        .Z(n107) );
  GTECH_NOT U98 ( .A(n3), .Z(n70) );
  GTECH_NOT U99 ( .A(n84), .Z(n75) );
  GTECH_NOT U100 ( .A(n7), .Z(n72) );
  GTECH_NOT U101 ( .A(n4), .Z(n78) );
  GTECH_OAI2N2 U102 ( .A(n66), .B(n111), .C(n67), .D(n76), .Z(shift_in[0]) );
  GTECH_NOT U103 ( .A(n9), .Z(n76) );
  GTECH_NOT U104 ( .A(n95), .Z(n67) );
  GTECH_NAND2 U105 ( .A(n112), .B(n110), .Z(n95) );
  GTECH_AND2 U106 ( .A(n113), .B(n114), .Z(n111) );
  GTECH_AOI222 U107 ( .A(n101), .B(n74), .C(data_in[3]), .D(n73), .E(n89), .F(
        data_in[0]), .Z(n114) );
  GTECH_NOT U108 ( .A(n83), .Z(n89) );
  GTECH_NAND3 U109 ( .A(shift_direction[0]), .B(n110), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_NOT U110 ( .A(n115), .Z(n73) );
  GTECH_NAND3 U111 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n115) );
  GTECH_NOT U112 ( .A(n8), .Z(n74) );
  GTECH_NOT U113 ( .A(n82), .Z(n101) );
  GTECH_NAND3 U114 ( .A(shift_direction[0]), .B(n112), .C(shift_direction[2]), 
        .Z(n82) );
  GTECH_OA22 U115 ( .A(n5), .B(n84), .C(n3), .D(n85), .Z(n113) );
  GTECH_NAND3 U116 ( .A(shift_direction[1]), .B(n109), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_NOT U117 ( .A(n99), .Z(n66) );
  GTECH_NAND2 U118 ( .A(n71), .B(n110), .Z(n99) );
  GTECH_NOT U119 ( .A(shift_direction[2]), .Z(n110) );
  GTECH_NOT U120 ( .A(n85), .Z(n71) );
  GTECH_NAND2 U121 ( .A(n109), .B(n112), .Z(n85) );
  GTECH_NOT U122 ( .A(shift_direction[1]), .Z(n112) );
  GTECH_NOT U123 ( .A(shift_direction[0]), .Z(n109) );
  GTECH_NOT U124 ( .A(reset), .Z(n62) );
endmodule

