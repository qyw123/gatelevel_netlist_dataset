
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n70, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n12) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n13) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n81) );
  GTECH_FJK1S B_reg_0_ ( .J(n70), .K(n70), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n14) );
  GTECH_FJK1S A_reg_3_ ( .J(n70), .K(n70), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n78) );
  GTECH_FJK1S A_reg_0_ ( .J(n70), .K(n70), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n70), .K(n70), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n80) );
  GTECH_FJK1S A_reg_2_ ( .J(n70), .K(n70), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n79) );
  GTECH_FJK1S B_reg_3_ ( .J(n70), .K(n70), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]) );
  GTECH_FJK1S B_reg_2_ ( .J(n70), .K(n70), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]) );
  GTECH_FJK1S B_reg_1_ ( .J(n70), .K(n70), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]) );
  GTECH_ZERO U76 ( .Z(n70) );
  GTECH_AND2 U77 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_OAI21 U80 ( .A(Mcand[0]), .B(n89), .C(n82), .Z(n87) );
  GTECH_NOR2 U81 ( .A(n89), .B(n14), .Z(n85) );
  GTECH_AO21 U82 ( .A(n84), .B(St), .C(n90), .Z(N57) );
  GTECH_AO22 U83 ( .A(Mplier[2]), .B(n84), .C(n90), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U84 ( .A(Mplier[1]), .B(n84), .C(n90), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U85 ( .A(Mplier[0]), .B(n84), .C(n90), .D(Product[1]), .Z(N52) );
  GTECH_MUX2 U86 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U87 ( .A(n93), .B(n94), .S(n78), .Z(N48) );
  GTECH_MUX2 U88 ( .A(n95), .B(n96), .S(n97), .Z(n94) );
  GTECH_NOT U89 ( .A(Mcand[3]), .Z(n97) );
  GTECH_OR_NOT U90 ( .A(n98), .B(n82), .Z(n93) );
  GTECH_MUX2 U91 ( .A(n95), .B(n96), .S(Mcand[3]), .Z(n98) );
  GTECH_OAI22 U92 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(n96) );
  GTECH_AO22 U93 ( .A(n103), .B(n99), .C(n104), .D(n101), .Z(n95) );
  GTECH_AOI21 U94 ( .A(n105), .B(Mcand[2]), .C(n106), .Z(n101) );
  GTECH_OA21 U95 ( .A(Mcand[2]), .B(n105), .C(n79), .Z(n106) );
  GTECH_AOI21 U96 ( .A(n107), .B(Mcand[2]), .C(n108), .Z(n99) );
  GTECH_OA21 U97 ( .A(Mcand[2]), .B(n107), .C(n109), .Z(n108) );
  GTECH_NOT U98 ( .A(n79), .Z(n109) );
  GTECH_MUX2 U99 ( .A(n110), .B(n111), .S(n79), .Z(N46) );
  GTECH_NOT U100 ( .A(n112), .Z(n111) );
  GTECH_MUX2 U101 ( .A(n113), .B(n114), .S(Mcand[2]), .Z(n112) );
  GTECH_NAND2 U102 ( .A(n115), .B(n82), .Z(n110) );
  GTECH_MUX2 U103 ( .A(n114), .B(n113), .S(Mcand[2]), .Z(n115) );
  GTECH_AOI22 U104 ( .A(n107), .B(n103), .C(n105), .D(n104), .Z(n113) );
  GTECH_OA22 U105 ( .A(n107), .B(n100), .C(n105), .D(n102), .Z(n114) );
  GTECH_ADD_ABC U106 ( .A(n116), .B(Mcand[1]), .C(n80), .COUT(n105) );
  GTECH_AND_NOT U107 ( .A(Mcand[0]), .B(n88), .Z(n116) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n117), .C(n118), .COUT(n107) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n15), .Z(n117) );
  GTECH_MUX2 U110 ( .A(n119), .B(n120), .S(n118), .Z(N44) );
  GTECH_NOT U111 ( .A(n80), .Z(n118) );
  GTECH_OR_NOT U112 ( .A(n121), .B(n82), .Z(n120) );
  GTECH_NAND2 U113 ( .A(n90), .B(n14), .Z(n82) );
  GTECH_NOT U114 ( .A(n89), .Z(n90) );
  GTECH_NOR2 U115 ( .A(n91), .B(n92), .Z(n89) );
  GTECH_MUX2 U116 ( .A(n122), .B(n123), .S(Mcand[1]), .Z(n121) );
  GTECH_MUX2 U117 ( .A(n123), .B(n122), .S(Mcand[1]), .Z(n119) );
  GTECH_OAI22 U118 ( .A(n124), .B(n100), .C(n86), .D(n102), .Z(n122) );
  GTECH_NOT U119 ( .A(n104), .Z(n102) );
  GTECH_AO22 U120 ( .A(n124), .B(n103), .C(n86), .D(n104), .Z(n123) );
  GTECH_NOR2 U121 ( .A(n125), .B(n14), .Z(n104) );
  GTECH_NOT U122 ( .A(n91), .Z(n125) );
  GTECH_AND2 U123 ( .A(Mcand[0]), .B(n15), .Z(n86) );
  GTECH_NOT U124 ( .A(n100), .Z(n103) );
  GTECH_OR_NOT U125 ( .A(n14), .B(n92), .Z(n100) );
  GTECH_AND2 U126 ( .A(Mcand[0]), .B(n88), .Z(n124) );
  GTECH_NOT U127 ( .A(n15), .Z(n88) );
  GTECH_OR_NOT U128 ( .A(n91), .B(n126), .Z(N42) );
  GTECH_NAND3 U129 ( .A(n127), .B(n128), .C(n92), .Z(n126) );
  GTECH_OA21 U130 ( .A(n12), .B(n81), .C(n92), .Z(N41) );
  GTECH_AO21 U131 ( .A(n84), .B(St), .C(n129), .Z(N40) );
  GTECH_AO21 U132 ( .A(n12), .B(n92), .C(n91), .Z(n129) );
  GTECH_NOR3 U133 ( .A(n127), .B(n13), .C(n128), .Z(n91) );
  GTECH_OA21 U134 ( .A(n127), .B(n128), .C(n13), .Z(n92) );
  GTECH_NOT U135 ( .A(n12), .Z(n127) );
  GTECH_AND3 U136 ( .A(n81), .B(n12), .C(n13), .Z(n84) );
  GTECH_NOR3 U137 ( .A(n12), .B(n13), .C(n128), .Z(Done) );
  GTECH_NOT U138 ( .A(n81), .Z(n128) );
endmodule

