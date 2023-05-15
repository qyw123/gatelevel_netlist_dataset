
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n36, n37, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118;

  GTECH_FJK3S data_out_reg_15_ ( .J(n37), .K(n37), .TI(N23), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[15]) );
  GTECH_FJK3S data_out_reg_14_ ( .J(n37), .K(n37), .TI(N22), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[14]) );
  GTECH_FJK3S data_out_reg_13_ ( .J(n37), .K(n37), .TI(N21), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[13]) );
  GTECH_FJK3S data_out_reg_12_ ( .J(n37), .K(n37), .TI(N20), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[12]) );
  GTECH_FJK3S data_out_reg_11_ ( .J(n37), .K(n37), .TI(N19), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[11]) );
  GTECH_FJK3S data_out_reg_10_ ( .J(n37), .K(n37), .TI(N18), .TE(N24), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[10]) );
  GTECH_FJK3S data_out_reg_9_ ( .J(n37), .K(n37), .TI(N17), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[9]) );
  GTECH_FJK3S data_out_reg_8_ ( .J(n37), .K(n37), .TI(N16), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[8]) );
  GTECH_FJK3S data_out_reg_7_ ( .J(n37), .K(n37), .TI(N15), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[7]) );
  GTECH_FJK3S data_out_reg_6_ ( .J(n37), .K(n37), .TI(N14), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[6]) );
  GTECH_FJK3S data_out_reg_5_ ( .J(n37), .K(n37), .TI(N13), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[5]) );
  GTECH_FJK3S data_out_reg_4_ ( .J(n37), .K(n37), .TI(N12), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[4]) );
  GTECH_FJK3S data_out_reg_3_ ( .J(n37), .K(n37), .TI(N11), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[3]) );
  GTECH_FJK3S data_out_reg_2_ ( .J(n37), .K(n37), .TI(N10), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[2]) );
  GTECH_FJK3S data_out_reg_1_ ( .J(n37), .K(n37), .TI(N9), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[1]) );
  GTECH_FJK3S data_out_reg_0_ ( .J(n37), .K(n37), .TI(N8), .TE(N24), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[0]) );
  GTECH_ZERO U85 ( .Z(n37) );
  GTECH_ONE U86 ( .Z(n36) );
  GTECH_OAI21 U87 ( .A(n84), .B(n85), .C(n86), .Z(N9) );
  GTECH_OA22 U88 ( .A(n87), .B(n88), .C(n89), .D(n90), .Z(n86) );
  GTECH_OAI22 U89 ( .A(n89), .B(n85), .C(n87), .D(n90), .Z(N8) );
  GTECH_NOT U90 ( .A(data_in[0]), .Z(n85) );
  GTECH_NAND3 U91 ( .A(n87), .B(n89), .C(n84), .Z(N24) );
  GTECH_OAI22 U92 ( .A(n84), .B(n91), .C(n89), .D(n92), .Z(N23) );
  GTECH_OAI21 U93 ( .A(n84), .B(n93), .C(n94), .Z(N22) );
  GTECH_OA22 U94 ( .A(n87), .B(n92), .C(n89), .D(n91), .Z(n94) );
  GTECH_NOT U95 ( .A(data_in[15]), .Z(n92) );
  GTECH_OAI21 U96 ( .A(n84), .B(n95), .C(n96), .Z(N21) );
  GTECH_OA22 U97 ( .A(n87), .B(n91), .C(n89), .D(n93), .Z(n96) );
  GTECH_NOT U98 ( .A(data_in[14]), .Z(n91) );
  GTECH_OAI21 U99 ( .A(n84), .B(n97), .C(n98), .Z(N20) );
  GTECH_OA22 U100 ( .A(n87), .B(n93), .C(n89), .D(n95), .Z(n98) );
  GTECH_NOT U101 ( .A(data_in[13]), .Z(n93) );
  GTECH_OAI21 U102 ( .A(n84), .B(n99), .C(n100), .Z(N19) );
  GTECH_OA22 U103 ( .A(n87), .B(n95), .C(n89), .D(n97), .Z(n100) );
  GTECH_NOT U104 ( .A(data_in[12]), .Z(n95) );
  GTECH_OAI21 U105 ( .A(n84), .B(n101), .C(n102), .Z(N18) );
  GTECH_OA22 U106 ( .A(n87), .B(n97), .C(n89), .D(n99), .Z(n102) );
  GTECH_NOT U107 ( .A(data_in[11]), .Z(n97) );
  GTECH_OAI21 U108 ( .A(n84), .B(n103), .C(n104), .Z(N17) );
  GTECH_OA22 U109 ( .A(n87), .B(n99), .C(n89), .D(n101), .Z(n104) );
  GTECH_NOT U110 ( .A(data_in[10]), .Z(n99) );
  GTECH_OAI21 U111 ( .A(n84), .B(n105), .C(n106), .Z(N16) );
  GTECH_OA22 U112 ( .A(n87), .B(n101), .C(n89), .D(n103), .Z(n106) );
  GTECH_NOT U113 ( .A(data_in[9]), .Z(n101) );
  GTECH_OAI21 U114 ( .A(n84), .B(n107), .C(n108), .Z(N15) );
  GTECH_OA22 U115 ( .A(n87), .B(n103), .C(n89), .D(n105), .Z(n108) );
  GTECH_NOT U116 ( .A(data_in[8]), .Z(n103) );
  GTECH_OAI21 U117 ( .A(n84), .B(n109), .C(n110), .Z(N14) );
  GTECH_OA22 U118 ( .A(n87), .B(n105), .C(n89), .D(n107), .Z(n110) );
  GTECH_NOT U119 ( .A(data_in[7]), .Z(n105) );
  GTECH_OAI21 U120 ( .A(n84), .B(n111), .C(n112), .Z(N13) );
  GTECH_OA22 U121 ( .A(n87), .B(n107), .C(n89), .D(n109), .Z(n112) );
  GTECH_NOT U122 ( .A(data_in[6]), .Z(n107) );
  GTECH_OAI21 U123 ( .A(n84), .B(n113), .C(n114), .Z(N12) );
  GTECH_OA22 U124 ( .A(n87), .B(n109), .C(n89), .D(n111), .Z(n114) );
  GTECH_NOT U125 ( .A(data_in[5]), .Z(n109) );
  GTECH_OAI21 U126 ( .A(n88), .B(n84), .C(n115), .Z(N11) );
  GTECH_OA22 U127 ( .A(n87), .B(n111), .C(n89), .D(n113), .Z(n115) );
  GTECH_NOT U128 ( .A(data_in[4]), .Z(n111) );
  GTECH_OAI21 U129 ( .A(n90), .B(n84), .C(n116), .Z(N10) );
  GTECH_OA22 U130 ( .A(n87), .B(n113), .C(n88), .D(n89), .Z(n116) );
  GTECH_NAND2 U131 ( .A(control[0]), .B(control[1]), .Z(n89) );
  GTECH_NOT U132 ( .A(data_in[2]), .Z(n88) );
  GTECH_NOT U133 ( .A(data_in[3]), .Z(n113) );
  GTECH_NAND2 U134 ( .A(control[1]), .B(n117), .Z(n87) );
  GTECH_NOT U135 ( .A(control[0]), .Z(n117) );
  GTECH_NAND2 U136 ( .A(control[0]), .B(n118), .Z(n84) );
  GTECH_NOT U137 ( .A(control[1]), .Z(n118) );
  GTECH_NOT U138 ( .A(data_in[1]), .Z(n90) );
endmodule

