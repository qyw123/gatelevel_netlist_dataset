
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n74, n82, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n82), .Q(State[0]), .QN(n88)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n82), .Q(State[2]), .QN(n12)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n82), .Q(State[1]), .QN(n89)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n87) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n86) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n85) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ONE U84 ( .Z(n82) );
  GTECH_ZERO U85 ( .Z(n74) );
  GTECH_AND_NOT U86 ( .A(N57), .B(n90), .Z(N63) );
  GTECH_NOT U87 ( .A(n91), .Z(N58) );
  GTECH_AOI222 U88 ( .A(Mplier[3]), .B(n92), .C(n93), .D(n94), .E(n95), .F(n96), .Z(n91) );
  GTECH_NOT U89 ( .A(n97), .Z(n95) );
  GTECH_OA21 U90 ( .A(n98), .B(Mcand[0]), .C(n99), .Z(n97) );
  GTECH_NOT U91 ( .A(n90), .Z(n99) );
  GTECH_NOR2 U92 ( .A(n98), .B(n13), .Z(n93) );
  GTECH_AO21 U93 ( .A(St), .B(n92), .C(n100), .Z(N57) );
  GTECH_OAI2N2 U94 ( .A(n15), .B(n98), .C(Mplier[2]), .D(n92), .Z(N56) );
  GTECH_OAI2N2 U95 ( .A(n16), .B(n98), .C(Mplier[1]), .D(n92), .Z(N54) );
  GTECH_OAI2N2 U96 ( .A(n17), .B(n98), .C(Mplier[0]), .D(n92), .Z(N52) );
  GTECH_NOT U97 ( .A(n100), .Z(n98) );
  GTECH_MUX2 U98 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U99 ( .A(n103), .B(n104), .S(n14), .Z(N48) );
  GTECH_MUX2 U100 ( .A(n105), .B(n106), .S(Mcand[3]), .Z(n104) );
  GTECH_OR2 U101 ( .A(n107), .B(n90), .Z(n103) );
  GTECH_MUX2 U102 ( .A(n106), .B(n105), .S(Mcand[3]), .Z(n107) );
  GTECH_OAI2N2 U103 ( .A(n108), .B(n109), .C(n110), .D(n111), .Z(n105) );
  GTECH_OAI2N2 U104 ( .A(n112), .B(n110), .C(n108), .D(n113), .Z(n106) );
  GTECH_ADD_ABC U105 ( .A(n114), .B(n115), .C(n85), .COUT(n108) );
  GTECH_OAI2N2 U106 ( .A(n116), .B(n114), .C(n117), .D(n85), .Z(n110) );
  GTECH_OR_NOT U107 ( .A(Mcand[2]), .B(n116), .Z(n117) );
  GTECH_MUX2 U108 ( .A(n118), .B(n119), .S(n85), .Z(N46) );
  GTECH_MUX2 U109 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_OR2 U110 ( .A(n122), .B(n90), .Z(n118) );
  GTECH_MUX2 U111 ( .A(n120), .B(n121), .S(n114), .Z(n122) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n114) );
  GTECH_OAI2N2 U113 ( .A(n123), .B(n109), .C(n116), .D(n111), .Z(n121) );
  GTECH_OAI22 U114 ( .A(n116), .B(n112), .C(n115), .D(n109), .Z(n120) );
  GTECH_NOT U115 ( .A(n123), .Z(n115) );
  GTECH_ADD_ABC U116 ( .A(Mcand[1]), .B(n124), .C(n125), .COUT(n123) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n87), .Z(n124) );
  GTECH_ADD_ABC U118 ( .A(n126), .B(n127), .C(n125), .COUT(n116) );
  GTECH_OR_NOT U119 ( .A(n96), .B(Mcand[0]), .Z(n126) );
  GTECH_MUX2 U120 ( .A(n128), .B(n129), .S(n125), .Z(N44) );
  GTECH_NOT U121 ( .A(n86), .Z(n125) );
  GTECH_OR2 U122 ( .A(n130), .B(n90), .Z(n129) );
  GTECH_AND2 U123 ( .A(n13), .B(n100), .Z(n90) );
  GTECH_OR2 U124 ( .A(n101), .B(n102), .Z(n100) );
  GTECH_MUX2 U125 ( .A(n131), .B(n132), .S(n127), .Z(n130) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n127) );
  GTECH_MUX2 U127 ( .A(n131), .B(n132), .S(Mcand[1]), .Z(n128) );
  GTECH_OAI22 U128 ( .A(n133), .B(n109), .C(n94), .D(n112), .Z(n132) );
  GTECH_AO22 U129 ( .A(n133), .B(n113), .C(n94), .D(n111), .Z(n131) );
  GTECH_NOT U130 ( .A(n112), .Z(n111) );
  GTECH_OR_NOT U131 ( .A(n13), .B(n101), .Z(n112) );
  GTECH_AND2 U132 ( .A(Mcand[0]), .B(n87), .Z(n94) );
  GTECH_NOT U133 ( .A(n109), .Z(n113) );
  GTECH_OR_NOT U134 ( .A(n13), .B(n102), .Z(n109) );
  GTECH_AND2 U135 ( .A(Mcand[0]), .B(n96), .Z(n133) );
  GTECH_NOT U136 ( .A(n87), .Z(n96) );
  GTECH_OR_NOT U137 ( .A(n101), .B(n134), .Z(N42) );
  GTECH_NAND3 U138 ( .A(n135), .B(n136), .C(n102), .Z(n134) );
  GTECH_OA21 U139 ( .A(n88), .B(n89), .C(n102), .Z(N41) );
  GTECH_AO21 U140 ( .A(St), .B(n92), .C(n137), .Z(N40) );
  GTECH_AO21 U141 ( .A(n102), .B(n88), .C(n101), .Z(n137) );
  GTECH_NOR3 U142 ( .A(n135), .B(n12), .C(n136), .Z(n101) );
  GTECH_NOT U143 ( .A(n88), .Z(n135) );
  GTECH_AOI21 U144 ( .A(n89), .B(n88), .C(n138), .Z(n102) );
  GTECH_NOT U145 ( .A(n12), .Z(n138) );
  GTECH_AND3 U146 ( .A(n89), .B(n88), .C(n12), .Z(n92) );
  GTECH_NOR3 U147 ( .A(n12), .B(n88), .C(n136), .Z(Done) );
  GTECH_NOT U148 ( .A(n89), .Z(n136) );
endmodule

