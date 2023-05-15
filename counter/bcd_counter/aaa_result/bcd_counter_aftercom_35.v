
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n47, n59, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131;

  GTECH_FD2 ones_reg_0_ ( .D(N10), .CP(clk), .CD(n59), .Q(q[0]) );
  GTECH_FD2 ones_reg_2_ ( .D(N12), .CP(clk), .CD(n59), .Q(q[2]) );
  GTECH_FD2 ones_reg_1_ ( .D(N11), .CP(clk), .CD(n59), .Q(q[1]) );
  GTECH_FD2 ones_reg_3_ ( .D(N13), .CP(clk), .CD(n59), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n47), .K(n47), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n47), .K(n47), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n47), .K(n47), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n47), .K(n47), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n47), .K(n47), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n47), .K(n47), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n47), .K(n47), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n47), .K(n47), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n47), .K(n47), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n47), .K(n47), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n47), .K(n47), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n47), .K(n47), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ONE U82 ( .Z(n59) );
  GTECH_ZERO U83 ( .Z(n47) );
  GTECH_OAI2N2 U84 ( .A(n75), .B(n76), .C(n77), .D(q[14]), .Z(N58) );
  GTECH_AND_NOT U85 ( .A(n76), .B(n78), .Z(n77) );
  GTECH_NOT U86 ( .A(q[15]), .Z(n76) );
  GTECH_OA21 U87 ( .A(n79), .B(q[14]), .C(n80), .Z(n75) );
  GTECH_NAND3 U88 ( .A(n81), .B(n82), .C(n79), .Z(N57) );
  GTECH_OAI22 U89 ( .A(n80), .B(n83), .C(q[14]), .D(n78), .Z(N56) );
  GTECH_NAND3 U90 ( .A(n84), .B(q[12]), .C(q[13]), .Z(n78) );
  GTECH_NOT U91 ( .A(n85), .Z(n80) );
  GTECH_OAI21 U92 ( .A(q[13]), .B(n79), .C(n86), .Z(n85) );
  GTECH_OAI21 U93 ( .A(n87), .B(n86), .C(n88), .Z(N55) );
  GTECH_NAND3 U94 ( .A(n84), .B(q[12]), .C(n87), .Z(n88) );
  GTECH_NOT U95 ( .A(n86), .Z(N54) );
  GTECH_NAND2 U96 ( .A(n84), .B(n89), .Z(n86) );
  GTECH_NOT U97 ( .A(q[12]), .Z(n89) );
  GTECH_NOT U98 ( .A(n79), .Z(n84) );
  GTECH_NAND3 U99 ( .A(n81), .B(n82), .C(ena[3]), .Z(n79) );
  GTECH_NAND5 U100 ( .A(n87), .B(n83), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n81) );
  GTECH_NOT U101 ( .A(n90), .Z(ena[3]) );
  GTECH_NOT U102 ( .A(q[14]), .Z(n83) );
  GTECH_NOT U103 ( .A(q[13]), .Z(n87) );
  GTECH_OAI2N2 U104 ( .A(n91), .B(n92), .C(n93), .D(q[10]), .Z(N42) );
  GTECH_AND_NOT U105 ( .A(n92), .B(n94), .Z(n93) );
  GTECH_NOT U106 ( .A(q[11]), .Z(n92) );
  GTECH_OA21 U107 ( .A(n95), .B(q[10]), .C(n96), .Z(n91) );
  GTECH_NAND3 U108 ( .A(n95), .B(n82), .C(n90), .Z(N41) );
  GTECH_OAI22 U109 ( .A(n96), .B(n97), .C(q[10]), .D(n94), .Z(N40) );
  GTECH_NAND3 U110 ( .A(n98), .B(q[8]), .C(q[9]), .Z(n94) );
  GTECH_NOT U111 ( .A(n99), .Z(n96) );
  GTECH_OAI21 U112 ( .A(q[9]), .B(n95), .C(n100), .Z(n99) );
  GTECH_OAI21 U113 ( .A(n101), .B(n100), .C(n102), .Z(N39) );
  GTECH_NAND3 U114 ( .A(n98), .B(q[8]), .C(n101), .Z(n102) );
  GTECH_NOT U115 ( .A(n100), .Z(N38) );
  GTECH_NAND2 U116 ( .A(n98), .B(n103), .Z(n100) );
  GTECH_NOT U117 ( .A(q[8]), .Z(n103) );
  GTECH_NOT U118 ( .A(n95), .Z(n98) );
  GTECH_NAND3 U119 ( .A(n90), .B(n82), .C(ena[2]), .Z(n95) );
  GTECH_NAND5 U120 ( .A(n97), .B(n101), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n90) );
  GTECH_NOT U121 ( .A(n104), .Z(ena[2]) );
  GTECH_NOT U122 ( .A(q[9]), .Z(n101) );
  GTECH_NOT U123 ( .A(q[10]), .Z(n97) );
  GTECH_OAI2N2 U124 ( .A(n105), .B(n106), .C(n107), .D(q[6]), .Z(N26) );
  GTECH_AND_NOT U125 ( .A(n106), .B(n108), .Z(n107) );
  GTECH_NOT U126 ( .A(q[7]), .Z(n106) );
  GTECH_OA21 U127 ( .A(n109), .B(q[6]), .C(n110), .Z(n105) );
  GTECH_NAND3 U128 ( .A(n109), .B(n82), .C(n104), .Z(N25) );
  GTECH_OAI22 U129 ( .A(n110), .B(n111), .C(q[6]), .D(n108), .Z(N24) );
  GTECH_NAND3 U130 ( .A(n112), .B(q[4]), .C(q[5]), .Z(n108) );
  GTECH_NOT U131 ( .A(n113), .Z(n110) );
  GTECH_OAI21 U132 ( .A(q[5]), .B(n109), .C(n114), .Z(n113) );
  GTECH_OAI21 U133 ( .A(n115), .B(n114), .C(n116), .Z(N23) );
  GTECH_NAND3 U134 ( .A(n112), .B(q[4]), .C(n115), .Z(n116) );
  GTECH_NOT U135 ( .A(n114), .Z(N22) );
  GTECH_NAND2 U136 ( .A(n112), .B(n117), .Z(n114) );
  GTECH_NOT U137 ( .A(q[4]), .Z(n117) );
  GTECH_NOT U138 ( .A(n109), .Z(n112) );
  GTECH_NAND3 U139 ( .A(n104), .B(n82), .C(ena[1]), .Z(n109) );
  GTECH_NAND5 U140 ( .A(n115), .B(n111), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n104) );
  GTECH_NOT U141 ( .A(n118), .Z(ena[1]) );
  GTECH_NOT U142 ( .A(q[6]), .Z(n111) );
  GTECH_NOT U143 ( .A(q[5]), .Z(n115) );
  GTECH_OAI2N2 U144 ( .A(n119), .B(n120), .C(n121), .D(q[2]), .Z(N13) );
  GTECH_AND_NOT U145 ( .A(n120), .B(n122), .Z(n121) );
  GTECH_NOT U146 ( .A(q[3]), .Z(n120) );
  GTECH_OA21 U147 ( .A(n123), .B(q[2]), .C(n124), .Z(n119) );
  GTECH_OAI22 U148 ( .A(n124), .B(n125), .C(q[2]), .D(n122), .Z(N12) );
  GTECH_NAND3 U149 ( .A(n126), .B(q[0]), .C(q[1]), .Z(n122) );
  GTECH_NOT U150 ( .A(n127), .Z(n124) );
  GTECH_OAI21 U151 ( .A(q[1]), .B(n123), .C(n128), .Z(n127) );
  GTECH_OAI21 U152 ( .A(n129), .B(n128), .C(n130), .Z(N11) );
  GTECH_NAND3 U153 ( .A(n126), .B(q[0]), .C(n129), .Z(n130) );
  GTECH_NOT U154 ( .A(n128), .Z(N10) );
  GTECH_NAND2 U155 ( .A(n126), .B(n131), .Z(n128) );
  GTECH_NOT U156 ( .A(q[0]), .Z(n131) );
  GTECH_NOT U157 ( .A(n123), .Z(n126) );
  GTECH_NAND2 U158 ( .A(n118), .B(n82), .Z(n123) );
  GTECH_NOT U159 ( .A(reset), .Z(n82) );
  GTECH_NAND4 U160 ( .A(q[3]), .B(q[0]), .C(n129), .D(n125), .Z(n118) );
  GTECH_NOT U161 ( .A(q[2]), .Z(n125) );
  GTECH_NOT U162 ( .A(q[1]), .Z(n129) );
endmodule

