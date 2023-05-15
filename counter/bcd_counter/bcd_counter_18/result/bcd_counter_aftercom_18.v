
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FJK1S tens_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S tens_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(
        clk), .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N40), .TE(N41), .CP(
        clk), .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(
        clk), .Q(q[11]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(
        clk), .Q(q[9]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N57), .CP(
        clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N57), .CP(
        clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N58), .TE(N57), .CP(
        clk), .Q(q[15]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N57), .CP(
        clk), .Q(q[13]) );
  GTECH_OAI22 U89 ( .A(n82), .B(n83), .C(n84), .D(n85), .Z(N58) );
  GTECH_MUX2 U90 ( .A(n82), .B(n86), .S(q[14]), .Z(n85) );
  GTECH_OR_NOT U91 ( .A(n87), .B(n82), .Z(n86) );
  GTECH_NOT U92 ( .A(q[15]), .Z(n82) );
  GTECH_NAND2 U93 ( .A(n88), .B(n89), .Z(N57) );
  GTECH_MUX2 U94 ( .A(n90), .B(n91), .S(q[14]), .Z(N56) );
  GTECH_AND_NOT U95 ( .A(n92), .B(n87), .Z(n90) );
  GTECH_OA21 U96 ( .A(q[12]), .B(q[13]), .C(n91), .Z(N55) );
  GTECH_NOT U97 ( .A(n83), .Z(n91) );
  GTECH_NAND2 U98 ( .A(n92), .B(n87), .Z(n83) );
  GTECH_NAND2 U99 ( .A(q[13]), .B(q[12]), .Z(n87) );
  GTECH_AND_NOT U100 ( .A(n92), .B(q[12]), .Z(N54) );
  GTECH_NOT U101 ( .A(n84), .Z(n92) );
  GTECH_NAND3 U102 ( .A(n89), .B(ena[3]), .C(n93), .Z(n84) );
  GTECH_NAND3 U103 ( .A(q[15]), .B(q[12]), .C(n94), .Z(n93) );
  GTECH_NOR2 U104 ( .A(q[13]), .B(q[14]), .Z(n94) );
  GTECH_NOT U105 ( .A(n88), .Z(ena[3]) );
  GTECH_OAI22 U106 ( .A(n95), .B(n96), .C(n97), .D(n98), .Z(N42) );
  GTECH_MUX2 U107 ( .A(n95), .B(n99), .S(q[10]), .Z(n98) );
  GTECH_OR_NOT U108 ( .A(n100), .B(n95), .Z(n99) );
  GTECH_NOT U109 ( .A(q[11]), .Z(n95) );
  GTECH_NAND3 U110 ( .A(n97), .B(n89), .C(n88), .Z(N41) );
  GTECH_MUX2 U111 ( .A(n101), .B(n102), .S(q[10]), .Z(N40) );
  GTECH_AND_NOT U112 ( .A(n103), .B(n100), .Z(n101) );
  GTECH_OA21 U113 ( .A(q[8]), .B(q[9]), .C(n102), .Z(N39) );
  GTECH_NOT U114 ( .A(n96), .Z(n102) );
  GTECH_NAND2 U115 ( .A(n103), .B(n100), .Z(n96) );
  GTECH_NAND2 U116 ( .A(q[9]), .B(q[8]), .Z(n100) );
  GTECH_AND_NOT U117 ( .A(n103), .B(q[8]), .Z(N38) );
  GTECH_NOT U118 ( .A(n97), .Z(n103) );
  GTECH_NAND3 U119 ( .A(n88), .B(n89), .C(ena[2]), .Z(n97) );
  GTECH_NAND5 U120 ( .A(n104), .B(n105), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n88) );
  GTECH_NOT U121 ( .A(n106), .Z(ena[2]) );
  GTECH_NOT U122 ( .A(q[9]), .Z(n105) );
  GTECH_NOT U123 ( .A(q[10]), .Z(n104) );
  GTECH_OAI22 U124 ( .A(n107), .B(n108), .C(n109), .D(n110), .Z(N26) );
  GTECH_MUX2 U125 ( .A(n107), .B(n111), .S(q[6]), .Z(n110) );
  GTECH_OR_NOT U126 ( .A(n112), .B(n107), .Z(n111) );
  GTECH_NOT U127 ( .A(q[7]), .Z(n107) );
  GTECH_NAND3 U128 ( .A(n109), .B(n89), .C(n106), .Z(N25) );
  GTECH_MUX2 U129 ( .A(n113), .B(n114), .S(q[6]), .Z(N24) );
  GTECH_AND_NOT U130 ( .A(n115), .B(n112), .Z(n113) );
  GTECH_OA21 U131 ( .A(q[4]), .B(q[5]), .C(n114), .Z(N23) );
  GTECH_NOT U132 ( .A(n108), .Z(n114) );
  GTECH_NAND2 U133 ( .A(n115), .B(n112), .Z(n108) );
  GTECH_NAND2 U134 ( .A(q[5]), .B(q[4]), .Z(n112) );
  GTECH_AND_NOT U135 ( .A(n115), .B(q[4]), .Z(N22) );
  GTECH_NOT U136 ( .A(n109), .Z(n115) );
  GTECH_NAND3 U137 ( .A(n106), .B(n89), .C(ena[1]), .Z(n109) );
  GTECH_NAND5 U138 ( .A(n116), .B(n117), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n106) );
  GTECH_NOT U139 ( .A(n118), .Z(ena[1]) );
  GTECH_NOT U140 ( .A(q[6]), .Z(n117) );
  GTECH_NOT U141 ( .A(q[5]), .Z(n116) );
  GTECH_OAI22 U142 ( .A(n119), .B(n120), .C(n121), .D(n122), .Z(N13) );
  GTECH_MUX2 U143 ( .A(n119), .B(n123), .S(q[2]), .Z(n122) );
  GTECH_OR_NOT U144 ( .A(n124), .B(n119), .Z(n123) );
  GTECH_NOT U145 ( .A(q[3]), .Z(n119) );
  GTECH_MUX2 U146 ( .A(n125), .B(n126), .S(q[2]), .Z(N12) );
  GTECH_AND_NOT U147 ( .A(n127), .B(n124), .Z(n125) );
  GTECH_OA21 U148 ( .A(q[0]), .B(q[1]), .C(n126), .Z(N11) );
  GTECH_NOT U149 ( .A(n120), .Z(n126) );
  GTECH_NAND2 U150 ( .A(n127), .B(n124), .Z(n120) );
  GTECH_NAND2 U151 ( .A(q[1]), .B(q[0]), .Z(n124) );
  GTECH_AND_NOT U152 ( .A(n127), .B(q[0]), .Z(N10) );
  GTECH_NOT U153 ( .A(n121), .Z(n127) );
  GTECH_NAND2 U154 ( .A(n118), .B(n89), .Z(n121) );
  GTECH_NOT U155 ( .A(reset), .Z(n89) );
  GTECH_NAND4 U156 ( .A(q[3]), .B(q[0]), .C(n128), .D(n129), .Z(n118) );
  GTECH_NOT U157 ( .A(q[2]), .Z(n129) );
  GTECH_NOT U158 ( .A(q[1]), .Z(n128) );
endmodule

