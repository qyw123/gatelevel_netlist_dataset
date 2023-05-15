
module div ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75;
  wire   [14:0] counter;

  GTECH_FD2 counter_reg_0_ ( .D(N19), .CP(clk), .CD(rst_n), .Q(counter[0]), 
        .QN(N19) );
  GTECH_FD2 counter_reg_1_ ( .D(N20), .CP(clk), .CD(rst_n), .Q(counter[1]), 
        .QN(n3) );
  GTECH_FD2 counter_reg_2_ ( .D(N21), .CP(clk), .CD(rst_n), .Q(counter[2]), 
        .QN(n4) );
  GTECH_FD2 counter_reg_3_ ( .D(N22), .CP(clk), .CD(rst_n), .Q(counter[3]), 
        .QN(n5) );
  GTECH_FD2 counter_reg_4_ ( .D(N23), .CP(clk), .CD(rst_n), .Q(counter[4]), 
        .QN(n6) );
  GTECH_FD2 counter_reg_5_ ( .D(N24), .CP(clk), .CD(rst_n), .Q(counter[5]), 
        .QN(n7) );
  GTECH_FD2 counter_reg_6_ ( .D(N25), .CP(clk), .CD(rst_n), .Q(counter[6]), 
        .QN(n8) );
  GTECH_FD2 counter_reg_7_ ( .D(N26), .CP(clk), .CD(rst_n), .Q(counter[7]), 
        .QN(n9) );
  GTECH_FD2 counter_reg_8_ ( .D(N27), .CP(clk), .CD(rst_n), .Q(counter[8]), 
        .QN(n10) );
  GTECH_FD2 counter_reg_9_ ( .D(N28), .CP(clk), .CD(rst_n), .Q(counter[9]), 
        .QN(n11) );
  GTECH_FD2 counter_reg_10_ ( .D(N29), .CP(clk), .CD(rst_n), .Q(counter[10]), 
        .QN(n12) );
  GTECH_FD2 counter_reg_11_ ( .D(N30), .CP(clk), .CD(rst_n), .Q(counter[11]), 
        .QN(n13) );
  GTECH_FD2 counter_reg_12_ ( .D(N31), .CP(clk), .CD(rst_n), .Q(counter[12]), 
        .QN(n14) );
  GTECH_FD2 counter_reg_13_ ( .D(N32), .CP(clk), .CD(rst_n), .Q(counter[13]), 
        .QN(n15) );
  GTECH_FD2 counter_reg_14_ ( .D(N33), .CP(clk), .CD(rst_n), .Q(counter[14]), 
        .QN(n16) );
  GTECH_FD2 counter_reg_15_ ( .D(N34), .CP(clk), .CD(rst_n), .Q(clk_div), .QN(
        n17) );
  GTECH_AND2 U22 ( .A(n21), .B(n22), .Z(N34) );
  GTECH_XNOR2 U23 ( .A(n17), .B(n23), .Z(n22) );
  GTECH_AND_NOT U24 ( .A(n24), .B(n16), .Z(n23) );
  GTECH_AND2 U25 ( .A(n25), .B(n21), .Z(N33) );
  GTECH_XNOR2 U26 ( .A(n16), .B(n24), .Z(n25) );
  GTECH_NOT U27 ( .A(n26), .Z(n24) );
  GTECH_NAND2 U28 ( .A(n27), .B(n28), .Z(n26) );
  GTECH_NOT U29 ( .A(n15), .Z(n28) );
  GTECH_XNOR2 U30 ( .A(n15), .B(n27), .Z(N32) );
  GTECH_NOT U31 ( .A(n29), .Z(n27) );
  GTECH_NAND2 U32 ( .A(n30), .B(n31), .Z(n29) );
  GTECH_NOT U33 ( .A(n14), .Z(n31) );
  GTECH_AND2 U34 ( .A(n32), .B(n21), .Z(N31) );
  GTECH_XNOR2 U35 ( .A(n14), .B(n30), .Z(n32) );
  GTECH_NOT U36 ( .A(n33), .Z(n30) );
  GTECH_NAND2 U37 ( .A(n34), .B(n35), .Z(n33) );
  GTECH_AND2 U38 ( .A(n36), .B(n21), .Z(N30) );
  GTECH_XNOR2 U39 ( .A(n13), .B(n34), .Z(n36) );
  GTECH_NOT U40 ( .A(n37), .Z(n34) );
  GTECH_NAND2 U41 ( .A(n38), .B(n39), .Z(n37) );
  GTECH_AND2 U42 ( .A(n40), .B(n21), .Z(N29) );
  GTECH_XNOR2 U43 ( .A(n12), .B(n38), .Z(n40) );
  GTECH_NOT U44 ( .A(n41), .Z(n38) );
  GTECH_NAND2 U45 ( .A(n42), .B(n43), .Z(n41) );
  GTECH_NOT U46 ( .A(n11), .Z(n43) );
  GTECH_XNOR2 U47 ( .A(n11), .B(n42), .Z(N28) );
  GTECH_NOT U48 ( .A(n44), .Z(n42) );
  GTECH_NAND2 U49 ( .A(n45), .B(n46), .Z(n44) );
  GTECH_AND2 U50 ( .A(n47), .B(n21), .Z(N27) );
  GTECH_XNOR2 U51 ( .A(n10), .B(n45), .Z(n47) );
  GTECH_NOT U52 ( .A(n48), .Z(n45) );
  GTECH_NAND2 U53 ( .A(n49), .B(n50), .Z(n48) );
  GTECH_NOT U54 ( .A(n9), .Z(n50) );
  GTECH_AND2 U55 ( .A(n51), .B(n21), .Z(N26) );
  GTECH_XNOR2 U56 ( .A(n9), .B(n49), .Z(n51) );
  GTECH_NOT U57 ( .A(n52), .Z(n49) );
  GTECH_NAND2 U58 ( .A(n53), .B(n54), .Z(n52) );
  GTECH_NOT U59 ( .A(n8), .Z(n54) );
  GTECH_AND2 U60 ( .A(n55), .B(n21), .Z(N25) );
  GTECH_XNOR2 U61 ( .A(n8), .B(n53), .Z(n55) );
  GTECH_NOT U62 ( .A(n56), .Z(n53) );
  GTECH_NAND2 U63 ( .A(n57), .B(n58), .Z(n56) );
  GTECH_NOT U64 ( .A(n7), .Z(n58) );
  GTECH_AND2 U65 ( .A(n59), .B(n21), .Z(N24) );
  GTECH_XNOR2 U66 ( .A(n7), .B(n57), .Z(n59) );
  GTECH_NOT U67 ( .A(n60), .Z(n57) );
  GTECH_NAND2 U68 ( .A(n61), .B(n62), .Z(n60) );
  GTECH_NOT U69 ( .A(n6), .Z(n62) );
  GTECH_AND2 U70 ( .A(n63), .B(n21), .Z(N23) );
  GTECH_XNOR2 U71 ( .A(n6), .B(n61), .Z(n63) );
  GTECH_NOT U72 ( .A(n64), .Z(n61) );
  GTECH_NAND2 U73 ( .A(n65), .B(n66), .Z(n64) );
  GTECH_NOT U74 ( .A(n5), .Z(n66) );
  GTECH_XNOR2 U75 ( .A(n5), .B(n65), .Z(N22) );
  GTECH_NOT U76 ( .A(n67), .Z(n65) );
  GTECH_NAND3 U77 ( .A(n68), .B(n69), .C(n70), .Z(n67) );
  GTECH_AO21 U78 ( .A(N19), .B(n69), .C(n71), .Z(N21) );
  GTECH_MUX2 U79 ( .A(n3), .B(n72), .S(n4), .Z(n71) );
  GTECH_AND2 U80 ( .A(n70), .B(n68), .Z(n72) );
  GTECH_NOT U81 ( .A(n3), .Z(n68) );
  GTECH_NOT U82 ( .A(n4), .Z(n69) );
  GTECH_MUX2 U83 ( .A(N19), .B(n73), .S(n3), .Z(N20) );
  GTECH_AND2 U84 ( .A(n21), .B(n70), .Z(n73) );
  GTECH_NOT U85 ( .A(N19), .Z(n70) );
  GTECH_NAND2 U86 ( .A(n74), .B(n75), .Z(n21) );
  GTECH_NOR8 U87 ( .A(n17), .B(n9), .C(n8), .D(n7), .E(n6), .F(N19), .G(n16), 
        .H(n14), .Z(n75) );
  GTECH_AND8 U88 ( .A(n5), .B(n4), .C(n3), .D(n15), .E(n11), .F(n46), .G(n39), 
        .H(n35), .Z(n74) );
  GTECH_NOT U89 ( .A(n13), .Z(n35) );
  GTECH_NOT U90 ( .A(n12), .Z(n39) );
  GTECH_NOT U91 ( .A(n10), .Z(n46) );
endmodule

