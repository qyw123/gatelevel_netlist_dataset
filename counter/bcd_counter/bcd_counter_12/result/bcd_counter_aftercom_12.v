
module bcd_counter ( clk, reset, ena, q );
  output [3:1] ena;
  output [15:0] q;
  input clk, reset;
  wire   N10, N11, N12, N13, N22, N23, N24, N25, N26, N38, N39, N40, N41, N42,
         N54, N55, N56, N57, N58, n62, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122;

  GTECH_FD1 ones_reg_0_ ( .D(N10), .CP(clk), .Q(q[0]) );
  GTECH_FD1 ones_reg_2_ ( .D(N12), .CP(clk), .Q(q[2]) );
  GTECH_FD1 ones_reg_1_ ( .D(N11), .CP(clk), .Q(q[1]) );
  GTECH_FD1 ones_reg_3_ ( .D(N13), .CP(clk), .Q(q[3]) );
  GTECH_FJK1S tens_reg_0_ ( .J(n62), .K(n62), .TI(N22), .TE(N25), .CP(clk), 
        .Q(q[4]) );
  GTECH_FJK1S tens_reg_2_ ( .J(n62), .K(n62), .TI(N24), .TE(N25), .CP(clk), 
        .Q(q[6]) );
  GTECH_FJK1S tens_reg_1_ ( .J(n62), .K(n62), .TI(N23), .TE(N25), .CP(clk), 
        .Q(q[5]) );
  GTECH_FJK1S tens_reg_3_ ( .J(n62), .K(n62), .TI(N26), .TE(N25), .CP(clk), 
        .Q(q[7]) );
  GTECH_FJK1S hundreds_reg_0_ ( .J(n62), .K(n62), .TI(N38), .TE(N41), .CP(clk), 
        .Q(q[8]) );
  GTECH_FJK1S hundreds_reg_2_ ( .J(n62), .K(n62), .TI(N40), .TE(N41), .CP(clk), 
        .Q(q[10]) );
  GTECH_FJK1S hundreds_reg_1_ ( .J(n62), .K(n62), .TI(N39), .TE(N41), .CP(clk), 
        .Q(q[9]) );
  GTECH_FJK1S hundreds_reg_3_ ( .J(n62), .K(n62), .TI(N42), .TE(N41), .CP(clk), 
        .Q(q[11]) );
  GTECH_FJK1S thousands_reg_0_ ( .J(n62), .K(n62), .TI(N54), .TE(N57), .CP(clk), .Q(q[12]) );
  GTECH_FJK1S thousands_reg_2_ ( .J(n62), .K(n62), .TI(N56), .TE(N57), .CP(clk), .Q(q[14]) );
  GTECH_FJK1S thousands_reg_1_ ( .J(n62), .K(n62), .TI(N55), .TE(N57), .CP(clk), .Q(q[13]) );
  GTECH_FJK1S thousands_reg_3_ ( .J(n62), .K(n62), .TI(N58), .TE(N57), .CP(clk), .Q(q[15]) );
  GTECH_ZERO U89 ( .Z(n62) );
  GTECH_AND_NOT U90 ( .A(n82), .B(n83), .Z(N58) );
  GTECH_XOR2 U91 ( .A(n84), .B(q[15]), .Z(n83) );
  GTECH_OR_NOT U92 ( .A(n85), .B(q[14]), .Z(n84) );
  GTECH_NAND3 U93 ( .A(n86), .B(n87), .C(n88), .Z(N57) );
  GTECH_AND_NOT U94 ( .A(n82), .B(n89), .Z(N56) );
  GTECH_XOR2 U95 ( .A(n85), .B(q[14]), .Z(n89) );
  GTECH_AND_NOT U96 ( .A(n90), .B(n88), .Z(N55) );
  GTECH_OA21 U97 ( .A(q[12]), .B(q[13]), .C(n85), .Z(n90) );
  GTECH_NAND2 U98 ( .A(q[13]), .B(q[12]), .Z(n85) );
  GTECH_AND_NOT U99 ( .A(n82), .B(q[12]), .Z(N54) );
  GTECH_NOT U100 ( .A(n88), .Z(n82) );
  GTECH_NAND3 U101 ( .A(n86), .B(n87), .C(ena[3]), .Z(n88) );
  GTECH_NAND5 U102 ( .A(n91), .B(n92), .C(ena[3]), .D(q[15]), .E(q[12]), .Z(
        n86) );
  GTECH_NOT U103 ( .A(n93), .Z(ena[3]) );
  GTECH_NOT U104 ( .A(q[14]), .Z(n92) );
  GTECH_NOT U105 ( .A(q[13]), .Z(n91) );
  GTECH_AND_NOT U106 ( .A(n94), .B(n95), .Z(N42) );
  GTECH_XOR2 U107 ( .A(n96), .B(q[11]), .Z(n95) );
  GTECH_OR_NOT U108 ( .A(n97), .B(q[10]), .Z(n96) );
  GTECH_NAND3 U109 ( .A(n93), .B(n87), .C(n98), .Z(N41) );
  GTECH_AND_NOT U110 ( .A(n94), .B(n99), .Z(N40) );
  GTECH_XOR2 U111 ( .A(n97), .B(q[10]), .Z(n99) );
  GTECH_AND_NOT U112 ( .A(n100), .B(n98), .Z(N39) );
  GTECH_OA21 U113 ( .A(q[8]), .B(q[9]), .C(n97), .Z(n100) );
  GTECH_NAND2 U114 ( .A(q[9]), .B(q[8]), .Z(n97) );
  GTECH_AND_NOT U115 ( .A(n94), .B(q[8]), .Z(N38) );
  GTECH_NOT U116 ( .A(n98), .Z(n94) );
  GTECH_NAND3 U117 ( .A(n93), .B(n87), .C(ena[2]), .Z(n98) );
  GTECH_NAND5 U118 ( .A(n101), .B(n102), .C(ena[2]), .D(q[8]), .E(q[11]), .Z(
        n93) );
  GTECH_NOT U119 ( .A(n103), .Z(ena[2]) );
  GTECH_NOT U120 ( .A(q[9]), .Z(n102) );
  GTECH_NOT U121 ( .A(q[10]), .Z(n101) );
  GTECH_AND_NOT U122 ( .A(n104), .B(n105), .Z(N26) );
  GTECH_XOR2 U123 ( .A(n106), .B(q[7]), .Z(n105) );
  GTECH_OR_NOT U124 ( .A(n107), .B(q[6]), .Z(n106) );
  GTECH_NAND3 U125 ( .A(n103), .B(n87), .C(n108), .Z(N25) );
  GTECH_AND_NOT U126 ( .A(n104), .B(n109), .Z(N24) );
  GTECH_XOR2 U127 ( .A(n107), .B(q[6]), .Z(n109) );
  GTECH_AND_NOT U128 ( .A(n110), .B(n108), .Z(N23) );
  GTECH_OA21 U129 ( .A(q[4]), .B(q[5]), .C(n107), .Z(n110) );
  GTECH_NAND2 U130 ( .A(q[5]), .B(q[4]), .Z(n107) );
  GTECH_AND_NOT U131 ( .A(n104), .B(q[4]), .Z(N22) );
  GTECH_NOT U132 ( .A(n108), .Z(n104) );
  GTECH_NAND3 U133 ( .A(n103), .B(n87), .C(ena[1]), .Z(n108) );
  GTECH_NAND5 U134 ( .A(n111), .B(n112), .C(ena[1]), .D(q[7]), .E(q[4]), .Z(
        n103) );
  GTECH_NOT U135 ( .A(n113), .Z(ena[1]) );
  GTECH_NOT U136 ( .A(q[6]), .Z(n112) );
  GTECH_NOT U137 ( .A(q[5]), .Z(n111) );
  GTECH_AND_NOT U138 ( .A(n114), .B(n115), .Z(N13) );
  GTECH_XOR2 U139 ( .A(n116), .B(q[3]), .Z(n115) );
  GTECH_OR_NOT U140 ( .A(n117), .B(q[2]), .Z(n116) );
  GTECH_AND_NOT U141 ( .A(n114), .B(n118), .Z(N12) );
  GTECH_XOR2 U142 ( .A(n117), .B(q[2]), .Z(n118) );
  GTECH_AND_NOT U143 ( .A(n119), .B(n120), .Z(N11) );
  GTECH_OA21 U144 ( .A(q[0]), .B(q[1]), .C(n117), .Z(n119) );
  GTECH_NAND2 U145 ( .A(q[1]), .B(q[0]), .Z(n117) );
  GTECH_AND_NOT U146 ( .A(n114), .B(q[0]), .Z(N10) );
  GTECH_NOT U147 ( .A(n120), .Z(n114) );
  GTECH_NAND2 U148 ( .A(n113), .B(n87), .Z(n120) );
  GTECH_NOT U149 ( .A(reset), .Z(n87) );
  GTECH_NAND4 U150 ( .A(q[3]), .B(q[0]), .C(n121), .D(n122), .Z(n113) );
  GTECH_NOT U151 ( .A(q[2]), .Z(n122) );
  GTECH_NOT U152 ( .A(q[1]), .Z(n121) );
endmodule

