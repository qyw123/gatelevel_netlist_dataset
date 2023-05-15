
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n60, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[0]), .QN(n2) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[6]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[7]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[5]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[3]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[2]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n60), .Q(data_out[1]), .QN(n9) );
  GTECH_AOI21 U62 ( .A(n62), .B(n63), .C(n64), .Z(shift_in[7]) );
  GTECH_AOI222 U63 ( .A(data_in[0]), .B(n65), .C(data_in[7]), .D(n66), .E(n67), 
        .F(n68), .Z(n63) );
  GTECH_NOT U64 ( .A(n69), .Z(n65) );
  GTECH_AOI222 U65 ( .A(n70), .B(n71), .C(n72), .D(n73), .E(n74), .F(n75), .Z(
        n62) );
  GTECH_OAI22 U66 ( .A(n4), .B(n69), .C(n64), .D(n76), .Z(shift_in[6]) );
  GTECH_AND2 U67 ( .A(n77), .B(n78), .Z(n76) );
  GTECH_AOI222 U68 ( .A(n72), .B(n75), .C(data_in[6]), .D(n66), .E(n67), .F(
        n79), .Z(n78) );
  GTECH_NAND2 U69 ( .A(n80), .B(n81), .Z(n66) );
  GTECH_AOI2N2 U70 ( .A(n70), .B(n73), .C(n2), .D(n82), .Z(n77) );
  GTECH_OAI22 U71 ( .A(n3), .B(n69), .C(n64), .D(n83), .Z(shift_in[5]) );
  GTECH_AND2 U72 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U73 ( .A(data_in[5]), .B(n86), .C(n67), .D(n87), .E(n88), .F(
        n89), .Z(n85) );
  GTECH_AOI2N2 U74 ( .A(n70), .B(n75), .C(n2), .D(n90), .Z(n84) );
  GTECH_OAI22 U75 ( .A(n5), .B(n69), .C(n64), .D(n91), .Z(shift_in[4]) );
  GTECH_AND2 U76 ( .A(n92), .B(n93), .Z(n91) );
  GTECH_AOI222 U77 ( .A(data_in[4]), .B(n86), .C(n67), .D(n71), .E(n88), .F(
        n68), .Z(n93) );
  GTECH_AOI2N2 U78 ( .A(n70), .B(n94), .C(n95), .D(n90), .Z(n92) );
  GTECH_NOT U79 ( .A(data_in[7]), .Z(n95) );
  GTECH_OAI22 U80 ( .A(n6), .B(n69), .C(n64), .D(n96), .Z(shift_in[3]) );
  GTECH_AND2 U81 ( .A(n97), .B(n98), .Z(n96) );
  GTECH_AOI2N2 U82 ( .A(n88), .B(n79), .C(n8), .D(n99), .Z(n98) );
  GTECH_NOT U83 ( .A(n5), .Z(n79) );
  GTECH_AOI2N2 U84 ( .A(data_in[6]), .B(n72), .C(n80), .D(n100), .Z(n97) );
  GTECH_NOT U85 ( .A(data_in[3]), .Z(n100) );
  GTECH_OAI22 U86 ( .A(n7), .B(n69), .C(n64), .D(n101), .Z(shift_in[2]) );
  GTECH_AND2 U87 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_AOI222 U88 ( .A(data_in[2]), .B(n86), .C(n67), .D(n75), .E(n88), .F(
        n87), .Z(n103) );
  GTECH_NOT U89 ( .A(n6), .Z(n87) );
  GTECH_NOT U90 ( .A(n9), .Z(n75) );
  GTECH_AOI2N2 U91 ( .A(n74), .B(n89), .C(n90), .D(n104), .Z(n102) );
  GTECH_NOT U92 ( .A(data_in[5]), .Z(n104) );
  GTECH_OAI22 U93 ( .A(n8), .B(n69), .C(n64), .D(n105), .Z(shift_in[1]) );
  GTECH_AND2 U94 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U95 ( .A(data_in[1]), .B(n86), .C(n67), .D(n94), .E(n88), .F(
        n71), .Z(n107) );
  GTECH_NOT U96 ( .A(n7), .Z(n71) );
  GTECH_NOT U97 ( .A(n2), .Z(n94) );
  GTECH_NOT U98 ( .A(n99), .Z(n67) );
  GTECH_NAND2 U99 ( .A(n108), .B(n109), .Z(n99) );
  GTECH_AOI222 U100 ( .A(n70), .B(n89), .C(data_in[4]), .D(n72), .E(n74), .F(
        n68), .Z(n106) );
  GTECH_NOT U101 ( .A(n82), .Z(n74) );
  GTECH_NOT U102 ( .A(n4), .Z(n89) );
  GTECH_OAI22 U103 ( .A(n9), .B(n69), .C(n64), .D(n110), .Z(shift_in[0]) );
  GTECH_AND2 U104 ( .A(n111), .B(n112), .Z(n110) );
  GTECH_AOI222 U105 ( .A(data_in[3]), .B(n72), .C(n88), .D(n73), .E(n86), .F(
        data_in[0]), .Z(n112) );
  GTECH_NOT U106 ( .A(n80), .Z(n86) );
  GTECH_NAND3 U107 ( .A(shift_direction[0]), .B(n109), .C(shift_direction[1]), 
        .Z(n80) );
  GTECH_NOT U108 ( .A(n8), .Z(n73) );
  GTECH_NOT U109 ( .A(n81), .Z(n88) );
  GTECH_NAND3 U110 ( .A(shift_direction[0]), .B(n113), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NOT U111 ( .A(n90), .Z(n72) );
  GTECH_NAND3 U112 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n90) );
  GTECH_AOI2N2 U113 ( .A(n70), .B(n68), .C(n5), .D(n82), .Z(n111) );
  GTECH_NAND3 U114 ( .A(shift_direction[2]), .B(n108), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_NOT U115 ( .A(n3), .Z(n68) );
  GTECH_NOT U116 ( .A(n114), .Z(n64) );
  GTECH_NAND2 U117 ( .A(n70), .B(n109), .Z(n114) );
  GTECH_NOT U118 ( .A(n115), .Z(n70) );
  GTECH_NAND2 U119 ( .A(n108), .B(n113), .Z(n115) );
  GTECH_NOT U120 ( .A(shift_direction[0]), .Z(n108) );
  GTECH_NAND2 U121 ( .A(n113), .B(n109), .Z(n69) );
  GTECH_NOT U122 ( .A(shift_direction[2]), .Z(n109) );
  GTECH_NOT U123 ( .A(shift_direction[1]), .Z(n113) );
  GTECH_NOT U124 ( .A(reset), .Z(n60) );
endmodule

