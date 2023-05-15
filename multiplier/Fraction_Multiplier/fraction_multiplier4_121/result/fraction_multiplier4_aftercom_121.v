
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
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135;
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
  GTECH_AND_NOT U77 ( .A(N57), .B(n82), .Z(N63) );
  GTECH_NOT U78 ( .A(n83), .Z(N58) );
  GTECH_AOI222 U79 ( .A(Mplier[3]), .B(n84), .C(n85), .D(n86), .E(n87), .F(n88), .Z(n83) );
  GTECH_AO21 U80 ( .A(n89), .B(n90), .C(n82), .Z(n87) );
  GTECH_AND_NOT U81 ( .A(n90), .B(n14), .Z(n85) );
  GTECH_AO21 U82 ( .A(n84), .B(St), .C(n90), .Z(N57) );
  GTECH_AO22 U83 ( .A(Mplier[2]), .B(n84), .C(n90), .D(Product[3]), .Z(N56) );
  GTECH_AO22 U84 ( .A(Mplier[1]), .B(n84), .C(n90), .D(Product[2]), .Z(N54) );
  GTECH_AO22 U85 ( .A(Mplier[0]), .B(n84), .C(n90), .D(Product[1]), .Z(N52) );
  GTECH_OAI22 U86 ( .A(n91), .B(n92), .C(Mcand[3]), .D(n93), .Z(N50) );
  GTECH_OAI21 U87 ( .A(n94), .B(n95), .C(n96), .Z(N48) );
  GTECH_OAI21 U88 ( .A(n82), .B(n97), .C(n95), .Z(n96) );
  GTECH_AO22 U89 ( .A(n98), .B(Mcand[3]), .C(n92), .D(n99), .Z(n97) );
  GTECH_NOT U90 ( .A(n78), .Z(n95) );
  GTECH_AOI22 U91 ( .A(n99), .B(Mcand[3]), .C(n92), .D(n98), .Z(n94) );
  GTECH_AO22 U92 ( .A(n100), .B(n101), .C(n102), .D(n103), .Z(n98) );
  GTECH_NOT U93 ( .A(Mcand[3]), .Z(n92) );
  GTECH_OAI22 U94 ( .A(n104), .B(n100), .C(n105), .D(n102), .Z(n99) );
  GTECH_OAI21 U95 ( .A(n106), .B(n107), .C(n108), .Z(n102) );
  GTECH_AO21 U96 ( .A(n107), .B(n106), .C(n79), .Z(n108) );
  GTECH_NOT U97 ( .A(n109), .Z(n106) );
  GTECH_ADD_ABC U98 ( .A(Mcand[2]), .B(n110), .C(n79), .COUT(n100) );
  GTECH_OAI21 U99 ( .A(n111), .B(n112), .C(n113), .Z(N46) );
  GTECH_OAI21 U100 ( .A(n82), .B(n114), .C(n111), .Z(n113) );
  GTECH_AO22 U101 ( .A(n115), .B(Mcand[2]), .C(n107), .D(n116), .Z(n114) );
  GTECH_AOI22 U102 ( .A(n116), .B(Mcand[2]), .C(n107), .D(n115), .Z(n112) );
  GTECH_AO22 U103 ( .A(n110), .B(n101), .C(n109), .D(n103), .Z(n115) );
  GTECH_NOT U104 ( .A(Mcand[2]), .Z(n107) );
  GTECH_OAI22 U105 ( .A(n110), .B(n104), .C(n109), .D(n105), .Z(n116) );
  GTECH_OAI21 U106 ( .A(n80), .B(n117), .C(n118), .Z(n109) );
  GTECH_OR3 U107 ( .A(n119), .B(n15), .C(n89), .Z(n118) );
  GTECH_ADD_ABC U108 ( .A(Mcand[1]), .B(n120), .C(n80), .COUT(n110) );
  GTECH_AND_NOT U109 ( .A(Mcand[0]), .B(n88), .Z(n120) );
  GTECH_NOT U110 ( .A(n79), .Z(n111) );
  GTECH_NOT U111 ( .A(n121), .Z(N44) );
  GTECH_AOI222 U112 ( .A(n82), .B(n122), .C(n123), .D(n124), .E(n125), .F(n126), .Z(n121) );
  GTECH_AND_NOT U113 ( .A(n127), .B(n119), .Z(n126) );
  GTECH_AND2 U114 ( .A(n117), .B(n80), .Z(n119) );
  GTECH_OR3 U115 ( .A(n101), .B(n15), .C(n89), .Z(n127) );
  GTECH_OA21 U116 ( .A(n80), .B(n117), .C(n128), .Z(n125) );
  GTECH_OAI21 U117 ( .A(n86), .B(n104), .C(n105), .Z(n128) );
  GTECH_AND2 U118 ( .A(Mcand[0]), .B(n15), .Z(n86) );
  GTECH_NOT U119 ( .A(Mcand[1]), .Z(n117) );
  GTECH_AOI2N2 U120 ( .A(n88), .B(n105), .C(n101), .D(n88), .Z(n124) );
  GTECH_NOT U121 ( .A(n104), .Z(n101) );
  GTECH_OR2 U122 ( .A(n14), .B(n93), .Z(n104) );
  GTECH_NOT U123 ( .A(n103), .Z(n105) );
  GTECH_AND_NOT U124 ( .A(n129), .B(n14), .Z(n103) );
  GTECH_NOT U125 ( .A(n15), .Z(n88) );
  GTECH_AND_NOT U126 ( .A(n130), .B(n89), .Z(n123) );
  GTECH_NOT U127 ( .A(Mcand[0]), .Z(n89) );
  GTECH_XNOR2 U128 ( .A(n122), .B(Mcand[1]), .Z(n130) );
  GTECH_NOT U129 ( .A(n80), .Z(n122) );
  GTECH_AND2 U130 ( .A(n90), .B(n14), .Z(n82) );
  GTECH_OR_NOT U131 ( .A(n129), .B(n93), .Z(n90) );
  GTECH_NAND2 U132 ( .A(n131), .B(n93), .Z(N42) );
  GTECH_OR3 U133 ( .A(n12), .B(n81), .C(n91), .Z(n131) );
  GTECH_OA21 U134 ( .A(n12), .B(n81), .C(n129), .Z(N41) );
  GTECH_AO21 U135 ( .A(n84), .B(St), .C(n132), .Z(N40) );
  GTECH_OAI21 U136 ( .A(n133), .B(n91), .C(n93), .Z(n132) );
  GTECH_OR_NOT U137 ( .A(n13), .B(n134), .Z(n93) );
  GTECH_NOT U138 ( .A(n129), .Z(n91) );
  GTECH_AND_NOT U139 ( .A(n13), .B(n134), .Z(n129) );
  GTECH_AND2 U140 ( .A(n134), .B(n13), .Z(n84) );
  GTECH_AND_NOT U141 ( .A(n81), .B(n133), .Z(n134) );
  GTECH_AND3 U142 ( .A(n133), .B(n135), .C(n81), .Z(Done) );
  GTECH_NOT U143 ( .A(n13), .Z(n135) );
  GTECH_NOT U144 ( .A(n12), .Z(n133) );
endmodule

