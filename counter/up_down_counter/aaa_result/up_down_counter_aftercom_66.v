
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n31, n28, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(n28), .K(n28), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n28), .K(n28), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n28), .K(n28), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(n28), .K(n28), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_ZERO U35 ( .Z(n28) );
  GTECH_NOT U36 ( .A(RST), .Z(n31) );
  GTECH_OAI21 U37 ( .A(n33), .B(n35), .C(n36), .Z(N31) );
  GTECH_NAND3 U38 ( .A(n37), .B(n38), .C(n39), .Z(n36) );
  GTECH_AOI21 U39 ( .A(n37), .B(ENABLE), .C(n40), .Z(n35) );
  GTECH_NAND2 U40 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_OAI21 U41 ( .A(ENABLE), .B(n37), .C(n39), .Z(n42) );
  GTECH_XOR2 U42 ( .A(n43), .B(n34), .Z(n39) );
  GTECH_OAI21 U43 ( .A(n34), .B(n43), .C(n44), .Z(n37) );
  GTECH_OAI21 U44 ( .A(n41), .B(n45), .C(n46), .Z(N29) );
  GTECH_OA21 U45 ( .A(n47), .B(n48), .C(n49), .Z(n46) );
  GTECH_XOR2 U46 ( .A(n34), .B(n50), .Z(n48) );
  GTECH_XOR2 U47 ( .A(n34), .B(n51), .Z(n45) );
  GTECH_NAND2 U48 ( .A(n52), .B(n49), .Z(N28) );
  GTECH_OA22 U49 ( .A(n47), .B(n53), .C(n43), .D(n41), .Z(n52) );
  GTECH_NOT U50 ( .A(n43), .Z(n53) );
  GTECH_XOR2 U51 ( .A(n54), .B(n4), .Z(n43) );
  GTECH_NAND2 U52 ( .A(n49), .B(n55), .Z(N27) );
  GTECH_OAI21 U53 ( .A(n38), .B(n56), .C(n3), .Z(n55) );
  GTECH_NOT U54 ( .A(n47), .Z(n56) );
  GTECH_NAND3 U55 ( .A(n57), .B(n58), .C(ENABLE), .Z(n47) );
  GTECH_NOT U56 ( .A(UPDN), .Z(n58) );
  GTECH_NAND3 U57 ( .A(n50), .B(n34), .C(n33), .Z(n57) );
  GTECH_NOT U58 ( .A(n59), .Z(n50) );
  GTECH_NAND2 U59 ( .A(n3), .B(n4), .Z(n59) );
  GTECH_NOT U60 ( .A(n41), .Z(n38) );
  GTECH_NAND2 U61 ( .A(UPDN), .B(ENABLE), .Z(n41) );
  GTECH_OR3 U62 ( .A(n34), .B(n60), .C(n33), .Z(n49) );
  GTECH_NAND2 U63 ( .A(n51), .B(n61), .Z(n60) );
  GTECH_OR_NOT U64 ( .A(UPDN), .B(ENABLE), .Z(n61) );
  GTECH_NOT U65 ( .A(n44), .Z(n51) );
  GTECH_NAND2 U66 ( .A(n54), .B(n62), .Z(n44) );
  GTECH_NOT U67 ( .A(n4), .Z(n62) );
  GTECH_NOT U68 ( .A(n3), .Z(n54) );
endmodule

