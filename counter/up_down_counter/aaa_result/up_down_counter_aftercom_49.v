
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n32, n29, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61;

  GTECH_FJK2S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n32), .Q(VALUE[0]), .QN(n3) );
  GTECH_FJK2S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n32), .Q(VALUE[1]), .QN(n4) );
  GTECH_FJK2S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n32), .Q(VALUE[2]), .QN(n35) );
  GTECH_FJK2S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n32), .Q(VALUE[3]), .QN(n34) );
  GTECH_ZERO U36 ( .Z(n29) );
  GTECH_NOT U37 ( .A(RST), .Z(n32) );
  GTECH_OAI2N2 U38 ( .A(n34), .B(n36), .C(n37), .D(n38), .Z(N31) );
  GTECH_AND_NOT U39 ( .A(n39), .B(n40), .Z(n37) );
  GTECH_AOI21 U40 ( .A(n39), .B(ENABLE), .C(n41), .Z(n36) );
  GTECH_OR_NOT U41 ( .A(n42), .B(n40), .Z(n41) );
  GTECH_OA21 U42 ( .A(ENABLE), .B(n39), .C(n38), .Z(n42) );
  GTECH_XOR2 U43 ( .A(n43), .B(n35), .Z(n38) );
  GTECH_OAI21 U44 ( .A(n35), .B(n43), .C(n44), .Z(n39) );
  GTECH_OAI21 U45 ( .A(n40), .B(n45), .C(n46), .Z(N29) );
  GTECH_OA21 U46 ( .A(n47), .B(n48), .C(n49), .Z(n46) );
  GTECH_XOR2 U47 ( .A(n35), .B(n50), .Z(n48) );
  GTECH_XOR2 U48 ( .A(n35), .B(n51), .Z(n45) );
  GTECH_NOT U49 ( .A(n52), .Z(N28) );
  GTECH_AND2 U50 ( .A(n49), .B(n53), .Z(n52) );
  GTECH_MUX2 U51 ( .A(n40), .B(n47), .S(n43), .Z(n53) );
  GTECH_XOR2 U52 ( .A(n54), .B(n4), .Z(n43) );
  GTECH_OAI21 U53 ( .A(n55), .B(n54), .C(n49), .Z(N27) );
  GTECH_OR3 U54 ( .A(n35), .B(n56), .C(n34), .Z(n49) );
  GTECH_OAI21 U55 ( .A(n57), .B(UPDN), .C(n51), .Z(n56) );
  GTECH_NOT U56 ( .A(n44), .Z(n51) );
  GTECH_OR_NOT U57 ( .A(n4), .B(n54), .Z(n44) );
  GTECH_NOT U58 ( .A(n3), .Z(n54) );
  GTECH_AND2 U59 ( .A(n47), .B(n40), .Z(n55) );
  GTECH_OR_NOT U60 ( .A(n57), .B(UPDN), .Z(n40) );
  GTECH_NOT U61 ( .A(ENABLE), .Z(n57) );
  GTECH_NAND3 U62 ( .A(n58), .B(n59), .C(ENABLE), .Z(n47) );
  GTECH_NOT U63 ( .A(UPDN), .Z(n59) );
  GTECH_NAND3 U64 ( .A(n50), .B(n35), .C(n34), .Z(n58) );
  GTECH_NOT U65 ( .A(n60), .Z(n50) );
  GTECH_OR_NOT U66 ( .A(n61), .B(n3), .Z(n60) );
  GTECH_NOT U67 ( .A(n4), .Z(n61) );
endmodule

