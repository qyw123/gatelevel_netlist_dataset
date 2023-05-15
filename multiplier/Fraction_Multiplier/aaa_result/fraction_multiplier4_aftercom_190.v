
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n69, n70, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n88) );
  GTECH_FJK2S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[0]), .QN(n87) );
  GTECH_FJK2S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n69), .Q(A_3_), .QN(n14) );
  GTECH_FJK2S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[4]), .QN(n86) );
  GTECH_FJK2S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[5]), .QN(n85) );
  GTECH_FJK2S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[6]), .QN(n15) );
  GTECH_FJK2S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[3]), .QN(n16) );
  GTECH_FJK2S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[2]), .QN(n17) );
  GTECH_FJK2S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n69), .Q(Product[1]), .QN(n18) );
  GTECH_ZERO U83 ( .Z(n70) );
  GTECH_ONE U84 ( .Z(n69) );
  GTECH_AND2 U85 ( .A(n89), .B(N57), .Z(N63) );
  GTECH_NOT U86 ( .A(n90), .Z(N58) );
  GTECH_AOI222 U87 ( .A(Mplier[3]), .B(n91), .C(n92), .D(n93), .E(n94), .F(n95), .Z(n90) );
  GTECH_OAI21 U88 ( .A(Mcand[0]), .B(n96), .C(n89), .Z(n94) );
  GTECH_NOR2 U89 ( .A(n96), .B(n87), .Z(n92) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n96), .Z(N57) );
  GTECH_OAI2N2 U91 ( .A(n16), .B(n96), .C(Mplier[2]), .D(n91), .Z(N56) );
  GTECH_OAI2N2 U92 ( .A(n17), .B(n96), .C(Mplier[1]), .D(n91), .Z(N54) );
  GTECH_OAI2N2 U93 ( .A(n18), .B(n96), .C(Mplier[0]), .D(n91), .Z(N52) );
  GTECH_MUX2 U94 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U95 ( .A(n101), .B(n102), .S(n14), .Z(N48) );
  GTECH_MUX2 U96 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR_NOT U97 ( .A(n105), .B(n89), .Z(n101) );
  GTECH_MUX2 U98 ( .A(n104), .B(n103), .S(Mcand[3]), .Z(n105) );
  GTECH_OAI2N2 U99 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n103) );
  GTECH_OAI2N2 U100 ( .A(n108), .B(n110), .C(n106), .D(n111), .Z(n104) );
  GTECH_OA21 U101 ( .A(n112), .B(n113), .C(n114), .Z(n106) );
  GTECH_AO21 U102 ( .A(n113), .B(n112), .C(n115), .Z(n114) );
  GTECH_NOT U103 ( .A(n15), .Z(n115) );
  GTECH_OAI21 U104 ( .A(n116), .B(n113), .C(n117), .Z(n108) );
  GTECH_AO21 U105 ( .A(n113), .B(n116), .C(n15), .Z(n117) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(n15), .Z(N46) );
  GTECH_NOT U107 ( .A(n120), .Z(n119) );
  GTECH_MUX2 U108 ( .A(n121), .B(n122), .S(n113), .Z(n120) );
  GTECH_NOT U109 ( .A(Mcand[2]), .Z(n113) );
  GTECH_NAND2 U110 ( .A(n123), .B(n89), .Z(n118) );
  GTECH_MUX2 U111 ( .A(n121), .B(n122), .S(Mcand[2]), .Z(n123) );
  GTECH_OA22 U112 ( .A(n116), .B(n110), .C(n112), .D(n107), .Z(n122) );
  GTECH_NOT U113 ( .A(n124), .Z(n116) );
  GTECH_AOI2N2 U114 ( .A(n112), .B(n111), .C(n124), .D(n110), .Z(n121) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n125), .C(n126), .COUT(n124) );
  GTECH_AND_NOT U116 ( .A(Mcand[0]), .B(n86), .Z(n125) );
  GTECH_ADD_ABC U117 ( .A(n127), .B(n128), .C(n126), .COUT(n112) );
  GTECH_NOT U118 ( .A(Mcand[1]), .Z(n128) );
  GTECH_OR_NOT U119 ( .A(n95), .B(Mcand[0]), .Z(n127) );
  GTECH_NOT U120 ( .A(n86), .Z(n95) );
  GTECH_MUX2 U121 ( .A(n129), .B(n130), .S(n126), .Z(N44) );
  GTECH_NOT U122 ( .A(n85), .Z(n126) );
  GTECH_OR_NOT U123 ( .A(n131), .B(n89), .Z(n130) );
  GTECH_OR_NOT U124 ( .A(n96), .B(n87), .Z(n89) );
  GTECH_AND2 U125 ( .A(n132), .B(n133), .Z(n96) );
  GTECH_MUX2 U126 ( .A(n134), .B(n135), .S(Mcand[1]), .Z(n131) );
  GTECH_MUX2 U127 ( .A(n135), .B(n134), .S(Mcand[1]), .Z(n129) );
  GTECH_OA21 U128 ( .A(n111), .B(n136), .C(n137), .Z(n134) );
  GTECH_OAI21 U129 ( .A(n93), .B(n107), .C(n110), .Z(n137) );
  GTECH_NOT U130 ( .A(n111), .Z(n107) );
  GTECH_OAI2N2 U131 ( .A(n136), .B(n110), .C(n93), .D(n111), .Z(n135) );
  GTECH_NOR2 U132 ( .A(n133), .B(n87), .Z(n111) );
  GTECH_AND2 U133 ( .A(Mcand[0]), .B(n86), .Z(n93) );
  GTECH_NOT U134 ( .A(n109), .Z(n110) );
  GTECH_AND_NOT U135 ( .A(n100), .B(n87), .Z(n109) );
  GTECH_OR_NOT U136 ( .A(n86), .B(Mcand[0]), .Z(n136) );
  GTECH_OR_NOT U137 ( .A(n99), .B(n138), .Z(N42) );
  GTECH_OR3 U138 ( .A(n12), .B(n88), .C(n132), .Z(n138) );
  GTECH_OA21 U139 ( .A(n12), .B(n88), .C(n100), .Z(N41) );
  GTECH_OAI21 U140 ( .A(n97), .B(n98), .C(n139), .Z(N40) );
  GTECH_OA21 U141 ( .A(n140), .B(n132), .C(n133), .Z(n139) );
  GTECH_NOT U142 ( .A(n99), .Z(n133) );
  GTECH_AND2 U143 ( .A(n141), .B(n142), .Z(n99) );
  GTECH_NOT U144 ( .A(n100), .Z(n132) );
  GTECH_NOR2 U145 ( .A(n142), .B(n141), .Z(n100) );
  GTECH_NOT U146 ( .A(St), .Z(n98) );
  GTECH_NOT U147 ( .A(n91), .Z(n97) );
  GTECH_AND_NOT U148 ( .A(n141), .B(n142), .Z(n91) );
  GTECH_AND2 U149 ( .A(n88), .B(n12), .Z(n141) );
  GTECH_AND3 U150 ( .A(n140), .B(n142), .C(n88), .Z(Done) );
  GTECH_NOT U151 ( .A(n13), .Z(n142) );
  GTECH_NOT U152 ( .A(n12), .Z(n140) );
endmodule

