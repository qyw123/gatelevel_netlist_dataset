
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n72, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n81) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n13) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n82) );
  GTECH_ZERO U80 ( .Z(n72) );
  GTECH_AND2 U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_AO21 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .Z(N58) );
  GTECH_OAI22 U83 ( .A(n80), .B(n89), .C(n90), .D(n91), .Z(n88) );
  GTECH_OR2 U84 ( .A(n81), .B(n92), .Z(n91) );
  GTECH_OA21 U85 ( .A(Mcand[0]), .B(n92), .C(n86), .Z(n89) );
  GTECH_AO21 U86 ( .A(St), .B(n87), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n14), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n15), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n94), .B(n95), .S(n96), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n97), .B(n98), .S(n13), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n98) );
  GTECH_OR_NOT U93 ( .A(n101), .B(n86), .Z(n97) );
  GTECH_MUX2 U94 ( .A(n99), .B(n100), .S(n96), .Z(n101) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n96) );
  GTECH_AO22 U96 ( .A(n102), .B(n103), .C(n104), .D(n105), .Z(n100) );
  GTECH_OAI22 U97 ( .A(n103), .B(n106), .C(n105), .D(n107), .Z(n99) );
  GTECH_AOI22 U98 ( .A(n108), .B(n82), .C(n109), .D(Mcand[2]), .Z(n105) );
  GTECH_OR2 U99 ( .A(n109), .B(Mcand[2]), .Z(n108) );
  GTECH_ADD_ABC U100 ( .A(n110), .B(n111), .C(n82), .COUT(n103) );
  GTECH_MUX2 U101 ( .A(n112), .B(n113), .S(n82), .Z(N46) );
  GTECH_NOT U102 ( .A(n114), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n114) );
  GTECH_NAND2 U104 ( .A(n117), .B(n86), .Z(n112) );
  GTECH_MUX2 U105 ( .A(n115), .B(n116), .S(n110), .Z(n117) );
  GTECH_NOT U106 ( .A(Mcand[2]), .Z(n110) );
  GTECH_OA22 U107 ( .A(n118), .B(n106), .C(n109), .D(n107), .Z(n116) );
  GTECH_AOI2N2 U108 ( .A(n109), .B(n104), .C(n111), .D(n106), .Z(n115) );
  GTECH_NOT U109 ( .A(n118), .Z(n111) );
  GTECH_ADD_ABC U110 ( .A(Mcand[1]), .B(n119), .C(n120), .COUT(n118) );
  GTECH_NOT U111 ( .A(n83), .Z(n120) );
  GTECH_ADD_ABC U112 ( .A(n121), .B(Mcand[1]), .C(n83), .COUT(n109) );
  GTECH_AND2 U113 ( .A(Mcand[0]), .B(n80), .Z(n121) );
  GTECH_MUX2 U114 ( .A(n122), .B(n123), .S(n83), .Z(N44) );
  GTECH_NOT U115 ( .A(n124), .Z(n123) );
  GTECH_MUX2 U116 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n124) );
  GTECH_NAND2 U117 ( .A(n127), .B(n86), .Z(n122) );
  GTECH_NAND2 U118 ( .A(n93), .B(n81), .Z(n86) );
  GTECH_NOT U119 ( .A(n92), .Z(n93) );
  GTECH_NOR2 U120 ( .A(n95), .B(n94), .Z(n92) );
  GTECH_MUX2 U121 ( .A(n126), .B(n125), .S(Mcand[1]), .Z(n127) );
  GTECH_AOI2N2 U122 ( .A(n119), .B(n102), .C(n90), .D(n107), .Z(n125) );
  GTECH_NOT U123 ( .A(n104), .Z(n107) );
  GTECH_AOI2N2 U124 ( .A(n90), .B(n104), .C(n119), .D(n106), .Z(n126) );
  GTECH_NOT U125 ( .A(n102), .Z(n106) );
  GTECH_AND_NOT U126 ( .A(n94), .B(n81), .Z(n102) );
  GTECH_AND_NOT U127 ( .A(Mcand[0]), .B(n80), .Z(n119) );
  GTECH_NOR2 U128 ( .A(n128), .B(n81), .Z(n104) );
  GTECH_NAND2 U129 ( .A(Mcand[0]), .B(n80), .Z(n90) );
  GTECH_OR_NOT U130 ( .A(n95), .B(n129), .Z(N42) );
  GTECH_NAND3 U131 ( .A(n130), .B(n131), .C(n94), .Z(n129) );
  GTECH_OA21 U132 ( .A(n12), .B(n84), .C(n94), .Z(N41) );
  GTECH_AO21 U133 ( .A(St), .B(n87), .C(n132), .Z(N40) );
  GTECH_AO21 U134 ( .A(n94), .B(n84), .C(n95), .Z(n132) );
  GTECH_NOT U135 ( .A(n128), .Z(n95) );
  GTECH_OR3 U136 ( .A(n130), .B(n85), .C(n131), .Z(n128) );
  GTECH_OA21 U137 ( .A(n131), .B(n130), .C(n85), .Z(n94) );
  GTECH_NOT U138 ( .A(n84), .Z(n131) );
  GTECH_AND3 U139 ( .A(n84), .B(n12), .C(n85), .Z(n87) );
  GTECH_NOR3 U140 ( .A(n84), .B(n85), .C(n130), .Z(Done) );
  GTECH_NOT U141 ( .A(n12), .Z(n130) );
endmodule

