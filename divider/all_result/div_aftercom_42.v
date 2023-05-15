
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
  GTECH_AND2 U22 ( .A(n21), .B(n22), .Z(N34) );
  GTECH_XNOR2 U23 ( .A(n17), .B(n23), .Z(n22) );
  GTECH_AND_NOT U24 ( .A(n24), .B(n16), .Z(n23) );
  GTECH_AND2 U25 ( .A(n25), .B(n21), .Z(N33) );
  GTECH_XNOR2 U26 ( .A(n16), .B(n24), .Z(n25) );
  GTECH_NOT U27 ( .A(n26), .Z(n24) );
  GTECH_OR_NOT U28 ( .A(n15), .B(n27), .Z(n26) );
  GTECH_XNOR2 U29 ( .A(n15), .B(n27), .Z(N32) );
  GTECH_NOT U30 ( .A(n28), .Z(n27) );
  GTECH_OR_NOT U31 ( .A(n14), .B(n29), .Z(n28) );
  GTECH_AND2 U32 ( .A(n30), .B(n21), .Z(N31) );
  GTECH_XNOR2 U33 ( .A(n14), .B(n29), .Z(n30) );
  GTECH_NOT U34 ( .A(n31), .Z(n29) );
  GTECH_OR_NOT U35 ( .A(n13), .B(n32), .Z(n31) );
  GTECH_AND2 U36 ( .A(n33), .B(n21), .Z(N30) );
  GTECH_XNOR2 U37 ( .A(n13), .B(n32), .Z(n33) );
  GTECH_NOT U38 ( .A(n34), .Z(n32) );
  GTECH_OR_NOT U39 ( .A(n12), .B(n35), .Z(n34) );
  GTECH_AND2 U40 ( .A(n36), .B(n21), .Z(N29) );
  GTECH_XNOR2 U41 ( .A(n12), .B(n35), .Z(n36) );
  GTECH_NOT U42 ( .A(n37), .Z(n35) );
  GTECH_OR_NOT U43 ( .A(n11), .B(n38), .Z(n37) );
  GTECH_XNOR2 U44 ( .A(n11), .B(n38), .Z(N28) );
  GTECH_NOT U45 ( .A(n39), .Z(n38) );
  GTECH_OR_NOT U46 ( .A(n10), .B(n40), .Z(n39) );
  GTECH_AND2 U47 ( .A(n41), .B(n21), .Z(N27) );
  GTECH_XNOR2 U48 ( .A(n10), .B(n40), .Z(n41) );
  GTECH_NOT U49 ( .A(n42), .Z(n40) );
  GTECH_OR_NOT U50 ( .A(n9), .B(n43), .Z(n42) );
  GTECH_AND2 U51 ( .A(n44), .B(n21), .Z(N26) );
  GTECH_XNOR2 U52 ( .A(n9), .B(n43), .Z(n44) );
  GTECH_NOT U53 ( .A(n45), .Z(n43) );
  GTECH_OR_NOT U54 ( .A(n8), .B(n46), .Z(n45) );
  GTECH_AND2 U55 ( .A(n47), .B(n21), .Z(N25) );
  GTECH_XNOR2 U56 ( .A(n8), .B(n46), .Z(n47) );
  GTECH_NOT U57 ( .A(n48), .Z(n46) );
  GTECH_OR_NOT U58 ( .A(n7), .B(n49), .Z(n48) );
  GTECH_AND2 U59 ( .A(n50), .B(n21), .Z(N24) );
  GTECH_XNOR2 U60 ( .A(n7), .B(n49), .Z(n50) );
  GTECH_NOT U61 ( .A(n51), .Z(n49) );
  GTECH_OR_NOT U62 ( .A(n6), .B(n52), .Z(n51) );
  GTECH_AND2 U63 ( .A(n53), .B(n21), .Z(N23) );
  GTECH_XNOR2 U64 ( .A(n6), .B(n52), .Z(n53) );
  GTECH_NOT U65 ( .A(n54), .Z(n52) );
  GTECH_OR_NOT U66 ( .A(n5), .B(n55), .Z(n54) );
  GTECH_XNOR2 U67 ( .A(n5), .B(n55), .Z(N22) );
  GTECH_NOT U68 ( .A(n56), .Z(n55) );
  GTECH_NAND3 U69 ( .A(n57), .B(n58), .C(n59), .Z(n56) );
  GTECH_NOT U70 ( .A(n4), .Z(n58) );
  GTECH_OAI21 U71 ( .A(n4), .B(n59), .C(n60), .Z(N21) );
  GTECH_MUX2 U72 ( .A(n57), .B(n61), .S(n4), .Z(n60) );
  GTECH_OR_NOT U73 ( .A(n3), .B(n59), .Z(n61) );
  GTECH_NOT U74 ( .A(n3), .Z(n57) );
  GTECH_MUX2 U75 ( .A(N19), .B(n62), .S(n3), .Z(N20) );
  GTECH_AND2 U76 ( .A(n21), .B(n59), .Z(n62) );
  GTECH_NOT U77 ( .A(N19), .Z(n59) );
  GTECH_OR5 U78 ( .A(n10), .B(n12), .C(n63), .D(n64), .E(n65), .Z(n21) );
  GTECH_OR8 U79 ( .A(n14), .B(n16), .C(n17), .D(N19), .E(n6), .F(n7), .G(n8), 
        .H(n9), .Z(n65) );
  GTECH_NAND4 U80 ( .A(n5), .B(n4), .C(n3), .D(n15), .Z(n64) );
  GTECH_OR_NOT U81 ( .A(n13), .B(n11), .Z(n63) );
endmodule

