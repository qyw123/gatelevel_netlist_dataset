
module div ( clk, rst_n, clk_div );
  input clk, rst_n;
  output clk_div;
  wire   N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65;
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
  GTECH_AND_NOT U22 ( .A(n21), .B(n22), .Z(N34) );
  GTECH_XOR2 U23 ( .A(n23), .B(n17), .Z(n21) );
  GTECH_OR2 U24 ( .A(n24), .B(n16), .Z(n23) );
  GTECH_AND_NOT U25 ( .A(n25), .B(n22), .Z(N33) );
  GTECH_XOR2 U26 ( .A(n24), .B(n16), .Z(n25) );
  GTECH_OR_NOT U27 ( .A(n15), .B(n26), .Z(n24) );
  GTECH_NOT U28 ( .A(n27), .Z(n26) );
  GTECH_XOR2 U29 ( .A(n27), .B(n15), .Z(N32) );
  GTECH_OR_NOT U30 ( .A(n14), .B(n28), .Z(n27) );
  GTECH_NOT U31 ( .A(n29), .Z(n28) );
  GTECH_AND_NOT U32 ( .A(n30), .B(n22), .Z(N31) );
  GTECH_XOR2 U33 ( .A(n29), .B(n14), .Z(n30) );
  GTECH_OR_NOT U34 ( .A(n13), .B(n31), .Z(n29) );
  GTECH_NOT U35 ( .A(n32), .Z(n31) );
  GTECH_AND_NOT U36 ( .A(n33), .B(n22), .Z(N30) );
  GTECH_XOR2 U37 ( .A(n32), .B(n13), .Z(n33) );
  GTECH_OR_NOT U38 ( .A(n12), .B(n34), .Z(n32) );
  GTECH_NOT U39 ( .A(n35), .Z(n34) );
  GTECH_AND_NOT U40 ( .A(n36), .B(n22), .Z(N29) );
  GTECH_XOR2 U41 ( .A(n35), .B(n12), .Z(n36) );
  GTECH_OR_NOT U42 ( .A(n11), .B(n37), .Z(n35) );
  GTECH_NOT U43 ( .A(n38), .Z(n37) );
  GTECH_XOR2 U44 ( .A(n38), .B(n11), .Z(N28) );
  GTECH_OR_NOT U45 ( .A(n10), .B(n39), .Z(n38) );
  GTECH_NOT U46 ( .A(n40), .Z(n39) );
  GTECH_AND_NOT U47 ( .A(n41), .B(n22), .Z(N27) );
  GTECH_XOR2 U48 ( .A(n40), .B(n10), .Z(n41) );
  GTECH_OR_NOT U49 ( .A(n9), .B(n42), .Z(n40) );
  GTECH_NOT U50 ( .A(n43), .Z(n42) );
  GTECH_AND_NOT U51 ( .A(n44), .B(n22), .Z(N26) );
  GTECH_XOR2 U52 ( .A(n43), .B(n9), .Z(n44) );
  GTECH_OR_NOT U53 ( .A(n8), .B(n45), .Z(n43) );
  GTECH_NOT U54 ( .A(n46), .Z(n45) );
  GTECH_AND_NOT U55 ( .A(n47), .B(n22), .Z(N25) );
  GTECH_XOR2 U56 ( .A(n46), .B(n8), .Z(n47) );
  GTECH_OR_NOT U57 ( .A(n7), .B(n48), .Z(n46) );
  GTECH_NOT U58 ( .A(n49), .Z(n48) );
  GTECH_AND_NOT U59 ( .A(n50), .B(n22), .Z(N24) );
  GTECH_XOR2 U60 ( .A(n49), .B(n7), .Z(n50) );
  GTECH_OR_NOT U61 ( .A(n6), .B(n51), .Z(n49) );
  GTECH_NOT U62 ( .A(n52), .Z(n51) );
  GTECH_AND_NOT U63 ( .A(n53), .B(n22), .Z(N23) );
  GTECH_NOT U64 ( .A(n54), .Z(n22) );
  GTECH_XOR2 U65 ( .A(n52), .B(n6), .Z(n53) );
  GTECH_OR_NOT U66 ( .A(n5), .B(n55), .Z(n52) );
  GTECH_NOT U67 ( .A(n56), .Z(n55) );
  GTECH_XOR2 U68 ( .A(n56), .B(n5), .Z(N22) );
  GTECH_NAND3 U69 ( .A(n57), .B(n58), .C(n59), .Z(n56) );
  GTECH_NOT U70 ( .A(n4), .Z(n58) );
  GTECH_OAI21 U71 ( .A(n4), .B(n59), .C(n60), .Z(N21) );
  GTECH_MUX2 U72 ( .A(n57), .B(n61), .S(n4), .Z(n60) );
  GTECH_OR_NOT U73 ( .A(n3), .B(n59), .Z(n61) );
  GTECH_NOT U74 ( .A(n3), .Z(n57) );
  GTECH_NOT U75 ( .A(N19), .Z(n59) );
  GTECH_MUX2 U76 ( .A(N19), .B(n62), .S(n3), .Z(N20) );
  GTECH_AND_NOT U77 ( .A(n54), .B(N19), .Z(n62) );
  GTECH_OR5 U78 ( .A(n10), .B(n12), .C(n63), .D(n64), .E(n65), .Z(n54) );
  GTECH_OR8 U79 ( .A(n14), .B(n16), .C(n17), .D(N19), .E(n6), .F(n7), .G(n8), 
        .H(n9), .Z(n65) );
  GTECH_NAND4 U80 ( .A(n5), .B(n4), .C(n3), .D(n15), .Z(n64) );
  GTECH_OR_NOT U81 ( .A(n13), .B(n11), .Z(n63) );
endmodule

