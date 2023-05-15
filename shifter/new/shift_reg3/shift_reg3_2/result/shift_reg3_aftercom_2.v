
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n42, n45, n48, n51, n54, n57, n60, n63, n66, n69, n72,
         n75, n78, n81, n82, n37, n38, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n38), .K(n38), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n82), .SD(n37), .Q(data_out[0]) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n38), .K(n38), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n82), .SD(n37), .Q(data_out[1]), .QN(n81) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n38), .K(n38), .TI(N10), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[2]), .QN(n78) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n38), .K(n38), .TI(N11), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[3]), .QN(n75) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n38), .K(n38), .TI(N12), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[4]), .QN(n72) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n38), .K(n38), .TI(N13), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[5]), .QN(n69) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n38), .K(n38), .TI(N14), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[6]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n38), .K(n38), .TI(N15), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[7]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_8_ ( .J(n38), .K(n38), .TI(N16), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[8]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_9_ ( .J(n38), .K(n38), .TI(N17), .TE(N68), .CP(clk), .CD(n82), .SD(n37), .Q(data_out[9]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_10_ ( .J(n38), .K(n38), .TI(N18), .TE(N68), .CP(
        clk), .CD(n82), .SD(n37), .Q(data_out[10]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_11_ ( .J(n38), .K(n38), .TI(N19), .TE(N68), .CP(
        clk), .CD(n82), .SD(n37), .Q(data_out[11]), .QN(n51) );
  GTECH_FJK3S shift_reg_reg_12_ ( .J(n38), .K(n38), .TI(N20), .TE(N68), .CP(
        clk), .CD(n82), .SD(n37), .Q(data_out[12]), .QN(n48) );
  GTECH_FJK3S shift_reg_reg_13_ ( .J(n38), .K(n38), .TI(N21), .TE(N68), .CP(
        clk), .CD(n82), .SD(n37), .Q(data_out[13]), .QN(n45) );
  GTECH_FJK3S shift_reg_reg_14_ ( .J(n38), .K(n38), .TI(N22), .TE(N68), .CP(
        clk), .CD(n82), .SD(n37), .Q(data_out[14]), .QN(n42) );
  GTECH_FJK3S shift_reg_reg_15_ ( .J(n38), .K(n38), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n82), .SD(n37), .Q(data_out[15]) );
  GTECH_ZERO U87 ( .Z(n38) );
  GTECH_ONE U88 ( .Z(n37) );
  GTECH_NOT U89 ( .A(reset), .Z(n82) );
  GTECH_NOT U90 ( .A(n86), .Z(N9) );
  GTECH_AOI222 U91 ( .A(n87), .B(data_out[0]), .C(data_in[1]), .D(n88), .E(n89), .F(n90), .Z(n86) );
  GTECH_OAI22 U92 ( .A(n81), .B(n91), .C(n92), .D(n93), .Z(N8) );
  GTECH_NOT U93 ( .A(data_in[0]), .Z(n93) );
  GTECH_OA21 U94 ( .A(shift_direction[1]), .B(n94), .C(enable), .Z(N68) );
  GTECH_NOT U95 ( .A(n95), .Z(N23) );
  GTECH_AOI222 U96 ( .A(n87), .B(n96), .C(n97), .D(data_in[0]), .E(data_in[15]), .F(n88), .Z(n95) );
  GTECH_AND2 U97 ( .A(shift_direction[0]), .B(n98), .Z(n97) );
  GTECH_NOT U98 ( .A(n99), .Z(N22) );
  GTECH_AOI222 U99 ( .A(n87), .B(n100), .C(data_in[14]), .D(n88), .E(n89), .F(
        data_out[15]), .Z(n99) );
  GTECH_NOT U100 ( .A(n101), .Z(N21) );
  GTECH_AOI222 U101 ( .A(n87), .B(n102), .C(data_in[13]), .D(n88), .E(n89), 
        .F(n96), .Z(n101) );
  GTECH_NOT U102 ( .A(n42), .Z(n96) );
  GTECH_NOT U103 ( .A(n103), .Z(N20) );
  GTECH_AOI222 U104 ( .A(n87), .B(n104), .C(data_in[12]), .D(n88), .E(n89), 
        .F(n100), .Z(n103) );
  GTECH_NOT U105 ( .A(n45), .Z(n100) );
  GTECH_NOT U106 ( .A(n105), .Z(N19) );
  GTECH_AOI222 U107 ( .A(n87), .B(n106), .C(data_in[11]), .D(n88), .E(n89), 
        .F(n102), .Z(n105) );
  GTECH_NOT U108 ( .A(n48), .Z(n102) );
  GTECH_NOT U109 ( .A(n107), .Z(N18) );
  GTECH_AOI222 U110 ( .A(n87), .B(n108), .C(data_in[10]), .D(n88), .E(n89), 
        .F(n104), .Z(n107) );
  GTECH_NOT U111 ( .A(n51), .Z(n104) );
  GTECH_NOT U112 ( .A(n109), .Z(N17) );
  GTECH_AOI222 U113 ( .A(n87), .B(n110), .C(data_in[9]), .D(n88), .E(n89), .F(
        n106), .Z(n109) );
  GTECH_NOT U114 ( .A(n54), .Z(n106) );
  GTECH_NOT U115 ( .A(n111), .Z(N16) );
  GTECH_AOI222 U116 ( .A(n87), .B(n112), .C(data_in[8]), .D(n88), .E(n89), .F(
        n108), .Z(n111) );
  GTECH_NOT U117 ( .A(n57), .Z(n108) );
  GTECH_NOT U118 ( .A(n113), .Z(N15) );
  GTECH_AOI222 U119 ( .A(n87), .B(n114), .C(data_in[7]), .D(n88), .E(n89), .F(
        n110), .Z(n113) );
  GTECH_NOT U120 ( .A(n60), .Z(n110) );
  GTECH_NOT U121 ( .A(n115), .Z(N14) );
  GTECH_AOI222 U122 ( .A(n87), .B(n116), .C(data_in[6]), .D(n88), .E(n89), .F(
        n112), .Z(n115) );
  GTECH_NOT U123 ( .A(n63), .Z(n112) );
  GTECH_NOT U124 ( .A(n117), .Z(N13) );
  GTECH_AOI222 U125 ( .A(n87), .B(n118), .C(data_in[5]), .D(n88), .E(n89), .F(
        n114), .Z(n117) );
  GTECH_NOT U126 ( .A(n66), .Z(n114) );
  GTECH_NOT U127 ( .A(n119), .Z(N12) );
  GTECH_AOI222 U128 ( .A(n87), .B(n120), .C(data_in[4]), .D(n88), .E(n89), .F(
        n116), .Z(n119) );
  GTECH_NOT U129 ( .A(n69), .Z(n116) );
  GTECH_NOT U130 ( .A(n121), .Z(N11) );
  GTECH_AOI222 U131 ( .A(n87), .B(n90), .C(data_in[3]), .D(n88), .E(n89), .F(
        n118), .Z(n121) );
  GTECH_NOT U132 ( .A(n72), .Z(n118) );
  GTECH_NOT U133 ( .A(n78), .Z(n90) );
  GTECH_NOT U134 ( .A(n122), .Z(N10) );
  GTECH_AOI222 U135 ( .A(n87), .B(n123), .C(data_in[2]), .D(n88), .E(n89), .F(
        n120), .Z(n122) );
  GTECH_NOT U136 ( .A(n75), .Z(n120) );
  GTECH_NOT U137 ( .A(n91), .Z(n89) );
  GTECH_NAND2 U138 ( .A(shift_direction[1]), .B(n94), .Z(n91) );
  GTECH_NOT U139 ( .A(n92), .Z(n88) );
  GTECH_NAND2 U140 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n92)
         );
  GTECH_NOT U141 ( .A(n81), .Z(n123) );
  GTECH_NOT U142 ( .A(n124), .Z(n87) );
  GTECH_NAND2 U143 ( .A(n94), .B(n98), .Z(n124) );
  GTECH_NOT U144 ( .A(shift_direction[1]), .Z(n98) );
  GTECH_NOT U145 ( .A(shift_direction[0]), .Z(n94) );
endmodule

