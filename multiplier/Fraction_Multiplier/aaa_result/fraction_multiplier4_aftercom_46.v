
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n73, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n17) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n18) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n19) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n20) );
  GTECH_ZERO U77 ( .Z(n73) );
  GTECH_AND2 U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n90), .C(n83), .Z(n88) );
  GTECH_NOT U82 ( .A(n91), .Z(n83) );
  GTECH_AND_NOT U83 ( .A(n92), .B(n14), .Z(n86) );
  GTECH_AO21 U84 ( .A(n85), .B(St), .C(n92), .Z(N57) );
  GTECH_NOT U85 ( .A(n90), .Z(n92) );
  GTECH_OAI2N2 U86 ( .A(n18), .B(n90), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n19), .B(n90), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n20), .B(n90), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_OAI2N2 U89 ( .A(n93), .B(n94), .C(n94), .D(n95), .Z(N50) );
  GTECH_OAI21 U90 ( .A(n96), .B(n97), .C(n98), .Z(N48) );
  GTECH_OAI21 U91 ( .A(n91), .B(n99), .C(n97), .Z(n98) );
  GTECH_AO22 U92 ( .A(n94), .B(n100), .C(n101), .D(Mcand[3]), .Z(n99) );
  GTECH_NOT U93 ( .A(n15), .Z(n97) );
  GTECH_AOI22 U94 ( .A(n94), .B(n101), .C(n100), .D(Mcand[3]), .Z(n96) );
  GTECH_AO22 U95 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n100) );
  GTECH_OAI22 U96 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n101) );
  GTECH_OA21 U97 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U98 ( .A(n109), .B(n108), .C(n111), .Z(n110) );
  GTECH_OA21 U99 ( .A(n112), .B(n109), .C(n113), .Z(n102) );
  GTECH_AO21 U100 ( .A(n109), .B(n112), .C(n81), .Z(n113) );
  GTECH_NOT U101 ( .A(Mcand[3]), .Z(n94) );
  GTECH_OAI21 U102 ( .A(n111), .B(n114), .C(n115), .Z(N46) );
  GTECH_OAI21 U103 ( .A(n91), .B(n116), .C(n111), .Z(n115) );
  GTECH_AO22 U104 ( .A(n109), .B(n117), .C(n118), .D(Mcand[2]), .Z(n116) );
  GTECH_AOI22 U105 ( .A(n109), .B(n118), .C(n117), .D(Mcand[2]), .Z(n114) );
  GTECH_OAI2N2 U106 ( .A(n119), .B(n106), .C(n108), .D(n105), .Z(n117) );
  GTECH_NOT U107 ( .A(n120), .Z(n108) );
  GTECH_OAI2N2 U108 ( .A(n112), .B(n106), .C(n120), .D(n105), .Z(n118) );
  GTECH_AO21 U109 ( .A(n87), .B(Mcand[1]), .C(n121), .Z(n120) );
  GTECH_OA21 U110 ( .A(n87), .B(Mcand[1]), .C(n17), .Z(n121) );
  GTECH_NOT U111 ( .A(n119), .Z(n112) );
  GTECH_AO21 U112 ( .A(Mcand[1]), .B(n122), .C(n123), .Z(n119) );
  GTECH_OA21 U113 ( .A(n122), .B(Mcand[1]), .C(n124), .Z(n123) );
  GTECH_NOT U114 ( .A(Mcand[2]), .Z(n109) );
  GTECH_NOT U115 ( .A(n81), .Z(n111) );
  GTECH_OAI21 U116 ( .A(n124), .B(n125), .C(n126), .Z(N44) );
  GTECH_OAI21 U117 ( .A(n91), .B(n127), .C(n124), .Z(n126) );
  GTECH_AO22 U118 ( .A(n128), .B(n129), .C(n130), .D(Mcand[1]), .Z(n127) );
  GTECH_AND_NOT U119 ( .A(n14), .B(n90), .Z(n91) );
  GTECH_AND_NOT U120 ( .A(n93), .B(n95), .Z(n90) );
  GTECH_AOI22 U121 ( .A(n128), .B(n130), .C(n129), .D(Mcand[1]), .Z(n125) );
  GTECH_OAI22 U122 ( .A(n87), .B(n107), .C(n122), .D(n106), .Z(n129) );
  GTECH_NOT U123 ( .A(n103), .Z(n106) );
  GTECH_NOT U124 ( .A(n105), .Z(n107) );
  GTECH_AO22 U125 ( .A(n87), .B(n105), .C(n122), .D(n103), .Z(n130) );
  GTECH_AND_NOT U126 ( .A(n131), .B(n14), .Z(n103) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n89), .Z(n122) );
  GTECH_NOT U128 ( .A(n16), .Z(n89) );
  GTECH_AND_NOT U129 ( .A(n95), .B(n14), .Z(n105) );
  GTECH_AND2 U130 ( .A(Mcand[0]), .B(n16), .Z(n87) );
  GTECH_NOT U131 ( .A(Mcand[1]), .Z(n128) );
  GTECH_NOT U132 ( .A(n17), .Z(n124) );
  GTECH_OR_NOT U133 ( .A(n95), .B(n132), .Z(N42) );
  GTECH_OR3 U134 ( .A(n12), .B(n82), .C(n93), .Z(n132) );
  GTECH_AOI21 U135 ( .A(n133), .B(n134), .C(n93), .Z(N41) );
  GTECH_NOT U136 ( .A(n131), .Z(n93) );
  GTECH_AO21 U137 ( .A(n85), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U138 ( .A(n12), .B(n131), .C(n95), .Z(n135) );
  GTECH_AND3 U139 ( .A(n12), .B(n136), .C(n82), .Z(n95) );
  GTECH_NOT U140 ( .A(n13), .Z(n136) );
  GTECH_OA21 U141 ( .A(n133), .B(n134), .C(n13), .Z(n131) );
  GTECH_NOT U142 ( .A(n12), .Z(n133) );
  GTECH_AND3 U143 ( .A(n82), .B(n12), .C(n13), .Z(n85) );
  GTECH_NOR3 U144 ( .A(n12), .B(n13), .C(n134), .Z(Done) );
  GTECH_NOT U145 ( .A(n82), .Z(n134) );
endmodule

