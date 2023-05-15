
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n72, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n82) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U77 ( .Z(n72) );
  GTECH_AND_NOT U78 ( .A(N57), .B(n83), .Z(N63) );
  GTECH_NOT U79 ( .A(n84), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n85), .C(n86), .D(n87), .E(n88), .F(n89), .Z(n84) );
  GTECH_AO21 U81 ( .A(n90), .B(n91), .C(n83), .Z(n88) );
  GTECH_AND_NOT U82 ( .A(n91), .B(n14), .Z(n86) );
  GTECH_AO21 U83 ( .A(n85), .B(St), .C(n91), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n92), .C(Mplier[2]), .D(n85), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n92), .C(Mplier[1]), .D(n85), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n92), .C(Mplier[0]), .D(n85), .Z(N52) );
  GTECH_OAI2N2 U87 ( .A(n93), .B(n94), .C(n94), .D(n95), .Z(N50) );
  GTECH_OAI21 U88 ( .A(n96), .B(n97), .C(n98), .Z(N48) );
  GTECH_OAI21 U89 ( .A(n83), .B(n99), .C(n97), .Z(n98) );
  GTECH_AO22 U90 ( .A(n94), .B(n100), .C(n101), .D(Mcand[3]), .Z(n99) );
  GTECH_NOT U91 ( .A(n15), .Z(n97) );
  GTECH_AOI22 U92 ( .A(n94), .B(n101), .C(n100), .D(Mcand[3]), .Z(n96) );
  GTECH_AO22 U93 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n100) );
  GTECH_OAI22 U94 ( .A(n102), .B(n106), .C(n104), .D(n107), .Z(n101) );
  GTECH_OA21 U95 ( .A(n108), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U96 ( .A(n109), .B(n108), .C(n111), .Z(n110) );
  GTECH_OA21 U97 ( .A(n112), .B(n109), .C(n113), .Z(n102) );
  GTECH_AO21 U98 ( .A(n109), .B(n112), .C(n16), .Z(n113) );
  GTECH_NOT U99 ( .A(Mcand[3]), .Z(n94) );
  GTECH_OAI21 U100 ( .A(n111), .B(n114), .C(n115), .Z(N46) );
  GTECH_OAI21 U101 ( .A(n83), .B(n116), .C(n111), .Z(n115) );
  GTECH_AO22 U102 ( .A(n109), .B(n117), .C(n118), .D(Mcand[2]), .Z(n116) );
  GTECH_AOI22 U103 ( .A(n109), .B(n118), .C(n117), .D(Mcand[2]), .Z(n114) );
  GTECH_OAI2N2 U104 ( .A(n119), .B(n106), .C(n108), .D(n105), .Z(n117) );
  GTECH_NOT U105 ( .A(n120), .Z(n108) );
  GTECH_OAI2N2 U106 ( .A(n112), .B(n106), .C(n120), .D(n105), .Z(n118) );
  GTECH_ADD_ABC U107 ( .A(n121), .B(Mcand[1]), .C(n80), .COUT(n120) );
  GTECH_AND_NOT U108 ( .A(Mcand[0]), .B(n89), .Z(n121) );
  GTECH_NOT U109 ( .A(n81), .Z(n89) );
  GTECH_NOT U110 ( .A(n119), .Z(n112) );
  GTECH_ADD_ABC U111 ( .A(Mcand[1]), .B(n122), .C(n123), .COUT(n119) );
  GTECH_AND_NOT U112 ( .A(Mcand[0]), .B(n81), .Z(n122) );
  GTECH_NOT U113 ( .A(Mcand[2]), .Z(n109) );
  GTECH_NOT U114 ( .A(n16), .Z(n111) );
  GTECH_OAI21 U115 ( .A(n123), .B(n124), .C(n125), .Z(N44) );
  GTECH_OAI21 U116 ( .A(n83), .B(n126), .C(n123), .Z(n125) );
  GTECH_AO22 U117 ( .A(n127), .B(Mcand[1]), .C(n128), .D(n129), .Z(n126) );
  GTECH_AND2 U118 ( .A(n14), .B(n91), .Z(n83) );
  GTECH_NOT U119 ( .A(n92), .Z(n91) );
  GTECH_AND_NOT U120 ( .A(n93), .B(n95), .Z(n92) );
  GTECH_AOI22 U121 ( .A(Mcand[1]), .B(n129), .C(n128), .D(n127), .Z(n124) );
  GTECH_OAI2N2 U122 ( .A(n130), .B(n106), .C(n87), .D(n105), .Z(n127) );
  GTECH_NOT U123 ( .A(Mcand[1]), .Z(n128) );
  GTECH_OA21 U124 ( .A(n105), .B(n130), .C(n131), .Z(n129) );
  GTECH_OAI21 U125 ( .A(n87), .B(n107), .C(n106), .Z(n131) );
  GTECH_NOT U126 ( .A(n103), .Z(n106) );
  GTECH_AND_NOT U127 ( .A(n132), .B(n14), .Z(n103) );
  GTECH_NOT U128 ( .A(n105), .Z(n107) );
  GTECH_AND2 U129 ( .A(Mcand[0]), .B(n81), .Z(n87) );
  GTECH_OR2 U130 ( .A(n81), .B(n90), .Z(n130) );
  GTECH_NOT U131 ( .A(Mcand[0]), .Z(n90) );
  GTECH_AND_NOT U132 ( .A(n95), .B(n14), .Z(n105) );
  GTECH_NOT U133 ( .A(n80), .Z(n123) );
  GTECH_NAND2 U134 ( .A(n133), .B(n134), .Z(N42) );
  GTECH_NOT U135 ( .A(n95), .Z(n134) );
  GTECH_OR3 U136 ( .A(n12), .B(n82), .C(n93), .Z(n133) );
  GTECH_AOI21 U137 ( .A(n135), .B(n136), .C(n93), .Z(N41) );
  GTECH_NOT U138 ( .A(n132), .Z(n93) );
  GTECH_AO21 U139 ( .A(n85), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U140 ( .A(n12), .B(n132), .C(n95), .Z(n137) );
  GTECH_AND3 U141 ( .A(n12), .B(n138), .C(n82), .Z(n95) );
  GTECH_NOT U142 ( .A(n13), .Z(n138) );
  GTECH_OA21 U143 ( .A(n135), .B(n136), .C(n13), .Z(n132) );
  GTECH_NOT U144 ( .A(n12), .Z(n135) );
  GTECH_AND3 U145 ( .A(n82), .B(n12), .C(n13), .Z(n85) );
  GTECH_NOR3 U146 ( .A(n12), .B(n13), .C(n136), .Z(Done) );
  GTECH_NOT U147 ( .A(n82), .Z(n136) );
endmodule

