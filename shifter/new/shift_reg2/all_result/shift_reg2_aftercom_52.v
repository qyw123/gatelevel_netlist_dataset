
module shift_reg2 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [7:0] data_in;
  input [2:0] shift_direction;
  output [7:0] data_out;
  input clk, reset, enable;
  wire   n50, n53, n56, n59, n62, n65, n68, n69, n48, n49, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125;
  wire   [7:0] shift_in;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n49), .K(n49), .TI(shift_in[0]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[0]), .QN(n72) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n49), .K(n49), .TI(shift_in[6]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[6]), .QN(n68) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n49), .K(n49), .TI(shift_in[7]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[7]), .QN(n65) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n49), .K(n49), .TI(shift_in[5]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[5]), .QN(n62) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n49), .K(n49), .TI(shift_in[4]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[4]), .QN(n59) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n49), .K(n49), .TI(shift_in[3]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[3]), .QN(n56) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n49), .K(n49), .TI(shift_in[2]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[2]), .QN(n53) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n49), .K(n49), .TI(shift_in[1]), .TE(
        enable), .CP(clk), .CD(n69), .SD(n48), .Q(data_out[1]), .QN(n50) );
  GTECH_ZERO U73 ( .Z(n49) );
  GTECH_ONE U74 ( .Z(n48) );
  GTECH_AOI21 U75 ( .A(n73), .B(n74), .C(n75), .Z(shift_in[7]) );
  GTECH_AOI222 U76 ( .A(data_in[0]), .B(n76), .C(data_in[7]), .D(n77), .E(n78), 
        .F(n79), .Z(n74) );
  GTECH_NOT U77 ( .A(n80), .Z(n76) );
  GTECH_AOI222 U78 ( .A(n81), .B(n82), .C(n83), .D(n84), .E(n85), .F(n86), .Z(
        n73) );
  GTECH_OAI22 U79 ( .A(n65), .B(n80), .C(n75), .D(n87), .Z(shift_in[6]) );
  GTECH_AND2 U80 ( .A(n88), .B(n89), .Z(n87) );
  GTECH_AOI222 U81 ( .A(n83), .B(n86), .C(data_in[6]), .D(n77), .E(n78), .F(
        n90), .Z(n89) );
  GTECH_NOT U82 ( .A(n62), .Z(n90) );
  GTECH_NAND2 U83 ( .A(n91), .B(n92), .Z(n77) );
  GTECH_OA22 U84 ( .A(n72), .B(n93), .C(n53), .D(n94), .Z(n88) );
  GTECH_OAI22 U85 ( .A(n68), .B(n80), .C(n75), .D(n95), .Z(shift_in[5]) );
  GTECH_AND2 U86 ( .A(n96), .B(n97), .Z(n95) );
  GTECH_AOI222 U87 ( .A(data_in[5]), .B(n98), .C(n78), .D(n99), .E(n83), .F(
        n100), .Z(n97) );
  GTECH_NOT U88 ( .A(n59), .Z(n99) );
  GTECH_OA22 U89 ( .A(n65), .B(n91), .C(n50), .D(n94), .Z(n96) );
  GTECH_OAI22 U90 ( .A(n62), .B(n80), .C(n75), .D(n101), .Z(shift_in[4]) );
  GTECH_AND2 U91 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_AOI222 U92 ( .A(data_in[4]), .B(n98), .C(n78), .D(n82), .E(n83), .F(
        data_in[7]), .Z(n103) );
  GTECH_OA22 U93 ( .A(n68), .B(n91), .C(n72), .D(n94), .Z(n102) );
  GTECH_OAI21 U94 ( .A(n59), .B(n80), .C(n104), .Z(shift_in[3]) );
  GTECH_OAI21 U95 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_OAI22 U96 ( .A(n62), .B(n91), .C(n92), .D(n108), .Z(n106) );
  GTECH_NOT U97 ( .A(data_in[3]), .Z(n108) );
  GTECH_OAI22 U98 ( .A(n109), .B(n110), .C(n53), .D(n111), .Z(n105) );
  GTECH_NOT U99 ( .A(data_in[6]), .Z(n110) );
  GTECH_OAI22 U100 ( .A(n56), .B(n80), .C(n75), .D(n112), .Z(shift_in[2]) );
  GTECH_AND2 U101 ( .A(n113), .B(n114), .Z(n112) );
  GTECH_AOI222 U102 ( .A(data_in[2]), .B(n98), .C(n78), .D(n86), .E(data_in[5]), .F(n83), .Z(n114) );
  GTECH_NOT U103 ( .A(n50), .Z(n86) );
  GTECH_OA22 U104 ( .A(n59), .B(n91), .C(n65), .D(n93), .Z(n113) );
  GTECH_OAI22 U105 ( .A(n53), .B(n80), .C(n75), .D(n115), .Z(shift_in[1]) );
  GTECH_AND2 U106 ( .A(n116), .B(n117), .Z(n115) );
  GTECH_AOI222 U107 ( .A(data_in[1]), .B(n98), .C(n78), .D(n100), .E(
        data_in[4]), .F(n83), .Z(n117) );
  GTECH_NOT U108 ( .A(n72), .Z(n100) );
  GTECH_NOT U109 ( .A(n111), .Z(n78) );
  GTECH_NAND2 U110 ( .A(n118), .B(n119), .Z(n111) );
  GTECH_AOI222 U111 ( .A(n81), .B(n120), .C(n121), .D(n82), .E(n85), .F(n79), 
        .Z(n116) );
  GTECH_NOT U112 ( .A(n68), .Z(n79) );
  GTECH_NOT U113 ( .A(n93), .Z(n85) );
  GTECH_NOT U114 ( .A(n56), .Z(n82) );
  GTECH_NOT U115 ( .A(n65), .Z(n120) );
  GTECH_OAI22 U116 ( .A(n50), .B(n80), .C(n75), .D(n122), .Z(shift_in[0]) );
  GTECH_AND2 U117 ( .A(n123), .B(n124), .Z(n122) );
  GTECH_AOI222 U118 ( .A(n121), .B(n84), .C(data_in[3]), .D(n83), .E(n98), .F(
        data_in[0]), .Z(n124) );
  GTECH_NOT U119 ( .A(n92), .Z(n98) );
  GTECH_NAND3 U120 ( .A(shift_direction[0]), .B(n119), .C(shift_direction[1]), 
        .Z(n92) );
  GTECH_NOT U121 ( .A(n109), .Z(n83) );
  GTECH_NAND3 U122 ( .A(shift_direction[1]), .B(shift_direction[0]), .C(
        shift_direction[2]), .Z(n109) );
  GTECH_NOT U123 ( .A(n53), .Z(n84) );
  GTECH_NOT U124 ( .A(n91), .Z(n121) );
  GTECH_NAND3 U125 ( .A(shift_direction[0]), .B(n125), .C(shift_direction[2]), 
        .Z(n91) );
  GTECH_OA22 U126 ( .A(n62), .B(n93), .C(n68), .D(n94), .Z(n123) );
  GTECH_NAND3 U127 ( .A(shift_direction[1]), .B(n118), .C(shift_direction[2]), 
        .Z(n93) );
  GTECH_NOT U128 ( .A(n107), .Z(n75) );
  GTECH_NAND2 U129 ( .A(n81), .B(n119), .Z(n107) );
  GTECH_NOT U130 ( .A(n94), .Z(n81) );
  GTECH_NAND2 U131 ( .A(n118), .B(n125), .Z(n94) );
  GTECH_NOT U132 ( .A(shift_direction[0]), .Z(n118) );
  GTECH_NAND2 U133 ( .A(n125), .B(n119), .Z(n80) );
  GTECH_NOT U134 ( .A(shift_direction[2]), .Z(n119) );
  GTECH_NOT U135 ( .A(shift_direction[1]), .Z(n125) );
  GTECH_NOT U136 ( .A(reset), .Z(n69) );
endmodule

