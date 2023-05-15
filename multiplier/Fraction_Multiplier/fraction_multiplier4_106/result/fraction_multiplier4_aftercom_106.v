
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n17, n18, n19, n73, n74, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n90) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n92) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n91) );
  GTECH_FJK2S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[0]), .QN(n12) );
  GTECH_FJK2S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n73), .QN(n89) );
  GTECH_FJK2S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[4]), .QN(n14) );
  GTECH_FJK2S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[5]), .QN(n15) );
  GTECH_FJK2S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[6]), .QN(n16) );
  GTECH_FJK2S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[3]), .QN(n17) );
  GTECH_FJK2S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[2]), .QN(n18) );
  GTECH_FJK2S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n73), .Q(Product[1]), .QN(n19) );
  GTECH_ZERO U86 ( .Z(n74) );
  GTECH_ONE U87 ( .Z(n73) );
  GTECH_AND2 U88 ( .A(n93), .B(N57), .Z(N63) );
  GTECH_NOT U89 ( .A(n94), .Z(N58) );
  GTECH_AOI222 U90 ( .A(Mplier[3]), .B(n95), .C(n96), .D(n97), .E(n98), .F(n99), .Z(n94) );
  GTECH_OAI21 U91 ( .A(Mcand[0]), .B(n100), .C(n93), .Z(n98) );
  GTECH_NOR2 U92 ( .A(n100), .B(n12), .Z(n96) );
  GTECH_OAI21 U93 ( .A(n101), .B(n102), .C(n100), .Z(N57) );
  GTECH_OAI2N2 U94 ( .A(n17), .B(n100), .C(Mplier[2]), .D(n95), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n18), .B(n100), .C(Mplier[1]), .D(n95), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n19), .B(n100), .C(Mplier[0]), .D(n95), .Z(N52) );
  GTECH_MUX2 U97 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U98 ( .A(n105), .B(n106), .S(n89), .Z(N48) );
  GTECH_MUX2 U99 ( .A(n107), .B(n108), .S(Mcand[3]), .Z(n106) );
  GTECH_OR_NOT U100 ( .A(n109), .B(n93), .Z(n105) );
  GTECH_MUX2 U101 ( .A(n108), .B(n107), .S(Mcand[3]), .Z(n109) );
  GTECH_OAI2N2 U102 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n107) );
  GTECH_OAI2N2 U103 ( .A(n112), .B(n114), .C(n115), .D(n110), .Z(n108) );
  GTECH_OA21 U104 ( .A(n116), .B(n117), .C(n118), .Z(n110) );
  GTECH_AO21 U105 ( .A(n117), .B(n116), .C(n16), .Z(n118) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n117) );
  GTECH_ADD_ABC U107 ( .A(Mcand[2]), .B(n119), .C(n16), .COUT(n112) );
  GTECH_MUX2 U108 ( .A(n120), .B(n121), .S(n16), .Z(N46) );
  GTECH_NOT U109 ( .A(n122), .Z(n121) );
  GTECH_MUX2 U110 ( .A(n123), .B(n124), .S(Mcand[2]), .Z(n122) );
  GTECH_NAND2 U111 ( .A(n125), .B(n93), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n124), .B(n123), .S(Mcand[2]), .Z(n125) );
  GTECH_AOI2N2 U113 ( .A(n119), .B(n113), .C(n116), .D(n111), .Z(n123) );
  GTECH_AOI2N2 U114 ( .A(n116), .B(n115), .C(n119), .D(n114), .Z(n124) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n97), .C(n15), .COUT(n119) );
  GTECH_OA21 U116 ( .A(n15), .B(n126), .C(n127), .Z(n116) );
  GTECH_OR3 U117 ( .A(n128), .B(n14), .C(n129), .Z(n127) );
  GTECH_NAND2 U118 ( .A(n130), .B(n131), .Z(N44) );
  GTECH_MUX2 U119 ( .A(n132), .B(n133), .S(n15), .Z(n131) );
  GTECH_OR_NOT U120 ( .A(n126), .B(n134), .Z(n133) );
  GTECH_AND_NOT U121 ( .A(n93), .B(n135), .Z(n132) );
  GTECH_MUX2 U122 ( .A(n136), .B(n134), .S(n126), .Z(n135) );
  GTECH_OAI21 U123 ( .A(n97), .B(n114), .C(n137), .Z(n134) );
  GTECH_AO21 U124 ( .A(n99), .B(Mcand[0]), .C(n111), .Z(n137) );
  GTECH_NOT U125 ( .A(n113), .Z(n114) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n99), .Z(n97) );
  GTECH_NOT U127 ( .A(n14), .Z(n99) );
  GTECH_AND_NOT U128 ( .A(n138), .B(n129), .Z(n136) );
  GTECH_NOT U129 ( .A(Mcand[0]), .Z(n129) );
  GTECH_OR_NOT U130 ( .A(n100), .B(n12), .Z(n93) );
  GTECH_NOR2 U131 ( .A(n103), .B(n104), .Z(n100) );
  GTECH_NAND3 U132 ( .A(Mcand[0]), .B(n138), .C(n128), .Z(n130) );
  GTECH_AND2 U133 ( .A(n15), .B(n126), .Z(n128) );
  GTECH_NOT U134 ( .A(Mcand[1]), .Z(n126) );
  GTECH_MUX2 U135 ( .A(n115), .B(n113), .S(n14), .Z(n138) );
  GTECH_NOR2 U136 ( .A(n139), .B(n12), .Z(n113) );
  GTECH_NOT U137 ( .A(n103), .Z(n139) );
  GTECH_NOT U138 ( .A(n111), .Z(n115) );
  GTECH_OR_NOT U139 ( .A(n12), .B(n104), .Z(n111) );
  GTECH_OR_NOT U140 ( .A(n103), .B(n140), .Z(N42) );
  GTECH_NAND3 U141 ( .A(n141), .B(n142), .C(n104), .Z(n140) );
  GTECH_OA21 U142 ( .A(n90), .B(n91), .C(n104), .Z(N41) );
  GTECH_OAI21 U143 ( .A(n101), .B(n102), .C(n143), .Z(N40) );
  GTECH_AOI21 U144 ( .A(n90), .B(n104), .C(n103), .Z(n143) );
  GTECH_NOR3 U145 ( .A(n141), .B(n92), .C(n142), .Z(n103) );
  GTECH_AOI21 U146 ( .A(n90), .B(n91), .C(n144), .Z(n104) );
  GTECH_NOT U147 ( .A(St), .Z(n102) );
  GTECH_NOT U148 ( .A(n95), .Z(n101) );
  GTECH_NOR3 U149 ( .A(n142), .B(n141), .C(n144), .Z(n95) );
  GTECH_NOT U150 ( .A(n92), .Z(n144) );
  GTECH_NOT U151 ( .A(n90), .Z(n141) );
  GTECH_NOR3 U152 ( .A(n90), .B(n92), .C(n142), .Z(Done) );
  GTECH_NOT U153 ( .A(n91), .Z(n142) );
endmodule

