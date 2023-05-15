
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n36, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104;

  GTECH_FJK2S data_out_reg_15_ ( .J(n36), .K(n36), .TI(N23), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n36), .K(n36), .TI(N22), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n36), .K(n36), .TI(N21), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n36), .K(n36), .TI(N20), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n36), .K(n36), .TI(N19), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n36), .K(n36), .TI(N18), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n36), .K(n36), .TI(N17), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n36), .K(n36), .TI(N16), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n36), .K(n36), .TI(N15), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n36), .K(n36), .TI(N14), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n36), .K(n36), .TI(N13), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n36), .K(n36), .TI(N12), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n36), .K(n36), .TI(N11), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n36), .K(n36), .TI(N10), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n36), .K(n36), .TI(N9), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n36), .K(n36), .TI(N8), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U69 ( .Z(n36) );
  GTECH_OAI21 U70 ( .A(n68), .B(n69), .C(n70), .Z(N9) );
  GTECH_OA22 U71 ( .A(n71), .B(n72), .C(n73), .D(n74), .Z(n70) );
  GTECH_OAI2N2 U72 ( .A(n71), .B(n69), .C(n75), .D(data_in[1]), .Z(N8) );
  GTECH_NOT U73 ( .A(n73), .Z(n75) );
  GTECH_NOT U74 ( .A(data_in[0]), .Z(n69) );
  GTECH_NAND3 U75 ( .A(n73), .B(n68), .C(n71), .Z(N24) );
  GTECH_OAI2N2 U76 ( .A(n71), .B(n76), .C(data_in[14]), .D(n77), .Z(N23) );
  GTECH_NOT U77 ( .A(n68), .Z(n77) );
  GTECH_OAI21 U78 ( .A(n68), .B(n78), .C(n79), .Z(N22) );
  GTECH_OA22 U79 ( .A(n71), .B(n80), .C(n73), .D(n76), .Z(n79) );
  GTECH_NOT U80 ( .A(data_in[15]), .Z(n76) );
  GTECH_OAI21 U81 ( .A(n68), .B(n81), .C(n82), .Z(N21) );
  GTECH_OA22 U82 ( .A(n71), .B(n78), .C(n73), .D(n80), .Z(n82) );
  GTECH_NOT U83 ( .A(data_in[14]), .Z(n80) );
  GTECH_OAI21 U84 ( .A(n68), .B(n83), .C(n84), .Z(N20) );
  GTECH_OA22 U85 ( .A(n71), .B(n81), .C(n73), .D(n78), .Z(n84) );
  GTECH_NOT U86 ( .A(data_in[13]), .Z(n78) );
  GTECH_OAI21 U87 ( .A(n68), .B(n85), .C(n86), .Z(N19) );
  GTECH_OA22 U88 ( .A(n71), .B(n83), .C(n73), .D(n81), .Z(n86) );
  GTECH_NOT U89 ( .A(data_in[12]), .Z(n81) );
  GTECH_OAI21 U90 ( .A(n68), .B(n87), .C(n88), .Z(N18) );
  GTECH_OA22 U91 ( .A(n71), .B(n85), .C(n73), .D(n83), .Z(n88) );
  GTECH_NOT U92 ( .A(data_in[11]), .Z(n83) );
  GTECH_OAI21 U93 ( .A(n68), .B(n89), .C(n90), .Z(N17) );
  GTECH_OA22 U94 ( .A(n71), .B(n87), .C(n73), .D(n85), .Z(n90) );
  GTECH_NOT U95 ( .A(data_in[10]), .Z(n85) );
  GTECH_OAI21 U96 ( .A(n68), .B(n91), .C(n92), .Z(N16) );
  GTECH_OA22 U97 ( .A(n71), .B(n89), .C(n73), .D(n87), .Z(n92) );
  GTECH_NOT U98 ( .A(data_in[9]), .Z(n87) );
  GTECH_OAI21 U99 ( .A(n68), .B(n93), .C(n94), .Z(N15) );
  GTECH_OA22 U100 ( .A(n71), .B(n91), .C(n73), .D(n89), .Z(n94) );
  GTECH_NOT U101 ( .A(data_in[8]), .Z(n89) );
  GTECH_OAI21 U102 ( .A(n68), .B(n95), .C(n96), .Z(N14) );
  GTECH_OA22 U103 ( .A(n71), .B(n93), .C(n73), .D(n91), .Z(n96) );
  GTECH_NOT U104 ( .A(data_in[7]), .Z(n91) );
  GTECH_OAI21 U105 ( .A(n68), .B(n97), .C(n98), .Z(N13) );
  GTECH_OA22 U106 ( .A(n71), .B(n95), .C(n73), .D(n93), .Z(n98) );
  GTECH_NOT U107 ( .A(data_in[6]), .Z(n93) );
  GTECH_OAI21 U108 ( .A(n68), .B(n99), .C(n100), .Z(N12) );
  GTECH_OA22 U109 ( .A(n71), .B(n97), .C(n73), .D(n95), .Z(n100) );
  GTECH_NOT U110 ( .A(data_in[5]), .Z(n95) );
  GTECH_OAI21 U111 ( .A(n74), .B(n68), .C(n101), .Z(N11) );
  GTECH_OA22 U112 ( .A(n71), .B(n99), .C(n73), .D(n97), .Z(n101) );
  GTECH_NOT U113 ( .A(data_in[4]), .Z(n97) );
  GTECH_OAI21 U114 ( .A(n72), .B(n68), .C(n102), .Z(N10) );
  GTECH_OA22 U115 ( .A(n71), .B(n74), .C(n73), .D(n99), .Z(n102) );
  GTECH_NOT U116 ( .A(data_in[3]), .Z(n99) );
  GTECH_NAND2 U117 ( .A(control[1]), .B(n103), .Z(n73) );
  GTECH_NOT U118 ( .A(control[0]), .Z(n103) );
  GTECH_NOT U119 ( .A(data_in[2]), .Z(n74) );
  GTECH_NAND2 U120 ( .A(control[1]), .B(control[0]), .Z(n71) );
  GTECH_NAND2 U121 ( .A(control[0]), .B(n104), .Z(n68) );
  GTECH_NOT U122 ( .A(control[1]), .Z(n104) );
  GTECH_NOT U123 ( .A(data_in[1]), .Z(n72) );
endmodule

