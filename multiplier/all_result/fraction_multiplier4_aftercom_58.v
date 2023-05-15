
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n73, n74, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n90) );
  GTECH_FJK2S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[0]), .QN(n14) );
  GTECH_FJK2S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n73), .Q(A_3_), .QN(n15) );
  GTECH_FJK2S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[4]), .QN(n16) );
  GTECH_FJK2S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[5]), .QN(n17) );
  GTECH_FJK2S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[6]), .QN(n89) );
  GTECH_FJK2S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[3]), .QN(n18) );
  GTECH_FJK2S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[2]), .QN(n19) );
  GTECH_FJK2S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[1]), .QN(n20) );
  GTECH_ZERO U85 ( .Z(n74) );
  GTECH_ONE U86 ( .Z(n73) );
  GTECH_AND2 U87 ( .A(n91), .B(N57), .Z(N63) );
  GTECH_NOT U88 ( .A(n92), .Z(N58) );
  GTECH_AOI222 U89 ( .A(Mplier[3]), .B(n93), .C(n94), .D(n95), .E(n96), .F(n97), .Z(n92) );
  GTECH_NOT U90 ( .A(n16), .Z(n97) );
  GTECH_OAI21 U91 ( .A(Mcand[0]), .B(n98), .C(n91), .Z(n96) );
  GTECH_AND_NOT U92 ( .A(n99), .B(n14), .Z(n94) );
  GTECH_AO21 U93 ( .A(n93), .B(St), .C(n99), .Z(N57) );
  GTECH_OAI2N2 U94 ( .A(n18), .B(n98), .C(Mplier[2]), .D(n93), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n19), .B(n98), .C(Mplier[1]), .D(n93), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n20), .B(n98), .C(Mplier[0]), .D(n93), .Z(N52) );
  GTECH_MUX2 U97 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U98 ( .A(n102), .B(n103), .S(n15), .Z(N48) );
  GTECH_NOT U99 ( .A(n104), .Z(n103) );
  GTECH_MUX2 U100 ( .A(n105), .B(n106), .S(Mcand[3]), .Z(n104) );
  GTECH_NAND2 U101 ( .A(n107), .B(n91), .Z(n102) );
  GTECH_MUX2 U102 ( .A(n106), .B(n105), .S(Mcand[3]), .Z(n107) );
  GTECH_AOI2N2 U103 ( .A(n108), .B(n109), .C(n110), .D(n111), .Z(n105) );
  GTECH_AOI2N2 U104 ( .A(n110), .B(n112), .C(n108), .D(n113), .Z(n106) );
  GTECH_OAI21 U105 ( .A(n114), .B(n115), .C(n116), .Z(n108) );
  GTECH_OAI21 U106 ( .A(Mcand[2]), .B(n117), .C(n89), .Z(n116) );
  GTECH_OA21 U107 ( .A(n118), .B(n115), .C(n119), .Z(n110) );
  GTECH_AO21 U108 ( .A(n115), .B(n118), .C(n89), .Z(n119) );
  GTECH_MUX2 U109 ( .A(n120), .B(n121), .S(n89), .Z(N46) );
  GTECH_MUX2 U110 ( .A(n122), .B(n123), .S(n115), .Z(n121) );
  GTECH_OR_NOT U111 ( .A(n124), .B(n91), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n123), .B(n122), .S(n115), .Z(n124) );
  GTECH_NOT U113 ( .A(Mcand[2]), .Z(n115) );
  GTECH_OAI2N2 U114 ( .A(n117), .B(n113), .C(n118), .D(n112), .Z(n122) );
  GTECH_OAI22 U115 ( .A(n118), .B(n111), .C(n114), .D(n113), .Z(n123) );
  GTECH_NOT U116 ( .A(n117), .Z(n114) );
  GTECH_OAI21 U117 ( .A(n125), .B(n126), .C(n127), .Z(n117) );
  GTECH_OAI21 U118 ( .A(n95), .B(Mcand[1]), .C(n17), .Z(n127) );
  GTECH_NOT U119 ( .A(n112), .Z(n111) );
  GTECH_OA21 U120 ( .A(n126), .B(n128), .C(n129), .Z(n118) );
  GTECH_AO21 U121 ( .A(n128), .B(n126), .C(n17), .Z(n129) );
  GTECH_MUX2 U122 ( .A(n130), .B(n131), .S(n17), .Z(N44) );
  GTECH_MUX2 U123 ( .A(n132), .B(n133), .S(n126), .Z(n131) );
  GTECH_OR_NOT U124 ( .A(n134), .B(n91), .Z(n130) );
  GTECH_NAND2 U125 ( .A(n99), .B(n14), .Z(n91) );
  GTECH_NOT U126 ( .A(n98), .Z(n99) );
  GTECH_AND_NOT U127 ( .A(n135), .B(n100), .Z(n98) );
  GTECH_MUX2 U128 ( .A(n133), .B(n132), .S(n126), .Z(n134) );
  GTECH_NOT U129 ( .A(Mcand[1]), .Z(n126) );
  GTECH_OAI2N2 U130 ( .A(n95), .B(n113), .C(n128), .D(n112), .Z(n132) );
  GTECH_NOT U131 ( .A(n136), .Z(n128) );
  GTECH_OAI2N2 U132 ( .A(n125), .B(n113), .C(n136), .D(n112), .Z(n133) );
  GTECH_AND_NOT U133 ( .A(n101), .B(n14), .Z(n112) );
  GTECH_AND_NOT U134 ( .A(Mcand[0]), .B(n16), .Z(n136) );
  GTECH_NOT U135 ( .A(n109), .Z(n113) );
  GTECH_AND_NOT U136 ( .A(n100), .B(n14), .Z(n109) );
  GTECH_NOT U137 ( .A(n95), .Z(n125) );
  GTECH_AND2 U138 ( .A(Mcand[0]), .B(n16), .Z(n95) );
  GTECH_OR_NOT U139 ( .A(n100), .B(n137), .Z(N42) );
  GTECH_OR3 U140 ( .A(n12), .B(n90), .C(n135), .Z(n137) );
  GTECH_AOI21 U141 ( .A(n138), .B(n139), .C(n135), .Z(N41) );
  GTECH_NOT U142 ( .A(n101), .Z(n135) );
  GTECH_AO21 U143 ( .A(n93), .B(St), .C(n140), .Z(N40) );
  GTECH_AO21 U144 ( .A(n12), .B(n101), .C(n100), .Z(n140) );
  GTECH_AND3 U145 ( .A(n12), .B(n141), .C(n90), .Z(n100) );
  GTECH_NOT U146 ( .A(n13), .Z(n141) );
  GTECH_OA21 U147 ( .A(n138), .B(n139), .C(n13), .Z(n101) );
  GTECH_NOT U148 ( .A(n12), .Z(n138) );
  GTECH_AND3 U149 ( .A(n90), .B(n12), .C(n13), .Z(n93) );
  GTECH_NOR3 U150 ( .A(n12), .B(n13), .C(n139), .Z(Done) );
  GTECH_NOT U151 ( .A(n90), .Z(n139) );
endmodule

