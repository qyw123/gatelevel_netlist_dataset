
module fraction_multiplier4 ( CLK, St, Mplier, Mcand, Product, Done );
  input [3:0] Mplier;
  input [3:0] Mcand;
  output [6:0] Product;
  input CLK, St;
  output Done;
  wire   A_3_, N40, N41, N42, N44, N46, N48, N50, N52, N54, N56, N57, N58, N63,
         n12, n13, n14, n15, n16, n17, n18, n69, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133;
  wire   [2:0] State;

  GTECH_FD1 State_reg_0_ ( .D(N40), .CP(CLK), .Q(State[0]), .QN(n80) );
  GTECH_FD1 State_reg_1_ ( .D(N41), .CP(CLK), .Q(State[1]), .QN(n79) );
  GTECH_FD1 State_reg_2_ ( .D(N42), .CP(CLK), .Q(State[2]), .QN(n12) );
  GTECH_FJK1S B_reg_0_ ( .J(n69), .K(n69), .TI(N52), .TE(N57), .CP(CLK), .Q(
        Product[0]), .QN(n13) );
  GTECH_FJK1S A_reg_3_ ( .J(n69), .K(n69), .TI(N50), .TE(N63), .CP(CLK), .Q(
        A_3_), .QN(n14) );
  GTECH_FJK1S A_reg_0_ ( .J(n69), .K(n69), .TI(N44), .TE(N57), .CP(CLK), .Q(
        Product[4]), .QN(n15) );
  GTECH_FJK1S A_reg_1_ ( .J(n69), .K(n69), .TI(N46), .TE(N57), .CP(CLK), .Q(
        Product[5]), .QN(n78) );
  GTECH_FJK1S A_reg_2_ ( .J(n69), .K(n69), .TI(N48), .TE(N57), .CP(CLK), .Q(
        Product[6]), .QN(n77) );
  GTECH_FJK1S B_reg_3_ ( .J(n69), .K(n69), .TI(N58), .TE(N57), .CP(CLK), .Q(
        Product[3]), .QN(n16) );
  GTECH_FJK1S B_reg_2_ ( .J(n69), .K(n69), .TI(N56), .TE(N57), .CP(CLK), .Q(
        Product[2]), .QN(n17) );
  GTECH_FJK1S B_reg_1_ ( .J(n69), .K(n69), .TI(N54), .TE(N57), .CP(CLK), .Q(
        Product[1]), .QN(n18) );
  GTECH_ZERO U75 ( .Z(n69) );
  GTECH_AND_NOT U76 ( .A(N57), .B(n81), .Z(N63) );
  GTECH_NOT U77 ( .A(n82), .Z(N58) );
  GTECH_AOI222 U78 ( .A(Mplier[3]), .B(n83), .C(n84), .D(n85), .E(n86), .F(n87), .Z(n82) );
  GTECH_OAI21 U79 ( .A(Mcand[0]), .B(n88), .C(n89), .Z(n86) );
  GTECH_NOR2 U80 ( .A(n88), .B(n13), .Z(n84) );
  GTECH_AO21 U81 ( .A(n83), .B(St), .C(n90), .Z(N57) );
  GTECH_OAI2N2 U82 ( .A(n16), .B(n88), .C(Mplier[2]), .D(n83), .Z(N56) );
  GTECH_OAI2N2 U83 ( .A(n17), .B(n88), .C(Mplier[1]), .D(n83), .Z(N54) );
  GTECH_OAI2N2 U84 ( .A(n18), .B(n88), .C(Mplier[0]), .D(n83), .Z(N52) );
  GTECH_MUX2 U85 ( .A(n91), .B(n92), .S(Mcand[3]), .Z(N50) );
  GTECH_MUX2 U86 ( .A(n93), .B(n94), .S(n14), .Z(N48) );
  GTECH_NOT U87 ( .A(n95), .Z(n94) );
  GTECH_MUX2 U88 ( .A(n96), .B(n97), .S(n98), .Z(n95) );
  GTECH_NOT U89 ( .A(Mcand[3]), .Z(n98) );
  GTECH_NAND2 U90 ( .A(n99), .B(n89), .Z(n93) );
  GTECH_NOT U91 ( .A(n81), .Z(n89) );
  GTECH_MUX2 U92 ( .A(n96), .B(n97), .S(Mcand[3]), .Z(n99) );
  GTECH_AOI22 U93 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n97) );
  GTECH_OA22 U94 ( .A(n104), .B(n102), .C(n105), .D(n100), .Z(n96) );
  GTECH_OAI21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n100) );
  GTECH_AO21 U96 ( .A(n107), .B(n106), .C(n109), .Z(n108) );
  GTECH_OAI21 U97 ( .A(n110), .B(n107), .C(n111), .Z(n102) );
  GTECH_AO21 U98 ( .A(n107), .B(n110), .C(n77), .Z(n111) );
  GTECH_MUX2 U99 ( .A(n112), .B(n113), .S(n109), .Z(N46) );
  GTECH_NOT U100 ( .A(n77), .Z(n109) );
  GTECH_OR2 U101 ( .A(n114), .B(n81), .Z(n113) );
  GTECH_MUX2 U102 ( .A(n115), .B(n116), .S(n107), .Z(n114) );
  GTECH_NOT U103 ( .A(Mcand[2]), .Z(n107) );
  GTECH_MUX2 U104 ( .A(n115), .B(n116), .S(Mcand[2]), .Z(n112) );
  GTECH_OAI2N2 U105 ( .A(n117), .B(n104), .C(n106), .D(n101), .Z(n116) );
  GTECH_OAI22 U106 ( .A(n106), .B(n105), .C(n110), .D(n104), .Z(n115) );
  GTECH_NOT U107 ( .A(n117), .Z(n110) );
  GTECH_ADD_ABC U108 ( .A(n118), .B(Mcand[1]), .C(n119), .COUT(n117) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n15), .Z(n118) );
  GTECH_ADD_ABC U110 ( .A(n120), .B(n121), .C(n119), .COUT(n106) );
  GTECH_NAND2 U111 ( .A(Mcand[0]), .B(n15), .Z(n120) );
  GTECH_MUX2 U112 ( .A(n122), .B(n123), .S(n119), .Z(N44) );
  GTECH_NOT U113 ( .A(n78), .Z(n119) );
  GTECH_OR2 U114 ( .A(n124), .B(n81), .Z(n123) );
  GTECH_AND2 U115 ( .A(n13), .B(n90), .Z(n81) );
  GTECH_NOT U116 ( .A(n88), .Z(n90) );
  GTECH_NOR2 U117 ( .A(n91), .B(n92), .Z(n88) );
  GTECH_NOT U118 ( .A(n125), .Z(n91) );
  GTECH_MUX2 U119 ( .A(n126), .B(n127), .S(n121), .Z(n124) );
  GTECH_NOT U120 ( .A(Mcand[1]), .Z(n121) );
  GTECH_MUX2 U121 ( .A(n126), .B(n127), .S(Mcand[1]), .Z(n122) );
  GTECH_OAI22 U122 ( .A(n85), .B(n105), .C(n128), .D(n104), .Z(n127) );
  GTECH_NOT U123 ( .A(n103), .Z(n104) );
  GTECH_NOT U124 ( .A(n101), .Z(n105) );
  GTECH_AO22 U125 ( .A(n85), .B(n101), .C(n128), .D(n103), .Z(n126) );
  GTECH_NOR2 U126 ( .A(n129), .B(n13), .Z(n103) );
  GTECH_AND2 U127 ( .A(Mcand[0]), .B(n87), .Z(n128) );
  GTECH_NOR2 U128 ( .A(n125), .B(n13), .Z(n101) );
  GTECH_AND_NOT U129 ( .A(Mcand[0]), .B(n87), .Z(n85) );
  GTECH_NOT U130 ( .A(n15), .Z(n87) );
  GTECH_NAND2 U131 ( .A(n130), .B(n125), .Z(N42) );
  GTECH_OR3 U132 ( .A(n79), .B(n80), .C(n129), .Z(n130) );
  GTECH_OA21 U133 ( .A(n79), .B(n80), .C(n92), .Z(N41) );
  GTECH_NOT U134 ( .A(n129), .Z(n92) );
  GTECH_AO21 U135 ( .A(n83), .B(St), .C(n131), .Z(N40) );
  GTECH_OAI21 U136 ( .A(n132), .B(n129), .C(n125), .Z(n131) );
  GTECH_NAND3 U137 ( .A(n79), .B(n133), .C(n80), .Z(n125) );
  GTECH_AO21 U138 ( .A(n79), .B(n80), .C(n133), .Z(n129) );
  GTECH_AND3 U139 ( .A(n80), .B(n79), .C(n12), .Z(n83) );
  GTECH_AND3 U140 ( .A(n133), .B(n132), .C(n79), .Z(Done) );
  GTECH_NOT U141 ( .A(n80), .Z(n132) );
  GTECH_NOT U142 ( .A(n12), .Z(n133) );
endmodule

