
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n31, n28, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  GTECH_FJK2S counter_reg_0_ ( .J(n28), .K(n28), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n28), .K(n28), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n28), .K(n28), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(n28), .K(n28), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_ZERO U37 ( .Z(n28) );
  GTECH_NOT U38 ( .A(RST), .Z(n31) );
  GTECH_NAND2 U39 ( .A(n35), .B(n36), .Z(N55) );
  GTECH_OAI22 U40 ( .A(n37), .B(n38), .C(n33), .D(n39), .Z(N31) );
  GTECH_AOI21 U41 ( .A(n40), .B(ENABLE), .C(n41), .Z(n39) );
  GTECH_NAND2 U42 ( .A(n35), .B(n42), .Z(n41) );
  GTECH_OAI21 U43 ( .A(ENABLE), .B(n40), .C(n43), .Z(n42) );
  GTECH_OR_NOT U44 ( .A(n35), .B(n43), .Z(n38) );
  GTECH_XOR2 U45 ( .A(n44), .B(n34), .Z(n43) );
  GTECH_NOT U46 ( .A(n40), .Z(n37) );
  GTECH_OAI21 U47 ( .A(n34), .B(n44), .C(n45), .Z(n40) );
  GTECH_NAND2 U48 ( .A(n46), .B(n47), .Z(N29) );
  GTECH_MUX2 U49 ( .A(n48), .B(n49), .S(n34), .Z(n47) );
  GTECH_NAND2 U50 ( .A(n50), .B(n51), .Z(n49) );
  GTECH_OA21 U51 ( .A(n50), .B(n35), .C(n52), .Z(n48) );
  GTECH_OAI21 U52 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_OA21 U53 ( .A(n56), .B(n57), .C(n58), .Z(n46) );
  GTECH_NAND2 U54 ( .A(n59), .B(n58), .Z(N28) );
  GTECH_MUX2 U55 ( .A(n35), .B(n57), .S(n44), .Z(n59) );
  GTECH_OAI21 U56 ( .A(n53), .B(n54), .C(n45), .Z(n44) );
  GTECH_NAND2 U57 ( .A(n58), .B(n60), .Z(N27) );
  GTECH_OAI21 U58 ( .A(n51), .B(n55), .C(n2), .Z(n60) );
  GTECH_NOT U59 ( .A(n57), .Z(n55) );
  GTECH_OAI21 U60 ( .A(n56), .B(n61), .C(n62), .Z(n57) );
  GTECH_NOT U61 ( .A(n36), .Z(n62) );
  GTECH_OR3 U62 ( .A(n53), .B(n54), .C(n63), .Z(n56) );
  GTECH_NOT U63 ( .A(n35), .Z(n51) );
  GTECH_NAND2 U64 ( .A(UPDN), .B(ENABLE), .Z(n35) );
  GTECH_NAND4 U65 ( .A(n50), .B(n36), .C(n61), .D(n63), .Z(n58) );
  GTECH_NOT U66 ( .A(n34), .Z(n63) );
  GTECH_NOT U67 ( .A(n33), .Z(n61) );
  GTECH_NAND2 U68 ( .A(ENABLE), .B(n64), .Z(n36) );
  GTECH_NOT U69 ( .A(UPDN), .Z(n64) );
  GTECH_NOT U70 ( .A(n45), .Z(n50) );
  GTECH_NAND2 U71 ( .A(n54), .B(n53), .Z(n45) );
  GTECH_NOT U72 ( .A(n2), .Z(n53) );
  GTECH_NOT U73 ( .A(n3), .Z(n54) );
endmodule

