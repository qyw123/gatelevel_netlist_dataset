
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n71, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n83) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n79) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U78 ( .Z(n71) );
  GTECH_AND_NOT U79 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U80 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U82 ( .A(Mcand[0]), .B(n92), .C(n93), .Z(n90) );
  GTECH_NOT U83 ( .A(n85), .Z(n93) );
  GTECH_NOR2 U84 ( .A(n83), .B(n92), .Z(n88) );
  GTECH_OAI21 U85 ( .A(n94), .B(n95), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n15), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_OAI2N2 U89 ( .A(n96), .B(n97), .C(n97), .D(n98), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n99), .B(n100), .C(n101), .Z(N48) );
  GTECH_OAI21 U91 ( .A(n85), .B(n102), .C(n100), .Z(n101) );
  GTECH_AO22 U92 ( .A(n97), .B(n103), .C(n104), .D(Mcand[3]), .Z(n102) );
  GTECH_NOT U93 ( .A(n79), .Z(n100) );
  GTECH_AOI22 U94 ( .A(n97), .B(n104), .C(n103), .D(Mcand[3]), .Z(n99) );
  GTECH_OAI2N2 U95 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n103) );
  GTECH_OAI2N2 U96 ( .A(n107), .B(n109), .C(n105), .D(n110), .Z(n104) );
  GTECH_OAI21 U97 ( .A(n111), .B(n112), .C(n113), .Z(n105) );
  GTECH_AO21 U98 ( .A(n112), .B(n111), .C(n80), .Z(n113) );
  GTECH_OA21 U99 ( .A(n114), .B(n112), .C(n115), .Z(n107) );
  GTECH_AO21 U100 ( .A(n112), .B(n114), .C(n116), .Z(n115) );
  GTECH_NOT U101 ( .A(Mcand[3]), .Z(n97) );
  GTECH_OAI21 U102 ( .A(n116), .B(n117), .C(n118), .Z(N46) );
  GTECH_OAI21 U103 ( .A(n85), .B(n119), .C(n116), .Z(n118) );
  GTECH_AO22 U104 ( .A(n112), .B(n120), .C(n121), .D(Mcand[2]), .Z(n119) );
  GTECH_AOI22 U105 ( .A(n112), .B(n121), .C(n120), .D(Mcand[2]), .Z(n117) );
  GTECH_OAI2N2 U106 ( .A(n122), .B(n109), .C(n111), .D(n110), .Z(n120) );
  GTECH_NOT U107 ( .A(n123), .Z(n111) );
  GTECH_OAI2N2 U108 ( .A(n114), .B(n109), .C(n123), .D(n110), .Z(n121) );
  GTECH_AO21 U109 ( .A(n124), .B(Mcand[1]), .C(n125), .Z(n123) );
  GTECH_NOR3 U110 ( .A(n126), .B(n82), .C(n127), .Z(n125) );
  GTECH_NOT U111 ( .A(n122), .Z(n114) );
  GTECH_ADD_ABC U112 ( .A(n128), .B(Mcand[1]), .C(n81), .COUT(n122) );
  GTECH_AND_NOT U113 ( .A(Mcand[0]), .B(n91), .Z(n128) );
  GTECH_NOT U114 ( .A(n82), .Z(n91) );
  GTECH_NOT U115 ( .A(Mcand[2]), .Z(n112) );
  GTECH_NOT U116 ( .A(n80), .Z(n116) );
  GTECH_NOT U117 ( .A(n129), .Z(N44) );
  GTECH_AOI222 U118 ( .A(n126), .B(n130), .C(n131), .D(n124), .E(n132), .F(n81), .Z(n129) );
  GTECH_AND_NOT U119 ( .A(Mcand[1]), .B(n133), .Z(n132) );
  GTECH_NOT U120 ( .A(n81), .Z(n124) );
  GTECH_OR2 U121 ( .A(n134), .B(n85), .Z(n131) );
  GTECH_AND_NOT U122 ( .A(n83), .B(n92), .Z(n85) );
  GTECH_NOR2 U123 ( .A(n135), .B(n98), .Z(n92) );
  GTECH_OAI2N2 U124 ( .A(Mcand[1]), .B(n133), .C(n130), .D(Mcand[1]), .Z(n134)
         );
  GTECH_OA21 U125 ( .A(n89), .B(n109), .C(n136), .Z(n133) );
  GTECH_OAI21 U126 ( .A(n82), .B(n127), .C(n110), .Z(n136) );
  GTECH_NOT U127 ( .A(n108), .Z(n109) );
  GTECH_AO21 U128 ( .A(n89), .B(n108), .C(n137), .Z(n130) );
  GTECH_NOR3 U129 ( .A(n127), .B(n82), .C(n106), .Z(n137) );
  GTECH_NOT U130 ( .A(n110), .Z(n106) );
  GTECH_AND_NOT U131 ( .A(n135), .B(n83), .Z(n110) );
  GTECH_AND_NOT U132 ( .A(n98), .B(n83), .Z(n108) );
  GTECH_AND_NOT U133 ( .A(n82), .B(n127), .Z(n89) );
  GTECH_NOT U134 ( .A(Mcand[0]), .Z(n127) );
  GTECH_AND_NOT U135 ( .A(n81), .B(Mcand[1]), .Z(n126) );
  GTECH_OR_NOT U136 ( .A(n98), .B(n138), .Z(N42) );
  GTECH_OR3 U137 ( .A(n12), .B(n84), .C(n96), .Z(n138) );
  GTECH_AOI21 U138 ( .A(n139), .B(n140), .C(n96), .Z(N41) );
  GTECH_NOT U139 ( .A(n135), .Z(n96) );
  GTECH_OAI21 U140 ( .A(n94), .B(n95), .C(n141), .Z(N40) );
  GTECH_AOI21 U141 ( .A(n12), .B(n135), .C(n98), .Z(n141) );
  GTECH_AND3 U142 ( .A(n12), .B(n142), .C(n84), .Z(n98) );
  GTECH_NOT U143 ( .A(n13), .Z(n142) );
  GTECH_OA21 U144 ( .A(n139), .B(n140), .C(n13), .Z(n135) );
  GTECH_NOT U145 ( .A(n12), .Z(n139) );
  GTECH_NOT U146 ( .A(St), .Z(n95) );
  GTECH_NOT U147 ( .A(n87), .Z(n94) );
  GTECH_AND3 U148 ( .A(n84), .B(n12), .C(n13), .Z(n87) );
  GTECH_NOR3 U149 ( .A(n12), .B(n13), .C(n140), .Z(Done) );
  GTECH_NOT U150 ( .A(n84), .Z(n140) );
endmodule

