
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n58, n70, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133;

  GTECH_FD2 ones_reg_0_ ( .D(N10), .CP(clk), .CD(n70), .Q(q[0]) );
  GTECH_FD2 ones_reg_2_ ( .D(N12), .CP(clk), .CD(n70), .Q(q[2]) );
  GTECH_FD2 ones_reg_3_ ( .D(N13), .CP(clk), .CD(n70), .Q(q[3]) );
  GTECH_FD2 ones_reg_1_ ( .D(N11), .CP(clk), .CD(n70), .Q(q[1]) );
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
  GTECH_ONE U93 ( .Z(n70) );
  GTECH_ZERO U94 ( .Z(n58) );
  GTECH_OAI22 U95 ( .A(n86), .B(n87), .C(n88), .D(n89), .Z(N58) );
  GTECH_MUX2 U96 ( .A(n86), .B(n90), .S(q[14]), .Z(n89) );
  GTECH_OR_NOT U97 ( .A(n91), .B(n86), .Z(n90) );
  GTECH_NOT U98 ( .A(q[15]), .Z(n86) );
  GTECH_NAND2 U99 ( .A(n92), .B(n93), .Z(N57) );
  GTECH_MUX2 U100 ( .A(n94), .B(n95), .S(q[14]), .Z(N56) );
  GTECH_AND_NOT U101 ( .A(n96), .B(n91), .Z(n94) );
  GTECH_OA21 U102 ( .A(q[12]), .B(q[13]), .C(n95), .Z(N55) );
  GTECH_NOT U103 ( .A(n87), .Z(n95) );
  GTECH_NAND2 U104 ( .A(n96), .B(n91), .Z(n87) );
  GTECH_NAND2 U105 ( .A(q[13]), .B(q[12]), .Z(n91) );
  GTECH_AND_NOT U106 ( .A(n96), .B(q[12]), .Z(N54) );
  GTECH_NOT U107 ( .A(n88), .Z(n96) );
  GTECH_NAND3 U108 ( .A(n93), .B(ena[3]), .C(n97), .Z(n88) );
  GTECH_NAND3 U109 ( .A(q[15]), .B(q[12]), .C(n98), .Z(n97) );
  GTECH_NOR2 U110 ( .A(q[13]), .B(q[14]), .Z(n98) );
  GTECH_NOT U111 ( .A(n92), .Z(ena[3]) );
  GTECH_OAI22 U112 ( .A(n99), .B(n100), .C(n101), .D(n102), .Z(N42) );
  GTECH_MUX2 U113 ( .A(n99), .B(n103), .S(q[10]), .Z(n102) );
  GTECH_OR_NOT U114 ( .A(n104), .B(n99), .Z(n103) );
  GTECH_NOT U115 ( .A(q[11]), .Z(n99) );
  GTECH_NAND3 U116 ( .A(n101), .B(n93), .C(n92), .Z(N41) );
  GTECH_MUX2 U117 ( .A(n105), .B(n106), .S(q[10]), .Z(N40) );
  GTECH_AND_NOT U118 ( .A(n107), .B(n104), .Z(n105) );
  GTECH_OA21 U119 ( .A(q[8]), .B(q[9]), .C(n106), .Z(N39) );
  GTECH_NOT U120 ( .A(n100), .Z(n106) );
  GTECH_NAND2 U121 ( .A(n107), .B(n104), .Z(n100) );
  GTECH_NAND2 U122 ( .A(q[9]), .B(q[8]), .Z(n104) );
  GTECH_AND_NOT U123 ( .A(n107), .B(q[8]), .Z(N38) );
  GTECH_NOT U124 ( .A(n101), .Z(n107) );
  GTECH_NAND3 U125 ( .A(n92), .B(n93), .C(ena[2]), .Z(n101) );
  GTECH_NAND5 U126 ( .A(n108), .B(n109), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n92) );
  GTECH_NOT U127 ( .A(n110), .Z(ena[2]) );
  GTECH_NOT U128 ( .A(q[9]), .Z(n109) );
  GTECH_NOT U129 ( .A(q[10]), .Z(n108) );
  GTECH_OAI22 U130 ( .A(n111), .B(n112), .C(n113), .D(n114), .Z(N26) );
  GTECH_MUX2 U131 ( .A(n111), .B(n115), .S(q[6]), .Z(n114) );
  GTECH_OR_NOT U132 ( .A(n116), .B(n111), .Z(n115) );
  GTECH_NOT U133 ( .A(q[7]), .Z(n111) );
  GTECH_NAND3 U134 ( .A(n113), .B(n93), .C(n110), .Z(N25) );
  GTECH_MUX2 U135 ( .A(n117), .B(n118), .S(q[6]), .Z(N24) );
  GTECH_AND_NOT U136 ( .A(n119), .B(n116), .Z(n117) );
  GTECH_OA21 U137 ( .A(q[4]), .B(q[5]), .C(n118), .Z(N23) );
  GTECH_NOT U138 ( .A(n112), .Z(n118) );
  GTECH_NAND2 U139 ( .A(n119), .B(n116), .Z(n112) );
  GTECH_NAND2 U140 ( .A(q[5]), .B(q[4]), .Z(n116) );
  GTECH_AND_NOT U141 ( .A(n119), .B(q[4]), .Z(N22) );
  GTECH_NOT U142 ( .A(n113), .Z(n119) );
  GTECH_NAND3 U143 ( .A(n110), .B(n93), .C(ena[1]), .Z(n113) );
  GTECH_NAND5 U144 ( .A(n120), .B(n121), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n110) );
  GTECH_NOT U145 ( .A(n122), .Z(ena[1]) );
  GTECH_NOT U146 ( .A(q[6]), .Z(n121) );
  GTECH_NOT U147 ( .A(q[5]), .Z(n120) );
  GTECH_OAI22 U148 ( .A(n123), .B(n124), .C(n125), .D(n126), .Z(N13) );
  GTECH_MUX2 U149 ( .A(n123), .B(n127), .S(q[2]), .Z(n126) );
  GTECH_OR_NOT U150 ( .A(n128), .B(n123), .Z(n127) );
  GTECH_NOT U151 ( .A(q[3]), .Z(n123) );
  GTECH_MUX2 U152 ( .A(n129), .B(n130), .S(q[2]), .Z(N12) );
  GTECH_AND_NOT U153 ( .A(n131), .B(n128), .Z(n129) );
  GTECH_OA21 U154 ( .A(q[0]), .B(q[1]), .C(n130), .Z(N11) );
  GTECH_NOT U155 ( .A(n124), .Z(n130) );
  GTECH_NAND2 U156 ( .A(n131), .B(n128), .Z(n124) );
  GTECH_NAND2 U157 ( .A(q[1]), .B(q[0]), .Z(n128) );
  GTECH_AND_NOT U158 ( .A(n131), .B(q[0]), .Z(N10) );
  GTECH_NOT U159 ( .A(n125), .Z(n131) );
  GTECH_NAND2 U160 ( .A(n122), .B(n93), .Z(n125) );
  GTECH_NOT U161 ( .A(reset), .Z(n93) );
  GTECH_NAND4 U162 ( .A(q[3]), .B(q[0]), .C(n132), .D(n133), .Z(n122) );
  GTECH_NOT U163 ( .A(q[2]), .Z(n133) );
  GTECH_NOT U164 ( .A(q[1]), .Z(n132) );
endmodule

