
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n73, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n85) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n86) );
  GTECH_FJK1S B_reg_0_ ( .J(n73), .K(n73), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n73), .K(n73), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n82) );
  GTECH_FJK1S A_reg_0_ ( .J(n73), .K(n73), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n81) );
  GTECH_FJK1S A_reg_1_ ( .J(n73), .K(n73), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n84) );
  GTECH_FJK1S A_reg_2_ ( .J(n73), .K(n73), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n83) );
  GTECH_FJK1S B_reg_3_ ( .J(n73), .K(n73), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n73), .K(n73), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n73), .K(n73), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U81 ( .Z(n73) );
  GTECH_AND2 U82 ( .A(N57), .B(n87), .Z(N63) );
  GTECH_AO21 U83 ( .A(Mplier[3]), .B(n88), .C(n89), .Z(N58) );
  GTECH_OAI21 U84 ( .A(n81), .B(n90), .C(n91), .Z(n89) );
  GTECH_NAND3 U85 ( .A(n92), .B(n93), .C(n94), .Z(n91) );
  GTECH_OA21 U86 ( .A(Mcand[0]), .B(n95), .C(n87), .Z(n90) );
  GTECH_AO21 U87 ( .A(n88), .B(St), .C(n92), .Z(N57) );
  GTECH_AO22 U88 ( .A(Mplier[2]), .B(n88), .C(n92), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U89 ( .A(Mplier[1]), .B(n88), .C(n92), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U90 ( .A(Mplier[0]), .B(n88), .C(n92), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U91 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U92 ( .A(n98), .B(n99), .S(n82), .Z(N48) );
  GTECH_NOT U93 ( .A(n100), .Z(n99) );
  GTECH_MUX2 U94 ( .A(n101), .B(n102), .S(Mcand[3]), .Z(n100) );
  GTECH_NAND2 U95 ( .A(n103), .B(n87), .Z(n98) );
  GTECH_MUX2 U96 ( .A(n102), .B(n101), .S(Mcand[3]), .Z(n103) );
  GTECH_AOI2N2 U97 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(n101) );
  GTECH_AOI2N2 U98 ( .A(n107), .B(n108), .C(n105), .D(n109), .Z(n102) );
  GTECH_ADD_ABC U99 ( .A(Mcand[2]), .B(n110), .C(n83), .COUT(n105) );
  GTECH_OAI21 U100 ( .A(Mcand[2]), .B(n111), .C(n112), .Z(n107) );
  GTECH_AO21 U101 ( .A(n111), .B(Mcand[2]), .C(n113), .Z(n112) );
  GTECH_NOT U102 ( .A(n83), .Z(n113) );
  GTECH_MUX2 U103 ( .A(n114), .B(n115), .S(n83), .Z(N46) );
  GTECH_NOT U104 ( .A(n116), .Z(n115) );
  GTECH_MUX2 U105 ( .A(n117), .B(n118), .S(Mcand[2]), .Z(n116) );
  GTECH_NAND2 U106 ( .A(n119), .B(n87), .Z(n114) );
  GTECH_MUX2 U107 ( .A(n118), .B(n117), .S(Mcand[2]), .Z(n119) );
  GTECH_AOI22 U108 ( .A(n110), .B(n104), .C(n111), .D(n108), .Z(n117) );
  GTECH_OA22 U109 ( .A(n110), .B(n109), .C(n111), .D(n106), .Z(n118) );
  GTECH_NOT U110 ( .A(n108), .Z(n106) );
  GTECH_OAI21 U111 ( .A(n84), .B(n120), .C(n121), .Z(n111) );
  GTECH_OR3 U112 ( .A(n122), .B(n81), .C(n123), .Z(n121) );
  GTECH_ADD_ABC U113 ( .A(Mcand[1]), .B(n94), .C(n84), .COUT(n110) );
  GTECH_NAND2 U114 ( .A(n124), .B(n125), .Z(N44) );
  GTECH_MUX2 U115 ( .A(n126), .B(n127), .S(n84), .Z(n125) );
  GTECH_OR_NOT U116 ( .A(n128), .B(Mcand[1]), .Z(n127) );
  GTECH_AND2 U117 ( .A(n87), .B(n129), .Z(n126) );
  GTECH_MUX2 U118 ( .A(n128), .B(n130), .S(Mcand[1]), .Z(n129) );
  GTECH_OR_NOT U119 ( .A(n123), .B(n131), .Z(n130) );
  GTECH_OA21 U120 ( .A(n94), .B(n109), .C(n132), .Z(n128) );
  GTECH_OAI21 U121 ( .A(n81), .B(n123), .C(n108), .Z(n132) );
  GTECH_NOT U122 ( .A(n104), .Z(n109) );
  GTECH_AND_NOT U123 ( .A(n81), .B(n123), .Z(n94) );
  GTECH_NOT U124 ( .A(Mcand[0]), .Z(n123) );
  GTECH_NAND2 U125 ( .A(n92), .B(n13), .Z(n87) );
  GTECH_NOT U126 ( .A(n95), .Z(n92) );
  GTECH_NOR2 U127 ( .A(n97), .B(n96), .Z(n95) );
  GTECH_NAND3 U128 ( .A(Mcand[0]), .B(n131), .C(n122), .Z(n124) );
  GTECH_AND2 U129 ( .A(n84), .B(n120), .Z(n122) );
  GTECH_NOT U130 ( .A(Mcand[1]), .Z(n120) );
  GTECH_MUX2 U131 ( .A(n108), .B(n104), .S(n81), .Z(n131) );
  GTECH_AND2 U132 ( .A(n96), .B(n93), .Z(n104) );
  GTECH_NOT U133 ( .A(n13), .Z(n93) );
  GTECH_NOR2 U134 ( .A(n13), .B(n133), .Z(n108) );
  GTECH_OR_NOT U135 ( .A(n96), .B(n134), .Z(N42) );
  GTECH_OR3 U136 ( .A(n12), .B(n86), .C(n133), .Z(n134) );
  GTECH_NOT U137 ( .A(n97), .Z(n133) );
  GTECH_OA21 U138 ( .A(n12), .B(n86), .C(n97), .Z(N41) );
  GTECH_AO21 U139 ( .A(n88), .B(St), .C(n135), .Z(N40) );
  GTECH_AO21 U140 ( .A(n12), .B(n97), .C(n96), .Z(n135) );
  GTECH_AND_NOT U141 ( .A(n136), .B(n85), .Z(n96) );
  GTECH_NOR2 U142 ( .A(n137), .B(n136), .Z(n97) );
  GTECH_AND_NOT U143 ( .A(n136), .B(n137), .Z(n88) );
  GTECH_AND_NOT U144 ( .A(n86), .B(n138), .Z(n136) );
  GTECH_AND3 U145 ( .A(n138), .B(n137), .C(n86), .Z(Done) );
  GTECH_NOT U146 ( .A(n85), .Z(n137) );
  GTECH_NOT U147 ( .A(n12), .Z(n138) );
endmodule

