
module shift_reg3 ( clk, reset, enable, data_in, shift_direction, data_out );
  input [15:0] data_in;
  input [1:0] shift_direction;
  output [15:0] data_out;
  input clk, reset, enable;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N68, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n69, n54, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109;

  GTECH_FJK2S shift_reg_reg_0_ ( .J(n54), .K(n54), .TI(N8), .TE(N68), .CP(clk), 
        .CD(n69), .Q(data_out[0]) );
  GTECH_FJK2S shift_reg_reg_1_ ( .J(n54), .K(n54), .TI(N9), .TE(N68), .CP(clk), 
        .CD(n69), .Q(data_out[1]), .QN(n3) );
  GTECH_FJK2S shift_reg_reg_2_ ( .J(n54), .K(n54), .TI(N10), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[2]), .QN(n4) );
  GTECH_FJK2S shift_reg_reg_3_ ( .J(n54), .K(n54), .TI(N11), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[3]), .QN(n5) );
  GTECH_FJK2S shift_reg_reg_4_ ( .J(n54), .K(n54), .TI(N12), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[4]), .QN(n6) );
  GTECH_FJK2S shift_reg_reg_5_ ( .J(n54), .K(n54), .TI(N13), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[5]), .QN(n7) );
  GTECH_FJK2S shift_reg_reg_6_ ( .J(n54), .K(n54), .TI(N14), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[6]), .QN(n8) );
  GTECH_FJK2S shift_reg_reg_7_ ( .J(n54), .K(n54), .TI(N15), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[7]), .QN(n9) );
  GTECH_FJK2S shift_reg_reg_8_ ( .J(n54), .K(n54), .TI(N16), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[8]), .QN(n10) );
  GTECH_FJK2S shift_reg_reg_9_ ( .J(n54), .K(n54), .TI(N17), .TE(N68), .CP(clk), .CD(n69), .Q(data_out[9]), .QN(n11) );
  GTECH_FJK2S shift_reg_reg_10_ ( .J(n54), .K(n54), .TI(N18), .TE(N68), .CP(
        clk), .CD(n69), .Q(data_out[10]), .QN(n12) );
  GTECH_FJK2S shift_reg_reg_11_ ( .J(n54), .K(n54), .TI(N19), .TE(N68), .CP(
        clk), .CD(n69), .Q(data_out[11]), .QN(n13) );
  GTECH_FJK2S shift_reg_reg_12_ ( .J(n54), .K(n54), .TI(N20), .TE(N68), .CP(
        clk), .CD(n69), .Q(data_out[12]), .QN(n14) );
  GTECH_FJK2S shift_reg_reg_13_ ( .J(n54), .K(n54), .TI(N21), .TE(N68), .CP(
        clk), .CD(n69), .Q(data_out[13]), .QN(n15) );
  GTECH_FJK2S shift_reg_reg_14_ ( .J(n54), .K(n54), .TI(N22), .TE(N68), .CP(
        clk), .CD(n69), .Q(data_out[14]), .QN(n16) );
  GTECH_FJK2S shift_reg_reg_15_ ( .J(n54), .K(n54), .TI(N23), .TE(enable), 
        .CP(clk), .CD(n69), .Q(data_out[15]) );
  GTECH_ZERO U72 ( .Z(n54) );
  GTECH_NOT U73 ( .A(reset), .Z(n69) );
  GTECH_NOT U74 ( .A(n71), .Z(N9) );
  GTECH_AOI222 U75 ( .A(n72), .B(data_out[0]), .C(data_in[1]), .D(n73), .E(n74), .F(n75), .Z(n71) );
  GTECH_OAI22 U76 ( .A(n3), .B(n76), .C(n77), .D(n78), .Z(N8) );
  GTECH_NOT U77 ( .A(data_in[0]), .Z(n78) );
  GTECH_NOT U78 ( .A(n79), .Z(N68) );
  GTECH_OAI21 U79 ( .A(shift_direction[1]), .B(n80), .C(enable), .Z(n79) );
  GTECH_NOT U80 ( .A(n81), .Z(N23) );
  GTECH_AOI222 U81 ( .A(n72), .B(n82), .C(data_in[15]), .D(n73), .E(n83), .F(
        data_in[0]), .Z(n81) );
  GTECH_AND_NOT U82 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n83)
         );
  GTECH_NOT U83 ( .A(n84), .Z(N22) );
  GTECH_AOI222 U84 ( .A(n72), .B(n85), .C(data_in[14]), .D(n73), .E(n74), .F(
        data_out[15]), .Z(n84) );
  GTECH_NOT U85 ( .A(n86), .Z(N21) );
  GTECH_AOI222 U86 ( .A(n72), .B(n87), .C(data_in[13]), .D(n73), .E(n74), .F(
        n82), .Z(n86) );
  GTECH_NOT U87 ( .A(n16), .Z(n82) );
  GTECH_NOT U88 ( .A(n88), .Z(N20) );
  GTECH_AOI222 U89 ( .A(n72), .B(n89), .C(data_in[12]), .D(n73), .E(n74), .F(
        n85), .Z(n88) );
  GTECH_NOT U90 ( .A(n15), .Z(n85) );
  GTECH_NOT U91 ( .A(n90), .Z(N19) );
  GTECH_AOI222 U92 ( .A(n72), .B(n91), .C(data_in[11]), .D(n73), .E(n74), .F(
        n87), .Z(n90) );
  GTECH_NOT U93 ( .A(n14), .Z(n87) );
  GTECH_NOT U94 ( .A(n92), .Z(N18) );
  GTECH_AOI222 U95 ( .A(n72), .B(n93), .C(data_in[10]), .D(n73), .E(n74), .F(
        n89), .Z(n92) );
  GTECH_NOT U96 ( .A(n13), .Z(n89) );
  GTECH_NOT U97 ( .A(n94), .Z(N17) );
  GTECH_AOI222 U98 ( .A(n72), .B(n95), .C(data_in[9]), .D(n73), .E(n74), .F(
        n91), .Z(n94) );
  GTECH_NOT U99 ( .A(n12), .Z(n91) );
  GTECH_NOT U100 ( .A(n96), .Z(N16) );
  GTECH_AOI222 U101 ( .A(n72), .B(n97), .C(data_in[8]), .D(n73), .E(n74), .F(
        n93), .Z(n96) );
  GTECH_NOT U102 ( .A(n11), .Z(n93) );
  GTECH_NOT U103 ( .A(n98), .Z(N15) );
  GTECH_AOI222 U104 ( .A(n72), .B(n99), .C(data_in[7]), .D(n73), .E(n74), .F(
        n95), .Z(n98) );
  GTECH_NOT U105 ( .A(n10), .Z(n95) );
  GTECH_NOT U106 ( .A(n100), .Z(N14) );
  GTECH_AOI222 U107 ( .A(n72), .B(n101), .C(data_in[6]), .D(n73), .E(n74), .F(
        n97), .Z(n100) );
  GTECH_NOT U108 ( .A(n9), .Z(n97) );
  GTECH_NOT U109 ( .A(n102), .Z(N13) );
  GTECH_AOI222 U110 ( .A(n72), .B(n103), .C(data_in[5]), .D(n73), .E(n74), .F(
        n99), .Z(n102) );
  GTECH_NOT U111 ( .A(n8), .Z(n99) );
  GTECH_NOT U112 ( .A(n104), .Z(N12) );
  GTECH_AOI222 U113 ( .A(n72), .B(n105), .C(data_in[4]), .D(n73), .E(n74), .F(
        n101), .Z(n104) );
  GTECH_NOT U114 ( .A(n7), .Z(n101) );
  GTECH_NOT U115 ( .A(n106), .Z(N11) );
  GTECH_AOI222 U116 ( .A(n72), .B(n75), .C(data_in[3]), .D(n73), .E(n74), .F(
        n103), .Z(n106) );
  GTECH_NOT U117 ( .A(n6), .Z(n103) );
  GTECH_NOT U118 ( .A(n4), .Z(n75) );
  GTECH_NOT U119 ( .A(n107), .Z(N10) );
  GTECH_AOI222 U120 ( .A(n72), .B(n108), .C(data_in[2]), .D(n73), .E(n74), .F(
        n105), .Z(n107) );
  GTECH_NOT U121 ( .A(n5), .Z(n105) );
  GTECH_NOT U122 ( .A(n76), .Z(n74) );
  GTECH_OR_NOT U123 ( .A(shift_direction[0]), .B(shift_direction[1]), .Z(n76)
         );
  GTECH_NOT U124 ( .A(n77), .Z(n73) );
  GTECH_OR_NOT U125 ( .A(n80), .B(shift_direction[1]), .Z(n77) );
  GTECH_NOT U126 ( .A(n3), .Z(n108) );
  GTECH_NOT U127 ( .A(n109), .Z(n72) );
  GTECH_OR_NOT U128 ( .A(shift_direction[1]), .B(n80), .Z(n109) );
  GTECH_NOT U129 ( .A(shift_direction[0]), .Z(n80) );
endmodule

