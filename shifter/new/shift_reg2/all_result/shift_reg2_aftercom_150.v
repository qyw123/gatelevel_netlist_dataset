
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n60, n53, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112;
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
  GTECH_AOI222 U64 ( .A(n65), .B(n66), .C(data_in[7]), .D(n67), .E(n68), .F(
        n69), .Z(n63) );
  GTECH_AOI222 U65 ( .A(data_in[0]), .B(n70), .C(n71), .D(n72), .E(n73), .F(
        n74), .Z(n62) );
  GTECH_OAI22 U66 ( .A(n4), .B(n75), .C(n64), .D(n76), .Z(shift_in[6]) );
  GTECH_AND2 U67 ( .A(n77), .B(n78), .Z(n76) );
  GTECH_AOI222 U68 ( .A(n65), .B(n79), .C(data_in[6]), .D(n67), .E(n68), .F(
        n80), .Z(n78) );
  GTECH_NAND2 U69 ( .A(n81), .B(n82), .Z(n67) );
  GTECH_AOI22 U70 ( .A(n71), .B(n66), .C(n73), .D(n72), .Z(n77) );
  GTECH_OAI22 U71 ( .A(n3), .B(n75), .C(n64), .D(n83), .Z(shift_in[5]) );
  GTECH_AND2 U72 ( .A(n84), .B(n85), .Z(n83) );
  GTECH_AOI222 U73 ( .A(n86), .B(n87), .C(n68), .D(n88), .E(data_in[5]), .F(
        n89), .Z(n85) );
  GTECH_AOI22 U74 ( .A(n71), .B(n79), .C(n73), .D(n66), .Z(n84) );
  GTECH_OAI22 U75 ( .A(n5), .B(n75), .C(n64), .D(n90), .Z(shift_in[4]) );
  GTECH_AND2 U76 ( .A(n91), .B(n92), .Z(n90) );
  GTECH_AOI222 U77 ( .A(n86), .B(n69), .C(n68), .D(n74), .E(data_in[4]), .F(
        n89), .Z(n92) );
  GTECH_AOI22 U78 ( .A(n71), .B(data_in[7]), .C(n73), .D(n79), .Z(n91) );
  GTECH_OAI22 U79 ( .A(n6), .B(n75), .C(n64), .D(n93), .Z(shift_in[3]) );
  GTECH_AND2 U80 ( .A(n94), .B(n95), .Z(n93) );
  GTECH_AOI22 U81 ( .A(n68), .B(n72), .C(data_in[3]), .D(n89), .Z(n95) );
  GTECH_AOI22 U82 ( .A(n86), .B(n80), .C(data_in[6]), .D(n71), .Z(n94) );
  GTECH_OAI22 U83 ( .A(n7), .B(n75), .C(n64), .D(n96), .Z(shift_in[2]) );
  GTECH_AND2 U84 ( .A(n97), .B(n98), .Z(n96) );
  GTECH_AOI222 U85 ( .A(n86), .B(n88), .C(n68), .D(n66), .E(data_in[2]), .F(
        n89), .Z(n98) );
  GTECH_NOT U86 ( .A(n9), .Z(n66) );
  GTECH_NOT U87 ( .A(n6), .Z(n88) );
  GTECH_AOI22 U88 ( .A(n65), .B(n87), .C(data_in[5]), .D(n71), .Z(n97) );
  GTECH_OAI22 U89 ( .A(n8), .B(n75), .C(n64), .D(n99), .Z(shift_in[1]) );
  GTECH_AND2 U90 ( .A(n100), .B(n101), .Z(n99) );
  GTECH_AOI222 U91 ( .A(n86), .B(n74), .C(n68), .D(n79), .E(data_in[1]), .F(
        n89), .Z(n101) );
  GTECH_NOT U92 ( .A(n2), .Z(n79) );
  GTECH_NOT U93 ( .A(n102), .Z(n68) );
  GTECH_NAND2 U94 ( .A(n103), .B(n104), .Z(n102) );
  GTECH_NOT U95 ( .A(n7), .Z(n74) );
  GTECH_AOI222 U96 ( .A(n73), .B(n87), .C(n65), .D(n69), .E(data_in[4]), .F(
        n71), .Z(n100) );
  GTECH_NOT U97 ( .A(n4), .Z(n87) );
  GTECH_OAI22 U98 ( .A(n9), .B(n75), .C(n64), .D(n105), .Z(shift_in[0]) );
  GTECH_AND2 U99 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_AOI222 U100 ( .A(n65), .B(n80), .C(n89), .D(data_in[0]), .E(n86), .F(
        n72), .Z(n107) );
  GTECH_NOT U101 ( .A(n8), .Z(n72) );
  GTECH_NOT U102 ( .A(n81), .Z(n86) );
  GTECH_NAND3 U103 ( .A(shift_direction[0]), .B(n108), .C(shift_direction[2]), 
        .Z(n81) );
  GTECH_NOT U104 ( .A(n82), .Z(n89) );
  GTECH_NAND3 U105 ( .A(shift_direction[0]), .B(n104), .C(shift_direction[1]), 
        .Z(n82) );
  GTECH_NOT U106 ( .A(n5), .Z(n80) );
  GTECH_NOT U107 ( .A(n109), .Z(n65) );
  GTECH_NAND3 U108 ( .A(shift_direction[1]), .B(n103), .C(shift_direction[2]), 
        .Z(n109) );
  GTECH_AOI22 U109 ( .A(data_in[3]), .B(n71), .C(n73), .D(n69), .Z(n106) );
  GTECH_NOT U110 ( .A(n3), .Z(n69) );
  GTECH_NOT U111 ( .A(n110), .Z(n73) );
  GTECH_NAND2 U112 ( .A(n103), .B(n108), .Z(n110) );
  GTECH_NOT U113 ( .A(n111), .Z(n71) );
  GTECH_NAND3 U114 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n111) );
  GTECH_NOT U115 ( .A(n112), .Z(n64) );
  GTECH_NAND2 U116 ( .A(n70), .B(n103), .Z(n112) );
  GTECH_NOT U117 ( .A(shift_direction[0]), .Z(n103) );
  GTECH_NOT U118 ( .A(n75), .Z(n70) );
  GTECH_NAND2 U119 ( .A(n108), .B(n104), .Z(n75) );
  GTECH_NOT U120 ( .A(shift_direction[2]), .Z(n104) );
  GTECH_NOT U121 ( .A(shift_direction[1]), .Z(n108) );
  GTECH_NOT U122 ( .A(reset), .Z(n60) );
endmodule

