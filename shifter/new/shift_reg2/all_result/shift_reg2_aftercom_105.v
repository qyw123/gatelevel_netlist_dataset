
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n54, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116;
  wire   [7:0] shift_in;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[0]), .QN(n60) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(1'b0), .K(1'b0), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[5]), .QN(n59) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[3]), .QN(n62) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(1'b0), .K(1'b0), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[7]), .QN(n58) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[1]), .QN(n57) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(1'b0), .K(1'b0), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[6]), .QN(n56) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(1'b0), .K(1'b0), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[4]), .QN(n61) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n54), .Q(data_out[2]), .QN(n63) );
  GTECH_OA21 U64 ( .A(n64), .B(n65), .C(n66), .Z(shift_in[7]) );
  GTECH_OAI21 U65 ( .A(n67), .B(n68), .C(n69), .Z(n65) );
  GTECH_OA22 U66 ( .A(n62), .B(n70), .C(n57), .D(n71), .Z(n69) );
  GTECH_OAI21 U67 ( .A(n63), .B(n72), .C(n73), .Z(n64) );
  GTECH_OA22 U68 ( .A(n74), .B(n75), .C(n56), .D(n76), .Z(n73) );
  GTECH_OAI21 U69 ( .A(n58), .B(n67), .C(n77), .Z(shift_in[6]) );
  GTECH_OAI21 U70 ( .A(n78), .B(n79), .C(n66), .Z(n77) );
  GTECH_OAI22 U71 ( .A(n60), .B(n71), .C(n63), .D(n70), .Z(n79) );
  GTECH_OAI21 U72 ( .A(n57), .B(n72), .C(n80), .Z(n78) );
  GTECH_OA22 U73 ( .A(n74), .B(n81), .C(n59), .D(n76), .Z(n80) );
  GTECH_NOT U74 ( .A(n82), .Z(n74) );
  GTECH_NAND2 U75 ( .A(n83), .B(n84), .Z(n82) );
  GTECH_OAI21 U76 ( .A(n56), .B(n67), .C(n85), .Z(shift_in[5]) );
  GTECH_OAI21 U77 ( .A(n86), .B(n87), .C(n66), .Z(n85) );
  GTECH_OAI22 U78 ( .A(n83), .B(n88), .C(n58), .D(n84), .Z(n87) );
  GTECH_OAI21 U79 ( .A(n57), .B(n70), .C(n89), .Z(n86) );
  GTECH_OA22 U80 ( .A(n61), .B(n76), .C(n60), .D(n72), .Z(n89) );
  GTECH_OAI21 U81 ( .A(n59), .B(n67), .C(n90), .Z(shift_in[4]) );
  GTECH_OAI21 U82 ( .A(n91), .B(n92), .C(n66), .Z(n90) );
  GTECH_OAI22 U83 ( .A(n83), .B(n93), .C(n56), .D(n84), .Z(n92) );
  GTECH_OAI21 U84 ( .A(n60), .B(n70), .C(n94), .Z(n91) );
  GTECH_OA22 U85 ( .A(n62), .B(n76), .C(n75), .D(n72), .Z(n94) );
  GTECH_NOT U86 ( .A(data_in[7]), .Z(n75) );
  GTECH_OAI21 U87 ( .A(n61), .B(n67), .C(n95), .Z(shift_in[3]) );
  GTECH_OAI21 U88 ( .A(n96), .B(n97), .C(n66), .Z(n95) );
  GTECH_OAI22 U89 ( .A(n83), .B(n98), .C(n59), .D(n84), .Z(n97) );
  GTECH_OAI22 U90 ( .A(n72), .B(n81), .C(n63), .D(n76), .Z(n96) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n81) );
  GTECH_OAI21 U92 ( .A(n62), .B(n67), .C(n99), .Z(shift_in[2]) );
  GTECH_OAI21 U93 ( .A(n100), .B(n101), .C(n66), .Z(n99) );
  GTECH_OAI2N2 U94 ( .A(n58), .B(n71), .C(data_in[2]), .D(n102), .Z(n101) );
  GTECH_OAI21 U95 ( .A(n61), .B(n84), .C(n103), .Z(n100) );
  GTECH_OA22 U96 ( .A(n57), .B(n76), .C(n72), .D(n88), .Z(n103) );
  GTECH_NOT U97 ( .A(data_in[5]), .Z(n88) );
  GTECH_OAI21 U98 ( .A(n63), .B(n67), .C(n104), .Z(shift_in[1]) );
  GTECH_OAI21 U99 ( .A(n105), .B(n106), .C(n66), .Z(n104) );
  GTECH_OAI21 U100 ( .A(n56), .B(n71), .C(n107), .Z(n106) );
  GTECH_AOI2N2 U101 ( .A(data_in[1]), .B(n102), .C(n62), .D(n84), .Z(n107) );
  GTECH_NOT U102 ( .A(n83), .Z(n102) );
  GTECH_OAI21 U103 ( .A(n58), .B(n70), .C(n108), .Z(n105) );
  GTECH_OA22 U104 ( .A(n60), .B(n76), .C(n72), .D(n93), .Z(n108) );
  GTECH_NOT U105 ( .A(data_in[4]), .Z(n93) );
  GTECH_NAND2 U106 ( .A(n109), .B(n110), .Z(n76) );
  GTECH_OAI21 U107 ( .A(n57), .B(n67), .C(n111), .Z(shift_in[0]) );
  GTECH_OAI21 U108 ( .A(n112), .B(n113), .C(n66), .Z(n111) );
  GTECH_NAND2 U109 ( .A(n114), .B(n110), .Z(n66) );
  GTECH_NOT U110 ( .A(n67), .Z(n114) );
  GTECH_OAI22 U111 ( .A(n59), .B(n71), .C(n68), .D(n83), .Z(n113) );
  GTECH_NAND3 U112 ( .A(shift_direction[0]), .B(n109), .C(shift_direction[1]), 
        .Z(n83) );
  GTECH_NOT U113 ( .A(data_in[0]), .Z(n68) );
  GTECH_NAND3 U114 ( .A(shift_direction[2]), .B(n110), .C(shift_direction[1]), 
        .Z(n71) );
  GTECH_OAI21 U115 ( .A(n63), .B(n84), .C(n115), .Z(n112) );
  GTECH_OA22 U116 ( .A(n72), .B(n98), .C(n56), .D(n70), .Z(n115) );
  GTECH_NAND2 U117 ( .A(n116), .B(n110), .Z(n70) );
  GTECH_NOT U118 ( .A(shift_direction[0]), .Z(n110) );
  GTECH_NOT U119 ( .A(data_in[3]), .Z(n98) );
  GTECH_NAND3 U120 ( .A(shift_direction[2]), .B(shift_direction[0]), .C(
        shift_direction[1]), .Z(n72) );
  GTECH_NAND3 U121 ( .A(shift_direction[0]), .B(n116), .C(shift_direction[2]), 
        .Z(n84) );
  GTECH_NAND2 U122 ( .A(n109), .B(n116), .Z(n67) );
  GTECH_NOT U123 ( .A(shift_direction[1]), .Z(n116) );
  GTECH_NOT U124 ( .A(shift_direction[2]), .Z(n109) );
  GTECH_NOT U125 ( .A(reset), .Z(n54) );
endmodule

