
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n70, n71, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n89) );
  GTECH_FJK2S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[0]), .QN(n14) );
  GTECH_FJK2S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .CD(
        n70), .Q(A_3_), .QN(n86) );
  GTECH_FJK2S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[4]), .QN(n15) );
  GTECH_FJK2S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[5]), .QN(n88) );
  GTECH_FJK2S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[6]), .QN(n87) );
  GTECH_FJK2S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[3]) );
  GTECH_FJK2S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[2]) );
  GTECH_FJK2S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .CD(
        n70), .Q(Product[1]) );
  GTECH_ZERO U84 ( .Z(n71) );
  GTECH_ONE U85 ( .Z(n70) );
  GTECH_AND_NOT U86 ( .A(N57), .B(n90), .Z(N63) );
  GTECH_NOT U87 ( .A(n91), .Z(N58) );
  GTECH_AOI222 U88 ( .A(Mplier[3]), .B(n92), .C(n93), .D(n94), .E(n95), .F(n96), .Z(n91) );
  GTECH_OAI21 U89 ( .A(Mcand[0]), .B(n97), .C(n98), .Z(n95) );
  GTECH_AND_NOT U90 ( .A(n99), .B(n14), .Z(n93) );
  GTECH_AO21 U91 ( .A(n92), .B(St), .C(n99), .Z(N57) );
  GTECH_AO22 U92 ( .A(Mplier[2]), .B(n92), .C(n99), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U93 ( .A(Mplier[1]), .B(n92), .C(n99), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U94 ( .A(Mplier[0]), .B(n92), .C(n99), .D(Product[1]), .Z(N52) );
  GTECH_NOT U95 ( .A(n97), .Z(n99) );
  GTECH_MUX2 U96 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U97 ( .A(n102), .B(n103), .S(n86), .Z(N48) );
  GTECH_MUX2 U98 ( .A(n104), .B(n105), .S(Mcand[3]), .Z(n103) );
  GTECH_OR_NOT U99 ( .A(n106), .B(n98), .Z(n102) );
  GTECH_NOT U100 ( .A(n90), .Z(n98) );
  GTECH_MUX2 U101 ( .A(n105), .B(n104), .S(Mcand[3]), .Z(n106) );
  GTECH_AO22 U102 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_OAI22 U103 ( .A(n111), .B(n107), .C(n112), .D(n109), .Z(n105) );
  GTECH_OAI21 U104 ( .A(n113), .B(n114), .C(n115), .Z(n109) );
  GTECH_AO21 U105 ( .A(n114), .B(n113), .C(n87), .Z(n115) );
  GTECH_ADD_ABC U106 ( .A(Mcand[2]), .B(n116), .C(n87), .COUT(n107) );
  GTECH_MUX2 U107 ( .A(n117), .B(n118), .S(n87), .Z(N46) );
  GTECH_NOT U108 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U109 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_OR_NOT U110 ( .A(n90), .B(n122), .Z(n117) );
  GTECH_MUX2 U111 ( .A(n120), .B(n121), .S(n114), .Z(n122) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n114) );
  GTECH_AOI2N2 U113 ( .A(n113), .B(n110), .C(n116), .D(n111), .Z(n121) );
  GTECH_AOI2N2 U114 ( .A(n116), .B(n108), .C(n113), .D(n112), .Z(n120) );
  GTECH_OA21 U115 ( .A(n88), .B(n123), .C(n124), .Z(n113) );
  GTECH_NAND3 U116 ( .A(n125), .B(n96), .C(Mcand[0]), .Z(n124) );
  GTECH_ADD_ABC U117 ( .A(Mcand[1]), .B(n126), .C(n88), .COUT(n116) );
  GTECH_AND_NOT U118 ( .A(Mcand[0]), .B(n96), .Z(n126) );
  GTECH_NOT U119 ( .A(n127), .Z(N44) );
  GTECH_AOI222 U120 ( .A(n90), .B(n128), .C(n129), .D(n130), .E(n131), .F(n132), .Z(n127) );
  GTECH_AND2 U121 ( .A(n125), .B(n133), .Z(n132) );
  GTECH_NAND3 U122 ( .A(n111), .B(n96), .C(Mcand[0]), .Z(n133) );
  GTECH_NAND2 U123 ( .A(n123), .B(n88), .Z(n125) );
  GTECH_OA21 U124 ( .A(n88), .B(n123), .C(n134), .Z(n131) );
  GTECH_OAI21 U125 ( .A(n94), .B(n111), .C(n112), .Z(n134) );
  GTECH_NOT U126 ( .A(n110), .Z(n112) );
  GTECH_NOT U127 ( .A(n108), .Z(n111) );
  GTECH_AND2 U128 ( .A(Mcand[0]), .B(n15), .Z(n94) );
  GTECH_NOT U129 ( .A(Mcand[1]), .Z(n123) );
  GTECH_MUX2 U130 ( .A(n108), .B(n110), .S(n96), .Z(n130) );
  GTECH_NOT U131 ( .A(n15), .Z(n96) );
  GTECH_AND_NOT U132 ( .A(n101), .B(n14), .Z(n110) );
  GTECH_AND_NOT U133 ( .A(n100), .B(n14), .Z(n108) );
  GTECH_AND2 U134 ( .A(Mcand[0]), .B(n135), .Z(n129) );
  GTECH_XNOR2 U135 ( .A(n128), .B(Mcand[1]), .Z(n135) );
  GTECH_NOT U136 ( .A(n88), .Z(n128) );
  GTECH_AND_NOT U137 ( .A(n14), .B(n97), .Z(n90) );
  GTECH_NOR2 U138 ( .A(n100), .B(n101), .Z(n97) );
  GTECH_NAND2 U139 ( .A(n136), .B(n137), .Z(N42) );
  GTECH_OR3 U140 ( .A(n12), .B(n89), .C(n138), .Z(n137) );
  GTECH_NOT U141 ( .A(n101), .Z(n138) );
  GTECH_NOT U142 ( .A(n100), .Z(n136) );
  GTECH_OA21 U143 ( .A(n12), .B(n89), .C(n101), .Z(N41) );
  GTECH_AO21 U144 ( .A(n92), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U145 ( .A(n12), .B(n101), .C(n100), .Z(n139) );
  GTECH_AND_NOT U146 ( .A(n140), .B(n13), .Z(n100) );
  GTECH_AND_NOT U147 ( .A(n13), .B(n140), .Z(n101) );
  GTECH_AND_NOT U148 ( .A(n140), .B(n141), .Z(n92) );
  GTECH_NOT U149 ( .A(n13), .Z(n141) );
  GTECH_AND2 U150 ( .A(n89), .B(n12), .Z(n140) );
  GTECH_NOR3 U151 ( .A(n12), .B(n13), .C(n142), .Z(Done) );
  GTECH_NOT U152 ( .A(n89), .Z(n142) );
endmodule

