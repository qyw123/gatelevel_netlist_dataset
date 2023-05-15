
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n70, n78, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n78), .Q(State[0]), .QN(n84)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n78), .Q(State[2]), .QN(n85)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n78), .Q(State[1]), .QN(n86)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ONE U81 ( .Z(n78) );
  GTECH_ZERO U82 ( .Z(n70) );
  GTECH_AND_NOT U83 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_NOT U84 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_OAI21 U86 ( .A(Mcand[0]), .B(n94), .C(n95), .Z(n92) );
  GTECH_NOR2 U87 ( .A(n94), .B(n12), .Z(n90) );
  GTECH_AO21 U88 ( .A(n89), .B(St), .C(n96), .Z(N57) );
  GTECH_OAI2N2 U89 ( .A(n14), .B(n94), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n15), .B(n94), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n16), .B(n94), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(n13), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(n103), .Z(n100) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n103) );
  GTECH_OR_NOT U96 ( .A(n104), .B(n95), .Z(n99) );
  GTECH_NOT U97 ( .A(n87), .Z(n95) );
  GTECH_MUX2 U98 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI2N2 U99 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_OAI2N2 U100 ( .A(n107), .B(n109), .C(n106), .D(n110), .Z(n101) );
  GTECH_OAI21 U101 ( .A(Mcand[2]), .B(n111), .C(n112), .Z(n106) );
  GTECH_AO21 U102 ( .A(n111), .B(Mcand[2]), .C(n113), .Z(n112) );
  GTECH_NOT U103 ( .A(n81), .Z(n113) );
  GTECH_ADD_ABC U104 ( .A(n114), .B(Mcand[2]), .C(n81), .COUT(n107) );
  GTECH_AOI21 U105 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n118), .B(n119), .S(n81), .Z(N46) );
  GTECH_NOT U107 ( .A(n120), .Z(n119) );
  GTECH_MUX2 U108 ( .A(n121), .B(n122), .S(Mcand[2]), .Z(n120) );
  GTECH_OR_NOT U109 ( .A(n87), .B(n123), .Z(n118) );
  GTECH_MUX2 U110 ( .A(n122), .B(n121), .S(Mcand[2]), .Z(n123) );
  GTECH_AOI2N2 U111 ( .A(n111), .B(n110), .C(n124), .D(n109), .Z(n121) );
  GTECH_AOI2N2 U112 ( .A(n124), .B(n108), .C(n111), .D(n105), .Z(n122) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n125), .C(n126), .COUT(n111) );
  GTECH_AND_NOT U114 ( .A(Mcand[0]), .B(n82), .Z(n125) );
  GTECH_AO21 U115 ( .A(n116), .B(n115), .C(n117), .Z(n124) );
  GTECH_NOT U116 ( .A(n91), .Z(n116) );
  GTECH_OR_NOT U117 ( .A(n127), .B(n128), .Z(N44) );
  GTECH_MUX2 U118 ( .A(n129), .B(n130), .S(n126), .Z(n128) );
  GTECH_AOI21 U119 ( .A(Mcand[1]), .B(n131), .C(n87), .Z(n130) );
  GTECH_AND2 U120 ( .A(n12), .B(n96), .Z(n87) );
  GTECH_NOT U121 ( .A(n94), .Z(n96) );
  GTECH_NOR2 U122 ( .A(n98), .B(n97), .Z(n94) );
  GTECH_OR_NOT U123 ( .A(Mcand[1]), .B(n131), .Z(n129) );
  GTECH_OAI2N2 U124 ( .A(n132), .B(n105), .C(n91), .D(n108), .Z(n131) );
  GTECH_NOT U125 ( .A(n109), .Z(n108) );
  GTECH_AOI222 U126 ( .A(n115), .B(n133), .C(n134), .D(n109), .E(n91), .F(n105), .Z(n127) );
  GTECH_AND_NOT U127 ( .A(Mcand[0]), .B(n93), .Z(n91) );
  GTECH_NOT U128 ( .A(n82), .Z(n93) );
  GTECH_OR_NOT U129 ( .A(n12), .B(n97), .Z(n109) );
  GTECH_OR_NOT U130 ( .A(n105), .B(n132), .Z(n134) );
  GTECH_OR_NOT U131 ( .A(n82), .B(Mcand[0]), .Z(n132) );
  GTECH_NOT U132 ( .A(n110), .Z(n105) );
  GTECH_NOR2 U133 ( .A(n135), .B(n12), .Z(n110) );
  GTECH_NOT U134 ( .A(n117), .Z(n133) );
  GTECH_NOR2 U135 ( .A(n83), .B(Mcand[1]), .Z(n117) );
  GTECH_OR_NOT U136 ( .A(n126), .B(Mcand[1]), .Z(n115) );
  GTECH_NOT U137 ( .A(n83), .Z(n126) );
  GTECH_OR_NOT U138 ( .A(n97), .B(n136), .Z(N42) );
  GTECH_OR3 U139 ( .A(n84), .B(n86), .C(n135), .Z(n136) );
  GTECH_AOI21 U140 ( .A(n137), .B(n138), .C(n135), .Z(N41) );
  GTECH_AO21 U141 ( .A(n89), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U142 ( .A(n98), .B(n84), .C(n97), .Z(n139) );
  GTECH_AND_NOT U143 ( .A(n140), .B(n85), .Z(n97) );
  GTECH_NOT U144 ( .A(n135), .Z(n98) );
  GTECH_OR_NOT U145 ( .A(n140), .B(n85), .Z(n135) );
  GTECH_AND2 U146 ( .A(n85), .B(n140), .Z(n89) );
  GTECH_AND_NOT U147 ( .A(n86), .B(n138), .Z(n140) );
  GTECH_NOT U148 ( .A(n84), .Z(n138) );
  GTECH_NOR3 U149 ( .A(n84), .B(n85), .C(n137), .Z(Done) );
  GTECH_NOT U150 ( .A(n86), .Z(n137) );
endmodule

