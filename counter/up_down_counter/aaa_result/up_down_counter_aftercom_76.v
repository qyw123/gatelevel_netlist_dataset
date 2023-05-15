
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n33, n30, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(n30), .K(n30), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n30), .K(n30), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n30), .K(n30), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[2]), .QN(n36) );
  GTECH_FJK2S counter_reg_3_ ( .J(n30), .K(n30), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n33), .Q(VALUE[3]), .QN(n35) );
  GTECH_ZERO U37 ( .Z(n30) );
  GTECH_NOT U38 ( .A(RST), .Z(n33) );
  GTECH_OAI22 U39 ( .A(n37), .B(n38), .C(n35), .D(n39), .Z(N31) );
  GTECH_OA21 U40 ( .A(n40), .B(n37), .C(n41), .Z(n39) );
  GTECH_AND2 U41 ( .A(n42), .B(n43), .Z(n41) );
  GTECH_OAI21 U42 ( .A(ENABLE), .B(n44), .C(n45), .Z(n43) );
  GTECH_OR_NOT U43 ( .A(n42), .B(n45), .Z(n38) );
  GTECH_XOR2 U44 ( .A(n46), .B(n36), .Z(n45) );
  GTECH_NOT U45 ( .A(n44), .Z(n37) );
  GTECH_OAI21 U46 ( .A(n36), .B(n46), .C(n47), .Z(n44) );
  GTECH_OAI21 U47 ( .A(n42), .B(n48), .C(n49), .Z(N29) );
  GTECH_OA21 U48 ( .A(n50), .B(n51), .C(n52), .Z(n49) );
  GTECH_XOR2 U49 ( .A(n36), .B(n53), .Z(n51) );
  GTECH_XOR2 U50 ( .A(n36), .B(n54), .Z(n48) );
  GTECH_NAND2 U51 ( .A(n55), .B(n52), .Z(N28) );
  GTECH_MUX2 U52 ( .A(n42), .B(n50), .S(n46), .Z(n55) );
  GTECH_NAND2 U53 ( .A(n47), .B(n56), .Z(n46) );
  GTECH_NAND2 U54 ( .A(n52), .B(n57), .Z(N27) );
  GTECH_NAND2 U55 ( .A(n3), .B(n58), .Z(n57) );
  GTECH_NAND2 U56 ( .A(n42), .B(n50), .Z(n58) );
  GTECH_OR3 U57 ( .A(UPDN), .B(n59), .C(n40), .Z(n50) );
  GTECH_AND3 U58 ( .A(n53), .B(n36), .C(n35), .Z(n59) );
  GTECH_NOT U59 ( .A(n56), .Z(n53) );
  GTECH_NAND2 U60 ( .A(n4), .B(n3), .Z(n56) );
  GTECH_NAND2 U61 ( .A(UPDN), .B(ENABLE), .Z(n42) );
  GTECH_OR3 U62 ( .A(n36), .B(n35), .C(n60), .Z(n52) );
  GTECH_OAI21 U63 ( .A(UPDN), .B(n40), .C(n54), .Z(n60) );
  GTECH_NOT U64 ( .A(n47), .Z(n54) );
  GTECH_NAND2 U65 ( .A(n61), .B(n62), .Z(n47) );
  GTECH_NOT U66 ( .A(n4), .Z(n62) );
  GTECH_NOT U67 ( .A(n3), .Z(n61) );
  GTECH_NOT U68 ( .A(ENABLE), .Z(n40) );
endmodule

