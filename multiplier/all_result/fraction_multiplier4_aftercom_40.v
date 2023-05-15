
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n74, n75, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n93) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n94) );
  GTECH_FJK2S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[0]), .QN(n13) );
  GTECH_FJK2S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n74), .Q(A_3_), .QN(n14) );
  GTECH_FJK2S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[4]), .QN(n92) );
  GTECH_FJK2S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[5]), .QN(n91) );
  GTECH_FJK2S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[6]), .QN(n90) );
  GTECH_FJK2S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[3]), .QN(n15) );
  GTECH_FJK2S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[2]), .QN(n16) );
  GTECH_FJK2S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n74), .Q(Product[1]), .QN(n17) );
  GTECH_ZERO U89 ( .Z(n75) );
  GTECH_ONE U90 ( .Z(n74) );
  GTECH_AND_NOT U91 ( .A(N57), .B(n95), .Z(N63) );
  GTECH_NOT U92 ( .A(n96), .Z(N58) );
  GTECH_AOI222 U93 ( .A(Mplier[3]), .B(n97), .C(n98), .D(n99), .E(n100), .F(
        n101), .Z(n96) );
  GTECH_NOT U94 ( .A(n102), .Z(n100) );
  GTECH_OA21 U95 ( .A(n103), .B(Mcand[0]), .C(n104), .Z(n102) );
  GTECH_NOT U96 ( .A(n95), .Z(n104) );
  GTECH_NOR2 U97 ( .A(n103), .B(n13), .Z(n98) );
  GTECH_AO21 U98 ( .A(St), .B(n97), .C(n105), .Z(N57) );
  GTECH_OAI2N2 U99 ( .A(n15), .B(n103), .C(Mplier[2]), .D(n97), .Z(N56) );
  GTECH_OAI2N2 U100 ( .A(n16), .B(n103), .C(Mplier[1]), .D(n97), .Z(N54) );
  GTECH_OAI2N2 U101 ( .A(n17), .B(n103), .C(Mplier[0]), .D(n97), .Z(N52) );
  GTECH_NOT U102 ( .A(n105), .Z(n103) );
  GTECH_MUX2 U103 ( .A(n106), .B(n107), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U104 ( .A(n108), .B(n109), .S(n14), .Z(N48) );
  GTECH_MUX2 U105 ( .A(n110), .B(n111), .S(Mcand[3]), .Z(n109) );
  GTECH_OR2 U106 ( .A(n112), .B(n95), .Z(n108) );
  GTECH_MUX2 U107 ( .A(n111), .B(n110), .S(Mcand[3]), .Z(n112) );
  GTECH_OAI2N2 U108 ( .A(n113), .B(n114), .C(n115), .D(n116), .Z(n110) );
  GTECH_OAI2N2 U109 ( .A(n117), .B(n115), .C(n113), .D(n118), .Z(n111) );
  GTECH_ADD_ABC U110 ( .A(n119), .B(n120), .C(n90), .COUT(n113) );
  GTECH_OAI2N2 U111 ( .A(n121), .B(n119), .C(n122), .D(n90), .Z(n115) );
  GTECH_OR_NOT U112 ( .A(Mcand[2]), .B(n121), .Z(n122) );
  GTECH_MUX2 U113 ( .A(n123), .B(n124), .S(n90), .Z(N46) );
  GTECH_MUX2 U114 ( .A(n125), .B(n126), .S(Mcand[2]), .Z(n124) );
  GTECH_OR2 U115 ( .A(n127), .B(n95), .Z(n123) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(n119), .Z(n127) );
  GTECH_NOT U117 ( .A(Mcand[2]), .Z(n119) );
  GTECH_OAI2N2 U118 ( .A(n128), .B(n114), .C(n121), .D(n116), .Z(n126) );
  GTECH_OAI22 U119 ( .A(n121), .B(n117), .C(n120), .D(n114), .Z(n125) );
  GTECH_NOT U120 ( .A(n128), .Z(n120) );
  GTECH_ADD_ABC U121 ( .A(Mcand[1]), .B(n129), .C(n130), .COUT(n128) );
  GTECH_AND_NOT U122 ( .A(Mcand[0]), .B(n92), .Z(n129) );
  GTECH_ADD_ABC U123 ( .A(n131), .B(n132), .C(n130), .COUT(n121) );
  GTECH_OR_NOT U124 ( .A(n101), .B(Mcand[0]), .Z(n131) );
  GTECH_MUX2 U125 ( .A(n133), .B(n134), .S(n130), .Z(N44) );
  GTECH_NOT U126 ( .A(n91), .Z(n130) );
  GTECH_OR2 U127 ( .A(n135), .B(n95), .Z(n134) );
  GTECH_AND2 U128 ( .A(n13), .B(n105), .Z(n95) );
  GTECH_OR2 U129 ( .A(n106), .B(n107), .Z(n105) );
  GTECH_MUX2 U130 ( .A(n136), .B(n137), .S(n132), .Z(n135) );
  GTECH_NOT U131 ( .A(Mcand[1]), .Z(n132) );
  GTECH_MUX2 U132 ( .A(n136), .B(n137), .S(Mcand[1]), .Z(n133) );
  GTECH_OAI22 U133 ( .A(n138), .B(n114), .C(n99), .D(n117), .Z(n137) );
  GTECH_AO22 U134 ( .A(n138), .B(n118), .C(n99), .D(n116), .Z(n136) );
  GTECH_NOT U135 ( .A(n117), .Z(n116) );
  GTECH_OR_NOT U136 ( .A(n13), .B(n106), .Z(n117) );
  GTECH_AND2 U137 ( .A(Mcand[0]), .B(n92), .Z(n99) );
  GTECH_NOT U138 ( .A(n114), .Z(n118) );
  GTECH_OR_NOT U139 ( .A(n13), .B(n107), .Z(n114) );
  GTECH_AND2 U140 ( .A(Mcand[0]), .B(n101), .Z(n138) );
  GTECH_NOT U141 ( .A(n92), .Z(n101) );
  GTECH_OR_NOT U142 ( .A(n106), .B(n139), .Z(N42) );
  GTECH_NAND3 U143 ( .A(n140), .B(n141), .C(n107), .Z(n139) );
  GTECH_OA21 U144 ( .A(n93), .B(n94), .C(n107), .Z(N41) );
  GTECH_AO21 U145 ( .A(St), .B(n97), .C(n142), .Z(N40) );
  GTECH_AO21 U146 ( .A(n107), .B(n93), .C(n106), .Z(n142) );
  GTECH_NOR3 U147 ( .A(n140), .B(n12), .C(n141), .Z(n106) );
  GTECH_NOT U148 ( .A(n93), .Z(n140) );
  GTECH_AOI21 U149 ( .A(n94), .B(n93), .C(n143), .Z(n107) );
  GTECH_NOT U150 ( .A(n12), .Z(n143) );
  GTECH_AND3 U151 ( .A(n94), .B(n93), .C(n12), .Z(n97) );
  GTECH_NOR3 U152 ( .A(n12), .B(n93), .C(n141), .Z(Done) );
  GTECH_NOT U153 ( .A(n94), .Z(n141) );
endmodule

