
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n2, n3, n33, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[2]), .QN(n36) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[3]), .QN(n35) );
  GTECH_NOT U39 ( .A(RST), .Z(n33) );
  GTECH_OAI21 U40 ( .A(n35), .B(n37), .C(n38), .Z(N31) );
  GTECH_NAND3 U41 ( .A(n39), .B(n40), .C(n41), .Z(n38) );
  GTECH_AOI21 U42 ( .A(n39), .B(ENABLE), .C(n42), .Z(n37) );
  GTECH_NAND2 U43 ( .A(n43), .B(n44), .Z(n42) );
  GTECH_OAI21 U44 ( .A(ENABLE), .B(n39), .C(n41), .Z(n44) );
  GTECH_XOR2 U45 ( .A(n45), .B(n36), .Z(n41) );
  GTECH_OAI21 U46 ( .A(n36), .B(n45), .C(n46), .Z(n39) );
  GTECH_NAND2 U47 ( .A(n47), .B(n48), .Z(N29) );
  GTECH_MUX2 U48 ( .A(n49), .B(n50), .S(n36), .Z(n48) );
  GTECH_NAND2 U49 ( .A(n51), .B(n40), .Z(n50) );
  GTECH_OA21 U50 ( .A(n51), .B(n43), .C(n52), .Z(n49) );
  GTECH_OAI21 U51 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_NOT U52 ( .A(n46), .Z(n51) );
  GTECH_OA21 U53 ( .A(n56), .B(n57), .C(n58), .Z(n47) );
  GTECH_NAND2 U54 ( .A(n59), .B(n58), .Z(N28) );
  GTECH_MUX2 U55 ( .A(n43), .B(n57), .S(n45), .Z(n59) );
  GTECH_XOR2 U56 ( .A(n54), .B(n3), .Z(n45) );
  GTECH_NAND2 U57 ( .A(n58), .B(n60), .Z(N27) );
  GTECH_OAI21 U58 ( .A(n40), .B(n55), .C(n2), .Z(n60) );
  GTECH_NOT U59 ( .A(n57), .Z(n55) );
  GTECH_NAND2 U60 ( .A(n61), .B(ENABLE), .Z(n57) );
  GTECH_OA21 U61 ( .A(n56), .B(n62), .C(n63), .Z(n61) );
  GTECH_NOT U62 ( .A(UPDN), .Z(n63) );
  GTECH_NOT U63 ( .A(n35), .Z(n62) );
  GTECH_NAND3 U64 ( .A(n2), .B(n3), .C(n36), .Z(n56) );
  GTECH_NOT U65 ( .A(n43), .Z(n40) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n43) );
  GTECH_OR4 U67 ( .A(n64), .B(n46), .C(n36), .D(n35), .Z(n58) );
  GTECH_NAND2 U68 ( .A(n54), .B(n53), .Z(n46) );
  GTECH_NOT U69 ( .A(n3), .Z(n53) );
  GTECH_NOT U70 ( .A(n2), .Z(n54) );
  GTECH_AND_NOT U71 ( .A(ENABLE), .B(UPDN), .Z(n64) );
endmodule

