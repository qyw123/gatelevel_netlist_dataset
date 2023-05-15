
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n28, n31, n34, n35, n26, n27, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;

  GTECH_FJK3S counter_reg_0_ ( .J(n27), .K(n27), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n35), .SD(n26), .Q(VALUE[0]), .QN(n38) );
  GTECH_FJK3S counter_reg_1_ ( .J(n27), .K(n27), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n35), .SD(n26), .Q(VALUE[1]), .QN(n34) );
  GTECH_FJK3S counter_reg_2_ ( .J(n27), .K(n27), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n35), .SD(n26), .Q(VALUE[2]), .QN(n31) );
  GTECH_FJK3S counter_reg_3_ ( .J(n27), .K(n27), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n35), .SD(n26), .Q(VALUE[3]), .QN(n28) );
  GTECH_ZERO U39 ( .Z(n27) );
  GTECH_ONE U40 ( .Z(n26) );
  GTECH_NOT U41 ( .A(RST), .Z(n35) );
  GTECH_OAI21 U42 ( .A(n28), .B(n39), .C(n40), .Z(N31) );
  GTECH_NAND3 U43 ( .A(n41), .B(n42), .C(n43), .Z(n40) );
  GTECH_AOI21 U44 ( .A(n41), .B(ENABLE), .C(n44), .Z(n39) );
  GTECH_NAND2 U45 ( .A(n45), .B(n46), .Z(n44) );
  GTECH_OAI21 U46 ( .A(ENABLE), .B(n41), .C(n43), .Z(n46) );
  GTECH_XOR2 U47 ( .A(n47), .B(n31), .Z(n43) );
  GTECH_OAI21 U48 ( .A(n31), .B(n47), .C(n48), .Z(n41) );
  GTECH_OAI21 U49 ( .A(n45), .B(n49), .C(n50), .Z(N29) );
  GTECH_OA21 U50 ( .A(n51), .B(n52), .C(n53), .Z(n50) );
  GTECH_XOR2 U51 ( .A(n31), .B(n54), .Z(n52) );
  GTECH_XOR2 U52 ( .A(n31), .B(n55), .Z(n49) );
  GTECH_NAND2 U53 ( .A(n56), .B(n53), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n45), .B(n51), .S(n47), .Z(n56) );
  GTECH_XOR2 U55 ( .A(n57), .B(n38), .Z(n47) );
  GTECH_NAND2 U56 ( .A(n53), .B(n58), .Z(N27) );
  GTECH_OAI21 U57 ( .A(n42), .B(n59), .C(n38), .Z(n58) );
  GTECH_NOT U58 ( .A(n51), .Z(n59) );
  GTECH_NAND3 U59 ( .A(n60), .B(n61), .C(ENABLE), .Z(n51) );
  GTECH_NOT U60 ( .A(UPDN), .Z(n61) );
  GTECH_NAND3 U61 ( .A(n54), .B(n31), .C(n28), .Z(n60) );
  GTECH_NOT U62 ( .A(n62), .Z(n54) );
  GTECH_NAND2 U63 ( .A(n34), .B(n38), .Z(n62) );
  GTECH_NOT U64 ( .A(n45), .Z(n42) );
  GTECH_NAND2 U65 ( .A(UPDN), .B(ENABLE), .Z(n45) );
  GTECH_OR3 U66 ( .A(n31), .B(n63), .C(n28), .Z(n53) );
  GTECH_NAND2 U67 ( .A(n55), .B(n64), .Z(n63) );
  GTECH_OR_NOT U68 ( .A(UPDN), .B(ENABLE), .Z(n64) );
  GTECH_NOT U69 ( .A(n48), .Z(n55) );
  GTECH_NAND2 U70 ( .A(n57), .B(n65), .Z(n48) );
  GTECH_NOT U71 ( .A(n38), .Z(n65) );
  GTECH_NOT U72 ( .A(n34), .Z(n57) );
endmodule

