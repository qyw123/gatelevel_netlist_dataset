
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n58, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n58), .K(n58), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n58), .K(n58), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n58), .K(n58), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n58), .K(n58), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n58), .K(n58), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n58), .K(n58), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n58), .K(n58), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n58), .K(n58), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n58), .K(n58), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n58), .K(n58), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n58), .K(n58), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n58), .K(n58), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_ZERO U89 ( .Z(n58) );
  GTECH_OAI22 U90 ( .A(n82), .B(n83), .C(n84), .D(n85), .Z(N58) );
  GTECH_OAI21 U91 ( .A(q[15]), .B(q[14]), .C(n86), .Z(n85) );
  GTECH_OAI21 U92 ( .A(q[15]), .B(n87), .C(q[14]), .Z(n86) );
  GTECH_NOT U93 ( .A(q[15]), .Z(n82) );
  GTECH_NAND2 U94 ( .A(n88), .B(n89), .Z(N57) );
  GTECH_OAI21 U95 ( .A(n83), .B(n90), .C(n91), .Z(N56) );
  GTECH_OR3 U96 ( .A(n87), .B(q[14]), .C(n84), .Z(n91) );
  GTECH_OA21 U97 ( .A(q[12]), .B(q[13]), .C(n92), .Z(N55) );
  GTECH_NOT U98 ( .A(n83), .Z(n92) );
  GTECH_NAND2 U99 ( .A(n93), .B(n87), .Z(n83) );
  GTECH_NAND2 U100 ( .A(q[13]), .B(q[12]), .Z(n87) );
  GTECH_AND_NOT U101 ( .A(n93), .B(q[12]), .Z(N54) );
  GTECH_NOT U102 ( .A(n84), .Z(n93) );
  GTECH_NAND3 U103 ( .A(n94), .B(n89), .C(ena[3]), .Z(n84) );
  GTECH_NOT U104 ( .A(n88), .Z(ena[3]) );
  GTECH_NAND4 U105 ( .A(q[15]), .B(q[12]), .C(n95), .D(n90), .Z(n94) );
  GTECH_NOT U106 ( .A(q[14]), .Z(n90) );
  GTECH_NOT U107 ( .A(q[13]), .Z(n95) );
  GTECH_OAI22 U108 ( .A(n96), .B(n97), .C(n98), .D(n99), .Z(N42) );
  GTECH_OAI21 U109 ( .A(q[11]), .B(q[10]), .C(n100), .Z(n99) );
  GTECH_OAI21 U110 ( .A(q[11]), .B(n101), .C(q[10]), .Z(n100) );
  GTECH_NOT U111 ( .A(q[11]), .Z(n96) );
  GTECH_NAND3 U112 ( .A(n98), .B(n89), .C(n88), .Z(N41) );
  GTECH_OAI21 U113 ( .A(n97), .B(n102), .C(n103), .Z(N40) );
  GTECH_OR3 U114 ( .A(n101), .B(q[10]), .C(n98), .Z(n103) );
  GTECH_OA21 U115 ( .A(q[8]), .B(q[9]), .C(n104), .Z(N39) );
  GTECH_NOT U116 ( .A(n97), .Z(n104) );
  GTECH_NAND2 U117 ( .A(n105), .B(n101), .Z(n97) );
  GTECH_NAND2 U118 ( .A(q[9]), .B(q[8]), .Z(n101) );
  GTECH_AND_NOT U119 ( .A(n105), .B(q[8]), .Z(N38) );
  GTECH_NOT U120 ( .A(n98), .Z(n105) );
  GTECH_NAND3 U121 ( .A(n88), .B(n89), .C(ena[2]), .Z(n98) );
  GTECH_NAND5 U122 ( .A(n102), .B(n106), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n88) );
  GTECH_NOT U123 ( .A(n107), .Z(ena[2]) );
  GTECH_NOT U124 ( .A(q[9]), .Z(n106) );
  GTECH_NOT U125 ( .A(q[10]), .Z(n102) );
  GTECH_OAI22 U126 ( .A(n108), .B(n109), .C(n110), .D(n111), .Z(N26) );
  GTECH_OAI21 U127 ( .A(q[7]), .B(q[6]), .C(n112), .Z(n111) );
  GTECH_OAI21 U128 ( .A(q[7]), .B(n113), .C(q[6]), .Z(n112) );
  GTECH_NOT U129 ( .A(q[7]), .Z(n108) );
  GTECH_NAND3 U130 ( .A(n110), .B(n89), .C(n107), .Z(N25) );
  GTECH_OAI21 U131 ( .A(n109), .B(n114), .C(n115), .Z(N24) );
  GTECH_OR3 U132 ( .A(n113), .B(q[6]), .C(n110), .Z(n115) );
  GTECH_OA21 U133 ( .A(q[4]), .B(q[5]), .C(n116), .Z(N23) );
  GTECH_NOT U134 ( .A(n109), .Z(n116) );
  GTECH_NAND2 U135 ( .A(n117), .B(n113), .Z(n109) );
  GTECH_NAND2 U136 ( .A(q[5]), .B(q[4]), .Z(n113) );
  GTECH_AND_NOT U137 ( .A(n117), .B(q[4]), .Z(N22) );
  GTECH_NOT U138 ( .A(n110), .Z(n117) );
  GTECH_NAND3 U139 ( .A(n107), .B(n89), .C(ena[1]), .Z(n110) );
  GTECH_NAND5 U140 ( .A(n118), .B(n114), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n107) );
  GTECH_NOT U141 ( .A(n119), .Z(ena[1]) );
  GTECH_NOT U142 ( .A(q[6]), .Z(n114) );
  GTECH_NOT U143 ( .A(q[5]), .Z(n118) );
  GTECH_OAI22 U144 ( .A(n120), .B(n121), .C(n122), .D(n123), .Z(N13) );
  GTECH_OAI21 U145 ( .A(q[3]), .B(q[2]), .C(n124), .Z(n123) );
  GTECH_OAI21 U146 ( .A(q[3]), .B(n125), .C(q[2]), .Z(n124) );
  GTECH_NOT U147 ( .A(q[3]), .Z(n120) );
  GTECH_OAI21 U148 ( .A(n121), .B(n126), .C(n127), .Z(N12) );
  GTECH_OR3 U149 ( .A(n125), .B(q[2]), .C(n122), .Z(n127) );
  GTECH_OA21 U150 ( .A(q[0]), .B(q[1]), .C(n128), .Z(N11) );
  GTECH_NOT U151 ( .A(n121), .Z(n128) );
  GTECH_NAND2 U152 ( .A(n129), .B(n125), .Z(n121) );
  GTECH_NAND2 U153 ( .A(q[1]), .B(q[0]), .Z(n125) );
  GTECH_AND_NOT U154 ( .A(n129), .B(q[0]), .Z(N10) );
  GTECH_NOT U155 ( .A(n122), .Z(n129) );
  GTECH_NAND2 U156 ( .A(n119), .B(n89), .Z(n122) );
  GTECH_NOT U157 ( .A(reset), .Z(n89) );
  GTECH_NAND4 U158 ( .A(q[3]), .B(q[0]), .C(n130), .D(n126), .Z(n119) );
  GTECH_NOT U159 ( .A(q[2]), .Z(n126) );
  GTECH_NOT U160 ( .A(q[1]), .Z(n130) );
endmodule

