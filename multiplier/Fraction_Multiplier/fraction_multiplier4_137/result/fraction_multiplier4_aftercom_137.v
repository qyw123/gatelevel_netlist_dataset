
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n70, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U78 ( .Z(n70) );
  GTECH_AND2 U79 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_AND_NOT U83 ( .A(n92), .B(n12), .Z(n87) );
  GTECH_AO21 U84 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_NOT U85 ( .A(n91), .Z(n92) );
  GTECH_OAI2N2 U86 ( .A(n14), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n15), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n16), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_OAI2N2 U89 ( .A(n93), .B(n94), .C(n94), .D(n95), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n96), .B(n97), .C(n98), .Z(N48) );
  GTECH_AO21 U91 ( .A(n84), .B(n99), .C(n13), .Z(n98) );
  GTECH_AOI2N2 U92 ( .A(n100), .B(Mcand[3]), .C(Mcand[3]), .D(n101), .Z(n99)
         );
  GTECH_NOT U93 ( .A(n13), .Z(n97) );
  GTECH_OA22 U94 ( .A(Mcand[3]), .B(n102), .C(n101), .D(n94), .Z(n96) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n94) );
  GTECH_AOI2N2 U96 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_NOT U97 ( .A(n100), .Z(n102) );
  GTECH_OAI2N2 U98 ( .A(n107), .B(n103), .C(n105), .D(n108), .Z(n100) );
  GTECH_ADD_ABC U99 ( .A(n109), .B(Mcand[2]), .C(n78), .COUT(n105) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n110), .C(n111), .Z(n103) );
  GTECH_OAI21 U101 ( .A(n112), .B(n113), .C(n78), .Z(n111) );
  GTECH_OAI21 U102 ( .A(n114), .B(n115), .C(n116), .Z(N46) );
  GTECH_AO21 U103 ( .A(n84), .B(n117), .C(n78), .Z(n116) );
  GTECH_AOI2N2 U104 ( .A(n113), .B(n118), .C(n119), .D(n113), .Z(n117) );
  GTECH_NOT U105 ( .A(Mcand[2]), .Z(n113) );
  GTECH_NOT U106 ( .A(n120), .Z(n84) );
  GTECH_AOI2N2 U107 ( .A(n118), .B(Mcand[2]), .C(Mcand[2]), .D(n119), .Z(n115)
         );
  GTECH_AOI22 U108 ( .A(n109), .B(n108), .C(n110), .D(n104), .Z(n119) );
  GTECH_OAI2N2 U109 ( .A(n109), .B(n106), .C(n112), .D(n104), .Z(n118) );
  GTECH_NOT U110 ( .A(n110), .Z(n112) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n121), .C(n122), .COUT(n110) );
  GTECH_AND2 U112 ( .A(Mcand[0]), .B(n90), .Z(n121) );
  GTECH_AOI21 U113 ( .A(n123), .B(n124), .C(n125), .Z(n109) );
  GTECH_NOT U114 ( .A(n78), .Z(n114) );
  GTECH_OR_NOT U115 ( .A(n126), .B(n127), .Z(N44) );
  GTECH_OA22 U116 ( .A(n80), .B(n128), .C(n122), .D(n129), .Z(n127) );
  GTECH_OR_NOT U117 ( .A(Mcand[1]), .B(n130), .Z(n129) );
  GTECH_AOI21 U118 ( .A(Mcand[1]), .B(n130), .C(n120), .Z(n128) );
  GTECH_AND_NOT U119 ( .A(n12), .B(n91), .Z(n120) );
  GTECH_AND_NOT U120 ( .A(n131), .B(n132), .Z(n91) );
  GTECH_OAI22 U121 ( .A(n133), .B(n107), .C(n123), .D(n106), .Z(n130) );
  GTECH_NOT U122 ( .A(n88), .Z(n123) );
  GTECH_AOI222 U123 ( .A(n124), .B(n134), .C(n135), .D(n106), .E(n88), .F(n107), .Z(n126) );
  GTECH_NOT U124 ( .A(n104), .Z(n107) );
  GTECH_AND2 U125 ( .A(Mcand[0]), .B(n79), .Z(n88) );
  GTECH_NOT U126 ( .A(n108), .Z(n106) );
  GTECH_AND_NOT U127 ( .A(n95), .B(n12), .Z(n108) );
  GTECH_NAND2 U128 ( .A(n104), .B(n133), .Z(n135) );
  GTECH_NAND2 U129 ( .A(n90), .B(Mcand[0]), .Z(n133) );
  GTECH_NOT U130 ( .A(n79), .Z(n90) );
  GTECH_AND_NOT U131 ( .A(n132), .B(n12), .Z(n104) );
  GTECH_NOT U132 ( .A(n125), .Z(n134) );
  GTECH_AND_NOT U133 ( .A(n122), .B(Mcand[1]), .Z(n125) );
  GTECH_NOT U134 ( .A(n80), .Z(n122) );
  GTECH_NAND2 U135 ( .A(n80), .B(Mcand[1]), .Z(n124) );
  GTECH_NAND2 U136 ( .A(n131), .B(n136), .Z(N42) );
  GTECH_NAND3 U137 ( .A(n137), .B(n138), .C(n132), .Z(n136) );
  GTECH_NOT U138 ( .A(n95), .Z(n131) );
  GTECH_AOI21 U139 ( .A(n138), .B(n137), .C(n93), .Z(N41) );
  GTECH_NOT U140 ( .A(n132), .Z(n93) );
  GTECH_NOT U141 ( .A(n81), .Z(n137) );
  GTECH_AO21 U142 ( .A(n86), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U143 ( .A(n132), .B(n81), .C(n95), .Z(n139) );
  GTECH_AND_NOT U144 ( .A(n140), .B(n82), .Z(n95) );
  GTECH_AND_NOT U145 ( .A(n82), .B(n140), .Z(n132) );
  GTECH_AND2 U146 ( .A(n82), .B(n140), .Z(n86) );
  GTECH_AND2 U147 ( .A(n83), .B(n81), .Z(n140) );
  GTECH_NOR3 U148 ( .A(n81), .B(n82), .C(n138), .Z(Done) );
  GTECH_NOT U149 ( .A(n83), .Z(n138) );
endmodule

