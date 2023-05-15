
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n73, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n15) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n83) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n81) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U79 ( .Z(n73) );
  GTECH_AND_NOT U80 ( .A(N57), .B(n85), .Z(N63) );
  GTECH_NOT U81 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U82 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U83 ( .A(Mcand[0]), .B(n92), .C(n93), .Z(n90) );
  GTECH_NOR2 U84 ( .A(n92), .B(n14), .Z(n88) );
  GTECH_AO21 U85 ( .A(n87), .B(St), .C(n94), .Z(N57) );
  GTECH_NOT U86 ( .A(n92), .Z(n94) );
  GTECH_OAI2N2 U87 ( .A(n16), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U88 ( .A(n17), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U89 ( .A(n18), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U90 ( .A(n95), .B(n96), .S(n97), .Z(N50) );
  GTECH_MUX2 U91 ( .A(n98), .B(n99), .S(n15), .Z(N48) );
  GTECH_MUX2 U92 ( .A(n100), .B(n101), .S(Mcand[3]), .Z(n99) );
  GTECH_OR2 U93 ( .A(n102), .B(n85), .Z(n98) );
  GTECH_MUX2 U94 ( .A(n100), .B(n101), .S(n97), .Z(n102) );
  GTECH_NOT U95 ( .A(Mcand[3]), .Z(n97) );
  GTECH_OAI2N2 U96 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n101) );
  GTECH_OAI2N2 U97 ( .A(n105), .B(n107), .C(n103), .D(n108), .Z(n100) );
  GTECH_OAI21 U98 ( .A(n109), .B(n110), .C(n111), .Z(n103) );
  GTECH_AO21 U99 ( .A(n110), .B(n109), .C(n81), .Z(n111) );
  GTECH_AOI21 U100 ( .A(n112), .B(Mcand[2]), .C(n113), .Z(n105) );
  GTECH_AOI21 U101 ( .A(n110), .B(n114), .C(n115), .Z(n113) );
  GTECH_NOT U102 ( .A(n81), .Z(n115) );
  GTECH_MUX2 U103 ( .A(n116), .B(n117), .S(n81), .Z(N46) );
  GTECH_NOT U104 ( .A(n118), .Z(n117) );
  GTECH_MUX2 U105 ( .A(n119), .B(n120), .S(Mcand[2]), .Z(n118) );
  GTECH_NAND2 U106 ( .A(n121), .B(n93), .Z(n116) );
  GTECH_NOT U107 ( .A(n85), .Z(n93) );
  GTECH_MUX2 U108 ( .A(n119), .B(n120), .S(n110), .Z(n121) );
  GTECH_NOT U109 ( .A(Mcand[2]), .Z(n110) );
  GTECH_AOI2N2 U110 ( .A(n114), .B(n106), .C(n122), .D(n104), .Z(n120) );
  GTECH_NOT U111 ( .A(n112), .Z(n114) );
  GTECH_AOI2N2 U112 ( .A(n112), .B(n106), .C(n109), .D(n104), .Z(n119) );
  GTECH_NOT U113 ( .A(n122), .Z(n109) );
  GTECH_OAI21 U114 ( .A(n83), .B(n123), .C(n124), .Z(n122) );
  GTECH_NAND3 U115 ( .A(n125), .B(n91), .C(Mcand[0]), .Z(n124) );
  GTECH_ADD_ABC U116 ( .A(n126), .B(Mcand[1]), .C(n83), .COUT(n112) );
  GTECH_AND_NOT U117 ( .A(Mcand[0]), .B(n91), .Z(n126) );
  GTECH_OAI21 U118 ( .A(n127), .B(n125), .C(n128), .Z(N44) );
  GTECH_MUX2 U119 ( .A(n129), .B(n130), .S(n83), .Z(n128) );
  GTECH_NAND2 U120 ( .A(n131), .B(Mcand[1]), .Z(n130) );
  GTECH_NOR2 U121 ( .A(n85), .B(n132), .Z(n129) );
  GTECH_MUX2 U122 ( .A(n131), .B(n133), .S(Mcand[1]), .Z(n132) );
  GTECH_AND2 U123 ( .A(n134), .B(n135), .Z(n131) );
  GTECH_NAND3 U124 ( .A(n107), .B(n91), .C(Mcand[0]), .Z(n135) );
  GTECH_OAI21 U125 ( .A(n89), .B(n107), .C(n104), .Z(n134) );
  GTECH_NOT U126 ( .A(n108), .Z(n104) );
  GTECH_NOT U127 ( .A(n106), .Z(n107) );
  GTECH_AND_NOT U128 ( .A(n14), .B(n92), .Z(n85) );
  GTECH_NOR2 U129 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_NAND2 U130 ( .A(n83), .B(n123), .Z(n125) );
  GTECH_NOT U131 ( .A(Mcand[1]), .Z(n123) );
  GTECH_NOT U132 ( .A(n133), .Z(n127) );
  GTECH_AO21 U133 ( .A(n89), .B(n106), .C(n136), .Z(n133) );
  GTECH_AND3 U134 ( .A(Mcand[0]), .B(n91), .C(n108), .Z(n136) );
  GTECH_AND_NOT U135 ( .A(n95), .B(n14), .Z(n108) );
  GTECH_NOT U136 ( .A(n82), .Z(n91) );
  GTECH_NOR2 U137 ( .A(n137), .B(n14), .Z(n106) );
  GTECH_AND2 U138 ( .A(Mcand[0]), .B(n82), .Z(n89) );
  GTECH_NAND2 U139 ( .A(n138), .B(n137), .Z(N42) );
  GTECH_NOT U140 ( .A(n96), .Z(n137) );
  GTECH_OR3 U141 ( .A(n12), .B(n84), .C(n139), .Z(n138) );
  GTECH_AOI21 U142 ( .A(n140), .B(n141), .C(n139), .Z(N41) );
  GTECH_NOT U143 ( .A(n95), .Z(n139) );
  GTECH_NOT U144 ( .A(n12), .Z(n141) );
  GTECH_AO21 U145 ( .A(n87), .B(St), .C(n142), .Z(N40) );
  GTECH_AO21 U146 ( .A(n95), .B(n12), .C(n96), .Z(n142) );
  GTECH_AND_NOT U147 ( .A(n143), .B(n13), .Z(n96) );
  GTECH_AND_NOT U148 ( .A(n13), .B(n143), .Z(n95) );
  GTECH_AND2 U149 ( .A(n13), .B(n143), .Z(n87) );
  GTECH_AND_NOT U150 ( .A(n12), .B(n140), .Z(n143) );
  GTECH_NOR3 U151 ( .A(n12), .B(n13), .C(n140), .Z(Done) );
  GTECH_NOT U152 ( .A(n84), .Z(n140) );
endmodule

