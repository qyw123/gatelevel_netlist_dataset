
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n69, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n80) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n77) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n79) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n78) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U75 ( .Z(n69) );
  GTECH_AND2 U76 ( .A(n81), .B(N57), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n88), .C(n81), .Z(n86) );
  GTECH_NOR2 U80 ( .A(n88), .B(n14), .Z(n84) );
  GTECH_AO21 U81 ( .A(n83), .B(St), .C(n89), .Z(N57) );
  GTECH_AO22 U82 ( .A(Mplier[2]), .B(n83), .C(n89), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U83 ( .A(Mplier[1]), .B(n83), .C(n89), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U84 ( .A(Mplier[0]), .B(n83), .C(n89), .D(Product[1]), .Z(N52) );
  GTECH_NOT U85 ( .A(n88), .Z(n89) );
  GTECH_MUX2 U86 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(n77), .Z(N48) );
  GTECH_NOT U88 ( .A(n94), .Z(n93) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_NAND2 U90 ( .A(n97), .B(n81), .Z(n92) );
  GTECH_MUX2 U91 ( .A(n96), .B(n95), .S(Mcand[3]), .Z(n97) );
  GTECH_AOI2N2 U92 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n95) );
  GTECH_AOI2N2 U93 ( .A(n100), .B(n102), .C(n98), .D(n103), .Z(n96) );
  GTECH_OAI21 U94 ( .A(n104), .B(n105), .C(n106), .Z(n98) );
  GTECH_AO21 U95 ( .A(n105), .B(n104), .C(n107), .Z(n106) );
  GTECH_OA21 U96 ( .A(n108), .B(n105), .C(n109), .Z(n100) );
  GTECH_AO21 U97 ( .A(n105), .B(n108), .C(n78), .Z(n109) );
  GTECH_NOT U98 ( .A(Mcand[2]), .Z(n105) );
  GTECH_MUX2 U99 ( .A(n110), .B(n111), .S(n107), .Z(N46) );
  GTECH_NOT U100 ( .A(n78), .Z(n107) );
  GTECH_OR_NOT U101 ( .A(n112), .B(n81), .Z(n111) );
  GTECH_MUX2 U102 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_MUX2 U103 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n110) );
  GTECH_AO22 U104 ( .A(n104), .B(n99), .C(n108), .D(n102), .Z(n113) );
  GTECH_OAI22 U105 ( .A(n104), .B(n103), .C(n108), .D(n101), .Z(n114) );
  GTECH_NOT U106 ( .A(n102), .Z(n101) );
  GTECH_OA21 U107 ( .A(n115), .B(n116), .C(n117), .Z(n108) );
  GTECH_AO21 U108 ( .A(n116), .B(n115), .C(n79), .Z(n117) );
  GTECH_OA21 U109 ( .A(n118), .B(n115), .C(n119), .Z(n104) );
  GTECH_OAI21 U110 ( .A(n85), .B(Mcand[1]), .C(n79), .Z(n119) );
  GTECH_NOT U111 ( .A(Mcand[1]), .Z(n115) );
  GTECH_MUX2 U112 ( .A(n120), .B(n121), .S(n79), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n122), .B(n123), .S(Mcand[1]), .Z(n121) );
  GTECH_OR_NOT U114 ( .A(n124), .B(n81), .Z(n120) );
  GTECH_OR_NOT U115 ( .A(n88), .B(n14), .Z(n81) );
  GTECH_NOR2 U116 ( .A(n91), .B(n90), .Z(n88) );
  GTECH_MUX2 U117 ( .A(n123), .B(n122), .S(Mcand[1]), .Z(n124) );
  GTECH_AO22 U118 ( .A(n125), .B(n102), .C(n85), .D(n99), .Z(n122) );
  GTECH_AO22 U119 ( .A(n116), .B(n102), .C(n118), .D(n99), .Z(n123) );
  GTECH_NOT U120 ( .A(n103), .Z(n99) );
  GTECH_OR_NOT U121 ( .A(n14), .B(n90), .Z(n103) );
  GTECH_NOT U122 ( .A(n85), .Z(n118) );
  GTECH_AND_NOT U123 ( .A(Mcand[0]), .B(n87), .Z(n85) );
  GTECH_NOR2 U124 ( .A(n126), .B(n14), .Z(n102) );
  GTECH_NOT U125 ( .A(n91), .Z(n126) );
  GTECH_NOT U126 ( .A(n125), .Z(n116) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n87), .Z(n125) );
  GTECH_NOT U128 ( .A(n15), .Z(n87) );
  GTECH_OR_NOT U129 ( .A(n90), .B(n127), .Z(N42) );
  GTECH_NAND3 U130 ( .A(n128), .B(n129), .C(n91), .Z(n127) );
  GTECH_OA21 U131 ( .A(n12), .B(n80), .C(n91), .Z(N41) );
  GTECH_AO21 U132 ( .A(n83), .B(St), .C(n130), .Z(N40) );
  GTECH_AO21 U133 ( .A(n12), .B(n91), .C(n90), .Z(n130) );
  GTECH_NOR3 U134 ( .A(n128), .B(n13), .C(n129), .Z(n90) );
  GTECH_AOI21 U135 ( .A(n12), .B(n80), .C(n131), .Z(n91) );
  GTECH_NOR3 U136 ( .A(n129), .B(n128), .C(n131), .Z(n83) );
  GTECH_NOT U137 ( .A(n80), .Z(n129) );
  GTECH_AND3 U138 ( .A(n128), .B(n131), .C(n80), .Z(Done) );
  GTECH_NOT U139 ( .A(n13), .Z(n131) );
  GTECH_NOT U140 ( .A(n12), .Z(n128) );
endmodule

