
module div ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n21, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90;
  wire   [14:0] counter;

  GTECH_FD2S counter_reg_0_ ( .D(N19), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[0]), .QN(N19) );
  GTECH_FD2S counter_reg_1_ ( .D(N20), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[1]), .QN(n3) );
  GTECH_FD2S counter_reg_2_ ( .D(N21), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[2]), .QN(n4) );
  GTECH_FD2S counter_reg_3_ ( .D(N22), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[3]), .QN(n5) );
  GTECH_FD2S counter_reg_4_ ( .D(N23), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[4]), .QN(n6) );
  GTECH_FD2S counter_reg_5_ ( .D(N24), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[5]), .QN(n7) );
  GTECH_FD2S counter_reg_6_ ( .D(N25), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[6]), .QN(n8) );
  GTECH_FD2S counter_reg_7_ ( .D(N26), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[7]), .QN(n9) );
  GTECH_FD2S counter_reg_8_ ( .D(N27), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[8]), .QN(n10) );
  GTECH_FD2S counter_reg_9_ ( .D(N28), .TI(n21), .TE(n21), .CP(clk), .CD(rst_n), .Q(counter[9]), .QN(n11) );
  GTECH_FD2S counter_reg_10_ ( .D(N29), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(counter[10]), .QN(n12) );
  GTECH_FD2S counter_reg_11_ ( .D(N30), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(counter[11]), .QN(n13) );
  GTECH_FD2S counter_reg_12_ ( .D(N31), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(counter[12]), .QN(n14) );
  GTECH_FD2S counter_reg_13_ ( .D(N32), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(counter[13]), .QN(n15) );
  GTECH_FD2S counter_reg_14_ ( .D(N33), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(counter[14]), .QN(n16) );
  GTECH_FD2S counter_reg_15_ ( .D(N34), .TI(n21), .TE(n21), .CP(clk), .CD(
        rst_n), .Q(clk_div), .QN(n17) );
  GTECH_ZERO U38 ( .Z(n21) );
  GTECH_AND2 U39 ( .A(n37), .B(n38), .Z(N34) );
  GTECH_XOR2 U40 ( .A(n39), .B(n17), .Z(n37) );
  GTECH_OR2 U41 ( .A(n16), .B(n40), .Z(n39) );
  GTECH_AND2 U42 ( .A(n41), .B(n38), .Z(N33) );
  GTECH_XOR2 U43 ( .A(n40), .B(n16), .Z(n41) );
  GTECH_NAND2 U44 ( .A(n42), .B(n43), .Z(n40) );
  GTECH_NOT U45 ( .A(n15), .Z(n43) );
  GTECH_NOT U46 ( .A(n44), .Z(n42) );
  GTECH_XOR2 U47 ( .A(n44), .B(n15), .Z(N32) );
  GTECH_NAND2 U48 ( .A(n45), .B(n46), .Z(n44) );
  GTECH_NOT U49 ( .A(n14), .Z(n46) );
  GTECH_NOT U50 ( .A(n47), .Z(n45) );
  GTECH_AND2 U51 ( .A(n48), .B(n38), .Z(N31) );
  GTECH_XOR2 U52 ( .A(n47), .B(n14), .Z(n48) );
  GTECH_NAND2 U53 ( .A(n49), .B(n50), .Z(n47) );
  GTECH_NOT U54 ( .A(n51), .Z(n49) );
  GTECH_AND2 U55 ( .A(n52), .B(n38), .Z(N30) );
  GTECH_XOR2 U56 ( .A(n51), .B(n13), .Z(n52) );
  GTECH_NAND2 U57 ( .A(n53), .B(n54), .Z(n51) );
  GTECH_NOT U58 ( .A(n55), .Z(n53) );
  GTECH_AND2 U59 ( .A(n56), .B(n38), .Z(N29) );
  GTECH_XOR2 U60 ( .A(n55), .B(n12), .Z(n56) );
  GTECH_NAND2 U61 ( .A(n57), .B(n58), .Z(n55) );
  GTECH_NOT U62 ( .A(n11), .Z(n58) );
  GTECH_NOT U63 ( .A(n59), .Z(n57) );
  GTECH_XOR2 U64 ( .A(n59), .B(n11), .Z(N28) );
  GTECH_NAND2 U65 ( .A(n60), .B(n61), .Z(n59) );
  GTECH_NOT U66 ( .A(n62), .Z(n60) );
  GTECH_AND2 U67 ( .A(n63), .B(n38), .Z(N27) );
  GTECH_XOR2 U68 ( .A(n62), .B(n10), .Z(n63) );
  GTECH_NAND2 U69 ( .A(n64), .B(n65), .Z(n62) );
  GTECH_NOT U70 ( .A(n9), .Z(n65) );
  GTECH_NOT U71 ( .A(n66), .Z(n64) );
  GTECH_AND2 U72 ( .A(n67), .B(n38), .Z(N26) );
  GTECH_XOR2 U73 ( .A(n66), .B(n9), .Z(n67) );
  GTECH_NAND2 U74 ( .A(n68), .B(n69), .Z(n66) );
  GTECH_NOT U75 ( .A(n8), .Z(n69) );
  GTECH_NOT U76 ( .A(n70), .Z(n68) );
  GTECH_AND2 U77 ( .A(n71), .B(n38), .Z(N25) );
  GTECH_XOR2 U78 ( .A(n70), .B(n8), .Z(n71) );
  GTECH_NAND2 U79 ( .A(n72), .B(n73), .Z(n70) );
  GTECH_NOT U80 ( .A(n7), .Z(n73) );
  GTECH_NOT U81 ( .A(n74), .Z(n72) );
  GTECH_AND2 U82 ( .A(n75), .B(n38), .Z(N24) );
  GTECH_XOR2 U83 ( .A(n74), .B(n7), .Z(n75) );
  GTECH_NAND2 U84 ( .A(n76), .B(n77), .Z(n74) );
  GTECH_NOT U85 ( .A(n6), .Z(n77) );
  GTECH_NOT U86 ( .A(n78), .Z(n76) );
  GTECH_AND2 U87 ( .A(n79), .B(n38), .Z(N23) );
  GTECH_XOR2 U88 ( .A(n78), .B(n6), .Z(n79) );
  GTECH_NAND2 U89 ( .A(n80), .B(n81), .Z(n78) );
  GTECH_NOT U90 ( .A(n5), .Z(n81) );
  GTECH_NOT U91 ( .A(n82), .Z(n80) );
  GTECH_XOR2 U92 ( .A(n82), .B(n5), .Z(N22) );
  GTECH_NAND3 U93 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
  GTECH_AO21 U94 ( .A(N19), .B(n84), .C(n86), .Z(N21) );
  GTECH_MUX2 U95 ( .A(n3), .B(n87), .S(n4), .Z(n86) );
  GTECH_AND2 U96 ( .A(n85), .B(n83), .Z(n87) );
  GTECH_NOT U97 ( .A(n3), .Z(n83) );
  GTECH_NOT U98 ( .A(n4), .Z(n84) );
  GTECH_MUX2 U99 ( .A(N19), .B(n88), .S(n3), .Z(N20) );
  GTECH_AND2 U100 ( .A(n38), .B(n85), .Z(n88) );
  GTECH_NOT U101 ( .A(N19), .Z(n85) );
  GTECH_NAND2 U102 ( .A(n89), .B(n90), .Z(n38) );
  GTECH_NOR8 U103 ( .A(n17), .B(n9), .C(n8), .D(n7), .E(n6), .F(N19), .G(n16), 
        .H(n14), .Z(n90) );
  GTECH_AND8 U104 ( .A(n5), .B(n4), .C(n3), .D(n15), .E(n11), .F(n61), .G(n54), 
        .H(n50), .Z(n89) );
  GTECH_NOT U105 ( .A(n13), .Z(n50) );
  GTECH_NOT U106 ( .A(n12), .Z(n54) );
  GTECH_NOT U107 ( .A(n10), .Z(n61) );
endmodule

