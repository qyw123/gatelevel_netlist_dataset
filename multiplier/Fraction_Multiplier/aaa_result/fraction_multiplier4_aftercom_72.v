
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n75, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n84) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U80 ( .Z(n75) );
  GTECH_AND_NOT U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n93), .C(n94), .Z(n91) );
  GTECH_NOR2 U85 ( .A(n93), .B(n14), .Z(n89) );
  GTECH_OAI21 U86 ( .A(n95), .B(n96), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(n15), .Z(N48) );
  GTECH_NOT U92 ( .A(n101), .Z(n100) );
  GTECH_MUX2 U93 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_NAND2 U94 ( .A(n104), .B(n94), .Z(n99) );
  GTECH_MUX2 U95 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_AOI2N2 U96 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_AOI2N2 U97 ( .A(n109), .B(n107), .C(n105), .D(n110), .Z(n103) );
  GTECH_ADD_ABC U98 ( .A(Mcand[2]), .B(n111), .C(n16), .COUT(n105) );
  GTECH_AOI21 U99 ( .A(n112), .B(Mcand[2]), .C(n113), .Z(n107) );
  GTECH_OA21 U100 ( .A(Mcand[2]), .B(n112), .C(n114), .Z(n113) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(n114), .Z(N46) );
  GTECH_NOT U102 ( .A(n16), .Z(n114) );
  GTECH_NAND2 U103 ( .A(n117), .B(n94), .Z(n116) );
  GTECH_NOT U104 ( .A(n86), .Z(n94) );
  GTECH_MUX2 U105 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n117) );
  GTECH_NOT U106 ( .A(n120), .Z(n115) );
  GTECH_MUX2 U107 ( .A(n119), .B(n118), .S(Mcand[2]), .Z(n120) );
  GTECH_OA22 U108 ( .A(n111), .B(n110), .C(n112), .D(n108), .Z(n118) );
  GTECH_AOI22 U109 ( .A(n111), .B(n106), .C(n112), .D(n109), .Z(n119) );
  GTECH_AO22 U110 ( .A(n121), .B(Mcand[1]), .C(Mcand[0]), .D(n122), .Z(n112)
         );
  GTECH_OA21 U111 ( .A(Mcand[1]), .B(n121), .C(n92), .Z(n122) );
  GTECH_ADD_ABC U112 ( .A(Mcand[1]), .B(n123), .C(n83), .COUT(n111) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n92), .Z(n123) );
  GTECH_NOT U114 ( .A(n124), .Z(N44) );
  GTECH_AOI222 U115 ( .A(n86), .B(n121), .C(n125), .D(n126), .E(n127), .F(n128), .Z(n124) );
  GTECH_XOR2 U116 ( .A(Mcand[1]), .B(n121), .Z(n128) );
  GTECH_AND2 U117 ( .A(n129), .B(n130), .Z(n127) );
  GTECH_NAND3 U118 ( .A(n110), .B(n92), .C(Mcand[0]), .Z(n130) );
  GTECH_OAI21 U119 ( .A(n90), .B(n110), .C(n108), .Z(n129) );
  GTECH_NOT U120 ( .A(n109), .Z(n108) );
  GTECH_NOT U121 ( .A(n106), .Z(n110) );
  GTECH_AND2 U122 ( .A(Mcand[0]), .B(n84), .Z(n90) );
  GTECH_MUX2 U123 ( .A(n106), .B(n109), .S(n92), .Z(n126) );
  GTECH_NOT U124 ( .A(n84), .Z(n92) );
  GTECH_AND_NOT U125 ( .A(n98), .B(n14), .Z(n109) );
  GTECH_AND_NOT U126 ( .A(n97), .B(n14), .Z(n106) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n131), .Z(n125) );
  GTECH_XNOR2 U128 ( .A(n121), .B(Mcand[1]), .Z(n131) );
  GTECH_NOT U129 ( .A(n83), .Z(n121) );
  GTECH_AND_NOT U130 ( .A(n14), .B(n93), .Z(n86) );
  GTECH_AND_NOT U131 ( .A(n132), .B(n98), .Z(n93) );
  GTECH_NAND2 U132 ( .A(n133), .B(n132), .Z(N42) );
  GTECH_NOT U133 ( .A(n97), .Z(n132) );
  GTECH_NAND3 U134 ( .A(n134), .B(n135), .C(n98), .Z(n133) );
  GTECH_NOT U135 ( .A(n12), .Z(n134) );
  GTECH_OA21 U136 ( .A(n12), .B(n85), .C(n98), .Z(N41) );
  GTECH_OAI21 U137 ( .A(n95), .B(n96), .C(n136), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n12), .B(n98), .C(n97), .Z(n136) );
  GTECH_AND_NOT U139 ( .A(n137), .B(n138), .Z(n97) );
  GTECH_AND_NOT U140 ( .A(n138), .B(n137), .Z(n98) );
  GTECH_NOT U141 ( .A(n13), .Z(n137) );
  GTECH_NOT U142 ( .A(St), .Z(n96) );
  GTECH_NOT U143 ( .A(n88), .Z(n95) );
  GTECH_AND_NOT U144 ( .A(n13), .B(n138), .Z(n88) );
  GTECH_NAND2 U145 ( .A(n12), .B(n85), .Z(n138) );
  GTECH_NOR3 U146 ( .A(n12), .B(n13), .C(n135), .Z(Done) );
  GTECH_NOT U147 ( .A(n85), .Z(n135) );
endmodule

