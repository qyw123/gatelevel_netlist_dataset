
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n3, n4, n33, n30, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;

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
  GTECH_XNOR2 U44 ( .A(n36), .B(n46), .Z(n45) );
  GTECH_NOT U45 ( .A(n44), .Z(n37) );
  GTECH_OAI21 U46 ( .A(n36), .B(n47), .C(n48), .Z(n44) );
  GTECH_NAND2 U47 ( .A(n49), .B(n50), .Z(N29) );
  GTECH_MUX2 U48 ( .A(n51), .B(n52), .S(n36), .Z(n50) );
  GTECH_NAND2 U49 ( .A(n53), .B(n54), .Z(n52) );
  GTECH_OA21 U50 ( .A(n53), .B(n42), .C(n55), .Z(n51) );
  GTECH_OAI21 U51 ( .A(n56), .B(n57), .C(n58), .Z(n55) );
  GTECH_OA21 U52 ( .A(n59), .B(n60), .C(n61), .Z(n49) );
  GTECH_NAND2 U53 ( .A(n62), .B(n61), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n60), .B(n42), .S(n46), .Z(n62) );
  GTECH_NOT U55 ( .A(n47), .Z(n46) );
  GTECH_XNOR2 U56 ( .A(n4), .B(n3), .Z(n47) );
  GTECH_NAND2 U57 ( .A(n61), .B(n63), .Z(N27) );
  GTECH_OAI21 U58 ( .A(n54), .B(n58), .C(n3), .Z(n63) );
  GTECH_NOT U59 ( .A(n60), .Z(n58) );
  GTECH_NAND2 U60 ( .A(n64), .B(ENABLE), .Z(n60) );
  GTECH_AND_NOT U61 ( .A(n65), .B(UPDN), .Z(n64) );
  GTECH_OR_NOT U62 ( .A(n59), .B(n35), .Z(n65) );
  GTECH_OR3 U63 ( .A(n56), .B(n57), .C(n66), .Z(n59) );
  GTECH_NOT U64 ( .A(n36), .Z(n66) );
  GTECH_NOT U65 ( .A(n42), .Z(n54) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n42) );
  GTECH_OR3 U67 ( .A(n36), .B(n35), .C(n67), .Z(n61) );
  GTECH_OAI21 U68 ( .A(UPDN), .B(n40), .C(n53), .Z(n67) );
  GTECH_NOT U69 ( .A(n48), .Z(n53) );
  GTECH_NAND2 U70 ( .A(n57), .B(n56), .Z(n48) );
  GTECH_NOT U71 ( .A(n4), .Z(n56) );
  GTECH_NOT U72 ( .A(n3), .Z(n57) );
  GTECH_NOT U73 ( .A(ENABLE), .Z(n40) );
endmodule

