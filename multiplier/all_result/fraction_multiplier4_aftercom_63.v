
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n74, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n85) );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n84) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n83) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n82) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n15) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U80 ( .Z(n74) );
  GTECH_AND_NOT U81 ( .A(N57), .B(n86), .Z(N63) );
  GTECH_NOT U82 ( .A(n87), .Z(N58) );
  GTECH_AOI222 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .D(n90), .E(n91), .F(n92), .Z(n87) );
  GTECH_NOT U84 ( .A(n93), .Z(n91) );
  GTECH_AOI21 U85 ( .A(n94), .B(n95), .C(n86), .Z(n93) );
  GTECH_NOT U86 ( .A(Mcand[0]), .Z(n94) );
  GTECH_NOR2 U87 ( .A(n96), .B(n84), .Z(n89) );
  GTECH_NOT U88 ( .A(n97), .Z(N57) );
  GTECH_AOI21 U89 ( .A(n88), .B(St), .C(n95), .Z(n97) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n96), .C(Mplier[2]), .D(n88), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n96), .C(Mplier[1]), .D(n88), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n18), .B(n96), .C(Mplier[0]), .D(n88), .Z(N52) );
  GTECH_OAI2N2 U93 ( .A(Mcand[3]), .B(n98), .C(n99), .D(Mcand[3]), .Z(N50) );
  GTECH_OAI21 U94 ( .A(n100), .B(n101), .C(n102), .Z(N48) );
  GTECH_OAI21 U95 ( .A(n86), .B(n103), .C(n101), .Z(n102) );
  GTECH_AO22 U96 ( .A(n104), .B(Mcand[3]), .C(n105), .D(n106), .Z(n103) );
  GTECH_NOT U97 ( .A(n14), .Z(n101) );
  GTECH_AOI22 U98 ( .A(n106), .B(Mcand[3]), .C(n105), .D(n104), .Z(n100) );
  GTECH_OAI2N2 U99 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(n104) );
  GTECH_NOT U100 ( .A(Mcand[3]), .Z(n105) );
  GTECH_OAI2N2 U101 ( .A(n111), .B(n109), .C(n112), .D(n107), .Z(n106) );
  GTECH_OA21 U102 ( .A(n113), .B(n114), .C(n115), .Z(n107) );
  GTECH_OAI21 U103 ( .A(Mcand[2]), .B(n116), .C(n117), .Z(n115) );
  GTECH_OAI21 U104 ( .A(n118), .B(n114), .C(n119), .Z(n109) );
  GTECH_OAI21 U105 ( .A(Mcand[2]), .B(n120), .C(n15), .Z(n119) );
  GTECH_OAI21 U106 ( .A(n117), .B(n121), .C(n122), .Z(N46) );
  GTECH_OAI21 U107 ( .A(n86), .B(n123), .C(n117), .Z(n122) );
  GTECH_AO22 U108 ( .A(n124), .B(Mcand[2]), .C(n114), .D(n125), .Z(n123) );
  GTECH_AOI22 U109 ( .A(n125), .B(Mcand[2]), .C(n114), .D(n124), .Z(n121) );
  GTECH_OAI2N2 U110 ( .A(n118), .B(n111), .C(n116), .D(n112), .Z(n124) );
  GTECH_NOT U111 ( .A(n120), .Z(n118) );
  GTECH_NOT U112 ( .A(Mcand[2]), .Z(n114) );
  GTECH_OAI2N2 U113 ( .A(n120), .B(n111), .C(n113), .D(n112), .Z(n125) );
  GTECH_NOT U114 ( .A(n116), .Z(n113) );
  GTECH_ADD_ABC U115 ( .A(Mcand[1]), .B(n126), .C(n127), .COUT(n116) );
  GTECH_ADD_ABC U116 ( .A(n128), .B(Mcand[1]), .C(n82), .COUT(n120) );
  GTECH_AND2 U117 ( .A(Mcand[0]), .B(n83), .Z(n128) );
  GTECH_NOT U118 ( .A(n15), .Z(n117) );
  GTECH_OAI21 U119 ( .A(n127), .B(n129), .C(n130), .Z(N44) );
  GTECH_OAI21 U120 ( .A(n86), .B(n131), .C(n127), .Z(n130) );
  GTECH_AO22 U121 ( .A(n132), .B(Mcand[1]), .C(n133), .D(n134), .Z(n131) );
  GTECH_AND2 U122 ( .A(n84), .B(n95), .Z(n86) );
  GTECH_NOT U123 ( .A(n96), .Z(n95) );
  GTECH_NOR2 U124 ( .A(n135), .B(n99), .Z(n96) );
  GTECH_AOI22 U125 ( .A(n134), .B(Mcand[1]), .C(n133), .D(n132), .Z(n129) );
  GTECH_AO22 U126 ( .A(n126), .B(n112), .C(n90), .D(n110), .Z(n132) );
  GTECH_NOT U127 ( .A(Mcand[1]), .Z(n133) );
  GTECH_OAI22 U128 ( .A(n90), .B(n111), .C(n126), .D(n108), .Z(n134) );
  GTECH_NOT U129 ( .A(n112), .Z(n108) );
  GTECH_NOR2 U130 ( .A(n136), .B(n84), .Z(n112) );
  GTECH_AND2 U131 ( .A(Mcand[0]), .B(n92), .Z(n126) );
  GTECH_NOT U132 ( .A(n110), .Z(n111) );
  GTECH_NOR2 U133 ( .A(n98), .B(n84), .Z(n110) );
  GTECH_AND_NOT U134 ( .A(Mcand[0]), .B(n92), .Z(n90) );
  GTECH_NOT U135 ( .A(n83), .Z(n92) );
  GTECH_NOT U136 ( .A(n82), .Z(n127) );
  GTECH_NAND2 U137 ( .A(n98), .B(n137), .Z(N42) );
  GTECH_NAND3 U138 ( .A(n138), .B(n139), .C(n99), .Z(n137) );
  GTECH_OA21 U139 ( .A(n12), .B(n85), .C(n99), .Z(N41) );
  GTECH_NOT U140 ( .A(n140), .Z(N40) );
  GTECH_AOI21 U141 ( .A(n88), .B(St), .C(n141), .Z(n140) );
  GTECH_OAI21 U142 ( .A(n138), .B(n136), .C(n98), .Z(n141) );
  GTECH_NOT U143 ( .A(n135), .Z(n98) );
  GTECH_NOR3 U144 ( .A(n138), .B(n13), .C(n139), .Z(n135) );
  GTECH_NOT U145 ( .A(n99), .Z(n136) );
  GTECH_AOI21 U146 ( .A(n12), .B(n85), .C(n142), .Z(n99) );
  GTECH_NOR3 U147 ( .A(n139), .B(n138), .C(n142), .Z(n88) );
  GTECH_NOT U148 ( .A(n85), .Z(n139) );
  GTECH_AND3 U149 ( .A(n138), .B(n142), .C(n85), .Z(Done) );
  GTECH_NOT U150 ( .A(n13), .Z(n142) );
  GTECH_NOT U151 ( .A(n12), .Z(n138) );
endmodule

