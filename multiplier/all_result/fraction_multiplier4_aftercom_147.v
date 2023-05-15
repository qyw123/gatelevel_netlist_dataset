
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63, n12,
         n13, n15, n16, n17, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n84) );
  GTECH_FJK1S B_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n83) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N63), .CP(CLK), 
        .QN(n79) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n82) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n81) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n80) );
  GTECH_FJK1S B_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n15) );
  GTECH_FJK1S B_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n16) );
  GTECH_FJK1S B_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n17) );
  GTECH_AND2 U78 ( .A(n85), .B(N57), .Z(N63) );
  GTECH_NOT U79 ( .A(n86), .Z(N58) );
  GTECH_AOI222 U80 ( .A(Mplier[3]), .B(n87), .C(n88), .D(n89), .E(n90), .F(n91), .Z(n86) );
  GTECH_OAI21 U81 ( .A(Mcand[0]), .B(n92), .C(n85), .Z(n90) );
  GTECH_NOR2 U82 ( .A(n92), .B(n83), .Z(n88) );
  GTECH_OAI21 U83 ( .A(n93), .B(n94), .C(n92), .Z(N57) );
  GTECH_OAI2N2 U84 ( .A(n15), .B(n92), .C(Mplier[2]), .D(n87), .Z(N56) );
  GTECH_OAI2N2 U85 ( .A(n16), .B(n92), .C(Mplier[1]), .D(n87), .Z(N54) );
  GTECH_OAI2N2 U86 ( .A(n17), .B(n92), .C(Mplier[0]), .D(n87), .Z(N52) );
  GTECH_MUX2 U87 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U88 ( .A(n97), .B(n98), .S(n79), .Z(N48) );
  GTECH_MUX2 U89 ( .A(n99), .B(n100), .S(n101), .Z(n98) );
  GTECH_NOT U90 ( .A(Mcand[3]), .Z(n101) );
  GTECH_OR_NOT U91 ( .A(n102), .B(n85), .Z(n97) );
  GTECH_MUX2 U92 ( .A(n99), .B(n100), .S(Mcand[3]), .Z(n102) );
  GTECH_OAI22 U93 ( .A(n103), .B(n104), .C(n105), .D(n106), .Z(n100) );
  GTECH_AO22 U94 ( .A(n103), .B(n107), .C(n105), .D(n108), .Z(n99) );
  GTECH_OA21 U95 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_OAI21 U96 ( .A(Mcand[2]), .B(n112), .C(n80), .Z(n111) );
  GTECH_OA21 U97 ( .A(n113), .B(n110), .C(n114), .Z(n103) );
  GTECH_AO21 U98 ( .A(n110), .B(n113), .C(n80), .Z(n114) );
  GTECH_MUX2 U99 ( .A(n115), .B(n116), .S(n80), .Z(N46) );
  GTECH_NOT U100 ( .A(n117), .Z(n116) );
  GTECH_MUX2 U101 ( .A(n118), .B(n119), .S(n110), .Z(n117) );
  GTECH_NOT U102 ( .A(Mcand[2]), .Z(n110) );
  GTECH_NAND2 U103 ( .A(n120), .B(n85), .Z(n115) );
  GTECH_MUX2 U104 ( .A(n118), .B(n119), .S(Mcand[2]), .Z(n120) );
  GTECH_OA22 U105 ( .A(n113), .B(n104), .C(n109), .D(n106), .Z(n119) );
  GTECH_AOI22 U106 ( .A(n113), .B(n107), .C(n109), .D(n108), .Z(n118) );
  GTECH_NOT U107 ( .A(n112), .Z(n109) );
  GTECH_ADD_ABC U108 ( .A(n121), .B(Mcand[1]), .C(n81), .COUT(n112) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n91), .Z(n121) );
  GTECH_NOT U110 ( .A(n104), .Z(n107) );
  GTECH_OA21 U111 ( .A(n81), .B(n122), .C(n123), .Z(n113) );
  GTECH_OR3 U112 ( .A(n124), .B(n82), .C(n125), .Z(n123) );
  GTECH_AO21 U113 ( .A(n126), .B(n124), .C(n127), .Z(N44) );
  GTECH_NOT U114 ( .A(n128), .Z(n127) );
  GTECH_MUX2 U115 ( .A(n129), .B(n130), .S(n81), .Z(n128) );
  GTECH_OR_NOT U116 ( .A(n122), .B(n131), .Z(n130) );
  GTECH_AND_NOT U117 ( .A(n85), .B(n132), .Z(n129) );
  GTECH_MUX2 U118 ( .A(n126), .B(n131), .S(n122), .Z(n132) );
  GTECH_OAI21 U119 ( .A(n89), .B(n106), .C(n133), .Z(n131) );
  GTECH_AO21 U120 ( .A(n91), .B(Mcand[0]), .C(n104), .Z(n133) );
  GTECH_NOT U121 ( .A(n82), .Z(n91) );
  GTECH_NOT U122 ( .A(n108), .Z(n106) );
  GTECH_OR_NOT U123 ( .A(n92), .B(n83), .Z(n85) );
  GTECH_NOR2 U124 ( .A(n95), .B(n96), .Z(n92) );
  GTECH_AND2 U125 ( .A(n81), .B(n122), .Z(n124) );
  GTECH_NOT U126 ( .A(Mcand[1]), .Z(n122) );
  GTECH_AO21 U127 ( .A(n89), .B(n108), .C(n134), .Z(n126) );
  GTECH_NOR3 U128 ( .A(n125), .B(n82), .C(n104), .Z(n134) );
  GTECH_OR_NOT U129 ( .A(n83), .B(n96), .Z(n104) );
  GTECH_NOR2 U130 ( .A(n135), .B(n83), .Z(n108) );
  GTECH_NOT U131 ( .A(n95), .Z(n135) );
  GTECH_AND_NOT U132 ( .A(n82), .B(n125), .Z(n89) );
  GTECH_NOT U133 ( .A(Mcand[0]), .Z(n125) );
  GTECH_OR_NOT U134 ( .A(n95), .B(n136), .Z(N42) );
  GTECH_NAND3 U135 ( .A(n137), .B(n138), .C(n96), .Z(n136) );
  GTECH_OA21 U136 ( .A(n12), .B(n84), .C(n96), .Z(N41) );
  GTECH_OAI21 U137 ( .A(n93), .B(n94), .C(n139), .Z(N40) );
  GTECH_AOI21 U138 ( .A(n12), .B(n96), .C(n95), .Z(n139) );
  GTECH_NOR3 U139 ( .A(n137), .B(n13), .C(n138), .Z(n95) );
  GTECH_AOI21 U140 ( .A(n12), .B(n84), .C(n140), .Z(n96) );
  GTECH_NOT U141 ( .A(St), .Z(n94) );
  GTECH_NOT U142 ( .A(n87), .Z(n93) );
  GTECH_NOR3 U143 ( .A(n138), .B(n137), .C(n140), .Z(n87) );
  GTECH_NOT U144 ( .A(n13), .Z(n140) );
  GTECH_NOT U145 ( .A(n12), .Z(n137) );
  GTECH_NOR3 U146 ( .A(n12), .B(n13), .C(n138), .Z(Done) );
  GTECH_NOT U147 ( .A(n84), .Z(n138) );
endmodule

