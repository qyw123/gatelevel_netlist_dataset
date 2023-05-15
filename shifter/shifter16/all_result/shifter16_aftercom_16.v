
module shifter16 ( data_in, clk, reset_n, control, data_out );
  input [15:0] data_in;
  input [1:0] control;
  output [15:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, n19, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88;

  GTECH_FJK2S data_out_reg_15_ ( .J(n19), .K(n19), .TI(N23), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n19), .K(n19), .TI(N22), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n19), .K(n19), .TI(N21), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n19), .K(n19), .TI(N20), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n19), .K(n19), .TI(N19), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n19), .K(n19), .TI(N18), .TE(N24), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n19), .K(n19), .TI(N17), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n19), .K(n19), .TI(N16), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n19), .K(n19), .TI(N15), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n19), .K(n19), .TI(N14), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n19), .K(n19), .TI(N13), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n19), .K(n19), .TI(N12), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n19), .K(n19), .TI(N11), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n19), .K(n19), .TI(N10), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n19), .K(n19), .TI(N9), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n19), .K(n19), .TI(N8), .TE(N24), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U52 ( .Z(n19) );
  GTECH_OAI21 U53 ( .A(n51), .B(n52), .C(n53), .Z(N9) );
  GTECH_OA22 U54 ( .A(n54), .B(n55), .C(n56), .D(n57), .Z(n53) );
  GTECH_OAI22 U55 ( .A(n55), .B(n56), .C(n54), .D(n52), .Z(N8) );
  GTECH_NOT U56 ( .A(data_in[0]), .Z(n52) );
  GTECH_OR3 U57 ( .A(n58), .B(n59), .C(n60), .Z(N24) );
  GTECH_NOT U58 ( .A(n54), .Z(n60) );
  GTECH_NOT U59 ( .A(n56), .Z(n59) );
  GTECH_NOT U60 ( .A(n51), .Z(n58) );
  GTECH_OAI22 U61 ( .A(n51), .B(n61), .C(n54), .D(n62), .Z(N23) );
  GTECH_OAI21 U62 ( .A(n51), .B(n63), .C(n64), .Z(N22) );
  GTECH_OA22 U63 ( .A(n54), .B(n61), .C(n56), .D(n62), .Z(n64) );
  GTECH_NOT U64 ( .A(data_in[15]), .Z(n62) );
  GTECH_OAI21 U65 ( .A(n51), .B(n65), .C(n66), .Z(N21) );
  GTECH_OA22 U66 ( .A(n54), .B(n63), .C(n56), .D(n61), .Z(n66) );
  GTECH_NOT U67 ( .A(data_in[14]), .Z(n61) );
  GTECH_OAI21 U68 ( .A(n51), .B(n67), .C(n68), .Z(N20) );
  GTECH_OA22 U69 ( .A(n54), .B(n65), .C(n56), .D(n63), .Z(n68) );
  GTECH_NOT U70 ( .A(data_in[13]), .Z(n63) );
  GTECH_OAI21 U71 ( .A(n51), .B(n69), .C(n70), .Z(N19) );
  GTECH_OA22 U72 ( .A(n54), .B(n67), .C(n56), .D(n65), .Z(n70) );
  GTECH_NOT U73 ( .A(data_in[12]), .Z(n65) );
  GTECH_OAI21 U74 ( .A(n51), .B(n71), .C(n72), .Z(N18) );
  GTECH_OA22 U75 ( .A(n54), .B(n69), .C(n56), .D(n67), .Z(n72) );
  GTECH_NOT U76 ( .A(data_in[11]), .Z(n67) );
  GTECH_OAI21 U77 ( .A(n51), .B(n73), .C(n74), .Z(N17) );
  GTECH_OA22 U78 ( .A(n54), .B(n71), .C(n56), .D(n69), .Z(n74) );
  GTECH_NOT U79 ( .A(data_in[10]), .Z(n69) );
  GTECH_OAI21 U80 ( .A(n51), .B(n75), .C(n76), .Z(N16) );
  GTECH_OA22 U81 ( .A(n54), .B(n73), .C(n56), .D(n71), .Z(n76) );
  GTECH_NOT U82 ( .A(data_in[9]), .Z(n71) );
  GTECH_OAI21 U83 ( .A(n51), .B(n77), .C(n78), .Z(N15) );
  GTECH_OA22 U84 ( .A(n54), .B(n75), .C(n56), .D(n73), .Z(n78) );
  GTECH_NOT U85 ( .A(data_in[8]), .Z(n73) );
  GTECH_OAI21 U86 ( .A(n51), .B(n79), .C(n80), .Z(N14) );
  GTECH_OA22 U87 ( .A(n54), .B(n77), .C(n56), .D(n75), .Z(n80) );
  GTECH_NOT U88 ( .A(data_in[7]), .Z(n75) );
  GTECH_OAI21 U89 ( .A(n51), .B(n81), .C(n82), .Z(N13) );
  GTECH_OA22 U90 ( .A(n54), .B(n79), .C(n56), .D(n77), .Z(n82) );
  GTECH_NOT U91 ( .A(data_in[6]), .Z(n77) );
  GTECH_OAI21 U92 ( .A(n51), .B(n83), .C(n84), .Z(N12) );
  GTECH_OA22 U93 ( .A(n54), .B(n81), .C(n56), .D(n79), .Z(n84) );
  GTECH_NOT U94 ( .A(data_in[5]), .Z(n79) );
  GTECH_OAI21 U95 ( .A(n57), .B(n51), .C(n85), .Z(N11) );
  GTECH_OA22 U96 ( .A(n54), .B(n83), .C(n56), .D(n81), .Z(n85) );
  GTECH_NOT U97 ( .A(data_in[4]), .Z(n81) );
  GTECH_OAI21 U98 ( .A(n55), .B(n51), .C(n86), .Z(N10) );
  GTECH_OA22 U99 ( .A(n54), .B(n57), .C(n56), .D(n83), .Z(n86) );
  GTECH_NOT U100 ( .A(data_in[3]), .Z(n83) );
  GTECH_NAND2 U101 ( .A(control[1]), .B(n87), .Z(n56) );
  GTECH_NOT U102 ( .A(control[0]), .Z(n87) );
  GTECH_NOT U103 ( .A(data_in[2]), .Z(n57) );
  GTECH_NAND2 U104 ( .A(control[1]), .B(control[0]), .Z(n54) );
  GTECH_NAND2 U105 ( .A(control[0]), .B(n88), .Z(n51) );
  GTECH_NOT U106 ( .A(control[1]), .Z(n88) );
  GTECH_NOT U107 ( .A(data_in[1]), .Z(n55) );
endmodule

