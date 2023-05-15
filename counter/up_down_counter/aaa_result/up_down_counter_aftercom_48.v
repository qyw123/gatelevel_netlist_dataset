
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n33, n30, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63;

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
  GTECH_OAI21 U39 ( .A(n35), .B(n37), .C(n38), .Z(N31) );
  GTECH_NAND3 U40 ( .A(n39), .B(n40), .C(n41), .Z(n38) );
  GTECH_NOT U41 ( .A(n42), .Z(n40) );
  GTECH_AOI21 U42 ( .A(n39), .B(ENABLE), .C(n43), .Z(n37) );
  GTECH_OR_NOT U43 ( .A(n44), .B(n42), .Z(n43) );
  GTECH_OA21 U44 ( .A(ENABLE), .B(n39), .C(n41), .Z(n44) );
  GTECH_XOR2 U45 ( .A(n45), .B(n36), .Z(n41) );
  GTECH_OAI21 U46 ( .A(n36), .B(n45), .C(n46), .Z(n39) );
  GTECH_OR_NOT U47 ( .A(n47), .B(n48), .Z(N29) );
  GTECH_MUX2 U48 ( .A(n49), .B(n50), .S(n36), .Z(n48) );
  GTECH_OR_NOT U49 ( .A(n42), .B(n51), .Z(n50) );
  GTECH_OA21 U50 ( .A(n51), .B(n42), .C(n52), .Z(n49) );
  GTECH_AO21 U51 ( .A(n4), .B(n3), .C(n53), .Z(n52) );
  GTECH_OAI21 U52 ( .A(n53), .B(n54), .C(n55), .Z(n47) );
  GTECH_NOT U53 ( .A(n56), .Z(N28) );
  GTECH_AND2 U54 ( .A(n55), .B(n57), .Z(n56) );
  GTECH_MUX2 U55 ( .A(n42), .B(n53), .S(n45), .Z(n57) );
  GTECH_XOR2 U56 ( .A(n58), .B(n4), .Z(n45) );
  GTECH_OAI21 U57 ( .A(n59), .B(n58), .C(n55), .Z(N27) );
  GTECH_OR3 U58 ( .A(n36), .B(n60), .C(n35), .Z(n55) );
  GTECH_OAI21 U59 ( .A(n61), .B(UPDN), .C(n51), .Z(n60) );
  GTECH_NOT U60 ( .A(n46), .Z(n51) );
  GTECH_OR_NOT U61 ( .A(n4), .B(n58), .Z(n46) );
  GTECH_NOT U62 ( .A(n3), .Z(n58) );
  GTECH_AND2 U63 ( .A(n53), .B(n42), .Z(n59) );
  GTECH_OR_NOT U64 ( .A(n61), .B(UPDN), .Z(n42) );
  GTECH_OR3 U65 ( .A(UPDN), .B(n62), .C(n61), .Z(n53) );
  GTECH_NOT U66 ( .A(ENABLE), .Z(n61) );
  GTECH_NOR2 U67 ( .A(n63), .B(n54), .Z(n62) );
  GTECH_NAND3 U68 ( .A(n3), .B(n4), .C(n36), .Z(n54) );
  GTECH_NOT U69 ( .A(n35), .Z(n63) );
endmodule

