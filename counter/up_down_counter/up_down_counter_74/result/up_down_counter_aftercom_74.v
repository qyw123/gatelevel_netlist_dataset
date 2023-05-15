
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n36, n33, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK2S counter_reg_0_ ( .J(n33), .K(n33), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n36), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n33), .K(n33), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n36), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n33), .K(n33), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n36), .Q(VALUE[2]), .QN(n39) );
  GTECH_FJK2S counter_reg_3_ ( .J(n33), .K(n33), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n36), .Q(VALUE[3]), .QN(n38) );
  GTECH_ZERO U40 ( .Z(n33) );
  GTECH_NOT U41 ( .A(RST), .Z(n36) );
  GTECH_OAI21 U42 ( .A(n38), .B(n40), .C(n41), .Z(N31) );
  GTECH_NAND3 U43 ( .A(n42), .B(n43), .C(n44), .Z(n41) );
  GTECH_AOI21 U44 ( .A(n42), .B(ENABLE), .C(n45), .Z(n40) );
  GTECH_NAND2 U45 ( .A(n46), .B(n47), .Z(n45) );
  GTECH_OAI21 U46 ( .A(ENABLE), .B(n42), .C(n44), .Z(n47) );
  GTECH_XOR2 U47 ( .A(n48), .B(n39), .Z(n44) );
  GTECH_OAI21 U48 ( .A(n39), .B(n48), .C(n49), .Z(n42) );
  GTECH_OAI21 U49 ( .A(n46), .B(n50), .C(n51), .Z(N29) );
  GTECH_OA21 U50 ( .A(n52), .B(n53), .C(n54), .Z(n51) );
  GTECH_XOR2 U51 ( .A(n39), .B(n55), .Z(n53) );
  GTECH_XOR2 U52 ( .A(n39), .B(n56), .Z(n50) );
  GTECH_NAND2 U53 ( .A(n57), .B(n54), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n46), .B(n52), .S(n48), .Z(n57) );
  GTECH_XOR2 U55 ( .A(n58), .B(n4), .Z(n48) );
  GTECH_NAND2 U56 ( .A(n54), .B(n59), .Z(N27) );
  GTECH_OAI21 U57 ( .A(n43), .B(n60), .C(n3), .Z(n59) );
  GTECH_NOT U58 ( .A(n52), .Z(n60) );
  GTECH_NAND3 U59 ( .A(n61), .B(n62), .C(ENABLE), .Z(n52) );
  GTECH_NOT U60 ( .A(UPDN), .Z(n62) );
  GTECH_NAND3 U61 ( .A(n55), .B(n39), .C(n38), .Z(n61) );
  GTECH_NOT U62 ( .A(n63), .Z(n55) );
  GTECH_NAND2 U63 ( .A(n3), .B(n4), .Z(n63) );
  GTECH_NOT U64 ( .A(n46), .Z(n43) );
  GTECH_NAND2 U65 ( .A(UPDN), .B(ENABLE), .Z(n46) );
  GTECH_OR3 U66 ( .A(n39), .B(n64), .C(n38), .Z(n54) );
  GTECH_NAND2 U67 ( .A(n56), .B(n65), .Z(n64) );
  GTECH_OR_NOT U68 ( .A(UPDN), .B(ENABLE), .Z(n65) );
  GTECH_NOT U69 ( .A(n49), .Z(n56) );
  GTECH_NAND2 U70 ( .A(n58), .B(n66), .Z(n49) );
  GTECH_NOT U71 ( .A(n4), .Z(n66) );
  GTECH_NOT U72 ( .A(n3), .Z(n58) );
endmodule

