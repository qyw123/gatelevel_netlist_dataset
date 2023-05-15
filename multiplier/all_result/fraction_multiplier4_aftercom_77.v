
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n19, n74, n82, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n82), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n82), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n82), .Q(State[1]), .QN(n87)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n74), .K(n74), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n74), .K(n74), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n74), .K(n74), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n74), .K(n74), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n86) );
  GTECH_FJK1S A_reg_2_ ( .J(n74), .K(n74), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n16) );
  GTECH_FJK1S B_reg_3_ ( .J(n74), .K(n74), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n17) );
  GTECH_FJK1S B_reg_2_ ( .J(n74), .K(n74), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n18) );
  GTECH_FJK1S B_reg_1_ ( .J(n74), .K(n74), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n19) );
  GTECH_ONE U82 ( .Z(n82) );
  GTECH_ZERO U83 ( .Z(n74) );
  GTECH_AND2 U84 ( .A(n88), .B(N57), .Z(N63) );
  GTECH_AO21 U85 ( .A(Mplier[3]), .B(n89), .C(n90), .Z(N58) );
  GTECH_MUX2 U86 ( .A(n91), .B(n92), .S(n85), .Z(n90) );
  GTECH_NOR3 U87 ( .A(n93), .B(n14), .C(n94), .Z(n92) );
  GTECH_OAI21 U88 ( .A(Mcand[0]), .B(n93), .C(n88), .Z(n91) );
  GTECH_OAI21 U89 ( .A(n95), .B(n96), .C(n93), .Z(N57) );
  GTECH_OAI2N2 U90 ( .A(n17), .B(n93), .C(Mplier[2]), .D(n89), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n18), .B(n93), .C(Mplier[1]), .D(n89), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n19), .B(n93), .C(Mplier[0]), .D(n89), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n97), .B(n98), .S(n99), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n15), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U96 ( .A(n104), .B(n88), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n102), .B(n103), .S(n99), .Z(n104) );
  GTECH_NOT U98 ( .A(Mcand[3]), .Z(n99) );
  GTECH_AO22 U99 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n103) );
  GTECH_OAI22 U100 ( .A(n105), .B(n109), .C(n107), .D(n110), .Z(n102) );
  GTECH_OA21 U101 ( .A(n111), .B(n112), .C(n113), .Z(n107) );
  GTECH_AO21 U102 ( .A(n112), .B(n111), .C(n114), .Z(n113) );
  GTECH_NOT U103 ( .A(n16), .Z(n114) );
  GTECH_OA21 U104 ( .A(n115), .B(n112), .C(n116), .Z(n105) );
  GTECH_AO21 U105 ( .A(n112), .B(n115), .C(n16), .Z(n116) );
  GTECH_MUX2 U106 ( .A(n117), .B(n118), .S(n16), .Z(N46) );
  GTECH_NOT U107 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U108 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_NAND2 U109 ( .A(n122), .B(n88), .Z(n117) );
  GTECH_MUX2 U110 ( .A(n120), .B(n121), .S(n112), .Z(n122) );
  GTECH_NOT U111 ( .A(Mcand[2]), .Z(n112) );
  GTECH_AOI22 U112 ( .A(n115), .B(n106), .C(n111), .D(n108), .Z(n121) );
  GTECH_OA22 U113 ( .A(n115), .B(n109), .C(n111), .D(n110), .Z(n120) );
  GTECH_OA22 U114 ( .A(n123), .B(n124), .C(n125), .D(n126), .Z(n111) );
  GTECH_OAI21 U115 ( .A(Mcand[1]), .B(n86), .C(Mcand[0]), .Z(n126) );
  GTECH_OA21 U116 ( .A(n86), .B(n123), .C(n127), .Z(n115) );
  GTECH_OAI21 U117 ( .A(Mcand[1]), .B(n124), .C(n128), .Z(n127) );
  GTECH_NOT U118 ( .A(n86), .Z(n124) );
  GTECH_MUX2 U119 ( .A(n129), .B(n130), .S(n86), .Z(N44) );
  GTECH_MUX2 U120 ( .A(n131), .B(n132), .S(n123), .Z(n130) );
  GTECH_NOT U121 ( .A(Mcand[1]), .Z(n123) );
  GTECH_NOR2 U122 ( .A(n94), .B(n133), .Z(n132) );
  GTECH_OR_NOT U123 ( .A(n134), .B(n88), .Z(n129) );
  GTECH_OR_NOT U124 ( .A(n93), .B(n14), .Z(n88) );
  GTECH_AND_NOT U125 ( .A(n135), .B(n97), .Z(n93) );
  GTECH_MUX2 U126 ( .A(n131), .B(n136), .S(Mcand[1]), .Z(n134) );
  GTECH_AND_NOT U127 ( .A(Mcand[0]), .B(n133), .Z(n136) );
  GTECH_MUX2 U128 ( .A(n109), .B(n110), .S(n85), .Z(n133) );
  GTECH_NOT U129 ( .A(n108), .Z(n110) );
  GTECH_OAI21 U130 ( .A(n128), .B(n109), .C(n137), .Z(n131) );
  GTECH_OAI21 U131 ( .A(n94), .B(n125), .C(n108), .Z(n137) );
  GTECH_AND_NOT U132 ( .A(n98), .B(n14), .Z(n108) );
  GTECH_NOT U133 ( .A(n106), .Z(n109) );
  GTECH_AND_NOT U134 ( .A(n97), .B(n14), .Z(n106) );
  GTECH_AND_NOT U135 ( .A(n125), .B(n94), .Z(n128) );
  GTECH_NOT U136 ( .A(Mcand[0]), .Z(n94) );
  GTECH_NOT U137 ( .A(n85), .Z(n125) );
  GTECH_NAND2 U138 ( .A(n135), .B(n138), .Z(N42) );
  GTECH_NAND3 U139 ( .A(n139), .B(n140), .C(n97), .Z(n138) );
  GTECH_NOT U140 ( .A(n98), .Z(n135) );
  GTECH_OA21 U141 ( .A(n12), .B(n87), .C(n97), .Z(N41) );
  GTECH_OAI21 U142 ( .A(n95), .B(n96), .C(n141), .Z(N40) );
  GTECH_AOI21 U143 ( .A(n12), .B(n97), .C(n98), .Z(n141) );
  GTECH_AND3 U144 ( .A(n12), .B(n142), .C(n87), .Z(n98) );
  GTECH_OA21 U145 ( .A(n139), .B(n140), .C(n13), .Z(n97) );
  GTECH_NOT U146 ( .A(n87), .Z(n140) );
  GTECH_NOT U147 ( .A(St), .Z(n96) );
  GTECH_NOT U148 ( .A(n89), .Z(n95) );
  GTECH_AND3 U149 ( .A(n87), .B(n12), .C(n13), .Z(n89) );
  GTECH_AND3 U150 ( .A(n139), .B(n142), .C(n87), .Z(Done) );
  GTECH_NOT U151 ( .A(n13), .Z(n142) );
  GTECH_NOT U152 ( .A(n12), .Z(n139) );
endmodule

