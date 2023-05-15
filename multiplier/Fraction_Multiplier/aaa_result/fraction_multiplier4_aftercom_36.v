
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
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n83) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n82) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n12) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n13) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U80 ( .Z(n72) );
  GTECH_AND_NOT U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_AO21 U84 ( .A(n93), .B(n94), .C(n86), .Z(n91) );
  GTECH_AND_NOT U85 ( .A(n95), .B(n96), .Z(n89) );
  GTECH_AO21 U86 ( .A(St), .B(n88), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U87 ( .A(n14), .B(n96), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n15), .B(n96), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n16), .B(n96), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n97), .B(n98), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n99), .B(n100), .S(n12), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n100) );
  GTECH_OR2 U93 ( .A(n103), .B(n86), .Z(n99) );
  GTECH_MUX2 U94 ( .A(n102), .B(n101), .S(Mcand[3]), .Z(n103) );
  GTECH_OAI2N2 U95 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n101) );
  GTECH_OAI2N2 U96 ( .A(n106), .B(n108), .C(n109), .D(n104), .Z(n102) );
  GTECH_OA22 U97 ( .A(n110), .B(n111), .C(n112), .D(n113), .Z(n104) );
  GTECH_AND_NOT U98 ( .A(n111), .B(n114), .Z(n112) );
  GTECH_OA22 U99 ( .A(Mcand[2]), .B(n115), .C(n116), .D(n113), .Z(n106) );
  GTECH_AND_NOT U100 ( .A(n115), .B(n111), .Z(n116) );
  GTECH_MUX2 U101 ( .A(n117), .B(n118), .S(n113), .Z(N46) );
  GTECH_NOT U102 ( .A(n80), .Z(n113) );
  GTECH_OR_NOT U103 ( .A(n86), .B(n119), .Z(n118) );
  GTECH_MUX2 U104 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_NOT U105 ( .A(n122), .Z(n117) );
  GTECH_MUX2 U106 ( .A(n120), .B(n121), .S(n111), .Z(n122) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n111) );
  GTECH_AOI22 U108 ( .A(n115), .B(n107), .C(n114), .D(n109), .Z(n121) );
  GTECH_AOI2N2 U109 ( .A(n110), .B(n109), .C(n115), .D(n108), .Z(n120) );
  GTECH_OAI22 U110 ( .A(n81), .B(n123), .C(n94), .D(n124), .Z(n115) );
  GTECH_OR_NOT U111 ( .A(n125), .B(n92), .Z(n124) );
  GTECH_NOT U112 ( .A(n114), .Z(n110) );
  GTECH_ADD_ABC U113 ( .A(n126), .B(Mcand[1]), .C(n81), .COUT(n114) );
  GTECH_AND_NOT U114 ( .A(n13), .B(n94), .Z(n126) );
  GTECH_AO21 U115 ( .A(n125), .B(n127), .C(n128), .Z(N44) );
  GTECH_MUX2 U116 ( .A(n129), .B(n130), .S(n81), .Z(n128) );
  GTECH_AND_NOT U117 ( .A(n131), .B(n123), .Z(n130) );
  GTECH_NOT U118 ( .A(Mcand[1]), .Z(n123) );
  GTECH_OR2 U119 ( .A(n132), .B(n86), .Z(n129) );
  GTECH_AND_NOT U120 ( .A(n93), .B(n95), .Z(n86) );
  GTECH_NOT U121 ( .A(n96), .Z(n93) );
  GTECH_AND_NOT U122 ( .A(n133), .B(n97), .Z(n96) );
  GTECH_MUX2 U123 ( .A(n131), .B(n127), .S(Mcand[1]), .Z(n132) );
  GTECH_OAI22 U124 ( .A(n90), .B(n105), .C(n134), .D(n108), .Z(n131) );
  GTECH_AND_NOT U125 ( .A(n92), .B(n94), .Z(n134) );
  GTECH_NOT U126 ( .A(Mcand[0]), .Z(n94) );
  GTECH_NOT U127 ( .A(n13), .Z(n92) );
  GTECH_NOT U128 ( .A(n109), .Z(n105) );
  GTECH_OAI2N2 U129 ( .A(n108), .B(n135), .C(n90), .D(n109), .Z(n127) );
  GTECH_AND_NOT U130 ( .A(n95), .B(n136), .Z(n109) );
  GTECH_NOT U131 ( .A(n97), .Z(n136) );
  GTECH_NOT U132 ( .A(n82), .Z(n95) );
  GTECH_AND2 U133 ( .A(n13), .B(Mcand[0]), .Z(n90) );
  GTECH_OR_NOT U134 ( .A(n13), .B(Mcand[0]), .Z(n135) );
  GTECH_NOT U135 ( .A(n107), .Z(n108) );
  GTECH_AND_NOT U136 ( .A(n98), .B(n82), .Z(n107) );
  GTECH_AND_NOT U137 ( .A(n81), .B(Mcand[1]), .Z(n125) );
  GTECH_OR_NOT U138 ( .A(n97), .B(n137), .Z(N42) );
  GTECH_OR3 U139 ( .A(n83), .B(n84), .C(n133), .Z(n137) );
  GTECH_AOI21 U140 ( .A(n138), .B(n139), .C(n133), .Z(N41) );
  GTECH_NOT U141 ( .A(n98), .Z(n133) );
  GTECH_AO21 U142 ( .A(St), .B(n88), .C(n140), .Z(N40) );
  GTECH_AO21 U143 ( .A(n98), .B(n83), .C(n97), .Z(n140) );
  GTECH_NOR3 U144 ( .A(n138), .B(n85), .C(n139), .Z(n97) );
  GTECH_OA21 U145 ( .A(n139), .B(n138), .C(n85), .Z(n98) );
  GTECH_NOT U146 ( .A(n83), .Z(n138) );
  GTECH_AND3 U147 ( .A(n84), .B(n83), .C(n85), .Z(n88) );
  GTECH_NOR3 U148 ( .A(n83), .B(n85), .C(n139), .Z(Done) );
  GTECH_NOT U149 ( .A(n84), .Z(n139) );
endmodule

