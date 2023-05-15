
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n14, n15, n16, n73, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n86) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n87) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n81) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .QN(
        n83) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n85) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n84) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n14) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n15) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n16) );
  GTECH_ZERO U81 ( .Z(n73) );
  GTECH_AND_NOT U82 ( .A(n88), .B(n89), .Z(N63) );
  GTECH_NOT U83 ( .A(n90), .Z(N58) );
  GTECH_AOI21 U84 ( .A(Mplier[3]), .B(n91), .C(n92), .Z(n90) );
  GTECH_OAI22 U85 ( .A(n93), .B(n94), .C(n82), .D(n95), .Z(n92) );
  GTECH_OA21 U86 ( .A(Mcand[0]), .B(n96), .C(n88), .Z(n95) );
  GTECH_OR2 U87 ( .A(n81), .B(n96), .Z(n94) );
  GTECH_NOT U88 ( .A(n89), .Z(N57) );
  GTECH_AOI21 U89 ( .A(n91), .B(St), .C(n97), .Z(n89) );
  GTECH_OAI2N2 U90 ( .A(n14), .B(n96), .C(Mplier[2]), .D(n91), .Z(N56) );
  GTECH_OAI2N2 U91 ( .A(n15), .B(n96), .C(Mplier[1]), .D(n91), .Z(N54) );
  GTECH_OAI2N2 U92 ( .A(n16), .B(n96), .C(Mplier[0]), .D(n91), .Z(N52) );
  GTECH_MUX2 U93 ( .A(n98), .B(n99), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n83), .Z(N48) );
  GTECH_MUX2 U95 ( .A(n102), .B(n103), .S(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U96 ( .A(n104), .B(n88), .Z(n100) );
  GTECH_MUX2 U97 ( .A(n103), .B(n102), .S(Mcand[3]), .Z(n104) );
  GTECH_OAI2N2 U98 ( .A(n105), .B(n106), .C(n107), .D(n108), .Z(n102) );
  GTECH_OAI2N2 U99 ( .A(n107), .B(n109), .C(n105), .D(n110), .Z(n103) );
  GTECH_OA22 U100 ( .A(n111), .B(n112), .C(n84), .D(n113), .Z(n105) );
  GTECH_AND_NOT U101 ( .A(n112), .B(n114), .Z(n113) );
  GTECH_OAI2N2 U102 ( .A(n115), .B(n112), .C(n116), .D(n84), .Z(n107) );
  GTECH_OR_NOT U103 ( .A(Mcand[2]), .B(n115), .Z(n116) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n112) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(n84), .Z(N46) );
  GTECH_NOT U106 ( .A(n119), .Z(n118) );
  GTECH_MUX2 U107 ( .A(n120), .B(n121), .S(Mcand[2]), .Z(n119) );
  GTECH_NAND2 U108 ( .A(n122), .B(n88), .Z(n117) );
  GTECH_MUX2 U109 ( .A(n121), .B(n120), .S(Mcand[2]), .Z(n122) );
  GTECH_AOI2N2 U110 ( .A(n123), .B(n108), .C(n111), .D(n106), .Z(n120) );
  GTECH_NOT U111 ( .A(n114), .Z(n111) );
  GTECH_AOI2N2 U112 ( .A(n115), .B(n108), .C(n114), .D(n106), .Z(n121) );
  GTECH_NOT U113 ( .A(n110), .Z(n106) );
  GTECH_ADD_ABC U114 ( .A(Mcand[1]), .B(n124), .C(n125), .COUT(n114) );
  GTECH_AND_NOT U115 ( .A(Mcand[0]), .B(n82), .Z(n124) );
  GTECH_NOT U116 ( .A(n123), .Z(n115) );
  GTECH_ADD_ABC U117 ( .A(n126), .B(Mcand[1]), .C(n85), .COUT(n123) );
  GTECH_AND_NOT U118 ( .A(Mcand[0]), .B(n127), .Z(n126) );
  GTECH_NOT U119 ( .A(n82), .Z(n127) );
  GTECH_MUX2 U120 ( .A(n128), .B(n129), .S(n125), .Z(N44) );
  GTECH_NOT U121 ( .A(n85), .Z(n125) );
  GTECH_NAND2 U122 ( .A(n88), .B(n130), .Z(n129) );
  GTECH_MUX2 U123 ( .A(n131), .B(n132), .S(Mcand[1]), .Z(n130) );
  GTECH_NAND2 U124 ( .A(n97), .B(n81), .Z(n88) );
  GTECH_NOT U125 ( .A(n96), .Z(n97) );
  GTECH_NOR2 U126 ( .A(n98), .B(n99), .Z(n96) );
  GTECH_NOT U127 ( .A(n133), .Z(n128) );
  GTECH_MUX2 U128 ( .A(n132), .B(n131), .S(Mcand[1]), .Z(n133) );
  GTECH_OAI22 U129 ( .A(n108), .B(n134), .C(n110), .D(n135), .Z(n131) );
  GTECH_AND_NOT U130 ( .A(n93), .B(n109), .Z(n135) );
  GTECH_NOT U131 ( .A(n108), .Z(n109) );
  GTECH_NAND2 U132 ( .A(n82), .B(Mcand[0]), .Z(n93) );
  GTECH_OR_NOT U133 ( .A(n82), .B(Mcand[0]), .Z(n134) );
  GTECH_NAND2 U134 ( .A(n136), .B(Mcand[0]), .Z(n132) );
  GTECH_MUX2 U135 ( .A(n110), .B(n108), .S(n82), .Z(n136) );
  GTECH_NOR2 U136 ( .A(n137), .B(n81), .Z(n108) );
  GTECH_NOT U137 ( .A(n98), .Z(n137) );
  GTECH_AND_NOT U138 ( .A(n99), .B(n81), .Z(n110) );
  GTECH_OR_NOT U139 ( .A(n98), .B(n138), .Z(N42) );
  GTECH_NAND3 U140 ( .A(n139), .B(n140), .C(n99), .Z(n138) );
  GTECH_OA21 U141 ( .A(n12), .B(n86), .C(n99), .Z(N41) );
  GTECH_NOT U142 ( .A(n141), .Z(N40) );
  GTECH_AOI21 U143 ( .A(n91), .B(St), .C(n142), .Z(n141) );
  GTECH_NOT U144 ( .A(n143), .Z(n142) );
  GTECH_AOI21 U145 ( .A(n86), .B(n99), .C(n98), .Z(n143) );
  GTECH_NOR3 U146 ( .A(n139), .B(n87), .C(n140), .Z(n98) );
  GTECH_AOI21 U147 ( .A(n12), .B(n86), .C(n144), .Z(n99) );
  GTECH_NOR3 U148 ( .A(n140), .B(n139), .C(n144), .Z(n91) );
  GTECH_NOT U149 ( .A(n87), .Z(n144) );
  GTECH_NOT U150 ( .A(n86), .Z(n140) );
  GTECH_NOR3 U151 ( .A(n86), .B(n87), .C(n139), .Z(Done) );
  GTECH_NOT U152 ( .A(n12), .Z(n139) );
endmodule

