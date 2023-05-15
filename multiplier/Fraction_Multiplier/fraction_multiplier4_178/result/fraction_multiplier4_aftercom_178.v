
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n75, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n75), .K(n75), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n75), .K(n75), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n75), .K(n75), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n75), .K(n75), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n75), .K(n75), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n75), .K(n75), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n75), .K(n75), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n75), .K(n75), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ZERO U82 ( .Z(n75) );
  GTECH_AND_NOT U83 ( .A(N57), .B(n88), .Z(N63) );
  GTECH_NOT U84 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_AO21 U86 ( .A(n95), .B(n96), .C(n88), .Z(n93) );
  GTECH_NOR2 U87 ( .A(n97), .B(n13), .Z(n91) );
  GTECH_AO21 U88 ( .A(n90), .B(St), .C(n96), .Z(N57) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n97), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n97), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n97), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n100), .B(n101), .S(n14), .Z(N48) );
  GTECH_NOT U94 ( .A(n102), .Z(n101) );
  GTECH_MUX2 U95 ( .A(n103), .B(n104), .S(n105), .Z(n102) );
  GTECH_NOT U96 ( .A(Mcand[3]), .Z(n105) );
  GTECH_OR_NOT U97 ( .A(n88), .B(n106), .Z(n100) );
  GTECH_MUX2 U98 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n106) );
  GTECH_AOI22 U99 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_OA22 U100 ( .A(n108), .B(n111), .C(n109), .D(n112), .Z(n103) );
  GTECH_OAI21 U101 ( .A(n113), .B(n114), .C(n115), .Z(n109) );
  GTECH_AO21 U102 ( .A(n114), .B(n113), .C(n83), .Z(n115) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n114) );
  GTECH_ADD_ABC U104 ( .A(Mcand[2]), .B(n116), .C(n83), .COUT(n108) );
  GTECH_AOI21 U105 ( .A(n117), .B(n118), .C(n119), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n120), .B(n121), .S(n83), .Z(N46) );
  GTECH_NOT U107 ( .A(n122), .Z(n121) );
  GTECH_MUX2 U108 ( .A(n123), .B(n124), .S(Mcand[2]), .Z(n122) );
  GTECH_OR_NOT U109 ( .A(n88), .B(n125), .Z(n120) );
  GTECH_MUX2 U110 ( .A(n124), .B(n123), .S(Mcand[2]), .Z(n125) );
  GTECH_OA22 U111 ( .A(n126), .B(n111), .C(n113), .D(n112), .Z(n123) );
  GTECH_AOI22 U112 ( .A(n126), .B(n107), .C(n113), .D(n110), .Z(n124) );
  GTECH_ADD_ABC U113 ( .A(n127), .B(n128), .C(n84), .COUT(n113) );
  GTECH_OR_NOT U114 ( .A(n95), .B(n94), .Z(n127) );
  GTECH_AO21 U115 ( .A(n118), .B(n117), .C(n119), .Z(n126) );
  GTECH_NOT U116 ( .A(n92), .Z(n118) );
  GTECH_OR_NOT U117 ( .A(n129), .B(n130), .Z(N44) );
  GTECH_MUX2 U118 ( .A(n131), .B(n132), .S(n84), .Z(n130) );
  GTECH_OR_NOT U119 ( .A(Mcand[1]), .B(n133), .Z(n132) );
  GTECH_AOI21 U120 ( .A(Mcand[1]), .B(n133), .C(n88), .Z(n131) );
  GTECH_AND2 U121 ( .A(n13), .B(n96), .Z(n88) );
  GTECH_NOT U122 ( .A(n97), .Z(n96) );
  GTECH_NOR2 U123 ( .A(n99), .B(n98), .Z(n97) );
  GTECH_AO22 U124 ( .A(n92), .B(n107), .C(n134), .D(n110), .Z(n133) );
  GTECH_AOI222 U125 ( .A(n117), .B(n135), .C(n136), .D(n112), .E(n134), .F(
        n111), .Z(n129) );
  GTECH_AND2 U126 ( .A(Mcand[0]), .B(n94), .Z(n134) );
  GTECH_NOT U127 ( .A(n85), .Z(n94) );
  GTECH_NOT U128 ( .A(n110), .Z(n112) );
  GTECH_NOR2 U129 ( .A(n137), .B(n13), .Z(n110) );
  GTECH_OR_NOT U130 ( .A(n92), .B(n107), .Z(n136) );
  GTECH_NOT U131 ( .A(n111), .Z(n107) );
  GTECH_OR_NOT U132 ( .A(n13), .B(n98), .Z(n111) );
  GTECH_AND_NOT U133 ( .A(n85), .B(n95), .Z(n92) );
  GTECH_NOT U134 ( .A(Mcand[0]), .Z(n95) );
  GTECH_NOT U135 ( .A(n119), .Z(n135) );
  GTECH_NOR2 U136 ( .A(Mcand[1]), .B(n84), .Z(n119) );
  GTECH_OR_NOT U137 ( .A(n128), .B(n84), .Z(n117) );
  GTECH_NOT U138 ( .A(Mcand[1]), .Z(n128) );
  GTECH_AO21 U139 ( .A(n99), .B(n138), .C(n98), .Z(N42) );
  GTECH_AND_NOT U140 ( .A(n139), .B(n86), .Z(n138) );
  GTECH_AOI21 U141 ( .A(n140), .B(n139), .C(n137), .Z(N41) );
  GTECH_AO21 U142 ( .A(n90), .B(St), .C(n141), .Z(N40) );
  GTECH_AO21 U143 ( .A(n99), .B(n86), .C(n98), .Z(n141) );
  GTECH_NOR3 U144 ( .A(n139), .B(n87), .C(n140), .Z(n98) );
  GTECH_NOT U145 ( .A(n137), .Z(n99) );
  GTECH_OAI21 U146 ( .A(n139), .B(n140), .C(n87), .Z(n137) );
  GTECH_NOT U147 ( .A(n86), .Z(n140) );
  GTECH_AND3 U148 ( .A(n86), .B(n12), .C(n87), .Z(n90) );
  GTECH_NOR3 U149 ( .A(n86), .B(n87), .C(n139), .Z(Done) );
  GTECH_NOT U150 ( .A(n12), .Z(n139) );
endmodule

