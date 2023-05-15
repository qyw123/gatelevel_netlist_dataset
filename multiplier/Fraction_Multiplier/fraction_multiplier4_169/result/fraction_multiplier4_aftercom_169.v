
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
         n120, n121, n122, n123, n124, n125, n126;
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
  GTECH_AND2 U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n88), .C(n81), .Z(n86) );
  GTECH_AND_NOT U80 ( .A(n89), .B(n12), .Z(n84) );
  GTECH_AO21 U81 ( .A(n83), .B(St), .C(n89), .Z(N57) );
  GTECH_NOT U82 ( .A(n88), .Z(n89) );
  GTECH_OAI2N2 U83 ( .A(n15), .B(n88), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U84 ( .A(n16), .B(n88), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U85 ( .A(n17), .B(n88), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n90), .B(n91), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n92), .B(n93), .S(n13), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(n93) );
  GTECH_OR_NOT U89 ( .A(n96), .B(n81), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n95), .B(n94), .S(Mcand[3]), .Z(n96) );
  GTECH_OAI22 U91 ( .A(n97), .B(n98), .C(n99), .D(n100), .Z(n94) );
  GTECH_AO22 U92 ( .A(n97), .B(n101), .C(n99), .D(n102), .Z(n95) );
  GTECH_OAI21 U93 ( .A(Mcand[2]), .B(n103), .C(n104), .Z(n99) );
  GTECH_AO21 U94 ( .A(n103), .B(Mcand[2]), .C(n76), .Z(n104) );
  GTECH_OAI21 U95 ( .A(Mcand[2]), .B(n105), .C(n106), .Z(n97) );
  GTECH_AO21 U96 ( .A(n105), .B(Mcand[2]), .C(n107), .Z(n106) );
  GTECH_NOT U97 ( .A(n76), .Z(n107) );
  GTECH_MUX2 U98 ( .A(n108), .B(n109), .S(n76), .Z(N46) );
  GTECH_NOT U99 ( .A(n110), .Z(n109) );
  GTECH_MUX2 U100 ( .A(n111), .B(n112), .S(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U101 ( .A(n113), .B(n81), .Z(n108) );
  GTECH_MUX2 U102 ( .A(n112), .B(n111), .S(Mcand[2]), .Z(n113) );
  GTECH_AOI22 U103 ( .A(n103), .B(n102), .C(n105), .D(n101), .Z(n111) );
  GTECH_OA22 U104 ( .A(n103), .B(n100), .C(n105), .D(n98), .Z(n112) );
  GTECH_ADD_ABC U105 ( .A(Mcand[1]), .B(n114), .C(n115), .COUT(n105) );
  GTECH_NOT U106 ( .A(n77), .Z(n115) );
  GTECH_AND2 U107 ( .A(Mcand[0]), .B(n87), .Z(n114) );
  GTECH_ADD_ABC U108 ( .A(n85), .B(Mcand[1]), .C(n77), .COUT(n103) );
  GTECH_MUX2 U109 ( .A(n116), .B(n117), .S(n77), .Z(N44) );
  GTECH_MUX2 U110 ( .A(n118), .B(n119), .S(Mcand[1]), .Z(n117) );
  GTECH_OR_NOT U111 ( .A(n120), .B(n81), .Z(n116) );
  GTECH_OR_NOT U112 ( .A(n88), .B(n12), .Z(n81) );
  GTECH_AND_NOT U113 ( .A(n121), .B(n91), .Z(n88) );
  GTECH_MUX2 U114 ( .A(n119), .B(n118), .S(Mcand[1]), .Z(n120) );
  GTECH_OAI2N2 U115 ( .A(n122), .B(n98), .C(n85), .D(n102), .Z(n118) );
  GTECH_NOT U116 ( .A(n101), .Z(n98) );
  GTECH_OAI2N2 U117 ( .A(n85), .B(n100), .C(n122), .D(n101), .Z(n119) );
  GTECH_AND_NOT U118 ( .A(n91), .B(n12), .Z(n101) );
  GTECH_NAND2 U119 ( .A(n87), .B(Mcand[0]), .Z(n122) );
  GTECH_NOT U120 ( .A(n14), .Z(n87) );
  GTECH_NOT U121 ( .A(n102), .Z(n100) );
  GTECH_AND_NOT U122 ( .A(n90), .B(n12), .Z(n102) );
  GTECH_AND2 U123 ( .A(Mcand[0]), .B(n14), .Z(n85) );
  GTECH_NAND2 U124 ( .A(n121), .B(n123), .Z(N42) );
  GTECH_NAND3 U125 ( .A(n124), .B(n125), .C(n91), .Z(n123) );
  GTECH_OA21 U126 ( .A(n78), .B(n79), .C(n91), .Z(N41) );
  GTECH_AO21 U127 ( .A(n83), .B(St), .C(n126), .Z(N40) );
  GTECH_AO21 U128 ( .A(n78), .B(n91), .C(n90), .Z(n126) );
  GTECH_NOT U129 ( .A(n121), .Z(n90) );
  GTECH_OR3 U130 ( .A(n124), .B(n80), .C(n125), .Z(n121) );
  GTECH_OA21 U131 ( .A(n124), .B(n125), .C(n80), .Z(n91) );
  GTECH_NOT U132 ( .A(n78), .Z(n124) );
  GTECH_AND3 U133 ( .A(n79), .B(n78), .C(n80), .Z(n83) );
  GTECH_NOR3 U134 ( .A(n78), .B(n80), .C(n125), .Z(Done) );
  GTECH_NOT U135 ( .A(n79), .Z(n125) );
endmodule

