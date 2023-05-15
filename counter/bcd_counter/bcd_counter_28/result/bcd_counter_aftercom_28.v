
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n50, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n50), .K(n50), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n50), .K(n50), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n50), .K(n50), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n50), .K(n50), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n50), .K(n50), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n50), .K(n50), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n50), .K(n50), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n50), .K(n50), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n50), .K(n50), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n50), .K(n50), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n50), .K(n50), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n50), .K(n50), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ZERO U81 ( .Z(n50) );
  GTECH_OAI22 U82 ( .A(q[15]), .B(n74), .C(n75), .D(n76), .Z(N58) );
  GTECH_NOT U83 ( .A(q[15]), .Z(n76) );
  GTECH_OA21 U84 ( .A(n77), .B(q[14]), .C(n78), .Z(n75) );
  GTECH_OR_NOT U85 ( .A(n79), .B(q[14]), .Z(n74) );
  GTECH_OAI22 U86 ( .A(n78), .B(n80), .C(q[14]), .D(n79), .Z(N56) );
  GTECH_NAND3 U87 ( .A(n81), .B(q[12]), .C(q[13]), .Z(n79) );
  GTECH_NOT U88 ( .A(n82), .Z(n78) );
  GTECH_AO21 U89 ( .A(n81), .B(n83), .C(N54), .Z(n82) );
  GTECH_OAI22 U90 ( .A(n83), .B(n84), .C(q[13]), .D(n85), .Z(N55) );
  GTECH_NAND2 U91 ( .A(n81), .B(q[12]), .Z(n85) );
  GTECH_NOT U92 ( .A(n84), .Z(N54) );
  GTECH_NAND2 U93 ( .A(n81), .B(n86), .Z(n84) );
  GTECH_NOT U94 ( .A(q[12]), .Z(n86) );
  GTECH_NOT U95 ( .A(n77), .Z(n81) );
  GTECH_NAND3 U96 ( .A(n87), .B(n88), .C(ena[3]), .Z(n77) );
  GTECH_NOT U97 ( .A(n89), .Z(ena[3]) );
  GTECH_NAND4 U98 ( .A(q[15]), .B(q[12]), .C(n83), .D(n80), .Z(n87) );
  GTECH_NOT U99 ( .A(q[14]), .Z(n80) );
  GTECH_NOT U100 ( .A(q[13]), .Z(n83) );
  GTECH_OAI22 U101 ( .A(q[11]), .B(n90), .C(n91), .D(n92), .Z(N42) );
  GTECH_NOT U102 ( .A(q[11]), .Z(n92) );
  GTECH_OA21 U103 ( .A(n93), .B(q[10]), .C(n94), .Z(n91) );
  GTECH_OR_NOT U104 ( .A(n95), .B(q[10]), .Z(n90) );
  GTECH_NAND2 U105 ( .A(n93), .B(n96), .Z(N41) );
  GTECH_OAI22 U106 ( .A(n94), .B(n97), .C(q[10]), .D(n95), .Z(N40) );
  GTECH_NAND3 U107 ( .A(n98), .B(q[8]), .C(q[9]), .Z(n95) );
  GTECH_NOT U108 ( .A(n99), .Z(n94) );
  GTECH_AO21 U109 ( .A(n98), .B(n100), .C(N38), .Z(n99) );
  GTECH_OAI22 U110 ( .A(n100), .B(n101), .C(q[9]), .D(n102), .Z(N39) );
  GTECH_NAND2 U111 ( .A(n98), .B(q[8]), .Z(n102) );
  GTECH_NOT U112 ( .A(n101), .Z(N38) );
  GTECH_NAND2 U113 ( .A(n98), .B(n103), .Z(n101) );
  GTECH_NOT U114 ( .A(q[8]), .Z(n103) );
  GTECH_NOT U115 ( .A(n93), .Z(n98) );
  GTECH_NAND2 U116 ( .A(ena[2]), .B(n96), .Z(n93) );
  GTECH_NOT U117 ( .A(N57), .Z(n96) );
  GTECH_NAND2 U118 ( .A(n88), .B(n89), .Z(N57) );
  GTECH_NAND5 U119 ( .A(n97), .B(n100), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n89) );
  GTECH_NOT U120 ( .A(q[9]), .Z(n100) );
  GTECH_NOT U121 ( .A(q[10]), .Z(n97) );
  GTECH_NOT U122 ( .A(n104), .Z(ena[2]) );
  GTECH_OAI22 U123 ( .A(q[7]), .B(n105), .C(n106), .D(n107), .Z(N26) );
  GTECH_NOT U124 ( .A(q[7]), .Z(n107) );
  GTECH_OA21 U125 ( .A(n108), .B(q[6]), .C(n109), .Z(n106) );
  GTECH_OR_NOT U126 ( .A(n110), .B(q[6]), .Z(n105) );
  GTECH_NAND3 U127 ( .A(n104), .B(n88), .C(n108), .Z(N25) );
  GTECH_OAI22 U128 ( .A(n109), .B(n111), .C(q[6]), .D(n110), .Z(N24) );
  GTECH_NAND3 U129 ( .A(n112), .B(q[4]), .C(q[5]), .Z(n110) );
  GTECH_NOT U130 ( .A(n113), .Z(n109) );
  GTECH_AO21 U131 ( .A(n112), .B(n114), .C(N22), .Z(n113) );
  GTECH_OAI22 U132 ( .A(n114), .B(n115), .C(q[5]), .D(n116), .Z(N23) );
  GTECH_NAND2 U133 ( .A(n112), .B(q[4]), .Z(n116) );
  GTECH_NOT U134 ( .A(n115), .Z(N22) );
  GTECH_NAND2 U135 ( .A(n112), .B(n117), .Z(n115) );
  GTECH_NOT U136 ( .A(q[4]), .Z(n117) );
  GTECH_NOT U137 ( .A(n108), .Z(n112) );
  GTECH_NAND3 U138 ( .A(n104), .B(n88), .C(ena[1]), .Z(n108) );
  GTECH_NAND5 U139 ( .A(n114), .B(n111), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n104) );
  GTECH_NOT U140 ( .A(n118), .Z(ena[1]) );
  GTECH_NOT U141 ( .A(q[6]), .Z(n111) );
  GTECH_NOT U142 ( .A(q[5]), .Z(n114) );
  GTECH_OAI22 U143 ( .A(q[3]), .B(n119), .C(n120), .D(n121), .Z(N13) );
  GTECH_NOT U144 ( .A(q[3]), .Z(n121) );
  GTECH_OA21 U145 ( .A(n122), .B(q[2]), .C(n123), .Z(n120) );
  GTECH_OR_NOT U146 ( .A(n124), .B(q[2]), .Z(n119) );
  GTECH_OAI22 U147 ( .A(n123), .B(n125), .C(q[2]), .D(n124), .Z(N12) );
  GTECH_NAND3 U148 ( .A(n126), .B(q[0]), .C(q[1]), .Z(n124) );
  GTECH_NOT U149 ( .A(n127), .Z(n123) );
  GTECH_AO21 U150 ( .A(n126), .B(n128), .C(N10), .Z(n127) );
  GTECH_OAI22 U151 ( .A(n128), .B(n129), .C(q[1]), .D(n130), .Z(N11) );
  GTECH_NAND2 U152 ( .A(n126), .B(q[0]), .Z(n130) );
  GTECH_NOT U153 ( .A(n129), .Z(N10) );
  GTECH_NAND2 U154 ( .A(n126), .B(n131), .Z(n129) );
  GTECH_NOT U155 ( .A(q[0]), .Z(n131) );
  GTECH_NOT U156 ( .A(n122), .Z(n126) );
  GTECH_NAND2 U157 ( .A(n118), .B(n88), .Z(n122) );
  GTECH_NOT U158 ( .A(reset), .Z(n88) );
  GTECH_NAND4 U159 ( .A(q[3]), .B(q[0]), .C(n128), .D(n125), .Z(n118) );
  GTECH_NOT U160 ( .A(q[2]), .Z(n125) );
  GTECH_NOT U161 ( .A(q[1]), .Z(n128) );
endmodule

