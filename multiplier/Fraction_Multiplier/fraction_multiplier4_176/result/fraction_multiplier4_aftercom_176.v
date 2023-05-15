
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n72, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n84) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U79 ( .Z(n72) );
  GTECH_AND_NOT U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n93), .Z(n90) );
  GTECH_NOR2 U84 ( .A(n92), .B(n13), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n94), .Z(N57) );
  GTECH_OAI2N2 U86 ( .A(n15), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U89 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(n14), .Z(N48) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(n101), .Z(n98) );
  GTECH_NOT U92 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U93 ( .A(n102), .B(n93), .Z(n97) );
  GTECH_NOT U94 ( .A(n85), .Z(n93) );
  GTECH_MUX2 U95 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI2N2 U96 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_OAI2N2 U97 ( .A(n105), .B(n107), .C(n104), .D(n108), .Z(n99) );
  GTECH_OAI21 U98 ( .A(Mcand[2]), .B(n109), .C(n110), .Z(n104) );
  GTECH_AO21 U99 ( .A(n109), .B(Mcand[2]), .C(n111), .Z(n110) );
  GTECH_NOT U100 ( .A(n80), .Z(n111) );
  GTECH_ADD_ABC U101 ( .A(n112), .B(Mcand[2]), .C(n80), .COUT(n105) );
  GTECH_AOI21 U102 ( .A(n113), .B(n114), .C(n115), .Z(n112) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n80), .Z(N46) );
  GTECH_NOT U104 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n118) );
  GTECH_OR_NOT U106 ( .A(n85), .B(n121), .Z(n116) );
  GTECH_MUX2 U107 ( .A(n120), .B(n119), .S(Mcand[2]), .Z(n121) );
  GTECH_AOI2N2 U108 ( .A(n109), .B(n108), .C(n122), .D(n107), .Z(n119) );
  GTECH_AOI2N2 U109 ( .A(n122), .B(n106), .C(n109), .D(n103), .Z(n120) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n123), .C(n124), .COUT(n109) );
  GTECH_AND_NOT U111 ( .A(Mcand[0]), .B(n81), .Z(n123) );
  GTECH_AO21 U112 ( .A(n114), .B(n113), .C(n115), .Z(n122) );
  GTECH_NOT U113 ( .A(n89), .Z(n114) );
  GTECH_OR_NOT U114 ( .A(n125), .B(n126), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n127), .B(n128), .S(n124), .Z(n126) );
  GTECH_AOI21 U116 ( .A(Mcand[1]), .B(n129), .C(n85), .Z(n128) );
  GTECH_AND2 U117 ( .A(n13), .B(n94), .Z(n85) );
  GTECH_NOT U118 ( .A(n92), .Z(n94) );
  GTECH_NOR2 U119 ( .A(n96), .B(n95), .Z(n92) );
  GTECH_OR_NOT U120 ( .A(Mcand[1]), .B(n129), .Z(n127) );
  GTECH_OAI2N2 U121 ( .A(n130), .B(n103), .C(n89), .D(n106), .Z(n129) );
  GTECH_NOT U122 ( .A(n107), .Z(n106) );
  GTECH_AOI222 U123 ( .A(n113), .B(n131), .C(n132), .D(n107), .E(n89), .F(n103), .Z(n125) );
  GTECH_AND_NOT U124 ( .A(Mcand[0]), .B(n91), .Z(n89) );
  GTECH_NOT U125 ( .A(n81), .Z(n91) );
  GTECH_OR_NOT U126 ( .A(n13), .B(n95), .Z(n107) );
  GTECH_OR_NOT U127 ( .A(n103), .B(n130), .Z(n132) );
  GTECH_OR_NOT U128 ( .A(n81), .B(Mcand[0]), .Z(n130) );
  GTECH_NOT U129 ( .A(n108), .Z(n103) );
  GTECH_NOR2 U130 ( .A(n133), .B(n13), .Z(n108) );
  GTECH_NOT U131 ( .A(n115), .Z(n131) );
  GTECH_NOR2 U132 ( .A(n82), .B(Mcand[1]), .Z(n115) );
  GTECH_OR_NOT U133 ( .A(n124), .B(Mcand[1]), .Z(n113) );
  GTECH_NOT U134 ( .A(n82), .Z(n124) );
  GTECH_OR_NOT U135 ( .A(n95), .B(n134), .Z(N42) );
  GTECH_NAND3 U136 ( .A(n135), .B(n136), .C(n96), .Z(n134) );
  GTECH_AOI21 U137 ( .A(n136), .B(n135), .C(n133), .Z(N41) );
  GTECH_NOT U138 ( .A(n96), .Z(n133) );
  GTECH_NOT U139 ( .A(n12), .Z(n135) );
  GTECH_AO21 U140 ( .A(n87), .B(St), .C(n137), .Z(N40) );
  GTECH_AO21 U141 ( .A(n96), .B(n83), .C(n95), .Z(n137) );
  GTECH_AND3 U142 ( .A(n12), .B(n138), .C(n83), .Z(n95) );
  GTECH_AOI21 U143 ( .A(n12), .B(n83), .C(n138), .Z(n96) );
  GTECH_AND3 U144 ( .A(n83), .B(n12), .C(n84), .Z(n87) );
  GTECH_AND3 U145 ( .A(n136), .B(n138), .C(n12), .Z(Done) );
  GTECH_NOT U146 ( .A(n84), .Z(n138) );
  GTECH_NOT U147 ( .A(n83), .Z(n136) );
endmodule

