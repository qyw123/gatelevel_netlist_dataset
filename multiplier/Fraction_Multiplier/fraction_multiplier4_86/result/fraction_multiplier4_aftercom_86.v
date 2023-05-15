
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n68, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n78) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n79) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n76) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n77) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U74 ( .Z(n68) );
  GTECH_AND_NOT U75 ( .A(N57), .B(n80), .Z(N63) );
  GTECH_AO21 U76 ( .A(Mplier[3]), .B(n81), .C(n82), .Z(N58) );
  GTECH_OAI21 U77 ( .A(n76), .B(n83), .C(n84), .Z(n82) );
  GTECH_OR3 U78 ( .A(n85), .B(n13), .C(n86), .Z(n84) );
  GTECH_AOI21 U79 ( .A(n87), .B(n88), .C(n80), .Z(n83) );
  GTECH_AO21 U80 ( .A(n81), .B(St), .C(n88), .Z(N57) );
  GTECH_NOT U81 ( .A(n85), .Z(n88) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n85), .C(Mplier[2]), .D(n81), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n85), .C(Mplier[1]), .D(n81), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n85), .C(Mplier[0]), .D(n81), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n89), .B(n90), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n91), .B(n92), .S(n14), .Z(N48) );
  GTECH_MUX2 U87 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(n92) );
  GTECH_OR2 U88 ( .A(n80), .B(n95), .Z(n91) );
  GTECH_MUX2 U89 ( .A(n94), .B(n93), .S(Mcand[3]), .Z(n95) );
  GTECH_OAI22 U90 ( .A(n96), .B(n97), .C(n98), .D(n99), .Z(n93) );
  GTECH_AO22 U91 ( .A(n96), .B(n100), .C(n98), .D(n101), .Z(n94) );
  GTECH_AOI21 U92 ( .A(n102), .B(Mcand[2]), .C(n103), .Z(n98) );
  GTECH_OA21 U93 ( .A(Mcand[2]), .B(n102), .C(n15), .Z(n103) );
  GTECH_AOI21 U94 ( .A(n104), .B(Mcand[2]), .C(n105), .Z(n96) );
  GTECH_OA21 U95 ( .A(Mcand[2]), .B(n104), .C(n106), .Z(n105) );
  GTECH_MUX2 U96 ( .A(n107), .B(n108), .S(n106), .Z(N46) );
  GTECH_NOT U97 ( .A(n15), .Z(n106) );
  GTECH_OR_NOT U98 ( .A(n80), .B(n109), .Z(n108) );
  GTECH_MUX2 U99 ( .A(n110), .B(n111), .S(Mcand[2]), .Z(n109) );
  GTECH_NOT U100 ( .A(n112), .Z(n107) );
  GTECH_MUX2 U101 ( .A(n111), .B(n110), .S(Mcand[2]), .Z(n112) );
  GTECH_OA22 U102 ( .A(n104), .B(n97), .C(n102), .D(n99), .Z(n110) );
  GTECH_AOI22 U103 ( .A(n104), .B(n100), .C(n102), .D(n101), .Z(n111) );
  GTECH_ADD_ABC U104 ( .A(n113), .B(Mcand[1]), .C(n77), .COUT(n102) );
  GTECH_AND2 U105 ( .A(n76), .B(Mcand[0]), .Z(n113) );
  GTECH_ADD_ABC U106 ( .A(Mcand[1]), .B(n114), .C(n115), .COUT(n104) );
  GTECH_NOT U107 ( .A(n77), .Z(n115) );
  GTECH_MUX2 U108 ( .A(n116), .B(n117), .S(n77), .Z(N44) );
  GTECH_NOT U109 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U110 ( .A(n119), .B(n120), .S(Mcand[1]), .Z(n118) );
  GTECH_OR_NOT U111 ( .A(n80), .B(n121), .Z(n116) );
  GTECH_MUX2 U112 ( .A(n120), .B(n119), .S(Mcand[1]), .Z(n121) );
  GTECH_AOI2N2 U113 ( .A(n114), .B(n100), .C(n86), .D(n99), .Z(n119) );
  GTECH_OAI21 U114 ( .A(n100), .B(n86), .C(n122), .Z(n120) );
  GTECH_OAI21 U115 ( .A(n114), .B(n97), .C(n99), .Z(n122) );
  GTECH_NOT U116 ( .A(n101), .Z(n99) );
  GTECH_AND_NOT U117 ( .A(n89), .B(n13), .Z(n101) );
  GTECH_NOT U118 ( .A(n100), .Z(n97) );
  GTECH_AND_NOT U119 ( .A(Mcand[0]), .B(n76), .Z(n114) );
  GTECH_OR_NOT U120 ( .A(n87), .B(n76), .Z(n86) );
  GTECH_NOT U121 ( .A(Mcand[0]), .Z(n87) );
  GTECH_AND_NOT U122 ( .A(n90), .B(n13), .Z(n100) );
  GTECH_AND_NOT U123 ( .A(n13), .B(n85), .Z(n80) );
  GTECH_AND_NOT U124 ( .A(n123), .B(n89), .Z(n85) );
  GTECH_NOT U125 ( .A(n90), .Z(n123) );
  GTECH_AO21 U126 ( .A(n90), .B(n124), .C(n89), .Z(N42) );
  GTECH_NOR2 U127 ( .A(n12), .B(n78), .Z(n124) );
  GTECH_OA21 U128 ( .A(n12), .B(n78), .C(n90), .Z(N41) );
  GTECH_AO21 U129 ( .A(n81), .B(St), .C(n125), .Z(N40) );
  GTECH_AO21 U130 ( .A(n78), .B(n90), .C(n89), .Z(n125) );
  GTECH_AND_NOT U131 ( .A(n126), .B(n79), .Z(n89) );
  GTECH_AND_NOT U132 ( .A(n79), .B(n126), .Z(n90) );
  GTECH_AND2 U133 ( .A(n79), .B(n126), .Z(n81) );
  GTECH_AND2 U134 ( .A(n78), .B(n12), .Z(n126) );
  GTECH_NOR3 U135 ( .A(n78), .B(n79), .C(n127), .Z(Done) );
  GTECH_NOT U136 ( .A(n12), .Z(n127) );
endmodule

