
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n70, n78, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n78), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n78), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n78), .Q(State[1]), .QN(n84)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n83) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ONE U79 ( .Z(n78) );
  GTECH_ZERO U80 ( .Z(n70) );
  GTECH_AND_NOT U81 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U82 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n92), .C(n93), .Z(n90) );
  GTECH_NOT U85 ( .A(n85), .Z(n93) );
  GTECH_AND_NOT U86 ( .A(n94), .B(n83), .Z(n88) );
  GTECH_AO21 U87 ( .A(n87), .B(St), .C(n94), .Z(N57) );
  GTECH_NOT U88 ( .A(n92), .Z(n94) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n18), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_OAI2N2 U92 ( .A(n95), .B(n96), .C(n96), .D(n97), .Z(N50) );
  GTECH_OAI21 U93 ( .A(n98), .B(n99), .C(n100), .Z(N48) );
  GTECH_OAI21 U94 ( .A(n85), .B(n101), .C(n99), .Z(n100) );
  GTECH_AO22 U95 ( .A(n96), .B(n102), .C(n103), .D(Mcand[3]), .Z(n101) );
  GTECH_NOT U96 ( .A(n14), .Z(n99) );
  GTECH_AOI22 U97 ( .A(n96), .B(n103), .C(n102), .D(Mcand[3]), .Z(n98) );
  GTECH_AO22 U98 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n102) );
  GTECH_OAI22 U99 ( .A(n104), .B(n108), .C(n106), .D(n109), .Z(n103) );
  GTECH_OA21 U100 ( .A(n110), .B(n111), .C(n112), .Z(n106) );
  GTECH_AO21 U101 ( .A(n111), .B(n110), .C(n113), .Z(n112) );
  GTECH_OA21 U102 ( .A(n114), .B(n111), .C(n115), .Z(n104) );
  GTECH_AO21 U103 ( .A(n111), .B(n114), .C(n15), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[3]), .Z(n96) );
  GTECH_OAI21 U105 ( .A(n113), .B(n116), .C(n117), .Z(N46) );
  GTECH_OAI21 U106 ( .A(n85), .B(n118), .C(n113), .Z(n117) );
  GTECH_AO22 U107 ( .A(n111), .B(n119), .C(n120), .D(Mcand[2]), .Z(n118) );
  GTECH_AOI22 U108 ( .A(n111), .B(n120), .C(n119), .D(Mcand[2]), .Z(n116) );
  GTECH_OAI2N2 U109 ( .A(n121), .B(n108), .C(n110), .D(n107), .Z(n119) );
  GTECH_NOT U110 ( .A(n122), .Z(n110) );
  GTECH_OAI2N2 U111 ( .A(n114), .B(n108), .C(n122), .D(n107), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(n123), .B(Mcand[1]), .C(n81), .COUT(n122) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n91), .Z(n123) );
  GTECH_NOT U114 ( .A(n82), .Z(n91) );
  GTECH_NOT U115 ( .A(n121), .Z(n114) );
  GTECH_ADD_ABC U116 ( .A(Mcand[1]), .B(n124), .C(n125), .COUT(n121) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n82), .Z(n124) );
  GTECH_NOT U118 ( .A(Mcand[2]), .Z(n111) );
  GTECH_NOT U119 ( .A(n15), .Z(n113) );
  GTECH_OAI21 U120 ( .A(n125), .B(n126), .C(n127), .Z(N44) );
  GTECH_OAI21 U121 ( .A(n85), .B(n128), .C(n125), .Z(n127) );
  GTECH_AO22 U122 ( .A(n129), .B(Mcand[1]), .C(n130), .D(n131), .Z(n128) );
  GTECH_AND_NOT U123 ( .A(n83), .B(n92), .Z(n85) );
  GTECH_AND_NOT U124 ( .A(n95), .B(n97), .Z(n92) );
  GTECH_AOI22 U125 ( .A(Mcand[1]), .B(n131), .C(n130), .D(n129), .Z(n126) );
  GTECH_OAI2N2 U126 ( .A(n132), .B(n108), .C(n89), .D(n107), .Z(n129) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n130) );
  GTECH_OA21 U128 ( .A(n107), .B(n132), .C(n133), .Z(n131) );
  GTECH_OAI21 U129 ( .A(n89), .B(n109), .C(n108), .Z(n133) );
  GTECH_NOT U130 ( .A(n105), .Z(n108) );
  GTECH_AND_NOT U131 ( .A(n134), .B(n83), .Z(n105) );
  GTECH_NOT U132 ( .A(n107), .Z(n109) );
  GTECH_AND2 U133 ( .A(Mcand[0]), .B(n82), .Z(n89) );
  GTECH_OR_NOT U134 ( .A(n82), .B(Mcand[0]), .Z(n132) );
  GTECH_AND_NOT U135 ( .A(n97), .B(n83), .Z(n107) );
  GTECH_NOT U136 ( .A(n81), .Z(n125) );
  GTECH_OR_NOT U137 ( .A(n97), .B(n135), .Z(N42) );
  GTECH_OR3 U138 ( .A(n12), .B(n84), .C(n95), .Z(n135) );
  GTECH_AOI21 U139 ( .A(n136), .B(n137), .C(n95), .Z(N41) );
  GTECH_NOT U140 ( .A(n134), .Z(n95) );
  GTECH_AO21 U141 ( .A(n87), .B(St), .C(n138), .Z(N40) );
  GTECH_AO21 U142 ( .A(n12), .B(n134), .C(n97), .Z(n138) );
  GTECH_AND3 U143 ( .A(n12), .B(n139), .C(n84), .Z(n97) );
  GTECH_NOT U144 ( .A(n13), .Z(n139) );
  GTECH_OA21 U145 ( .A(n136), .B(n137), .C(n13), .Z(n134) );
  GTECH_NOT U146 ( .A(n12), .Z(n136) );
  GTECH_AND3 U147 ( .A(n84), .B(n12), .C(n13), .Z(n87) );
  GTECH_NOR3 U148 ( .A(n12), .B(n13), .C(n137), .Z(Done) );
  GTECH_NOT U149 ( .A(n84), .Z(n137) );
endmodule

