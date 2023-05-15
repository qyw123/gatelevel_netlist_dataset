
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
         n134, n135;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n81) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n14) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U79 ( .Z(n72) );
  GTECH_AND2 U80 ( .A(n85), .B(N57), .Z(N63) );
  GTECH_AO21 U81 ( .A(Mplier[3]), .B(n86), .C(n87), .Z(N58) );
  GTECH_OAI21 U82 ( .A(n80), .B(n88), .C(n89), .Z(n87) );
  GTECH_OR3 U83 ( .A(n90), .B(n81), .C(n91), .Z(n89) );
  GTECH_OA21 U84 ( .A(Mcand[0]), .B(n90), .C(n85), .Z(n88) );
  GTECH_AO21 U85 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_NOT U86 ( .A(n90), .Z(n92) );
  GTECH_OAI2N2 U87 ( .A(n15), .B(n90), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n16), .B(n90), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n17), .B(n90), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(n13), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(n96) );
  GTECH_OR2 U93 ( .A(n99), .B(n100), .Z(n95) );
  GTECH_MUX2 U94 ( .A(n98), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_AO22 U95 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n97) );
  GTECH_OAI22 U96 ( .A(n101), .B(n105), .C(n103), .D(n106), .Z(n98) );
  GTECH_ADD_ABC U97 ( .A(n107), .B(Mcand[2]), .C(n14), .COUT(n103) );
  GTECH_OAI21 U98 ( .A(n108), .B(n109), .C(n110), .Z(n101) );
  GTECH_AO21 U99 ( .A(n109), .B(n108), .C(n14), .Z(n110) );
  GTECH_MUX2 U100 ( .A(n111), .B(n112), .S(n14), .Z(N46) );
  GTECH_NOT U101 ( .A(n113), .Z(n112) );
  GTECH_MUX2 U102 ( .A(n114), .B(n115), .S(n109), .Z(n113) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n109) );
  GTECH_NAND2 U104 ( .A(n85), .B(n116), .Z(n111) );
  GTECH_MUX2 U105 ( .A(n114), .B(n115), .S(Mcand[2]), .Z(n116) );
  GTECH_AOI2N2 U106 ( .A(n107), .B(n104), .C(n108), .D(n105), .Z(n115) );
  GTECH_AOI2N2 U107 ( .A(n108), .B(n102), .C(n107), .D(n106), .Z(n114) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n117), .C(n82), .COUT(n107) );
  GTECH_AND2 U109 ( .A(n80), .B(Mcand[0]), .Z(n117) );
  GTECH_OA21 U110 ( .A(n82), .B(n118), .C(n119), .Z(n108) );
  GTECH_OR3 U111 ( .A(n120), .B(n80), .C(n121), .Z(n119) );
  GTECH_OR_NOT U112 ( .A(n122), .B(n123), .Z(N44) );
  GTECH_MUX2 U113 ( .A(n124), .B(n125), .S(n82), .Z(n123) );
  GTECH_NAND2 U114 ( .A(Mcand[1]), .B(n126), .Z(n125) );
  GTECH_NOR2 U115 ( .A(n100), .B(n127), .Z(n124) );
  GTECH_MUX2 U116 ( .A(n128), .B(n126), .S(n118), .Z(n127) );
  GTECH_AO21 U117 ( .A(n91), .B(n104), .C(n129), .Z(n126) );
  GTECH_OA21 U118 ( .A(n80), .B(n121), .C(n102), .Z(n129) );
  GTECH_OR_NOT U119 ( .A(n121), .B(n80), .Z(n91) );
  GTECH_NOT U120 ( .A(Mcand[0]), .Z(n121) );
  GTECH_AND2 U121 ( .A(n130), .B(Mcand[0]), .Z(n128) );
  GTECH_NOT U122 ( .A(n85), .Z(n100) );
  GTECH_OR_NOT U123 ( .A(n90), .B(n81), .Z(n85) );
  GTECH_NOR2 U124 ( .A(n94), .B(n93), .Z(n90) );
  GTECH_AND3 U125 ( .A(Mcand[0]), .B(n130), .C(n120), .Z(n122) );
  GTECH_AND2 U126 ( .A(n82), .B(n118), .Z(n120) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n118) );
  GTECH_MUX2 U128 ( .A(n102), .B(n104), .S(n80), .Z(n130) );
  GTECH_NOT U129 ( .A(n106), .Z(n104) );
  GTECH_OR_NOT U130 ( .A(n81), .B(n93), .Z(n106) );
  GTECH_NOT U131 ( .A(n105), .Z(n102) );
  GTECH_OR_NOT U132 ( .A(n81), .B(n94), .Z(n105) );
  GTECH_OR_NOT U133 ( .A(n93), .B(n131), .Z(N42) );
  GTECH_NAND3 U134 ( .A(n132), .B(n133), .C(n94), .Z(n131) );
  GTECH_OA21 U135 ( .A(n12), .B(n84), .C(n94), .Z(N41) );
  GTECH_AO21 U136 ( .A(n86), .B(St), .C(n134), .Z(N40) );
  GTECH_AO21 U137 ( .A(n12), .B(n94), .C(n93), .Z(n134) );
  GTECH_NOR3 U138 ( .A(n132), .B(n83), .C(n133), .Z(n93) );
  GTECH_AOI21 U139 ( .A(n12), .B(n84), .C(n135), .Z(n94) );
  GTECH_NOR3 U140 ( .A(n133), .B(n132), .C(n135), .Z(n86) );
  GTECH_NOT U141 ( .A(n84), .Z(n133) );
  GTECH_AND3 U142 ( .A(n132), .B(n135), .C(n84), .Z(Done) );
  GTECH_NOT U143 ( .A(n83), .Z(n135) );
  GTECH_NOT U144 ( .A(n12), .Z(n132) );
endmodule

