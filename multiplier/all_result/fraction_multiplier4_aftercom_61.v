
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n74, n82, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n82), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n82), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n82), .Q(State[1]), .QN(n88)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n87) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n86) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n85) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ONE U83 ( .Z(n82) );
  GTECH_ZERO U84 ( .Z(n74) );
  GTECH_AND2 U85 ( .A(N57), .B(n89), .Z(N63) );
  GTECH_NOT U86 ( .A(n90), .Z(N58) );
  GTECH_AOI222 U87 ( .A(Mplier[3]), .B(n91), .C(n92), .D(n93), .E(n94), .F(n95), .Z(n90) );
  GTECH_OAI21 U88 ( .A(Mcand[0]), .B(n96), .C(n89), .Z(n94) );
  GTECH_NOR2 U89 ( .A(n96), .B(n87), .Z(n92) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n96), .Z(N57) );
  GTECH_OAI2N2 U91 ( .A(n16), .B(n96), .C(Mplier[2]), .D(n91), .Z(N56) );
  GTECH_OAI2N2 U92 ( .A(n17), .B(n96), .C(Mplier[1]), .D(n91), .Z(N54) );
  GTECH_OAI2N2 U93 ( .A(n18), .B(n96), .C(Mplier[0]), .D(n91), .Z(N52) );
  GTECH_NOT U94 ( .A(n97), .Z(n91) );
  GTECH_MUX2 U95 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U96 ( .A(n101), .B(n102), .S(n14), .Z(N48) );
  GTECH_MUX2 U97 ( .A(n103), .B(n104), .S(n105), .Z(n102) );
  GTECH_NOT U98 ( .A(Mcand[3]), .Z(n105) );
  GTECH_OR_NOT U99 ( .A(n106), .B(n89), .Z(n101) );
  GTECH_MUX2 U100 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n106) );
  GTECH_OAI22 U101 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_AO22 U102 ( .A(n111), .B(n107), .C(n112), .D(n109), .Z(n103) );
  GTECH_OA21 U103 ( .A(n113), .B(n114), .C(n115), .Z(n109) );
  GTECH_OAI21 U104 ( .A(Mcand[2]), .B(n116), .C(n15), .Z(n115) );
  GTECH_AOI21 U105 ( .A(n117), .B(Mcand[2]), .C(n118), .Z(n107) );
  GTECH_OA21 U106 ( .A(Mcand[2]), .B(n117), .C(n119), .Z(n118) );
  GTECH_NOT U107 ( .A(n15), .Z(n119) );
  GTECH_MUX2 U108 ( .A(n120), .B(n121), .S(n15), .Z(N46) );
  GTECH_NOT U109 ( .A(n122), .Z(n121) );
  GTECH_MUX2 U110 ( .A(n123), .B(n124), .S(n114), .Z(n122) );
  GTECH_NOT U111 ( .A(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U112 ( .A(n125), .B(n89), .Z(n120) );
  GTECH_MUX2 U113 ( .A(n123), .B(n124), .S(Mcand[2]), .Z(n125) );
  GTECH_AOI2N2 U114 ( .A(n117), .B(n111), .C(n113), .D(n110), .Z(n124) );
  GTECH_OA22 U115 ( .A(n116), .B(n110), .C(n117), .D(n108), .Z(n123) );
  GTECH_ADD_ABC U116 ( .A(Mcand[1]), .B(n126), .C(n127), .COUT(n117) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n86), .Z(n126) );
  GTECH_NOT U118 ( .A(n113), .Z(n116) );
  GTECH_ADD_ABC U119 ( .A(n128), .B(n129), .C(n127), .COUT(n113) );
  GTECH_OR_NOT U120 ( .A(n95), .B(Mcand[0]), .Z(n128) );
  GTECH_NOT U121 ( .A(n86), .Z(n95) );
  GTECH_MUX2 U122 ( .A(n130), .B(n131), .S(n127), .Z(N44) );
  GTECH_NOT U123 ( .A(n85), .Z(n127) );
  GTECH_OR_NOT U124 ( .A(n132), .B(n89), .Z(n131) );
  GTECH_OR_NOT U125 ( .A(n96), .B(n87), .Z(n89) );
  GTECH_NOR2 U126 ( .A(n99), .B(n100), .Z(n96) );
  GTECH_MUX2 U127 ( .A(n133), .B(n134), .S(n129), .Z(n132) );
  GTECH_NOT U128 ( .A(Mcand[1]), .Z(n129) );
  GTECH_MUX2 U129 ( .A(n133), .B(n134), .S(Mcand[1]), .Z(n130) );
  GTECH_OAI2N2 U130 ( .A(n93), .B(n110), .C(n135), .D(n111), .Z(n134) );
  GTECH_NOT U131 ( .A(n108), .Z(n111) );
  GTECH_NOT U132 ( .A(n112), .Z(n110) );
  GTECH_OAI2N2 U133 ( .A(n135), .B(n108), .C(n93), .D(n112), .Z(n133) );
  GTECH_NOR2 U134 ( .A(n136), .B(n87), .Z(n112) );
  GTECH_NOT U135 ( .A(n99), .Z(n136) );
  GTECH_AND2 U136 ( .A(Mcand[0]), .B(n86), .Z(n93) );
  GTECH_OR_NOT U137 ( .A(n87), .B(n100), .Z(n108) );
  GTECH_OR_NOT U138 ( .A(n86), .B(Mcand[0]), .Z(n135) );
  GTECH_OR_NOT U139 ( .A(n99), .B(n137), .Z(N42) );
  GTECH_NAND3 U140 ( .A(n138), .B(n139), .C(n100), .Z(n137) );
  GTECH_OA21 U141 ( .A(n12), .B(n88), .C(n100), .Z(N41) );
  GTECH_OAI21 U142 ( .A(n97), .B(n98), .C(n140), .Z(N40) );
  GTECH_AOI21 U143 ( .A(n12), .B(n100), .C(n99), .Z(n140) );
  GTECH_NOR3 U144 ( .A(n138), .B(n13), .C(n139), .Z(n99) );
  GTECH_OA21 U145 ( .A(n138), .B(n139), .C(n13), .Z(n100) );
  GTECH_NOT U146 ( .A(n12), .Z(n138) );
  GTECH_NOT U147 ( .A(St), .Z(n98) );
  GTECH_NAND3 U148 ( .A(n88), .B(n12), .C(n13), .Z(n97) );
  GTECH_NOR3 U149 ( .A(n12), .B(n13), .C(n139), .Z(Done) );
  GTECH_NOT U150 ( .A(n88), .Z(n139) );
endmodule

