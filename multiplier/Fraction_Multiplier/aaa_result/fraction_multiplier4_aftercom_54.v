
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n14) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n15) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND2 U80 ( .A(n85), .B(N57), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_AND_NOT U84 ( .A(n93), .B(n12), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n16), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n17), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n18), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_NOT U89 ( .A(n93), .Z(n92) );
  GTECH_MUX2 U90 ( .A(n94), .B(n95), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(n13), .Z(N48) );
  GTECH_NOT U92 ( .A(n98), .Z(n97) );
  GTECH_MUX2 U93 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_NAND2 U94 ( .A(n101), .B(n85), .Z(n96) );
  GTECH_MUX2 U95 ( .A(n100), .B(n99), .S(Mcand[3]), .Z(n101) );
  GTECH_OA22 U96 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n99) );
  GTECH_AOI22 U97 ( .A(n104), .B(n106), .C(n102), .D(n107), .Z(n100) );
  GTECH_OA21 U98 ( .A(n108), .B(n109), .C(n110), .Z(n102) );
  GTECH_OAI21 U99 ( .A(Mcand[2]), .B(n111), .C(n81), .Z(n110) );
  GTECH_OA21 U100 ( .A(n112), .B(n109), .C(n113), .Z(n104) );
  GTECH_AO21 U101 ( .A(n109), .B(n112), .C(n81), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n81), .Z(N46) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n109), .Z(n115) );
  GTECH_OR_NOT U104 ( .A(n118), .B(n85), .Z(n114) );
  GTECH_MUX2 U105 ( .A(n117), .B(n116), .S(n109), .Z(n118) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n109) );
  GTECH_AO22 U107 ( .A(n108), .B(n107), .C(n112), .D(n106), .Z(n116) );
  GTECH_NOT U108 ( .A(n111), .Z(n108) );
  GTECH_OAI2N2 U109 ( .A(n112), .B(n105), .C(n111), .D(n107), .Z(n117) );
  GTECH_OAI21 U110 ( .A(n119), .B(n120), .C(n121), .Z(n111) );
  GTECH_OAI21 U111 ( .A(n89), .B(Mcand[1]), .C(n15), .Z(n121) );
  GTECH_OA21 U112 ( .A(n120), .B(n122), .C(n123), .Z(n112) );
  GTECH_AO21 U113 ( .A(n122), .B(n120), .C(n15), .Z(n123) );
  GTECH_MUX2 U114 ( .A(n124), .B(n125), .S(n15), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n126), .B(n127), .S(n120), .Z(n125) );
  GTECH_OR_NOT U116 ( .A(n128), .B(n85), .Z(n124) );
  GTECH_NAND2 U117 ( .A(n93), .B(n12), .Z(n85) );
  GTECH_OR2 U118 ( .A(n95), .B(n94), .Z(n93) );
  GTECH_MUX2 U119 ( .A(n127), .B(n126), .S(n120), .Z(n128) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n120) );
  GTECH_OAI2N2 U121 ( .A(n129), .B(n105), .C(n119), .D(n107), .Z(n126) );
  GTECH_NOT U122 ( .A(n89), .Z(n119) );
  GTECH_OAI2N2 U123 ( .A(n122), .B(n105), .C(n89), .D(n107), .Z(n127) );
  GTECH_NOT U124 ( .A(n103), .Z(n107) );
  GTECH_OR_NOT U125 ( .A(n12), .B(n94), .Z(n103) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U127 ( .A(n106), .Z(n105) );
  GTECH_AND_NOT U128 ( .A(n95), .B(n12), .Z(n106) );
  GTECH_NOT U129 ( .A(n129), .Z(n122) );
  GTECH_AND2 U130 ( .A(Mcand[0]), .B(n91), .Z(n129) );
  GTECH_NOT U131 ( .A(n14), .Z(n91) );
  GTECH_OR_NOT U132 ( .A(n94), .B(n130), .Z(N42) );
  GTECH_NAND3 U133 ( .A(n131), .B(n132), .C(n95), .Z(n130) );
  GTECH_OA21 U134 ( .A(n82), .B(n83), .C(n95), .Z(N41) );
  GTECH_AO21 U135 ( .A(n87), .B(St), .C(n133), .Z(N40) );
  GTECH_AO21 U136 ( .A(n82), .B(n95), .C(n94), .Z(n133) );
  GTECH_NOR3 U137 ( .A(n131), .B(n84), .C(n132), .Z(n94) );
  GTECH_OA21 U138 ( .A(n131), .B(n132), .C(n84), .Z(n95) );
  GTECH_NOT U139 ( .A(n82), .Z(n131) );
  GTECH_AND3 U140 ( .A(n83), .B(n82), .C(n84), .Z(n87) );
  GTECH_NOR3 U141 ( .A(n82), .B(n84), .C(n132), .Z(Done) );
  GTECH_NOT U142 ( .A(n83), .Z(n132) );
endmodule

