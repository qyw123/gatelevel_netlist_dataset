
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n36, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102;

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
  GTECH_OAI22 U72 ( .A(n73), .B(n69), .C(n71), .D(n74), .Z(N8) );
  GTECH_NOT U73 ( .A(data_in[0]), .Z(n69) );
  GTECH_NAND3 U74 ( .A(n71), .B(n73), .C(n68), .Z(N24) );
  GTECH_OAI22 U75 ( .A(n68), .B(n75), .C(n73), .D(n76), .Z(N23) );
  GTECH_OAI21 U76 ( .A(n68), .B(n77), .C(n78), .Z(N22) );
  GTECH_OA22 U77 ( .A(n71), .B(n76), .C(n73), .D(n75), .Z(n78) );
  GTECH_NOT U78 ( .A(data_in[15]), .Z(n76) );
  GTECH_OAI21 U79 ( .A(n68), .B(n79), .C(n80), .Z(N21) );
  GTECH_OA22 U80 ( .A(n71), .B(n75), .C(n73), .D(n77), .Z(n80) );
  GTECH_NOT U81 ( .A(data_in[14]), .Z(n75) );
  GTECH_OAI21 U82 ( .A(n68), .B(n81), .C(n82), .Z(N20) );
  GTECH_OA22 U83 ( .A(n71), .B(n77), .C(n73), .D(n79), .Z(n82) );
  GTECH_NOT U84 ( .A(data_in[13]), .Z(n77) );
  GTECH_OAI21 U85 ( .A(n68), .B(n83), .C(n84), .Z(N19) );
  GTECH_OA22 U86 ( .A(n71), .B(n79), .C(n73), .D(n81), .Z(n84) );
  GTECH_NOT U87 ( .A(data_in[12]), .Z(n79) );
  GTECH_OAI21 U88 ( .A(n68), .B(n85), .C(n86), .Z(N18) );
  GTECH_OA22 U89 ( .A(n71), .B(n81), .C(n73), .D(n83), .Z(n86) );
  GTECH_NOT U90 ( .A(data_in[11]), .Z(n81) );
  GTECH_OAI21 U91 ( .A(n68), .B(n87), .C(n88), .Z(N17) );
  GTECH_OA22 U92 ( .A(n71), .B(n83), .C(n73), .D(n85), .Z(n88) );
  GTECH_NOT U93 ( .A(data_in[10]), .Z(n83) );
  GTECH_OAI21 U94 ( .A(n68), .B(n89), .C(n90), .Z(N16) );
  GTECH_OA22 U95 ( .A(n71), .B(n85), .C(n73), .D(n87), .Z(n90) );
  GTECH_NOT U96 ( .A(data_in[9]), .Z(n85) );
  GTECH_OAI21 U97 ( .A(n68), .B(n91), .C(n92), .Z(N15) );
  GTECH_OA22 U98 ( .A(n71), .B(n87), .C(n73), .D(n89), .Z(n92) );
  GTECH_NOT U99 ( .A(data_in[8]), .Z(n87) );
  GTECH_OAI21 U100 ( .A(n68), .B(n93), .C(n94), .Z(N14) );
  GTECH_OA22 U101 ( .A(n71), .B(n89), .C(n73), .D(n91), .Z(n94) );
  GTECH_NOT U102 ( .A(data_in[7]), .Z(n89) );
  GTECH_OAI21 U103 ( .A(n68), .B(n95), .C(n96), .Z(N13) );
  GTECH_OA22 U104 ( .A(n71), .B(n91), .C(n73), .D(n93), .Z(n96) );
  GTECH_NOT U105 ( .A(data_in[6]), .Z(n91) );
  GTECH_OAI21 U106 ( .A(n68), .B(n97), .C(n98), .Z(N12) );
  GTECH_OA22 U107 ( .A(n71), .B(n93), .C(n73), .D(n95), .Z(n98) );
  GTECH_NOT U108 ( .A(data_in[5]), .Z(n93) );
  GTECH_OAI21 U109 ( .A(n72), .B(n68), .C(n99), .Z(N11) );
  GTECH_OA22 U110 ( .A(n71), .B(n95), .C(n73), .D(n97), .Z(n99) );
  GTECH_NOT U111 ( .A(data_in[4]), .Z(n95) );
  GTECH_OAI21 U112 ( .A(n74), .B(n68), .C(n100), .Z(N10) );
  GTECH_OA22 U113 ( .A(n71), .B(n97), .C(n72), .D(n73), .Z(n100) );
  GTECH_NAND2 U114 ( .A(control[0]), .B(control[1]), .Z(n73) );
  GTECH_NOT U115 ( .A(data_in[2]), .Z(n72) );
  GTECH_NOT U116 ( .A(data_in[3]), .Z(n97) );
  GTECH_NAND2 U117 ( .A(control[1]), .B(n101), .Z(n71) );
  GTECH_NOT U118 ( .A(control[0]), .Z(n101) );
  GTECH_NAND2 U119 ( .A(control[0]), .B(n102), .Z(n68) );
  GTECH_NOT U120 ( .A(control[1]), .Z(n102) );
  GTECH_NOT U121 ( .A(data_in[1]), .Z(n74) );
endmodule

