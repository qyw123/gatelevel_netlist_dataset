
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n24, n27, n30, n33, n36, n39, n42, n45, n48, n51, n54,
         n57, n60, n63, n66, n67, n22, n23, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93;

  GTECH_FJK3S shift_reg_reg_0_ ( .J(n23), .K(n23), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n67), .SD(n22), .Q(data_out[0]), .QN(n70) );
  GTECH_FJK3S shift_reg_reg_1_ ( .J(n23), .K(n23), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n67), .SD(n22), .Q(data_out[1]), .QN(n66) );
  GTECH_FJK3S shift_reg_reg_2_ ( .J(n23), .K(n23), .TI(N10), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[2]), .QN(n63) );
  GTECH_FJK3S shift_reg_reg_3_ ( .J(n23), .K(n23), .TI(N11), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[3]), .QN(n60) );
  GTECH_FJK3S shift_reg_reg_4_ ( .J(n23), .K(n23), .TI(N12), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[4]), .QN(n57) );
  GTECH_FJK3S shift_reg_reg_5_ ( .J(n23), .K(n23), .TI(N13), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[5]), .QN(n54) );
  GTECH_FJK3S shift_reg_reg_6_ ( .J(n23), .K(n23), .TI(N14), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[6]), .QN(n51) );
  GTECH_FJK3S shift_reg_reg_7_ ( .J(n23), .K(n23), .TI(N15), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[7]), .QN(n48) );
  GTECH_FJK3S shift_reg_reg_8_ ( .J(n23), .K(n23), .TI(N16), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[8]), .QN(n45) );
  GTECH_FJK3S shift_reg_reg_9_ ( .J(n23), .K(n23), .TI(N17), .TE(N68), .CP(clk), .CD(n67), .SD(n22), .Q(data_out[9]), .QN(n42) );
  GTECH_FJK3S shift_reg_reg_10_ ( .J(n23), .K(n23), .TI(N18), .TE(N68), .CP(
        clk), .CD(n67), .SD(n22), .Q(data_out[10]), .QN(n39) );
  GTECH_FJK3S shift_reg_reg_11_ ( .J(n23), .K(n23), .TI(N19), .TE(N68), .CP(
        clk), .CD(n67), .SD(n22), .Q(data_out[11]), .QN(n36) );
  GTECH_FJK3S shift_reg_reg_12_ ( .J(n23), .K(n23), .TI(N20), .TE(N68), .CP(
        clk), .CD(n67), .SD(n22), .Q(data_out[12]), .QN(n33) );
  GTECH_FJK3S shift_reg_reg_13_ ( .J(n23), .K(n23), .TI(N21), .TE(N68), .CP(
        clk), .CD(n67), .SD(n22), .Q(data_out[13]), .QN(n30) );
  GTECH_FJK3S shift_reg_reg_14_ ( .J(n23), .K(n23), .TI(N22), .TE(N68), .CP(
        clk), .CD(n67), .SD(n22), .Q(data_out[14]), .QN(n27) );
  GTECH_FJK3S shift_reg_reg_15_ ( .J(n23), .K(n23), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n67), .SD(n22), .Q(data_out[15]), .QN(n24) );
  GTECH_ZERO U72 ( .Z(n23) );
  GTECH_ONE U73 ( .Z(n22) );
  GTECH_NOT U74 ( .A(reset), .Z(n67) );
  GTECH_OAI21 U75 ( .A(n70), .B(n71), .C(n72), .Z(N9) );
  GTECH_AOI2N2 U76 ( .A(data_in[1]), .B(n73), .C(n63), .D(n74), .Z(n72) );
  GTECH_OAI22 U77 ( .A(n75), .B(n76), .C(n66), .D(n74), .Z(N8) );
  GTECH_OA21 U78 ( .A(shift_direction[1]), .B(n77), .C(enable), .Z(N68) );
  GTECH_NOT U79 ( .A(shift_direction[0]), .Z(n77) );
  GTECH_OAI21 U80 ( .A(n27), .B(n71), .C(n78), .Z(N23) );
  GTECH_AOI2N2 U81 ( .A(data_in[15]), .B(n73), .C(n76), .D(n79), .Z(n78) );
  GTECH_OR_NOT U82 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n79)
         );
  GTECH_NOT U83 ( .A(data_in[0]), .Z(n76) );
  GTECH_OAI21 U84 ( .A(n30), .B(n71), .C(n80), .Z(N22) );
  GTECH_AOI2N2 U85 ( .A(data_in[14]), .B(n73), .C(n24), .D(n74), .Z(n80) );
  GTECH_OAI21 U86 ( .A(n33), .B(n71), .C(n81), .Z(N21) );
  GTECH_AOI2N2 U87 ( .A(data_in[13]), .B(n73), .C(n27), .D(n74), .Z(n81) );
  GTECH_OAI21 U88 ( .A(n36), .B(n71), .C(n82), .Z(N20) );
  GTECH_AOI2N2 U89 ( .A(data_in[12]), .B(n73), .C(n30), .D(n74), .Z(n82) );
  GTECH_OAI21 U90 ( .A(n39), .B(n71), .C(n83), .Z(N19) );
  GTECH_AOI2N2 U91 ( .A(data_in[11]), .B(n73), .C(n33), .D(n74), .Z(n83) );
  GTECH_OAI21 U92 ( .A(n42), .B(n71), .C(n84), .Z(N18) );
  GTECH_AOI2N2 U93 ( .A(data_in[10]), .B(n73), .C(n36), .D(n74), .Z(n84) );
  GTECH_OAI21 U94 ( .A(n45), .B(n71), .C(n85), .Z(N17) );
  GTECH_AOI2N2 U95 ( .A(data_in[9]), .B(n73), .C(n39), .D(n74), .Z(n85) );
  GTECH_OAI21 U96 ( .A(n48), .B(n71), .C(n86), .Z(N16) );
  GTECH_AOI2N2 U97 ( .A(data_in[8]), .B(n73), .C(n42), .D(n74), .Z(n86) );
  GTECH_OAI21 U98 ( .A(n51), .B(n71), .C(n87), .Z(N15) );
  GTECH_AOI2N2 U99 ( .A(data_in[7]), .B(n73), .C(n45), .D(n74), .Z(n87) );
  GTECH_OAI21 U100 ( .A(n54), .B(n71), .C(n88), .Z(N14) );
  GTECH_AOI2N2 U101 ( .A(data_in[6]), .B(n73), .C(n48), .D(n74), .Z(n88) );
  GTECH_OAI21 U102 ( .A(n57), .B(n71), .C(n89), .Z(N13) );
  GTECH_AOI2N2 U103 ( .A(data_in[5]), .B(n73), .C(n51), .D(n74), .Z(n89) );
  GTECH_OAI21 U104 ( .A(n60), .B(n71), .C(n90), .Z(N12) );
  GTECH_AOI2N2 U105 ( .A(data_in[4]), .B(n73), .C(n54), .D(n74), .Z(n90) );
  GTECH_OAI21 U106 ( .A(n63), .B(n71), .C(n91), .Z(N11) );
  GTECH_AOI2N2 U107 ( .A(data_in[3]), .B(n73), .C(n57), .D(n74), .Z(n91) );
  GTECH_OAI21 U108 ( .A(n66), .B(n71), .C(n92), .Z(N10) );
  GTECH_AOI2N2 U109 ( .A(data_in[2]), .B(n73), .C(n60), .D(n74), .Z(n92) );
  GTECH_OR_NOT U110 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n74)
         );
  GTECH_NOT U111 ( .A(n75), .Z(n73) );
  GTECH_OR_NOT U112 ( .A(n93), .B(shift_direction[0]), .Z(n75) );
  GTECH_OR_NOT U113 ( .A(shift_direction[0]), .B(n93), .Z(n71) );
  GTECH_NOT U114 ( .A(shift_direction[1]), .Z(n93) );
endmodule

