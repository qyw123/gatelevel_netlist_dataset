
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n67, n52, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n52), .K(n52), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n67), .Q(data_out[0]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n52), .K(n52), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n67), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n52), .K(n52), .TI(N10), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n52), .K(n52), .TI(N11), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n52), .K(n52), .TI(N12), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n52), .K(n52), .TI(N13), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n52), .K(n52), .TI(N14), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n52), .K(n52), .TI(N15), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[7]), .QN(n9) );
  GTECH_FJK2S shift_reg_reg_8_ ( .J(n52), .K(n52), .TI(N16), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[8]), .QN(n10) );
  GTECH_FJK2S shift_reg_reg_9_ ( .J(n52), .K(n52), .TI(N17), .TE(N68), .CP(clk), .CD(n67), .Q(data_out[9]), .QN(n11) );
  GTECH_FJK2S shift_reg_reg_10_ ( .J(n52), .K(n52), .TI(N18), .TE(N68), .CP(
        clk), .CD(n67), .Q(data_out[10]), .QN(n12) );
  GTECH_FJK2S shift_reg_reg_11_ ( .J(n52), .K(n52), .TI(N19), .TE(N68), .CP(
        clk), .CD(n67), .Q(data_out[11]), .QN(n13) );
  GTECH_FJK2S shift_reg_reg_12_ ( .J(n52), .K(n52), .TI(N20), .TE(N68), .CP(
        clk), .CD(n67), .Q(data_out[12]), .QN(n14) );
  GTECH_FJK2S shift_reg_reg_13_ ( .J(n52), .K(n52), .TI(N21), .TE(N68), .CP(
        clk), .CD(n67), .Q(data_out[13]), .QN(n15) );
  GTECH_FJK2S shift_reg_reg_14_ ( .J(n52), .K(n52), .TI(N22), .TE(N68), .CP(
        clk), .CD(n67), .Q(data_out[14]), .QN(n16) );
  GTECH_FJK2S shift_reg_reg_15_ ( .J(n52), .K(n52), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n67), .Q(data_out[15]) );
  GTECH_ZERO U70 ( .Z(n52) );
  GTECH_NOT U71 ( .A(reset), .Z(n67) );
  GTECH_NOT U72 ( .A(n69), .Z(N9) );
  GTECH_AOI222 U73 ( .A(n70), .B(data_out[0]), .C(data_in[1]), .D(n71), .E(n72), .F(n73), .Z(n69) );
  GTECH_OAI2N2 U74 ( .A(n74), .B(n75), .C(n72), .D(n76), .Z(N8) );
  GTECH_NOT U75 ( .A(data_in[0]), .Z(n75) );
  GTECH_OA21 U76 ( .A(shift_direction[1]), .B(n77), .C(enable), .Z(N68) );
  GTECH_NOT U77 ( .A(n78), .Z(N23) );
  GTECH_AOI222 U78 ( .A(n70), .B(n79), .C(n80), .D(data_in[0]), .E(data_in[15]), .F(n71), .Z(n78) );
  GTECH_AND_NOT U79 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n80)
         );
  GTECH_NOT U80 ( .A(n81), .Z(N22) );
  GTECH_AOI222 U81 ( .A(n70), .B(n82), .C(data_in[14]), .D(n71), .E(n72), .F(
        data_out[15]), .Z(n81) );
  GTECH_NOT U82 ( .A(n83), .Z(N21) );
  GTECH_AOI222 U83 ( .A(n70), .B(n84), .C(data_in[13]), .D(n71), .E(n72), .F(
        n79), .Z(n83) );
  GTECH_NOT U84 ( .A(n16), .Z(n79) );
  GTECH_NOT U85 ( .A(n85), .Z(N20) );
  GTECH_AOI222 U86 ( .A(n70), .B(n86), .C(data_in[12]), .D(n71), .E(n72), .F(
        n82), .Z(n85) );
  GTECH_NOT U87 ( .A(n15), .Z(n82) );
  GTECH_NOT U88 ( .A(n87), .Z(N19) );
  GTECH_AOI222 U89 ( .A(n70), .B(n88), .C(data_in[11]), .D(n71), .E(n72), .F(
        n84), .Z(n87) );
  GTECH_NOT U90 ( .A(n14), .Z(n84) );
  GTECH_NOT U91 ( .A(n89), .Z(N18) );
  GTECH_AOI222 U92 ( .A(n70), .B(n90), .C(data_in[10]), .D(n71), .E(n72), .F(
        n86), .Z(n89) );
  GTECH_NOT U93 ( .A(n13), .Z(n86) );
  GTECH_NOT U94 ( .A(n91), .Z(N17) );
  GTECH_AOI222 U95 ( .A(n70), .B(n92), .C(data_in[9]), .D(n71), .E(n72), .F(
        n88), .Z(n91) );
  GTECH_NOT U96 ( .A(n12), .Z(n88) );
  GTECH_NOT U97 ( .A(n93), .Z(N16) );
  GTECH_AOI222 U98 ( .A(n70), .B(n94), .C(data_in[8]), .D(n71), .E(n72), .F(
        n90), .Z(n93) );
  GTECH_NOT U99 ( .A(n11), .Z(n90) );
  GTECH_NOT U100 ( .A(n95), .Z(N15) );
  GTECH_AOI222 U101 ( .A(n70), .B(n96), .C(data_in[7]), .D(n71), .E(n72), .F(
        n92), .Z(n95) );
  GTECH_NOT U102 ( .A(n10), .Z(n92) );
  GTECH_NOT U103 ( .A(n97), .Z(N14) );
  GTECH_AOI222 U104 ( .A(n70), .B(n98), .C(data_in[6]), .D(n71), .E(n72), .F(
        n94), .Z(n97) );
  GTECH_NOT U105 ( .A(n9), .Z(n94) );
  GTECH_NOT U106 ( .A(n99), .Z(N13) );
  GTECH_AOI222 U107 ( .A(n70), .B(n100), .C(data_in[5]), .D(n71), .E(n72), .F(
        n96), .Z(n99) );
  GTECH_NOT U108 ( .A(n8), .Z(n96) );
  GTECH_NOT U109 ( .A(n101), .Z(N12) );
  GTECH_AOI222 U110 ( .A(n70), .B(n102), .C(data_in[4]), .D(n71), .E(n72), .F(
        n98), .Z(n101) );
  GTECH_NOT U111 ( .A(n7), .Z(n98) );
  GTECH_NOT U112 ( .A(n103), .Z(N11) );
  GTECH_AOI222 U113 ( .A(n70), .B(n73), .C(data_in[3]), .D(n71), .E(n72), .F(
        n100), .Z(n103) );
  GTECH_NOT U114 ( .A(n6), .Z(n100) );
  GTECH_NOT U115 ( .A(n4), .Z(n73) );
  GTECH_NOT U116 ( .A(n104), .Z(N10) );
  GTECH_AOI222 U117 ( .A(n70), .B(n76), .C(data_in[2]), .D(n71), .E(n72), .F(
        n102), .Z(n104) );
  GTECH_NOT U118 ( .A(n5), .Z(n102) );
  GTECH_NOT U119 ( .A(n105), .Z(n72) );
  GTECH_NAND2 U120 ( .A(shift_direction[1]), .B(n77), .Z(n105) );
  GTECH_NOT U121 ( .A(n74), .Z(n71) );
  GTECH_NAND2 U122 ( .A(shift_direction[1]), .B(shift_direction[0]), .Z(n74)
         );
  GTECH_NOT U123 ( .A(n3), .Z(n76) );
  GTECH_NOT U124 ( .A(n106), .Z(n70) );
  GTECH_NAND2 U125 ( .A(n77), .B(n107), .Z(n106) );
  GTECH_NOT U126 ( .A(shift_direction[1]), .Z(n107) );
  GTECH_NOT U127 ( .A(shift_direction[0]), .Z(n77) );
endmodule

