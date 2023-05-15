
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n68, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n78) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n79) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n77) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n76) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U75 ( .Z(n68) );
  GTECH_AND_NOT U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_AO21 U79 ( .A(n88), .B(n89), .C(n81), .Z(n86) );
  GTECH_AND_NOT U80 ( .A(n89), .B(n12), .Z(n84) );
  GTECH_AO21 U81 ( .A(n83), .B(St), .C(n89), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n15), .B(n90), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n16), .B(n90), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n90), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_OAI2N2 U85 ( .A(Mcand[3]), .B(n91), .C(n92), .D(Mcand[3]), .Z(N50) );
  GTECH_OAI21 U86 ( .A(n93), .B(n94), .C(n95), .Z(N48) );
  GTECH_OAI21 U87 ( .A(n81), .B(n96), .C(n94), .Z(n95) );
  GTECH_AO22 U88 ( .A(n97), .B(Mcand[3]), .C(n98), .D(n99), .Z(n96) );
  GTECH_NOT U89 ( .A(n13), .Z(n94) );
  GTECH_AOI22 U90 ( .A(n99), .B(Mcand[3]), .C(n98), .D(n97), .Z(n93) );
  GTECH_AO22 U91 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_NOT U92 ( .A(Mcand[3]), .Z(n98) );
  GTECH_OAI2N2 U93 ( .A(n102), .B(n104), .C(n101), .D(n105), .Z(n99) );
  GTECH_NOT U94 ( .A(n100), .Z(n105) );
  GTECH_OAI21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n100) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n109), .C(n110), .Z(n108) );
  GTECH_OA21 U97 ( .A(Mcand[2]), .B(n111), .C(n112), .Z(n102) );
  GTECH_OAI21 U98 ( .A(n113), .B(n107), .C(n110), .Z(n112) );
  GTECH_OAI21 U99 ( .A(n114), .B(n110), .C(n115), .Z(N46) );
  GTECH_OAI21 U100 ( .A(n81), .B(n116), .C(n110), .Z(n115) );
  GTECH_AO22 U101 ( .A(n117), .B(Mcand[2]), .C(n107), .D(n118), .Z(n116) );
  GTECH_NOT U102 ( .A(n76), .Z(n110) );
  GTECH_AOI22 U103 ( .A(n118), .B(Mcand[2]), .C(n107), .D(n117), .Z(n114) );
  GTECH_OAI2N2 U104 ( .A(n113), .B(n104), .C(n109), .D(n101), .Z(n117) );
  GTECH_NOT U105 ( .A(n111), .Z(n113) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n107) );
  GTECH_OAI2N2 U107 ( .A(n111), .B(n104), .C(n106), .D(n101), .Z(n118) );
  GTECH_NOT U108 ( .A(n109), .Z(n106) );
  GTECH_ADD_ABC U109 ( .A(n119), .B(Mcand[1]), .C(n120), .COUT(n109) );
  GTECH_AND2 U110 ( .A(n87), .B(Mcand[0]), .Z(n119) );
  GTECH_ADD_ABC U111 ( .A(n121), .B(Mcand[1]), .C(n77), .COUT(n111) );
  GTECH_AND2 U112 ( .A(Mcand[0]), .B(n14), .Z(n121) );
  GTECH_OAI21 U113 ( .A(n120), .B(n122), .C(n123), .Z(N44) );
  GTECH_OAI21 U114 ( .A(n81), .B(n124), .C(n120), .Z(n123) );
  GTECH_AO22 U115 ( .A(n125), .B(Mcand[1]), .C(n126), .D(n127), .Z(n124) );
  GTECH_AND2 U116 ( .A(n12), .B(n89), .Z(n81) );
  GTECH_NOT U117 ( .A(n90), .Z(n89) );
  GTECH_NOR2 U118 ( .A(n128), .B(n92), .Z(n90) );
  GTECH_NOT U119 ( .A(n91), .Z(n128) );
  GTECH_AOI22 U120 ( .A(n127), .B(Mcand[1]), .C(n126), .D(n125), .Z(n122) );
  GTECH_AO22 U121 ( .A(n85), .B(n103), .C(n129), .D(n101), .Z(n125) );
  GTECH_NOT U122 ( .A(Mcand[1]), .Z(n126) );
  GTECH_OAI2N2 U123 ( .A(n85), .B(n104), .C(n130), .D(n101), .Z(n127) );
  GTECH_NOR2 U124 ( .A(n131), .B(n12), .Z(n101) );
  GTECH_NOT U125 ( .A(n129), .Z(n130) );
  GTECH_AND_NOT U126 ( .A(n87), .B(n88), .Z(n129) );
  GTECH_NOT U127 ( .A(Mcand[0]), .Z(n88) );
  GTECH_NOT U128 ( .A(n103), .Z(n104) );
  GTECH_NOR2 U129 ( .A(n91), .B(n12), .Z(n103) );
  GTECH_AND_NOT U130 ( .A(Mcand[0]), .B(n87), .Z(n85) );
  GTECH_NOT U131 ( .A(n14), .Z(n87) );
  GTECH_NOT U132 ( .A(n77), .Z(n120) );
  GTECH_NAND2 U133 ( .A(n91), .B(n132), .Z(N42) );
  GTECH_OR3 U134 ( .A(n78), .B(n79), .C(n131), .Z(n132) );
  GTECH_OA21 U135 ( .A(n78), .B(n79), .C(n92), .Z(N41) );
  GTECH_NOT U136 ( .A(n131), .Z(n92) );
  GTECH_AO21 U137 ( .A(n83), .B(St), .C(n133), .Z(N40) );
  GTECH_NOT U138 ( .A(n134), .Z(n133) );
  GTECH_OA21 U139 ( .A(n135), .B(n131), .C(n91), .Z(n134) );
  GTECH_NAND3 U140 ( .A(n78), .B(n136), .C(n79), .Z(n91) );
  GTECH_AO21 U141 ( .A(n78), .B(n79), .C(n136), .Z(n131) );
  GTECH_NOT U142 ( .A(n137), .Z(n83) );
  GTECH_NAND3 U143 ( .A(n79), .B(n78), .C(n80), .Z(n137) );
  GTECH_AND3 U144 ( .A(n135), .B(n136), .C(n79), .Z(Done) );
  GTECH_NOT U145 ( .A(n80), .Z(n136) );
  GTECH_NOT U146 ( .A(n78), .Z(n135) );
endmodule

