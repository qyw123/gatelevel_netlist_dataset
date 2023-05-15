
module div ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;
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
  GTECH_XOR2 U23 ( .A(n23), .B(n17), .Z(n21) );
  GTECH_OR2 U24 ( .A(n16), .B(n24), .Z(n23) );
  GTECH_AND2 U25 ( .A(n25), .B(n22), .Z(N33) );
  GTECH_XOR2 U26 ( .A(n24), .B(n16), .Z(n25) );
  GTECH_NAND2 U27 ( .A(n26), .B(n27), .Z(n24) );
  GTECH_NOT U28 ( .A(n15), .Z(n27) );
  GTECH_NOT U29 ( .A(n28), .Z(n26) );
  GTECH_XOR2 U30 ( .A(n28), .B(n15), .Z(N32) );
  GTECH_NAND2 U31 ( .A(n29), .B(n30), .Z(n28) );
  GTECH_NOT U32 ( .A(n14), .Z(n30) );
  GTECH_NOT U33 ( .A(n31), .Z(n29) );
  GTECH_AND2 U34 ( .A(n32), .B(n22), .Z(N31) );
  GTECH_XOR2 U35 ( .A(n31), .B(n14), .Z(n32) );
  GTECH_NAND2 U36 ( .A(n33), .B(n34), .Z(n31) );
  GTECH_NOT U37 ( .A(n35), .Z(n33) );
  GTECH_AND2 U38 ( .A(n36), .B(n22), .Z(N30) );
  GTECH_XOR2 U39 ( .A(n35), .B(n13), .Z(n36) );
  GTECH_NAND2 U40 ( .A(n37), .B(n38), .Z(n35) );
  GTECH_NOT U41 ( .A(n39), .Z(n37) );
  GTECH_AND2 U42 ( .A(n40), .B(n22), .Z(N29) );
  GTECH_XOR2 U43 ( .A(n39), .B(n12), .Z(n40) );
  GTECH_NAND2 U44 ( .A(n41), .B(n42), .Z(n39) );
  GTECH_NOT U45 ( .A(n11), .Z(n42) );
  GTECH_NOT U46 ( .A(n43), .Z(n41) );
  GTECH_XOR2 U47 ( .A(n43), .B(n11), .Z(N28) );
  GTECH_NAND2 U48 ( .A(n44), .B(n45), .Z(n43) );
  GTECH_NOT U49 ( .A(n46), .Z(n44) );
  GTECH_AND2 U50 ( .A(n47), .B(n22), .Z(N27) );
  GTECH_XOR2 U51 ( .A(n46), .B(n10), .Z(n47) );
  GTECH_NAND2 U52 ( .A(n48), .B(n49), .Z(n46) );
  GTECH_NOT U53 ( .A(n9), .Z(n49) );
  GTECH_NOT U54 ( .A(n50), .Z(n48) );
  GTECH_AND2 U55 ( .A(n51), .B(n22), .Z(N26) );
  GTECH_XOR2 U56 ( .A(n50), .B(n9), .Z(n51) );
  GTECH_NAND2 U57 ( .A(n52), .B(n53), .Z(n50) );
  GTECH_NOT U58 ( .A(n8), .Z(n53) );
  GTECH_NOT U59 ( .A(n54), .Z(n52) );
  GTECH_AND2 U60 ( .A(n55), .B(n22), .Z(N25) );
  GTECH_XOR2 U61 ( .A(n54), .B(n8), .Z(n55) );
  GTECH_NAND2 U62 ( .A(n56), .B(n57), .Z(n54) );
  GTECH_NOT U63 ( .A(n7), .Z(n57) );
  GTECH_NOT U64 ( .A(n58), .Z(n56) );
  GTECH_AND2 U65 ( .A(n59), .B(n22), .Z(N24) );
  GTECH_XOR2 U66 ( .A(n58), .B(n7), .Z(n59) );
  GTECH_NAND2 U67 ( .A(n60), .B(n61), .Z(n58) );
  GTECH_NOT U68 ( .A(n6), .Z(n61) );
  GTECH_NOT U69 ( .A(n62), .Z(n60) );
  GTECH_AND2 U70 ( .A(n63), .B(n22), .Z(N23) );
  GTECH_XOR2 U71 ( .A(n62), .B(n6), .Z(n63) );
  GTECH_NAND2 U72 ( .A(n64), .B(n65), .Z(n62) );
  GTECH_NOT U73 ( .A(n5), .Z(n65) );
  GTECH_NOT U74 ( .A(n66), .Z(n64) );
  GTECH_XOR2 U75 ( .A(n66), .B(n5), .Z(N22) );
  GTECH_OR3 U76 ( .A(n4), .B(n3), .C(N19), .Z(n66) );
  GTECH_OAI21 U77 ( .A(n4), .B(n67), .C(n68), .Z(N21) );
  GTECH_MUX2 U78 ( .A(n69), .B(n70), .S(n4), .Z(n68) );
  GTECH_NAND2 U79 ( .A(n67), .B(n69), .Z(n70) );
  GTECH_NOT U80 ( .A(n3), .Z(n69) );
  GTECH_MUX2 U81 ( .A(N19), .B(n71), .S(n3), .Z(N20) );
  GTECH_AND2 U82 ( .A(n22), .B(n67), .Z(n71) );
  GTECH_NOT U83 ( .A(N19), .Z(n67) );
  GTECH_OR_NOT U84 ( .A(n72), .B(n73), .Z(n22) );
  GTECH_AND8 U85 ( .A(n5), .B(n4), .C(n3), .D(n15), .E(n11), .F(n45), .G(n38), 
        .H(n34), .Z(n73) );
  GTECH_NOT U86 ( .A(n13), .Z(n34) );
  GTECH_NOT U87 ( .A(n12), .Z(n38) );
  GTECH_NOT U88 ( .A(n10), .Z(n45) );
  GTECH_OR8 U89 ( .A(n16), .B(n14), .C(n6), .D(N19), .E(n8), .F(n7), .G(n17), 
        .H(n9), .Z(n72) );
endmodule

