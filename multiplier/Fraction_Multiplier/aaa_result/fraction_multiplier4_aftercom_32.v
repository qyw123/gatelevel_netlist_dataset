
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n73, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n16) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U78 ( .Z(n73) );
  GTECH_AND_NOT U79 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U80 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_AO21 U82 ( .A(n91), .B(n92), .C(n84), .Z(n89) );
  GTECH_AND_NOT U83 ( .A(n91), .B(n13), .Z(n87) );
  GTECH_AO21 U84 ( .A(St), .B(n86), .C(n91), .Z(N57) );
  GTECH_NOT U85 ( .A(n93), .Z(n91) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n96), .B(n97), .S(n14), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_OR2 U92 ( .A(n100), .B(n84), .Z(n96) );
  GTECH_MUX2 U93 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_OAI22 U94 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AO22 U95 ( .A(n104), .B(n105), .C(n101), .D(n106), .Z(n99) );
  GTECH_ADD_ABC U96 ( .A(n107), .B(n108), .C(n81), .COUT(n101) );
  GTECH_ADD_ABC U97 ( .A(n108), .B(n109), .C(n110), .COUT(n104) );
  GTECH_NOT U98 ( .A(n81), .Z(n110) );
  GTECH_MUX2 U99 ( .A(n111), .B(n112), .S(n81), .Z(N46) );
  GTECH_NOT U100 ( .A(n113), .Z(n112) );
  GTECH_MUX2 U101 ( .A(n114), .B(n115), .S(n108), .Z(n113) );
  GTECH_OR_NOT U102 ( .A(n84), .B(n116), .Z(n111) );
  GTECH_MUX2 U103 ( .A(n115), .B(n114), .S(n108), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n108) );
  GTECH_AOI22 U105 ( .A(n107), .B(n106), .C(n109), .D(n105), .Z(n114) );
  GTECH_OA22 U106 ( .A(n107), .B(n102), .C(n109), .D(n103), .Z(n115) );
  GTECH_ADD_ABC U107 ( .A(n117), .B(n118), .C(n119), .COUT(n109) );
  GTECH_NOT U108 ( .A(n16), .Z(n119) );
  GTECH_NAND2 U109 ( .A(Mcand[0]), .B(n15), .Z(n118) );
  GTECH_ADD_ABC U110 ( .A(n117), .B(n120), .C(n16), .COUT(n107) );
  GTECH_OR_NOT U111 ( .A(n15), .B(Mcand[0]), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n121), .B(n122), .S(n16), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n123), .B(n124), .S(n117), .Z(n122) );
  GTECH_NOT U114 ( .A(Mcand[1]), .Z(n117) );
  GTECH_OR2 U115 ( .A(n125), .B(n84), .Z(n121) );
  GTECH_AND_NOT U116 ( .A(n13), .B(n93), .Z(n84) );
  GTECH_AND_NOT U117 ( .A(n126), .B(n94), .Z(n93) );
  GTECH_MUX2 U118 ( .A(n123), .B(n124), .S(Mcand[1]), .Z(n125) );
  GTECH_AO22 U119 ( .A(n127), .B(n106), .C(n88), .D(n105), .Z(n124) );
  GTECH_OAI22 U120 ( .A(n127), .B(n102), .C(n88), .D(n103), .Z(n123) );
  GTECH_NOT U121 ( .A(n105), .Z(n103) );
  GTECH_AND_NOT U122 ( .A(n94), .B(n13), .Z(n105) );
  GTECH_AND_NOT U123 ( .A(n15), .B(n92), .Z(n88) );
  GTECH_NOT U124 ( .A(Mcand[0]), .Z(n92) );
  GTECH_NOT U125 ( .A(n106), .Z(n102) );
  GTECH_AND_NOT U126 ( .A(n95), .B(n13), .Z(n106) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n90), .Z(n127) );
  GTECH_NOT U128 ( .A(n15), .Z(n90) );
  GTECH_OR_NOT U129 ( .A(n94), .B(n128), .Z(N42) );
  GTECH_NAND3 U130 ( .A(n129), .B(n130), .C(n95), .Z(n128) );
  GTECH_AOI21 U131 ( .A(n130), .B(n129), .C(n126), .Z(N41) );
  GTECH_AO21 U132 ( .A(St), .B(n86), .C(n131), .Z(N40) );
  GTECH_AO21 U133 ( .A(n95), .B(n82), .C(n94), .Z(n131) );
  GTECH_AND3 U134 ( .A(n12), .B(n132), .C(n82), .Z(n94) );
  GTECH_NOT U135 ( .A(n126), .Z(n95) );
  GTECH_AO21 U136 ( .A(n82), .B(n12), .C(n132), .Z(n126) );
  GTECH_NOR3 U137 ( .A(n130), .B(n129), .C(n132), .Z(n86) );
  GTECH_NOT U138 ( .A(n12), .Z(n129) );
  GTECH_AND3 U139 ( .A(n130), .B(n132), .C(n12), .Z(Done) );
  GTECH_NOT U140 ( .A(n83), .Z(n132) );
  GTECH_NOT U141 ( .A(n82), .Z(n130) );
endmodule

