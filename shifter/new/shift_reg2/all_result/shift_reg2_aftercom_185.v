
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n60, n53, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115;
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
  GTECH_NAND2 U69 ( .A(n80), .B(n81), .Z(n66) );
  GTECH_AOI2N2 U70 ( .A(n69), .B(n72), .C(n2), .D(n82), .Z(n77) );
  GTECH_OAI2N2 U71 ( .A(n64), .B(n83), .C(n65), .D(n68), .Z(shift_in[5]) );
  GTECH_AND2 U72 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U73 ( .A(data_in[5]), .B(n86), .C(n67), .D(n87), .E(n88), .F(
        n76), .Z(n85) );
  GTECH_AOI2N2 U74 ( .A(n69), .B(n74), .C(n2), .D(n89), .Z(n84) );
  GTECH_OAI2N2 U75 ( .A(n64), .B(n90), .C(n65), .D(n79), .Z(shift_in[4]) );
  GTECH_AND2 U76 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U77 ( .A(data_in[4]), .B(n86), .C(n67), .D(n70), .E(n88), .F(
        n68), .Z(n92) );
  GTECH_AOI2N2 U78 ( .A(n69), .B(n93), .C(n94), .D(n89), .Z(n91) );
  GTECH_NOT U79 ( .A(data_in[7]), .Z(n94) );
  GTECH_OAI2N2 U80 ( .A(n64), .B(n95), .C(n65), .D(n87), .Z(shift_in[3]) );
  GTECH_AND2 U81 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_AOI2N2 U82 ( .A(n88), .B(n79), .C(n8), .D(n98), .Z(n97) );
  GTECH_NOT U83 ( .A(n5), .Z(n79) );
  GTECH_AOI2N2 U84 ( .A(data_in[6]), .B(n71), .C(n80), .D(n99), .Z(n96) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n99) );
  GTECH_OAI2N2 U86 ( .A(n64), .B(n100), .C(n65), .D(n70), .Z(shift_in[2]) );
  GTECH_AND2 U87 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_AOI222 U88 ( .A(data_in[2]), .B(n86), .C(n67), .D(n74), .E(n88), .F(
        n87), .Z(n102) );
  GTECH_NOT U89 ( .A(n6), .Z(n87) );
  GTECH_AOI2N2 U90 ( .A(n73), .B(n76), .C(n89), .D(n103), .Z(n101) );
  GTECH_NOT U91 ( .A(data_in[5]), .Z(n103) );
  GTECH_OAI2N2 U92 ( .A(n64), .B(n104), .C(n65), .D(n72), .Z(shift_in[1]) );
  GTECH_AND2 U93 ( .A(n105), .B(n106), .Z(n104) );
  GTECH_AOI222 U94 ( .A(data_in[1]), .B(n86), .C(n67), .D(n93), .E(n88), .F(
        n70), .Z(n106) );
  GTECH_NOT U95 ( .A(n7), .Z(n70) );
  GTECH_NOT U96 ( .A(n2), .Z(n93) );
  GTECH_NOT U97 ( .A(n98), .Z(n67) );
  GTECH_NAND2 U98 ( .A(n107), .B(n108), .Z(n98) );
  GTECH_AOI222 U99 ( .A(n69), .B(n76), .C(data_in[4]), .D(n71), .E(n73), .F(
        n68), .Z(n105) );
  GTECH_NOT U100 ( .A(n82), .Z(n73) );
  GTECH_NOT U101 ( .A(n4), .Z(n76) );
  GTECH_OAI2N2 U102 ( .A(n64), .B(n109), .C(n65), .D(n74), .Z(shift_in[0]) );
  GTECH_NOT U103 ( .A(n9), .Z(n74) );
  GTECH_NOT U104 ( .A(n110), .Z(n65) );
  GTECH_NAND2 U105 ( .A(n111), .B(n108), .Z(n110) );
  GTECH_AND2 U106 ( .A(n112), .B(n113), .Z(n109) );
  GTECH_AOI222 U107 ( .A(data_in[3]), .B(n71), .C(n88), .D(n72), .E(n86), .F(
        data_in[0]), .Z(n113) );
  GTECH_NOT U108 ( .A(n80), .Z(n86) );
  GTECH_NAND3 U109 ( .A(shift_direction[0]), .B(n108), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NOT U110 ( .A(n8), .Z(n72) );
  GTECH_NOT U111 ( .A(n81), .Z(n88) );
  GTECH_NAND3 U112 ( .A(shift_direction[0]), .B(n111), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NOT U113 ( .A(n89), .Z(n71) );
  GTECH_NAND3 U114 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n89) );
  GTECH_AOI2N2 U115 ( .A(n69), .B(n68), .C(n5), .D(n82), .Z(n112) );
  GTECH_NAND3 U116 ( .A(shift_direction[2]), .B(n107), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_NOT U117 ( .A(n3), .Z(n68) );
  GTECH_NOT U118 ( .A(n114), .Z(n64) );
  GTECH_NAND2 U119 ( .A(n69), .B(n108), .Z(n114) );
  GTECH_NOT U120 ( .A(shift_direction[2]), .Z(n108) );
  GTECH_NOT U121 ( .A(n115), .Z(n69) );
  GTECH_NAND2 U122 ( .A(n107), .B(n111), .Z(n115) );
  GTECH_NOT U123 ( .A(shift_direction[1]), .Z(n111) );
  GTECH_NOT U124 ( .A(shift_direction[0]), .Z(n107) );
  GTECH_NOT U125 ( .A(reset), .Z(n60) );
endmodule

