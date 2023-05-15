
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n70, n71, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n88) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n90) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n89) );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n12) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n13) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n87) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n86) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n14) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]), .QN(n15) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]), .QN(n16) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]), .QN(n17) );
  GTECH_ZERO U85 ( .Z(n71) );
  GTECH_ONE U86 ( .Z(n70) );
  GTECH_AND2 U87 ( .A(n91), .B(N57), .Z(N63) );
  GTECH_NOT U88 ( .A(n92), .Z(N58) );
  GTECH_AOI222 U89 ( .A(Mplier[3]), .B(n93), .C(n94), .D(n95), .E(n96), .F(n97), .Z(n92) );
  GTECH_OAI21 U90 ( .A(Mcand[0]), .B(n98), .C(n91), .Z(n96) );
  GTECH_AND_NOT U91 ( .A(n99), .B(n98), .Z(n94) );
  GTECH_OAI21 U92 ( .A(n100), .B(n101), .C(n98), .Z(N57) );
  GTECH_OAI2N2 U93 ( .A(n15), .B(n98), .C(Mplier[2]), .D(n93), .Z(N56) );
  GTECH_OAI2N2 U94 ( .A(n16), .B(n98), .C(Mplier[1]), .D(n93), .Z(N54) );
  GTECH_OAI2N2 U95 ( .A(n17), .B(n98), .C(Mplier[0]), .D(n93), .Z(N52) );
  GTECH_NOT U96 ( .A(n100), .Z(n93) );
  GTECH_MUX2 U97 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U98 ( .A(n104), .B(n105), .S(n13), .Z(N48) );
  GTECH_MUX2 U99 ( .A(n106), .B(n107), .S(Mcand[3]), .Z(n105) );
  GTECH_OR_NOT U100 ( .A(n108), .B(n91), .Z(n104) );
  GTECH_MUX2 U101 ( .A(n107), .B(n106), .S(Mcand[3]), .Z(n108) );
  GTECH_OAI22 U102 ( .A(n109), .B(n110), .C(n111), .D(n112), .Z(n106) );
  GTECH_AO22 U103 ( .A(n109), .B(n113), .C(n111), .D(n114), .Z(n107) );
  GTECH_OA21 U104 ( .A(n115), .B(n116), .C(n117), .Z(n111) );
  GTECH_OAI21 U105 ( .A(Mcand[2]), .B(n118), .C(n14), .Z(n117) );
  GTECH_AOI21 U106 ( .A(n119), .B(Mcand[2]), .C(n120), .Z(n109) );
  GTECH_OA21 U107 ( .A(Mcand[2]), .B(n119), .C(n121), .Z(n120) );
  GTECH_MUX2 U108 ( .A(n122), .B(n123), .S(n121), .Z(N46) );
  GTECH_NOT U109 ( .A(n14), .Z(n121) );
  GTECH_NAND2 U110 ( .A(n124), .B(n91), .Z(n123) );
  GTECH_MUX2 U111 ( .A(n125), .B(n126), .S(n116), .Z(n124) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n116) );
  GTECH_NOT U113 ( .A(n127), .Z(n122) );
  GTECH_MUX2 U114 ( .A(n125), .B(n126), .S(Mcand[2]), .Z(n127) );
  GTECH_OA22 U115 ( .A(n118), .B(n112), .C(n119), .D(n110), .Z(n126) );
  GTECH_NOT U116 ( .A(n115), .Z(n118) );
  GTECH_AOI2N2 U117 ( .A(n119), .B(n113), .C(n115), .D(n112), .Z(n125) );
  GTECH_ADD_ABC U118 ( .A(n128), .B(n129), .C(n130), .COUT(n115) );
  GTECH_NAND2 U119 ( .A(n87), .B(Mcand[0]), .Z(n128) );
  GTECH_ADD_ABC U120 ( .A(Mcand[1]), .B(n131), .C(n130), .COUT(n119) );
  GTECH_NOT U121 ( .A(n86), .Z(n130) );
  GTECH_MUX2 U122 ( .A(n132), .B(n133), .S(n86), .Z(N44) );
  GTECH_MUX2 U123 ( .A(n134), .B(n135), .S(n129), .Z(n133) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n129) );
  GTECH_OR_NOT U125 ( .A(n136), .B(n91), .Z(n132) );
  GTECH_OR_NOT U126 ( .A(n98), .B(n12), .Z(n91) );
  GTECH_AND_NOT U127 ( .A(n137), .B(n102), .Z(n98) );
  GTECH_MUX2 U128 ( .A(n134), .B(n135), .S(Mcand[1]), .Z(n136) );
  GTECH_AO22 U129 ( .A(n95), .B(n114), .C(n131), .D(n113), .Z(n135) );
  GTECH_AOI21 U130 ( .A(n112), .B(n131), .C(n138), .Z(n134) );
  GTECH_OA21 U131 ( .A(n95), .B(n112), .C(n110), .Z(n138) );
  GTECH_NOT U132 ( .A(n113), .Z(n110) );
  GTECH_AND_NOT U133 ( .A(n103), .B(n12), .Z(n113) );
  GTECH_AND_NOT U134 ( .A(Mcand[0]), .B(n97), .Z(n95) );
  GTECH_AND2 U135 ( .A(Mcand[0]), .B(n97), .Z(n131) );
  GTECH_NOT U136 ( .A(n87), .Z(n97) );
  GTECH_NOT U137 ( .A(n114), .Z(n112) );
  GTECH_AND2 U138 ( .A(n102), .B(n99), .Z(n114) );
  GTECH_NOT U139 ( .A(n12), .Z(n99) );
  GTECH_OR_NOT U140 ( .A(n102), .B(n139), .Z(N42) );
  GTECH_OR3 U141 ( .A(n88), .B(n89), .C(n137), .Z(n139) );
  GTECH_NOT U142 ( .A(n103), .Z(n137) );
  GTECH_OA21 U143 ( .A(n88), .B(n89), .C(n103), .Z(N41) );
  GTECH_OAI21 U144 ( .A(n100), .B(n101), .C(n140), .Z(N40) );
  GTECH_AOI21 U145 ( .A(n88), .B(n103), .C(n102), .Z(n140) );
  GTECH_AND_NOT U146 ( .A(n141), .B(n90), .Z(n102) );
  GTECH_AND_NOT U147 ( .A(n90), .B(n141), .Z(n103) );
  GTECH_NOT U148 ( .A(St), .Z(n101) );
  GTECH_NAND2 U149 ( .A(n141), .B(n90), .Z(n100) );
  GTECH_AND2 U150 ( .A(n88), .B(n89), .Z(n141) );
  GTECH_NOR3 U151 ( .A(n88), .B(n90), .C(n142), .Z(Done) );
  GTECH_NOT U152 ( .A(n89), .Z(n142) );
endmodule

