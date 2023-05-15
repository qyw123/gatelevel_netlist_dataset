
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n72, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n84) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n83) );
  GTECH_FJK1S B_reg_0_ ( .J(n72), .K(n72), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n12) );
  GTECH_FJK1S A_reg_3_ ( .J(n72), .K(n72), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n80) );
  GTECH_FJK1S A_reg_0_ ( .J(n72), .K(n72), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n13) );
  GTECH_FJK1S A_reg_1_ ( .J(n72), .K(n72), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n72), .K(n72), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n72), .K(n72), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n72), .K(n72), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n72), .K(n72), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U80 ( .Z(n72) );
  GTECH_AND2 U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_OAI21 U84 ( .A(Mcand[0]), .B(n93), .C(n86), .Z(n91) );
  GTECH_AND_NOT U85 ( .A(n94), .B(n12), .Z(n89) );
  GTECH_AO21 U86 ( .A(n88), .B(St), .C(n94), .Z(N57) );
  GTECH_AO22 U87 ( .A(Mplier[2]), .B(n88), .C(n94), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U88 ( .A(Mplier[1]), .B(n88), .C(n94), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U89 ( .A(Mplier[0]), .B(n88), .C(n94), .D(Product[1]), .Z(N52) );
  GTECH_NOT U90 ( .A(n93), .Z(n94) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(n97), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n80), .Z(N48) );
  GTECH_NOT U93 ( .A(n100), .Z(n99) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n100) );
  GTECH_NAND2 U95 ( .A(n103), .B(n86), .Z(n98) );
  GTECH_MUX2 U96 ( .A(n101), .B(n102), .S(n97), .Z(n103) );
  GTECH_NOT U97 ( .A(Mcand[3]), .Z(n97) );
  GTECH_AOI2N2 U98 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n102) );
  GTECH_AOI2N2 U99 ( .A(n106), .B(n108), .C(n105), .D(n109), .Z(n101) );
  GTECH_ADD_ABC U100 ( .A(n110), .B(n111), .C(n112), .COUT(n105) );
  GTECH_OAI22 U101 ( .A(n90), .B(n113), .C(n82), .D(Mcand[1]), .Z(n111) );
  GTECH_AOI21 U102 ( .A(n110), .B(n114), .C(n115), .Z(n106) );
  GTECH_AOI21 U103 ( .A(n116), .B(Mcand[2]), .C(n112), .Z(n115) );
  GTECH_NOT U104 ( .A(n81), .Z(n112) );
  GTECH_NOT U105 ( .A(n116), .Z(n114) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(n81), .Z(N46) );
  GTECH_MUX2 U107 ( .A(n119), .B(n120), .S(n110), .Z(n118) );
  GTECH_NOT U108 ( .A(Mcand[2]), .Z(n110) );
  GTECH_OR_NOT U109 ( .A(n121), .B(n86), .Z(n117) );
  GTECH_MUX2 U110 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n121) );
  GTECH_AO22 U111 ( .A(n116), .B(n108), .C(n122), .D(n104), .Z(n120) );
  GTECH_OAI22 U112 ( .A(n116), .B(n107), .C(n122), .D(n109), .Z(n119) );
  GTECH_NOT U113 ( .A(n104), .Z(n109) );
  GTECH_OA22 U114 ( .A(n82), .B(Mcand[1]), .C(n90), .D(n113), .Z(n122) );
  GTECH_ADD_ABC U115 ( .A(n123), .B(Mcand[1]), .C(n124), .COUT(n116) );
  GTECH_AND2 U116 ( .A(Mcand[0]), .B(n92), .Z(n123) );
  GTECH_AO21 U117 ( .A(n125), .B(n113), .C(n126), .Z(N44) );
  GTECH_NOT U118 ( .A(n127), .Z(n126) );
  GTECH_MUX2 U119 ( .A(n128), .B(n129), .S(n82), .Z(n127) );
  GTECH_OR2 U120 ( .A(Mcand[1]), .B(n130), .Z(n129) );
  GTECH_AND_NOT U121 ( .A(n86), .B(n131), .Z(n128) );
  GTECH_MUX2 U122 ( .A(n125), .B(n132), .S(Mcand[1]), .Z(n131) );
  GTECH_NOT U123 ( .A(n130), .Z(n132) );
  GTECH_AOI2N2 U124 ( .A(n90), .B(n104), .C(n133), .D(n107), .Z(n130) );
  GTECH_OR_NOT U125 ( .A(n93), .B(n12), .Z(n86) );
  GTECH_AND_NOT U126 ( .A(n134), .B(n96), .Z(n93) );
  GTECH_AND_NOT U127 ( .A(Mcand[1]), .B(n124), .Z(n113) );
  GTECH_NOT U128 ( .A(n82), .Z(n124) );
  GTECH_AOI21 U129 ( .A(n107), .B(n90), .C(n135), .Z(n125) );
  GTECH_AOI21 U130 ( .A(n133), .B(n108), .C(n104), .Z(n135) );
  GTECH_AND_NOT U131 ( .A(n96), .B(n12), .Z(n104) );
  GTECH_NAND2 U132 ( .A(n92), .B(Mcand[0]), .Z(n133) );
  GTECH_AND_NOT U133 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOT U134 ( .A(n13), .Z(n92) );
  GTECH_NOT U135 ( .A(n108), .Z(n107) );
  GTECH_AND_NOT U136 ( .A(n95), .B(n12), .Z(n108) );
  GTECH_OR_NOT U137 ( .A(n96), .B(n136), .Z(N42) );
  GTECH_NAND3 U138 ( .A(n137), .B(n138), .C(n95), .Z(n136) );
  GTECH_AOI21 U139 ( .A(n138), .B(n137), .C(n134), .Z(N41) );
  GTECH_NOT U140 ( .A(n95), .Z(n134) );
  GTECH_AO21 U141 ( .A(n88), .B(St), .C(n139), .Z(N40) );
  GTECH_AO21 U142 ( .A(n95), .B(n84), .C(n96), .Z(n139) );
  GTECH_AND_NOT U143 ( .A(n140), .B(n85), .Z(n96) );
  GTECH_AND2 U144 ( .A(n85), .B(n141), .Z(n95) );
  GTECH_AND_NOT U145 ( .A(n85), .B(n141), .Z(n88) );
  GTECH_NOT U146 ( .A(n140), .Z(n141) );
  GTECH_AND_NOT U147 ( .A(n83), .B(n138), .Z(n140) );
  GTECH_NOT U148 ( .A(n84), .Z(n138) );
  GTECH_NOR3 U149 ( .A(n84), .B(n85), .C(n137), .Z(Done) );
  GTECH_NOT U150 ( .A(n83), .Z(n137) );
endmodule

