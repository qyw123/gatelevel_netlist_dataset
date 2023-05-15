
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n74, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U81 ( .Z(n74) );
  GTECH_AND2 U82 ( .A(n87), .B(N57), .Z(N63) );
  GTECH_NOT U83 ( .A(n88), .Z(N58) );
  GTECH_AOI222 U84 ( .A(Mplier[3]), .B(n89), .C(n90), .D(n91), .E(n92), .F(n93), .Z(n88) );
  GTECH_OAI21 U85 ( .A(Mcand[0]), .B(n94), .C(n87), .Z(n92) );
  GTECH_AND_NOT U86 ( .A(n95), .B(n14), .Z(n90) );
  GTECH_OAI21 U87 ( .A(n96), .B(n97), .C(n94), .Z(N57) );
  GTECH_AO22 U88 ( .A(Mplier[2]), .B(n89), .C(n95), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U89 ( .A(Mplier[1]), .B(n89), .C(n95), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U90 ( .A(Mplier[0]), .B(n89), .C(n95), .D(Product[1]), .Z(N52) );
  GTECH_NOT U91 ( .A(n94), .Z(n95) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n100), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n101), .B(n102), .S(n82), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n103), .B(n104), .S(Mcand[3]), .Z(n102) );
  GTECH_OR_NOT U95 ( .A(n105), .B(n87), .Z(n101) );
  GTECH_MUX2 U96 ( .A(n103), .B(n104), .S(n100), .Z(n105) );
  GTECH_NOT U97 ( .A(Mcand[3]), .Z(n100) );
  GTECH_AO22 U98 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n104) );
  GTECH_OAI22 U99 ( .A(n106), .B(n110), .C(n108), .D(n111), .Z(n103) );
  GTECH_OA21 U100 ( .A(n112), .B(n113), .C(n114), .Z(n108) );
  GTECH_OAI21 U101 ( .A(Mcand[2]), .B(n115), .C(n83), .Z(n114) );
  GTECH_NOT U102 ( .A(n115), .Z(n112) );
  GTECH_AOI21 U103 ( .A(n116), .B(Mcand[2]), .C(n117), .Z(n106) );
  GTECH_AOI21 U104 ( .A(n113), .B(n118), .C(n83), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n119), .B(n120), .S(n83), .Z(N46) );
  GTECH_NOT U106 ( .A(n121), .Z(n120) );
  GTECH_MUX2 U107 ( .A(n122), .B(n123), .S(Mcand[2]), .Z(n121) );
  GTECH_NAND2 U108 ( .A(n124), .B(n87), .Z(n119) );
  GTECH_MUX2 U109 ( .A(n122), .B(n123), .S(n113), .Z(n124) );
  GTECH_NOT U110 ( .A(Mcand[2]), .Z(n113) );
  GTECH_AOI2N2 U111 ( .A(n118), .B(n107), .C(n115), .D(n111), .Z(n123) );
  GTECH_AOI2N2 U112 ( .A(n115), .B(n109), .C(n118), .D(n110), .Z(n122) );
  GTECH_NOT U113 ( .A(n116), .Z(n118) );
  GTECH_ADD_ABC U114 ( .A(Mcand[1]), .B(n125), .C(n126), .COUT(n116) );
  GTECH_NOT U115 ( .A(n84), .Z(n126) );
  GTECH_AND2 U116 ( .A(Mcand[0]), .B(n93), .Z(n125) );
  GTECH_ADD_ABC U117 ( .A(n91), .B(Mcand[1]), .C(n84), .COUT(n115) );
  GTECH_MUX2 U118 ( .A(n127), .B(n128), .S(n84), .Z(N44) );
  GTECH_NOT U119 ( .A(n129), .Z(n128) );
  GTECH_MUX2 U120 ( .A(n130), .B(n131), .S(Mcand[1]), .Z(n129) );
  GTECH_NAND2 U121 ( .A(n132), .B(n87), .Z(n127) );
  GTECH_OR_NOT U122 ( .A(n94), .B(n14), .Z(n87) );
  GTECH_AND_NOT U123 ( .A(n133), .B(n98), .Z(n94) );
  GTECH_MUX2 U124 ( .A(n131), .B(n130), .S(Mcand[1]), .Z(n132) );
  GTECH_AOI2N2 U125 ( .A(n91), .B(n109), .C(n134), .D(n110), .Z(n130) );
  GTECH_NOT U126 ( .A(n107), .Z(n110) );
  GTECH_AOI2N2 U127 ( .A(n134), .B(n107), .C(n91), .D(n111), .Z(n131) );
  GTECH_NOT U128 ( .A(n109), .Z(n111) );
  GTECH_AND_NOT U129 ( .A(n99), .B(n14), .Z(n109) );
  GTECH_AND_NOT U130 ( .A(Mcand[0]), .B(n93), .Z(n91) );
  GTECH_AND_NOT U131 ( .A(n98), .B(n14), .Z(n107) );
  GTECH_NAND2 U132 ( .A(n93), .B(Mcand[0]), .Z(n134) );
  GTECH_NOT U133 ( .A(n85), .Z(n93) );
  GTECH_NAND2 U134 ( .A(n133), .B(n135), .Z(N42) );
  GTECH_NAND3 U135 ( .A(n136), .B(n137), .C(n98), .Z(n135) );
  GTECH_NOT U136 ( .A(n99), .Z(n133) );
  GTECH_OA21 U137 ( .A(n12), .B(n86), .C(n98), .Z(N41) );
  GTECH_OAI21 U138 ( .A(n96), .B(n97), .C(n138), .Z(N40) );
  GTECH_AOI21 U139 ( .A(n12), .B(n98), .C(n99), .Z(n138) );
  GTECH_AND3 U140 ( .A(n12), .B(n139), .C(n86), .Z(n99) );
  GTECH_OA21 U141 ( .A(n136), .B(n137), .C(n13), .Z(n98) );
  GTECH_NOT U142 ( .A(n86), .Z(n137) );
  GTECH_NOT U143 ( .A(St), .Z(n97) );
  GTECH_NOT U144 ( .A(n89), .Z(n96) );
  GTECH_AND3 U145 ( .A(n86), .B(n12), .C(n13), .Z(n89) );
  GTECH_AND3 U146 ( .A(n136), .B(n139), .C(n86), .Z(Done) );
  GTECH_NOT U147 ( .A(n13), .Z(n139) );
  GTECH_NOT U148 ( .A(n12), .Z(n136) );
endmodule

