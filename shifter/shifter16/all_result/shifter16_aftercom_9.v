
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n19, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92;

  GTECH_FJK3S data_out_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N23), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[15]) );
  GTECH_FJK3S data_out_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N22), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[14]) );
  GTECH_FJK3S data_out_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[13]) );
  GTECH_FJK3S data_out_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N20), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[12]) );
  GTECH_FJK3S data_out_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[11]) );
  GTECH_FJK3S data_out_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[10]) );
  GTECH_FJK3S data_out_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[9]) );
  GTECH_FJK3S data_out_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[8]) );
  GTECH_FJK3S data_out_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[7]) );
  GTECH_FJK3S data_out_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[6]) );
  GTECH_FJK3S data_out_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[5]) );
  GTECH_FJK3S data_out_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[4]) );
  GTECH_FJK3S data_out_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[3]) );
  GTECH_FJK3S data_out_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N24), .CP(
        clk), .CD(reset_n), .SD(n19), .Q(data_out[2]) );
  GTECH_FJK3S data_out_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N24), .CP(clk), .CD(reset_n), .SD(n19), .Q(data_out[1]) );
  GTECH_FJK3S data_out_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N8), .TE(N24), .CP(clk), .CD(reset_n), .SD(n19), .Q(data_out[0]) );
  GTECH_ONE U68 ( .Z(n19) );
  GTECH_NOT U69 ( .A(n67), .Z(N9) );
  GTECH_AOI222 U70 ( .A(data_in[0]), .B(n68), .C(data_in[1]), .D(n69), .E(
        data_in[2]), .F(n70), .Z(n67) );
  GTECH_OAI22 U71 ( .A(n71), .B(n72), .C(n73), .D(n74), .Z(N8) );
  GTECH_NOT U72 ( .A(data_in[0]), .Z(n74) );
  GTECH_NOT U73 ( .A(data_in[1]), .Z(n71) );
  GTECH_NAND3 U74 ( .A(n72), .B(n75), .C(n73), .Z(N24) );
  GTECH_OAI22 U75 ( .A(n75), .B(n76), .C(n73), .D(n77), .Z(N23) );
  GTECH_NOT U76 ( .A(data_in[15]), .Z(n77) );
  GTECH_NOT U77 ( .A(data_in[14]), .Z(n76) );
  GTECH_NOT U78 ( .A(n78), .Z(N22) );
  GTECH_AOI222 U79 ( .A(data_in[13]), .B(n68), .C(data_in[14]), .D(n69), .E(
        data_in[15]), .F(n70), .Z(n78) );
  GTECH_NOT U80 ( .A(n79), .Z(N21) );
  GTECH_AOI222 U81 ( .A(data_in[12]), .B(n68), .C(data_in[13]), .D(n69), .E(
        data_in[14]), .F(n70), .Z(n79) );
  GTECH_NOT U82 ( .A(n80), .Z(N20) );
  GTECH_AOI222 U83 ( .A(data_in[11]), .B(n68), .C(data_in[12]), .D(n69), .E(
        data_in[13]), .F(n70), .Z(n80) );
  GTECH_NOT U84 ( .A(n81), .Z(N19) );
  GTECH_AOI222 U85 ( .A(data_in[10]), .B(n68), .C(data_in[11]), .D(n69), .E(
        data_in[12]), .F(n70), .Z(n81) );
  GTECH_NOT U86 ( .A(n82), .Z(N18) );
  GTECH_AOI222 U87 ( .A(data_in[9]), .B(n68), .C(data_in[10]), .D(n69), .E(
        data_in[11]), .F(n70), .Z(n82) );
  GTECH_NOT U88 ( .A(n83), .Z(N17) );
  GTECH_AOI222 U89 ( .A(data_in[8]), .B(n68), .C(data_in[9]), .D(n69), .E(
        data_in[10]), .F(n70), .Z(n83) );
  GTECH_NOT U90 ( .A(n84), .Z(N16) );
  GTECH_AOI222 U91 ( .A(data_in[7]), .B(n68), .C(data_in[8]), .D(n69), .E(
        data_in[9]), .F(n70), .Z(n84) );
  GTECH_NOT U92 ( .A(n85), .Z(N15) );
  GTECH_AOI222 U93 ( .A(data_in[6]), .B(n68), .C(data_in[7]), .D(n69), .E(
        data_in[8]), .F(n70), .Z(n85) );
  GTECH_NOT U94 ( .A(n86), .Z(N14) );
  GTECH_AOI222 U95 ( .A(data_in[5]), .B(n68), .C(data_in[6]), .D(n69), .E(
        data_in[7]), .F(n70), .Z(n86) );
  GTECH_NOT U96 ( .A(n87), .Z(N13) );
  GTECH_AOI222 U97 ( .A(data_in[4]), .B(n68), .C(data_in[5]), .D(n69), .E(
        data_in[6]), .F(n70), .Z(n87) );
  GTECH_NOT U98 ( .A(n88), .Z(N12) );
  GTECH_AOI222 U99 ( .A(data_in[3]), .B(n68), .C(data_in[4]), .D(n69), .E(
        data_in[5]), .F(n70), .Z(n88) );
  GTECH_NOT U100 ( .A(n89), .Z(N11) );
  GTECH_AOI222 U101 ( .A(n68), .B(data_in[2]), .C(data_in[3]), .D(n69), .E(
        data_in[4]), .F(n70), .Z(n89) );
  GTECH_NOT U102 ( .A(n90), .Z(N10) );
  GTECH_AOI222 U103 ( .A(n68), .B(data_in[1]), .C(data_in[2]), .D(n69), .E(
        data_in[3]), .F(n70), .Z(n90) );
  GTECH_NOT U104 ( .A(n72), .Z(n70) );
  GTECH_NAND2 U105 ( .A(control[1]), .B(n91), .Z(n72) );
  GTECH_NOT U106 ( .A(control[0]), .Z(n91) );
  GTECH_NOT U107 ( .A(n73), .Z(n69) );
  GTECH_NAND2 U108 ( .A(control[1]), .B(control[0]), .Z(n73) );
  GTECH_NOT U109 ( .A(n75), .Z(n68) );
  GTECH_NAND2 U110 ( .A(control[0]), .B(n92), .Z(n75) );
  GTECH_NOT U111 ( .A(control[1]), .Z(n92) );
endmodule

