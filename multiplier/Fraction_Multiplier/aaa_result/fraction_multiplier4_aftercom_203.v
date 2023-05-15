
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n68, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n76) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n78) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n77) );
  GTECH_FJK1S B_reg_0_ ( .J(n68), .K(n68), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n68), .K(n68), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n68), .K(n68), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n68), .K(n68), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n68), .K(n68), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n68), .K(n68), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n68), .K(n68), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n68), .K(n68), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U73 ( .Z(n68) );
  GTECH_AND2 U74 ( .A(N57), .B(n79), .Z(N63) );
  GTECH_NOT U75 ( .A(n80), .Z(N58) );
  GTECH_AOI222 U76 ( .A(Mplier[3]), .B(n81), .C(n82), .D(n83), .E(n84), .F(n85), .Z(n80) );
  GTECH_OAI21 U77 ( .A(Mcand[0]), .B(n86), .C(n79), .Z(n84) );
  GTECH_NOT U78 ( .A(n87), .Z(n82) );
  GTECH_OR_NOT U79 ( .A(n12), .B(n88), .Z(n87) );
  GTECH_AO21 U80 ( .A(n81), .B(St), .C(n88), .Z(N57) );
  GTECH_OAI2N2 U81 ( .A(n17), .B(n86), .C(Mplier[2]), .D(n81), .Z(N56) );
  GTECH_OAI2N2 U82 ( .A(n18), .B(n86), .C(Mplier[1]), .D(n81), .Z(N54) );
  GTECH_OAI2N2 U83 ( .A(n19), .B(n86), .C(Mplier[0]), .D(n81), .Z(N52) );
  GTECH_MUX2 U84 ( .A(n89), .B(n90), .S(n91), .Z(N50) );
  GTECH_MUX2 U85 ( .A(n92), .B(n93), .S(n13), .Z(N48) );
  GTECH_NOT U86 ( .A(n94), .Z(n93) );
  GTECH_MUX2 U87 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n94) );
  GTECH_NAND2 U88 ( .A(n97), .B(n79), .Z(n92) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(n91), .Z(n97) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n91) );
  GTECH_AOI2N2 U91 ( .A(n98), .B(n99), .C(n100), .D(n101), .Z(n96) );
  GTECH_AOI2N2 U92 ( .A(n100), .B(n102), .C(n98), .D(n103), .Z(n95) );
  GTECH_OA21 U93 ( .A(n104), .B(n105), .C(n106), .Z(n98) );
  GTECH_AO21 U94 ( .A(n105), .B(n104), .C(n107), .Z(n106) );
  GTECH_ADD_ABC U95 ( .A(Mcand[2]), .B(n108), .C(n107), .COUT(n100) );
  GTECH_NOT U96 ( .A(n16), .Z(n107) );
  GTECH_MUX2 U97 ( .A(n109), .B(n110), .S(n16), .Z(N46) );
  GTECH_NOT U98 ( .A(n111), .Z(n110) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(Mcand[2]), .Z(n111) );
  GTECH_NAND2 U100 ( .A(n114), .B(n79), .Z(n109) );
  GTECH_MUX2 U101 ( .A(n112), .B(n113), .S(n105), .Z(n114) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n105) );
  GTECH_AOI2N2 U103 ( .A(n104), .B(n99), .C(n108), .D(n101), .Z(n113) );
  GTECH_AOI2N2 U104 ( .A(n108), .B(n102), .C(n104), .D(n103), .Z(n112) );
  GTECH_ADD_ABC U105 ( .A(n115), .B(n116), .C(n117), .COUT(n104) );
  GTECH_NAND2 U106 ( .A(n14), .B(Mcand[0]), .Z(n115) );
  GTECH_ADD_ABC U107 ( .A(Mcand[1]), .B(n118), .C(n117), .COUT(n108) );
  GTECH_NOT U108 ( .A(n15), .Z(n117) );
  GTECH_MUX2 U109 ( .A(n119), .B(n120), .S(n15), .Z(N44) );
  GTECH_NOT U110 ( .A(n121), .Z(n120) );
  GTECH_MUX2 U111 ( .A(n122), .B(n123), .S(n116), .Z(n121) );
  GTECH_NAND2 U112 ( .A(n124), .B(n79), .Z(n119) );
  GTECH_OR_NOT U113 ( .A(n86), .B(n12), .Z(n79) );
  GTECH_NOT U114 ( .A(n88), .Z(n86) );
  GTECH_OR2 U115 ( .A(n89), .B(n90), .Z(n88) );
  GTECH_MUX2 U116 ( .A(n123), .B(n122), .S(n116), .Z(n124) );
  GTECH_NOT U117 ( .A(Mcand[1]), .Z(n116) );
  GTECH_OA22 U118 ( .A(n118), .B(n101), .C(n83), .D(n103), .Z(n122) );
  GTECH_AOI22 U119 ( .A(n83), .B(n99), .C(n118), .D(n102), .Z(n123) );
  GTECH_NOT U120 ( .A(n101), .Z(n102) );
  GTECH_OR_NOT U121 ( .A(n12), .B(n89), .Z(n101) );
  GTECH_AND2 U122 ( .A(n85), .B(Mcand[0]), .Z(n118) );
  GTECH_NOT U123 ( .A(n14), .Z(n85) );
  GTECH_NOT U124 ( .A(n103), .Z(n99) );
  GTECH_OR2 U125 ( .A(n12), .B(n125), .Z(n103) );
  GTECH_AND2 U126 ( .A(n14), .B(Mcand[0]), .Z(n83) );
  GTECH_NAND2 U127 ( .A(n125), .B(n126), .Z(N42) );
  GTECH_NAND3 U128 ( .A(n127), .B(n128), .C(n89), .Z(n126) );
  GTECH_OA21 U129 ( .A(n76), .B(n77), .C(n89), .Z(N41) );
  GTECH_AO21 U130 ( .A(n81), .B(St), .C(n129), .Z(N40) );
  GTECH_AO21 U131 ( .A(n76), .B(n89), .C(n90), .Z(n129) );
  GTECH_NOT U132 ( .A(n125), .Z(n90) );
  GTECH_OR3 U133 ( .A(n127), .B(n78), .C(n128), .Z(n125) );
  GTECH_OA21 U134 ( .A(n127), .B(n128), .C(n78), .Z(n89) );
  GTECH_NOT U135 ( .A(n76), .Z(n127) );
  GTECH_AND3 U136 ( .A(n77), .B(n76), .C(n78), .Z(n81) );
  GTECH_NOR3 U137 ( .A(n76), .B(n78), .C(n128), .Z(Done) );
  GTECH_NOT U138 ( .A(n77), .Z(n128) );
endmodule

