
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n59, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n59), .Q(data_out[1]), .QN(n9) );
  GTECH_AOI21 U61 ( .A(n61), .B(n62), .C(n63), .Z(shift_in[7]) );
  GTECH_AOI222 U62 ( .A(data_in[0]), .B(n64), .C(data_in[7]), .D(n65), .E(n66), 
        .F(n67), .Z(n62) );
  GTECH_NOT U63 ( .A(n68), .Z(n64) );
  GTECH_AOI222 U64 ( .A(n69), .B(n70), .C(n71), .D(n72), .E(n73), .F(n74), .Z(
        n61) );
  GTECH_OAI22 U65 ( .A(n4), .B(n68), .C(n63), .D(n75), .Z(shift_in[6]) );
  GTECH_AND2 U66 ( .A(n76), .B(n77), .Z(n75) );
  GTECH_AOI222 U67 ( .A(n71), .B(n74), .C(data_in[6]), .D(n65), .E(n66), .F(
        n78), .Z(n77) );
  GTECH_NOT U68 ( .A(n5), .Z(n78) );
  GTECH_NAND2 U69 ( .A(n79), .B(n80), .Z(n65) );
  GTECH_OA22 U70 ( .A(n2), .B(n81), .C(n8), .D(n82), .Z(n76) );
  GTECH_OAI22 U71 ( .A(n3), .B(n68), .C(n63), .D(n83), .Z(shift_in[5]) );
  GTECH_AND2 U72 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U73 ( .A(data_in[5]), .B(n86), .C(n66), .D(n87), .E(n71), .F(
        n88), .Z(n85) );
  GTECH_NOT U74 ( .A(n6), .Z(n87) );
  GTECH_OA22 U75 ( .A(n4), .B(n79), .C(n9), .D(n82), .Z(n84) );
  GTECH_OAI22 U76 ( .A(n5), .B(n68), .C(n63), .D(n89), .Z(shift_in[4]) );
  GTECH_AND2 U77 ( .A(n90), .B(n91), .Z(n89) );
  GTECH_AOI222 U78 ( .A(data_in[4]), .B(n86), .C(n66), .D(n70), .E(n71), .F(
        data_in[7]), .Z(n91) );
  GTECH_OA22 U79 ( .A(n3), .B(n79), .C(n2), .D(n82), .Z(n90) );
  GTECH_OAI22 U80 ( .A(n6), .B(n68), .C(n63), .D(n92), .Z(shift_in[3]) );
  GTECH_AND2 U81 ( .A(n93), .B(n94), .Z(n92) );
  GTECH_OA22 U82 ( .A(n8), .B(n95), .C(n96), .D(n97), .Z(n94) );
  GTECH_NOT U83 ( .A(data_in[6]), .Z(n97) );
  GTECH_OA22 U84 ( .A(n80), .B(n98), .C(n5), .D(n79), .Z(n93) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n98) );
  GTECH_OAI22 U86 ( .A(n7), .B(n68), .C(n63), .D(n99), .Z(shift_in[2]) );
  GTECH_AND2 U87 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_AOI222 U88 ( .A(data_in[2]), .B(n86), .C(n66), .D(n74), .E(data_in[5]), 
        .F(n71), .Z(n101) );
  GTECH_NOT U89 ( .A(n9), .Z(n74) );
  GTECH_OA22 U90 ( .A(n6), .B(n79), .C(n4), .D(n81), .Z(n100) );
  GTECH_OAI22 U91 ( .A(n8), .B(n68), .C(n63), .D(n102), .Z(shift_in[1]) );
  GTECH_AND2 U92 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_AOI222 U93 ( .A(data_in[1]), .B(n86), .C(n66), .D(n88), .E(data_in[4]), 
        .F(n71), .Z(n104) );
  GTECH_NOT U94 ( .A(n2), .Z(n88) );
  GTECH_NOT U95 ( .A(n95), .Z(n66) );
  GTECH_NAND2 U96 ( .A(n105), .B(n106), .Z(n95) );
  GTECH_AOI222 U97 ( .A(n69), .B(n107), .C(n108), .D(n70), .E(n73), .F(n67), 
        .Z(n103) );
  GTECH_NOT U98 ( .A(n3), .Z(n67) );
  GTECH_NOT U99 ( .A(n81), .Z(n73) );
  GTECH_NOT U100 ( .A(n7), .Z(n70) );
  GTECH_NOT U101 ( .A(n4), .Z(n107) );
  GTECH_OAI22 U102 ( .A(n9), .B(n68), .C(n63), .D(n109), .Z(shift_in[0]) );
  GTECH_AND2 U103 ( .A(n110), .B(n111), .Z(n109) );
  GTECH_AOI222 U104 ( .A(n108), .B(n72), .C(data_in[3]), .D(n71), .E(n86), .F(
        data_in[0]), .Z(n111) );
  GTECH_NOT U105 ( .A(n80), .Z(n86) );
  GTECH_NAND3 U106 ( .A(shift_direction[0]), .B(n106), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NOT U107 ( .A(n96), .Z(n71) );
  GTECH_NAND3 U108 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n96) );
  GTECH_NOT U109 ( .A(n8), .Z(n72) );
  GTECH_NOT U110 ( .A(n79), .Z(n108) );
  GTECH_NAND3 U111 ( .A(shift_direction[0]), .B(n112), .C(shift_direction[2]), 
        .Z(n79) );
  GTECH_OA22 U112 ( .A(n5), .B(n81), .C(n3), .D(n82), .Z(n110) );
  GTECH_NAND3 U113 ( .A(shift_direction[1]), .B(n105), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NOT U114 ( .A(n113), .Z(n63) );
  GTECH_NAND2 U115 ( .A(n69), .B(n106), .Z(n113) );
  GTECH_NOT U116 ( .A(n82), .Z(n69) );
  GTECH_NAND2 U117 ( .A(n105), .B(n112), .Z(n82) );
  GTECH_NOT U118 ( .A(shift_direction[0]), .Z(n105) );
  GTECH_NAND2 U119 ( .A(n112), .B(n106), .Z(n68) );
  GTECH_NOT U120 ( .A(shift_direction[2]), .Z(n106) );
  GTECH_NOT U121 ( .A(shift_direction[1]), .Z(n112) );
  GTECH_NOT U122 ( .A(reset), .Z(n59) );
endmodule

