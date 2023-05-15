
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n70, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n80) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U77 ( .Z(n70) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n90), .C(n91), .Z(n88) );
  GTECH_NOT U82 ( .A(n83), .Z(n91) );
  GTECH_AND_NOT U83 ( .A(n92), .B(n90), .Z(n86) );
  GTECH_AO21 U84 ( .A(n85), .B(St), .C(n93), .Z(N57) );
  GTECH_NOT U85 ( .A(n90), .Z(n93) );
  GTECH_OAI2N2 U86 ( .A(n15), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_OAI2N2 U89 ( .A(n94), .B(n95), .C(n95), .D(n96), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n97), .B(n98), .C(n99), .Z(N48) );
  GTECH_OAI21 U91 ( .A(n83), .B(n100), .C(n98), .Z(n99) );
  GTECH_AO22 U92 ( .A(n95), .B(n101), .C(n102), .D(Mcand[3]), .Z(n100) );
  GTECH_NOT U93 ( .A(n13), .Z(n98) );
  GTECH_AOI22 U94 ( .A(n95), .B(n102), .C(n101), .D(Mcand[3]), .Z(n97) );
  GTECH_AO22 U95 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_OAI22 U96 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n102) );
  GTECH_OA21 U97 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_AO21 U98 ( .A(n110), .B(n109), .C(n112), .Z(n111) );
  GTECH_OA21 U99 ( .A(n113), .B(n110), .C(n114), .Z(n103) );
  GTECH_AO21 U100 ( .A(n110), .B(n113), .C(n14), .Z(n114) );
  GTECH_NOT U101 ( .A(Mcand[3]), .Z(n95) );
  GTECH_OAI21 U102 ( .A(n112), .B(n115), .C(n116), .Z(N46) );
  GTECH_OAI21 U103 ( .A(n83), .B(n117), .C(n112), .Z(n116) );
  GTECH_AO22 U104 ( .A(n110), .B(n118), .C(n119), .D(Mcand[2]), .Z(n117) );
  GTECH_AOI22 U105 ( .A(n110), .B(n119), .C(n118), .D(Mcand[2]), .Z(n115) );
  GTECH_OAI2N2 U106 ( .A(n120), .B(n107), .C(n109), .D(n106), .Z(n118) );
  GTECH_NOT U107 ( .A(n121), .Z(n109) );
  GTECH_OAI2N2 U108 ( .A(n113), .B(n107), .C(n121), .D(n106), .Z(n119) );
  GTECH_ADD_ABC U109 ( .A(n122), .B(Mcand[1]), .C(n78), .COUT(n121) );
  GTECH_AND_NOT U110 ( .A(Mcand[0]), .B(n89), .Z(n122) );
  GTECH_NOT U111 ( .A(n79), .Z(n89) );
  GTECH_NOT U112 ( .A(n120), .Z(n113) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n123), .C(n124), .COUT(n120) );
  GTECH_AND_NOT U114 ( .A(Mcand[0]), .B(n79), .Z(n123) );
  GTECH_NOT U115 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NOT U116 ( .A(n14), .Z(n112) );
  GTECH_OAI21 U117 ( .A(n124), .B(n125), .C(n126), .Z(N44) );
  GTECH_OAI21 U118 ( .A(n83), .B(n127), .C(n124), .Z(n126) );
  GTECH_AO22 U119 ( .A(n128), .B(Mcand[1]), .C(n129), .D(n130), .Z(n127) );
  GTECH_AND_NOT U120 ( .A(n12), .B(n90), .Z(n83) );
  GTECH_AND_NOT U121 ( .A(n94), .B(n96), .Z(n90) );
  GTECH_AOI22 U122 ( .A(Mcand[1]), .B(n130), .C(n129), .D(n128), .Z(n125) );
  GTECH_OAI2N2 U123 ( .A(n131), .B(n107), .C(n87), .D(n106), .Z(n128) );
  GTECH_NOT U124 ( .A(Mcand[1]), .Z(n129) );
  GTECH_OA21 U125 ( .A(n106), .B(n131), .C(n132), .Z(n130) );
  GTECH_OAI21 U126 ( .A(n87), .B(n108), .C(n107), .Z(n132) );
  GTECH_NOT U127 ( .A(n104), .Z(n107) );
  GTECH_AND_NOT U128 ( .A(n133), .B(n12), .Z(n104) );
  GTECH_NOT U129 ( .A(n106), .Z(n108) );
  GTECH_AND2 U130 ( .A(n79), .B(Mcand[0]), .Z(n87) );
  GTECH_OR_NOT U131 ( .A(n79), .B(Mcand[0]), .Z(n131) );
  GTECH_AND_NOT U132 ( .A(n92), .B(n134), .Z(n106) );
  GTECH_NOT U133 ( .A(n96), .Z(n134) );
  GTECH_NOT U134 ( .A(n12), .Z(n92) );
  GTECH_NOT U135 ( .A(n78), .Z(n124) );
  GTECH_OR_NOT U136 ( .A(n96), .B(n135), .Z(N42) );
  GTECH_OR3 U137 ( .A(n80), .B(n81), .C(n94), .Z(n135) );
  GTECH_NOT U138 ( .A(n133), .Z(n94) );
  GTECH_OA21 U139 ( .A(n80), .B(n81), .C(n133), .Z(N41) );
  GTECH_AO21 U140 ( .A(n85), .B(St), .C(n136), .Z(N40) );
  GTECH_AO21 U141 ( .A(n80), .B(n133), .C(n96), .Z(n136) );
  GTECH_AND2 U142 ( .A(n137), .B(n138), .Z(n96) );
  GTECH_AND_NOT U143 ( .A(n82), .B(n137), .Z(n133) );
  GTECH_AND2 U144 ( .A(n137), .B(n82), .Z(n85) );
  GTECH_AND_NOT U145 ( .A(n81), .B(n139), .Z(n137) );
  GTECH_AND3 U146 ( .A(n139), .B(n138), .C(n81), .Z(Done) );
  GTECH_NOT U147 ( .A(n82), .Z(n138) );
  GTECH_NOT U148 ( .A(n80), .Z(n139) );
endmodule

