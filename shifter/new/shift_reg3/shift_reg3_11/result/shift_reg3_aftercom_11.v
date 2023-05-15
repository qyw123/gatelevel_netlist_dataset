
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n43, n46, n49, n52, n55, n58, n61, n64, n67, n70, n73,
         n76, n79, n82, n83, n38, n39, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n39), .K(n39), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n83), .SD(n38), .Q(data_out[0]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n39), .K(n39), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n83), .SD(n38), .Q(data_out[1]), .QN(n82) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n39), .K(n39), .TI(N10), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[2]), .QN(n79) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n39), .K(n39), .TI(N11), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[3]), .QN(n76) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n39), .K(n39), .TI(N12), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[4]), .QN(n73) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n39), .K(n39), .TI(N13), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[5]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n39), .K(n39), .TI(N14), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[6]), .QN(n67) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n39), .K(n39), .TI(N15), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[7]), .QN(n64) );
  GTECH_FJK3S shift_reg_reg_8_ ( .J(n39), .K(n39), .TI(N16), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[8]), .QN(n61) );
  GTECH_FJK3S shift_reg_reg_9_ ( .J(n39), .K(n39), .TI(N17), .TE(N68), .CP(clk), .CD(n83), .SD(n38), .Q(data_out[9]), .QN(n58) );
  GTECH_FJK3S shift_reg_reg_10_ ( .J(n39), .K(n39), .TI(N18), .TE(N68), .CP(
        clk), .CD(n83), .SD(n38), .Q(data_out[10]), .QN(n55) );
  GTECH_FJK3S shift_reg_reg_11_ ( .J(n39), .K(n39), .TI(N19), .TE(N68), .CP(
        clk), .CD(n83), .SD(n38), .Q(data_out[11]), .QN(n52) );
  GTECH_FJK3S shift_reg_reg_12_ ( .J(n39), .K(n39), .TI(N20), .TE(N68), .CP(
        clk), .CD(n83), .SD(n38), .Q(data_out[12]), .QN(n49) );
  GTECH_FJK3S shift_reg_reg_13_ ( .J(n39), .K(n39), .TI(N21), .TE(N68), .CP(
        clk), .CD(n83), .SD(n38), .Q(data_out[13]), .QN(n46) );
  GTECH_FJK3S shift_reg_reg_14_ ( .J(n39), .K(n39), .TI(N22), .TE(N68), .CP(
        clk), .CD(n83), .SD(n38), .Q(data_out[14]), .QN(n43) );
  GTECH_FJK3S shift_reg_reg_15_ ( .J(n39), .K(n39), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n83), .SD(n38), .Q(data_out[15]) );
  GTECH_ZERO U88 ( .Z(n39) );
  GTECH_ONE U89 ( .Z(n38) );
  GTECH_NOT U90 ( .A(reset), .Z(n83) );
  GTECH_NOT U91 ( .A(n87), .Z(N9) );
  GTECH_AOI222 U92 ( .A(n88), .B(data_out[0]), .C(data_in[1]), .D(n89), .E(n90), .F(n91), .Z(n87) );
  GTECH_OAI22 U93 ( .A(n82), .B(n92), .C(n93), .D(n94), .Z(N8) );
  GTECH_NOT U94 ( .A(data_in[0]), .Z(n94) );
  GTECH_NOT U95 ( .A(n95), .Z(N68) );
  GTECH_OAI21 U96 ( .A(shift_direction[1]), .B(n96), .C(enable), .Z(n95) );
  GTECH_NOT U97 ( .A(n97), .Z(N23) );
  GTECH_AOI222 U98 ( .A(n88), .B(n98), .C(n99), .D(data_in[0]), .E(data_in[15]), .F(n89), .Z(n97) );
  GTECH_AND2 U99 ( .A(shift_direction[0]), .B(n100), .Z(n99) );
  GTECH_NOT U100 ( .A(n101), .Z(N22) );
  GTECH_AOI222 U101 ( .A(n88), .B(n102), .C(data_in[14]), .D(n89), .E(n90), 
        .F(data_out[15]), .Z(n101) );
  GTECH_NOT U102 ( .A(n103), .Z(N21) );
  GTECH_AOI222 U103 ( .A(n88), .B(n104), .C(data_in[13]), .D(n89), .E(n90), 
        .F(n98), .Z(n103) );
  GTECH_NOT U104 ( .A(n43), .Z(n98) );
  GTECH_NOT U105 ( .A(n105), .Z(N20) );
  GTECH_AOI222 U106 ( .A(n88), .B(n106), .C(data_in[12]), .D(n89), .E(n90), 
        .F(n102), .Z(n105) );
  GTECH_NOT U107 ( .A(n46), .Z(n102) );
  GTECH_NOT U108 ( .A(n107), .Z(N19) );
  GTECH_AOI222 U109 ( .A(n88), .B(n108), .C(data_in[11]), .D(n89), .E(n90), 
        .F(n104), .Z(n107) );
  GTECH_NOT U110 ( .A(n49), .Z(n104) );
  GTECH_NOT U111 ( .A(n109), .Z(N18) );
  GTECH_AOI222 U112 ( .A(n88), .B(n110), .C(data_in[10]), .D(n89), .E(n90), 
        .F(n106), .Z(n109) );
  GTECH_NOT U113 ( .A(n52), .Z(n106) );
  GTECH_NOT U114 ( .A(n111), .Z(N17) );
  GTECH_AOI222 U115 ( .A(n88), .B(n112), .C(data_in[9]), .D(n89), .E(n90), .F(
        n108), .Z(n111) );
  GTECH_NOT U116 ( .A(n55), .Z(n108) );
  GTECH_NOT U117 ( .A(n113), .Z(N16) );
  GTECH_AOI222 U118 ( .A(n88), .B(n114), .C(data_in[8]), .D(n89), .E(n90), .F(
        n110), .Z(n113) );
  GTECH_NOT U119 ( .A(n58), .Z(n110) );
  GTECH_NOT U120 ( .A(n115), .Z(N15) );
  GTECH_AOI222 U121 ( .A(n88), .B(n116), .C(data_in[7]), .D(n89), .E(n90), .F(
        n112), .Z(n115) );
  GTECH_NOT U122 ( .A(n61), .Z(n112) );
  GTECH_NOT U123 ( .A(n117), .Z(N14) );
  GTECH_AOI222 U124 ( .A(n88), .B(n118), .C(data_in[6]), .D(n89), .E(n90), .F(
        n114), .Z(n117) );
  GTECH_NOT U125 ( .A(n64), .Z(n114) );
  GTECH_NOT U126 ( .A(n119), .Z(N13) );
  GTECH_AOI222 U127 ( .A(n88), .B(n120), .C(data_in[5]), .D(n89), .E(n90), .F(
        n116), .Z(n119) );
  GTECH_NOT U128 ( .A(n67), .Z(n116) );
  GTECH_NOT U129 ( .A(n121), .Z(N12) );
  GTECH_AOI222 U130 ( .A(n88), .B(n122), .C(data_in[4]), .D(n89), .E(n90), .F(
        n118), .Z(n121) );
  GTECH_NOT U131 ( .A(n70), .Z(n118) );
  GTECH_NOT U132 ( .A(n123), .Z(N11) );
  GTECH_AOI222 U133 ( .A(n88), .B(n91), .C(data_in[3]), .D(n89), .E(n90), .F(
        n120), .Z(n123) );
  GTECH_NOT U134 ( .A(n73), .Z(n120) );
  GTECH_NOT U135 ( .A(n79), .Z(n91) );
  GTECH_NOT U136 ( .A(n124), .Z(N10) );
  GTECH_AOI222 U137 ( .A(n88), .B(n125), .C(data_in[2]), .D(n89), .E(n90), .F(
        n122), .Z(n124) );
  GTECH_NOT U138 ( .A(n76), .Z(n122) );
  GTECH_NOT U139 ( .A(n92), .Z(n90) );
  GTECH_NAND2 U140 ( .A(shift_direction[1]), .B(n96), .Z(n92) );
  GTECH_NOT U141 ( .A(n93), .Z(n89) );
  GTECH_NAND2 U142 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n93)
         );
  GTECH_NOT U143 ( .A(n82), .Z(n125) );
  GTECH_NOT U144 ( .A(n126), .Z(n88) );
  GTECH_NAND2 U145 ( .A(n96), .B(n100), .Z(n126) );
  GTECH_NOT U146 ( .A(shift_direction[1]), .Z(n100) );
  GTECH_NOT U147 ( .A(shift_direction[0]), .Z(n96) );
endmodule

