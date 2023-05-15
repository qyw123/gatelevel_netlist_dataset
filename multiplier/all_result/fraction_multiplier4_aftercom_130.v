
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n68, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n80) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n76) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n79) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n77) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U75 ( .Z(n68) );
  GTECH_AND2 U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_AO21 U77 ( .A(Mplier[3]), .B(n82), .C(n83), .Z(N58) );
  GTECH_MUX2 U78 ( .A(n84), .B(n85), .S(n79), .Z(n83) );
  GTECH_AND3 U79 ( .A(n86), .B(n87), .C(Mcand[0]), .Z(n85) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n88), .C(n81), .Z(n84) );
  GTECH_AO21 U81 ( .A(n82), .B(St), .C(n86), .Z(N57) );
  GTECH_AO22 U82 ( .A(Mplier[2]), .B(n82), .C(n86), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U83 ( .A(Mplier[1]), .B(n82), .C(n86), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U84 ( .A(Mplier[0]), .B(n82), .C(n86), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n89), .B(n90), .S(n91), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n92), .B(n93), .S(n76), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(n93) );
  GTECH_NAND2 U88 ( .A(n81), .B(n96), .Z(n92) );
  GTECH_NOT U89 ( .A(n97), .Z(n96) );
  GTECH_MUX2 U90 ( .A(n94), .B(n95), .S(n91), .Z(n97) );
  GTECH_NOT U91 ( .A(Mcand[3]), .Z(n91) );
  GTECH_AO22 U92 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n95) );
  GTECH_OAI22 U93 ( .A(n98), .B(n102), .C(n100), .D(n103), .Z(n94) );
  GTECH_OA21 U94 ( .A(n104), .B(n105), .C(n106), .Z(n100) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n107), .C(n77), .Z(n106) );
  GTECH_NOT U96 ( .A(n104), .Z(n107) );
  GTECH_OA21 U97 ( .A(n108), .B(n105), .C(n109), .Z(n98) );
  GTECH_AO21 U98 ( .A(n105), .B(n108), .C(n77), .Z(n109) );
  GTECH_MUX2 U99 ( .A(n110), .B(n111), .S(n77), .Z(N46) );
  GTECH_NOT U100 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U101 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_NAND2 U102 ( .A(n115), .B(n81), .Z(n110) );
  GTECH_MUX2 U103 ( .A(n113), .B(n114), .S(n105), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n105) );
  GTECH_AOI22 U105 ( .A(n108), .B(n99), .C(n104), .D(n101), .Z(n114) );
  GTECH_OA22 U106 ( .A(n104), .B(n103), .C(n108), .D(n102), .Z(n113) );
  GTECH_OA21 U107 ( .A(n78), .B(n116), .C(n117), .Z(n108) );
  GTECH_NAND3 U108 ( .A(n118), .B(n119), .C(Mcand[0]), .Z(n117) );
  GTECH_AOI2N2 U109 ( .A(Mcand[1]), .B(n78), .C(n119), .D(n120), .Z(n104) );
  GTECH_OAI21 U110 ( .A(Mcand[1]), .B(n78), .C(Mcand[0]), .Z(n120) );
  GTECH_OAI21 U111 ( .A(n78), .B(n81), .C(n121), .Z(N44) );
  GTECH_MUX2 U112 ( .A(n122), .B(n123), .S(n124), .Z(n121) );
  GTECH_OA21 U113 ( .A(n78), .B(n116), .C(n118), .Z(n124) );
  GTECH_NAND2 U114 ( .A(n116), .B(n78), .Z(n118) );
  GTECH_NOT U115 ( .A(Mcand[1]), .Z(n116) );
  GTECH_AND2 U116 ( .A(n125), .B(n126), .Z(n123) );
  GTECH_AO21 U117 ( .A(n102), .B(n103), .C(Mcand[0]), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n102), .B(n103), .S(n119), .Z(n125) );
  GTECH_NOT U119 ( .A(n101), .Z(n103) );
  GTECH_NOT U120 ( .A(n99), .Z(n102) );
  GTECH_NAND2 U121 ( .A(n127), .B(Mcand[0]), .Z(n122) );
  GTECH_MUX2 U122 ( .A(n101), .B(n99), .S(n119), .Z(n127) );
  GTECH_NOT U123 ( .A(n79), .Z(n119) );
  GTECH_AND2 U124 ( .A(n89), .B(n87), .Z(n99) );
  GTECH_AND_NOT U125 ( .A(n87), .B(n128), .Z(n101) );
  GTECH_NOT U126 ( .A(n14), .Z(n87) );
  GTECH_NAND2 U127 ( .A(n14), .B(n86), .Z(n81) );
  GTECH_NOT U128 ( .A(n88), .Z(n86) );
  GTECH_AND_NOT U129 ( .A(n128), .B(n89), .Z(n88) );
  GTECH_NAND2 U130 ( .A(n129), .B(n128), .Z(N42) );
  GTECH_NAND3 U131 ( .A(n130), .B(n131), .C(n89), .Z(n129) );
  GTECH_OA21 U132 ( .A(n12), .B(n80), .C(n89), .Z(N41) );
  GTECH_AO21 U133 ( .A(n82), .B(St), .C(n132), .Z(N40) );
  GTECH_AO21 U134 ( .A(n12), .B(n89), .C(n90), .Z(n132) );
  GTECH_NOT U135 ( .A(n128), .Z(n90) );
  GTECH_OR3 U136 ( .A(n130), .B(n13), .C(n131), .Z(n128) );
  GTECH_OA21 U137 ( .A(n130), .B(n131), .C(n13), .Z(n89) );
  GTECH_NOT U138 ( .A(n12), .Z(n130) );
  GTECH_AND3 U139 ( .A(n80), .B(n12), .C(n13), .Z(n82) );
  GTECH_NOR3 U140 ( .A(n12), .B(n13), .C(n131), .Z(Done) );
  GTECH_NOT U141 ( .A(n80), .Z(n131) );
endmodule

