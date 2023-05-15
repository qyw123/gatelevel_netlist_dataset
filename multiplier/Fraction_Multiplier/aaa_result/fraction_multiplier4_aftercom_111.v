
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n71, n79, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143;
  wire   [2:0] State;

  GTECH_FD2 State_reg_0_ ( .D(N40), .CP(CLK), .CD(n79), .Q(State[0]), .QN(n12)
         );
  GTECH_FD2 State_reg_2_ ( .D(N42), .CP(CLK), .CD(n79), .Q(State[2]), .QN(n13)
         );
  GTECH_FD2 State_reg_1_ ( .D(N41), .CP(CLK), .CD(n79), .Q(State[1]), .QN(n87)
         );
  GTECH_FJK1S B_reg_0_ ( .J(n71), .K(n71), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n86) );
  GTECH_FJK1S A_reg_3_ ( .J(n71), .K(n71), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n71), .K(n71), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n85) );
  GTECH_FJK1S A_reg_1_ ( .J(n71), .K(n71), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n71), .K(n71), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n71), .K(n71), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(n71), .K(n71), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(n71), .K(n71), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_ONE U81 ( .Z(n79) );
  GTECH_ZERO U82 ( .Z(n71) );
  GTECH_AND2 U83 ( .A(n88), .B(N57), .Z(N63) );
  GTECH_NOT U84 ( .A(n89), .Z(N58) );
  GTECH_AOI222 U85 ( .A(Mplier[3]), .B(n90), .C(n91), .D(n92), .E(n93), .F(n94), .Z(n89) );
  GTECH_OAI21 U86 ( .A(Mcand[0]), .B(n95), .C(n88), .Z(n93) );
  GTECH_NOR2 U87 ( .A(n95), .B(n86), .Z(n91) );
  GTECH_OAI21 U88 ( .A(n96), .B(n97), .C(n95), .Z(N57) );
  GTECH_OAI2N2 U89 ( .A(n15), .B(n95), .C(Mplier[2]), .D(n90), .Z(N56) );
  GTECH_OAI2N2 U90 ( .A(n16), .B(n95), .C(Mplier[1]), .D(n90), .Z(N54) );
  GTECH_OAI2N2 U91 ( .A(n17), .B(n95), .C(Mplier[0]), .D(n90), .Z(N52) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U93 ( .A(n100), .B(n101), .S(n82), .Z(N48) );
  GTECH_MUX2 U94 ( .A(n102), .B(n103), .S(n104), .Z(n101) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n104) );
  GTECH_OR_NOT U96 ( .A(n105), .B(n88), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n105) );
  GTECH_OAI22 U98 ( .A(n106), .B(n107), .C(n108), .D(n109), .Z(n103) );
  GTECH_AO22 U99 ( .A(n106), .B(n110), .C(n108), .D(n111), .Z(n102) );
  GTECH_OA21 U100 ( .A(n112), .B(n113), .C(n114), .Z(n108) );
  GTECH_OAI21 U101 ( .A(Mcand[2]), .B(n115), .C(n83), .Z(n114) );
  GTECH_OA21 U102 ( .A(n116), .B(n113), .C(n117), .Z(n106) );
  GTECH_AO21 U103 ( .A(n113), .B(n116), .C(n83), .Z(n117) );
  GTECH_MUX2 U104 ( .A(n118), .B(n119), .S(n83), .Z(N46) );
  GTECH_NOT U105 ( .A(n120), .Z(n119) );
  GTECH_MUX2 U106 ( .A(n121), .B(n122), .S(n113), .Z(n120) );
  GTECH_NOT U107 ( .A(Mcand[2]), .Z(n113) );
  GTECH_NAND2 U108 ( .A(n123), .B(n88), .Z(n118) );
  GTECH_MUX2 U109 ( .A(n121), .B(n122), .S(Mcand[2]), .Z(n123) );
  GTECH_OA22 U110 ( .A(n116), .B(n107), .C(n112), .D(n109), .Z(n122) );
  GTECH_AOI22 U111 ( .A(n116), .B(n110), .C(n112), .D(n111), .Z(n121) );
  GTECH_NOT U112 ( .A(n115), .Z(n112) );
  GTECH_ADD_ABC U113 ( .A(n124), .B(Mcand[1]), .C(n84), .COUT(n115) );
  GTECH_AND_NOT U114 ( .A(Mcand[0]), .B(n94), .Z(n124) );
  GTECH_NOT U115 ( .A(n107), .Z(n110) );
  GTECH_OA21 U116 ( .A(n84), .B(n125), .C(n126), .Z(n116) );
  GTECH_OR3 U117 ( .A(n127), .B(n85), .C(n128), .Z(n126) );
  GTECH_AO21 U118 ( .A(n129), .B(n127), .C(n130), .Z(N44) );
  GTECH_NOT U119 ( .A(n131), .Z(n130) );
  GTECH_MUX2 U120 ( .A(n132), .B(n133), .S(n84), .Z(n131) );
  GTECH_OR_NOT U121 ( .A(n125), .B(n134), .Z(n133) );
  GTECH_AND_NOT U122 ( .A(n88), .B(n135), .Z(n132) );
  GTECH_MUX2 U123 ( .A(n129), .B(n134), .S(n125), .Z(n135) );
  GTECH_OAI21 U124 ( .A(n92), .B(n109), .C(n136), .Z(n134) );
  GTECH_AO21 U125 ( .A(n94), .B(Mcand[0]), .C(n107), .Z(n136) );
  GTECH_NOT U126 ( .A(n85), .Z(n94) );
  GTECH_NOT U127 ( .A(n111), .Z(n109) );
  GTECH_OR_NOT U128 ( .A(n95), .B(n86), .Z(n88) );
  GTECH_NOR2 U129 ( .A(n98), .B(n99), .Z(n95) );
  GTECH_AND2 U130 ( .A(n84), .B(n125), .Z(n127) );
  GTECH_NOT U131 ( .A(Mcand[1]), .Z(n125) );
  GTECH_AO21 U132 ( .A(n92), .B(n111), .C(n137), .Z(n129) );
  GTECH_NOR3 U133 ( .A(n128), .B(n85), .C(n107), .Z(n137) );
  GTECH_OR_NOT U134 ( .A(n86), .B(n99), .Z(n107) );
  GTECH_NOR2 U135 ( .A(n138), .B(n86), .Z(n111) );
  GTECH_NOT U136 ( .A(n98), .Z(n138) );
  GTECH_AND_NOT U137 ( .A(n85), .B(n128), .Z(n92) );
  GTECH_NOT U138 ( .A(Mcand[0]), .Z(n128) );
  GTECH_OR_NOT U139 ( .A(n98), .B(n139), .Z(N42) );
  GTECH_NAND3 U140 ( .A(n140), .B(n141), .C(n99), .Z(n139) );
  GTECH_OA21 U141 ( .A(n12), .B(n87), .C(n99), .Z(N41) );
  GTECH_OAI21 U142 ( .A(n96), .B(n97), .C(n142), .Z(N40) );
  GTECH_AOI21 U143 ( .A(n12), .B(n99), .C(n98), .Z(n142) );
  GTECH_NOR3 U144 ( .A(n140), .B(n13), .C(n141), .Z(n98) );
  GTECH_AOI21 U145 ( .A(n12), .B(n87), .C(n143), .Z(n99) );
  GTECH_NOT U146 ( .A(St), .Z(n97) );
  GTECH_NOT U147 ( .A(n90), .Z(n96) );
  GTECH_NOR3 U148 ( .A(n141), .B(n140), .C(n143), .Z(n90) );
  GTECH_NOT U149 ( .A(n13), .Z(n143) );
  GTECH_NOT U150 ( .A(n12), .Z(n140) );
  GTECH_NOR3 U151 ( .A(n12), .B(n13), .C(n141), .Z(Done) );
  GTECH_NOT U152 ( .A(n87), .Z(n141) );
endmodule

