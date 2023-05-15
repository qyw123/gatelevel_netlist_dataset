
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n13, n14, n15, n16, n17, n18, n19, n72, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n82) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .QN(n81) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ZERO U77 ( .Z(n72) );
  GTECH_AND2 U78 ( .A(N57), .B(n84), .Z(N63) );
  GTECH_NOT U79 ( .A(n85), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n86), .C(n87), .D(n88), .E(n89), .F(n90), .Z(n85) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n91), .C(n84), .Z(n89) );
  GTECH_AND_NOT U82 ( .A(n92), .B(n13), .Z(n87) );
  GTECH_AO21 U83 ( .A(n86), .B(St), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n17), .B(n91), .C(Mplier[2]), .D(n86), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n18), .B(n91), .C(Mplier[1]), .D(n86), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n19), .B(n91), .C(Mplier[0]), .D(n86), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n93), .B(n94), .S(Mcand[3]), .Z(N50) );
  GTECH_NOT U88 ( .A(n95), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n96), .B(n97), .S(n14), .Z(n95) );
  GTECH_MUX2 U90 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(n97) );
  GTECH_AND2 U91 ( .A(n100), .B(n84), .Z(n96) );
  GTECH_MUX2 U92 ( .A(n99), .B(n98), .S(Mcand[3]), .Z(n100) );
  GTECH_AOI2N2 U93 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n98) );
  GTECH_AOI2N2 U94 ( .A(n103), .B(n105), .C(n101), .D(n106), .Z(n99) );
  GTECH_OAI21 U95 ( .A(n107), .B(n108), .C(n109), .Z(n101) );
  GTECH_AO21 U96 ( .A(n108), .B(n107), .C(n16), .Z(n109) );
  GTECH_AOI21 U97 ( .A(n110), .B(Mcand[2]), .C(n111), .Z(n103) );
  GTECH_OA21 U98 ( .A(Mcand[2]), .B(n110), .C(n16), .Z(n111) );
  GTECH_NOT U99 ( .A(n112), .Z(N46) );
  GTECH_MUX2 U100 ( .A(n113), .B(n114), .S(n16), .Z(n112) );
  GTECH_MUX2 U101 ( .A(n115), .B(n116), .S(n108), .Z(n114) );
  GTECH_AND_NOT U102 ( .A(n117), .B(n118), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n116), .B(n115), .S(n108), .Z(n117) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n108) );
  GTECH_AOI2N2 U105 ( .A(n107), .B(n102), .C(n110), .D(n104), .Z(n115) );
  GTECH_AOI2N2 U106 ( .A(n110), .B(n105), .C(n107), .D(n106), .Z(n116) );
  GTECH_ADD_ABC U107 ( .A(n119), .B(n120), .C(n80), .COUT(n107) );
  GTECH_ADD_ABC U108 ( .A(n121), .B(Mcand[1]), .C(n80), .COUT(n110) );
  GTECH_AND2 U109 ( .A(Mcand[0]), .B(n15), .Z(n121) );
  GTECH_NOT U110 ( .A(n122), .Z(N44) );
  GTECH_MUX2 U111 ( .A(n123), .B(n124), .S(n80), .Z(n122) );
  GTECH_MUX2 U112 ( .A(n125), .B(n126), .S(n119), .Z(n124) );
  GTECH_NOT U113 ( .A(Mcand[1]), .Z(n119) );
  GTECH_AND2 U114 ( .A(n127), .B(n84), .Z(n123) );
  GTECH_NOT U115 ( .A(n118), .Z(n84) );
  GTECH_AND_NOT U116 ( .A(n13), .B(n91), .Z(n118) );
  GTECH_NOT U117 ( .A(n92), .Z(n91) );
  GTECH_OR2 U118 ( .A(n94), .B(n93), .Z(n92) );
  GTECH_MUX2 U119 ( .A(n125), .B(n126), .S(Mcand[1]), .Z(n127) );
  GTECH_AOI2N2 U120 ( .A(n88), .B(n105), .C(n120), .D(n106), .Z(n126) );
  GTECH_OAI21 U121 ( .A(n105), .B(n120), .C(n128), .Z(n125) );
  GTECH_OAI21 U122 ( .A(n88), .B(n104), .C(n106), .Z(n128) );
  GTECH_NOT U123 ( .A(n102), .Z(n106) );
  GTECH_AND_NOT U124 ( .A(n94), .B(n13), .Z(n102) );
  GTECH_NOT U125 ( .A(n105), .Z(n104) );
  GTECH_AND_NOT U126 ( .A(Mcand[0]), .B(n90), .Z(n88) );
  GTECH_NOT U127 ( .A(n15), .Z(n90) );
  GTECH_OR2 U128 ( .A(n129), .B(n15), .Z(n120) );
  GTECH_NOT U129 ( .A(Mcand[0]), .Z(n129) );
  GTECH_AND_NOT U130 ( .A(n93), .B(n13), .Z(n105) );
  GTECH_AO21 U131 ( .A(n94), .B(n130), .C(n93), .Z(N42) );
  GTECH_NOR2 U132 ( .A(n81), .B(n82), .Z(n130) );
  GTECH_OA21 U133 ( .A(n81), .B(n82), .C(n94), .Z(N41) );
  GTECH_AO21 U134 ( .A(n86), .B(St), .C(n131), .Z(N40) );
  GTECH_AO21 U135 ( .A(n82), .B(n94), .C(n93), .Z(n131) );
  GTECH_AND3 U136 ( .A(n81), .B(n132), .C(n82), .Z(n93) );
  GTECH_AOI21 U137 ( .A(n81), .B(n82), .C(n132), .Z(n94) );
  GTECH_AND3 U138 ( .A(n82), .B(n81), .C(n83), .Z(n86) );
  GTECH_AND3 U139 ( .A(n133), .B(n132), .C(n81), .Z(Done) );
  GTECH_NOT U140 ( .A(n83), .Z(n132) );
  GTECH_NOT U141 ( .A(n82), .Z(n133) );
endmodule

