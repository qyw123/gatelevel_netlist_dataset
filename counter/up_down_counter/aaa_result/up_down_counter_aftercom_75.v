
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n31, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_NOT U35 ( .A(RST), .Z(n31) );
  GTECH_OAI21 U36 ( .A(n33), .B(n35), .C(n36), .Z(N31) );
  GTECH_NAND3 U37 ( .A(n37), .B(n38), .C(n39), .Z(n36) );
  GTECH_AOI21 U38 ( .A(n37), .B(ENABLE), .C(n40), .Z(n35) );
  GTECH_NAND2 U39 ( .A(n41), .B(n42), .Z(n40) );
  GTECH_OAI21 U40 ( .A(ENABLE), .B(n37), .C(n39), .Z(n42) );
  GTECH_XOR2 U41 ( .A(n43), .B(n34), .Z(n39) );
  GTECH_OAI21 U42 ( .A(n34), .B(n43), .C(n44), .Z(n37) );
  GTECH_OAI21 U43 ( .A(n41), .B(n45), .C(n46), .Z(N29) );
  GTECH_OA21 U44 ( .A(n47), .B(n48), .C(n49), .Z(n46) );
  GTECH_XOR2 U45 ( .A(n34), .B(n50), .Z(n48) );
  GTECH_XOR2 U46 ( .A(n34), .B(n51), .Z(n45) );
  GTECH_NAND2 U47 ( .A(n52), .B(n49), .Z(N28) );
  GTECH_MUX2 U48 ( .A(n41), .B(n47), .S(n43), .Z(n52) );
  GTECH_XOR2 U49 ( .A(n53), .B(n4), .Z(n43) );
  GTECH_NAND2 U50 ( .A(n49), .B(n54), .Z(N27) );
  GTECH_OAI21 U51 ( .A(n38), .B(n55), .C(n3), .Z(n54) );
  GTECH_NOT U52 ( .A(n47), .Z(n55) );
  GTECH_NAND3 U53 ( .A(n56), .B(n57), .C(ENABLE), .Z(n47) );
  GTECH_NOT U54 ( .A(UPDN), .Z(n57) );
  GTECH_NAND3 U55 ( .A(n50), .B(n34), .C(n33), .Z(n56) );
  GTECH_NOT U56 ( .A(n58), .Z(n50) );
  GTECH_NAND2 U57 ( .A(n3), .B(n4), .Z(n58) );
  GTECH_NOT U58 ( .A(n41), .Z(n38) );
  GTECH_NAND2 U59 ( .A(UPDN), .B(ENABLE), .Z(n41) );
  GTECH_OR3 U60 ( .A(n34), .B(n59), .C(n33), .Z(n49) );
  GTECH_NAND2 U61 ( .A(n51), .B(n60), .Z(n59) );
  GTECH_OR_NOT U62 ( .A(UPDN), .B(ENABLE), .Z(n60) );
  GTECH_NOT U63 ( .A(n44), .Z(n51) );
  GTECH_NAND2 U64 ( .A(n53), .B(n61), .Z(n44) );
  GTECH_NOT U65 ( .A(n4), .Z(n61) );
  GTECH_NOT U66 ( .A(n3), .Z(n53) );
endmodule

