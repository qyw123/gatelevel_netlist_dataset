
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n35, n32, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65;

  GTECH_FJK2S counter_reg_0_ ( .J(n32), .K(n32), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n35), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n32), .K(n32), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n35), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n32), .K(n32), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n35), .Q(VALUE[2]), .QN(n38) );
  GTECH_FJK2S counter_reg_3_ ( .J(n32), .K(n32), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n35), .Q(VALUE[3]), .QN(n37) );
  GTECH_ZERO U39 ( .Z(n32) );
  GTECH_NOT U40 ( .A(RST), .Z(n35) );
  GTECH_OAI21 U41 ( .A(n37), .B(n39), .C(n40), .Z(N31) );
  GTECH_NAND3 U42 ( .A(n41), .B(n42), .C(n43), .Z(n40) );
  GTECH_AOI21 U43 ( .A(n41), .B(ENABLE), .C(n44), .Z(n39) );
  GTECH_NAND2 U44 ( .A(n45), .B(n46), .Z(n44) );
  GTECH_OAI21 U45 ( .A(ENABLE), .B(n41), .C(n43), .Z(n46) );
  GTECH_XNOR2 U46 ( .A(n38), .B(n47), .Z(n43) );
  GTECH_OAI21 U47 ( .A(n38), .B(n48), .C(n49), .Z(n41) );
  GTECH_OAI21 U48 ( .A(n45), .B(n50), .C(n51), .Z(N29) );
  GTECH_OA21 U49 ( .A(n52), .B(n53), .C(n54), .Z(n51) );
  GTECH_XNOR2 U50 ( .A(n38), .B(n55), .Z(n53) );
  GTECH_XNOR2 U51 ( .A(n38), .B(n49), .Z(n50) );
  GTECH_NAND2 U52 ( .A(n56), .B(n54), .Z(N28) );
  GTECH_MUX2 U53 ( .A(n52), .B(n45), .S(n47), .Z(n56) );
  GTECH_NOT U54 ( .A(n48), .Z(n47) );
  GTECH_NAND2 U55 ( .A(n49), .B(n55), .Z(n48) );
  GTECH_NAND2 U56 ( .A(n54), .B(n57), .Z(N27) );
  GTECH_OAI21 U57 ( .A(n42), .B(n58), .C(n3), .Z(n57) );
  GTECH_NOT U58 ( .A(n52), .Z(n58) );
  GTECH_NAND3 U59 ( .A(n59), .B(n60), .C(ENABLE), .Z(n52) );
  GTECH_NOT U60 ( .A(UPDN), .Z(n60) );
  GTECH_NAND3 U61 ( .A(n61), .B(n38), .C(n37), .Z(n59) );
  GTECH_NOT U62 ( .A(n55), .Z(n61) );
  GTECH_NAND2 U63 ( .A(n4), .B(n3), .Z(n55) );
  GTECH_NOT U64 ( .A(n45), .Z(n42) );
  GTECH_NAND2 U65 ( .A(UPDN), .B(ENABLE), .Z(n45) );
  GTECH_OR3 U66 ( .A(n38), .B(n62), .C(n37), .Z(n54) );
  GTECH_OR_NOT U67 ( .A(n49), .B(n63), .Z(n62) );
  GTECH_OR_NOT U68 ( .A(UPDN), .B(ENABLE), .Z(n63) );
  GTECH_NAND2 U69 ( .A(n64), .B(n65), .Z(n49) );
  GTECH_NOT U70 ( .A(n4), .Z(n65) );
  GTECH_NOT U71 ( .A(n3), .Z(n64) );
endmodule

