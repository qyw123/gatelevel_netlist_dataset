
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n33, n30, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  GTECH_FJK2S counter_reg_0_ ( .J(n30), .K(n30), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n30), .K(n30), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n30), .K(n30), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[2]), .QN(n36) );
  GTECH_FJK2S counter_reg_3_ ( .J(n30), .K(n30), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[3]), .QN(n35) );
  GTECH_ZERO U39 ( .Z(n30) );
  GTECH_NOT U40 ( .A(RST), .Z(n33) );
  GTECH_NAND2 U41 ( .A(n37), .B(n38), .Z(N55) );
  GTECH_OAI22 U42 ( .A(n39), .B(n40), .C(n35), .D(n41), .Z(N31) );
  GTECH_AND3 U43 ( .A(n37), .B(n42), .C(n43), .Z(n41) );
  GTECH_NAND2 U44 ( .A(n44), .B(ENABLE), .Z(n43) );
  GTECH_OAI21 U45 ( .A(ENABLE), .B(n44), .C(n45), .Z(n42) );
  GTECH_OR_NOT U46 ( .A(n37), .B(n45), .Z(n40) );
  GTECH_XOR2 U47 ( .A(n46), .B(n36), .Z(n45) );
  GTECH_NOT U48 ( .A(n44), .Z(n39) );
  GTECH_OAI21 U49 ( .A(n36), .B(n46), .C(n47), .Z(n44) );
  GTECH_OAI21 U50 ( .A(n37), .B(n48), .C(n49), .Z(N29) );
  GTECH_OA21 U51 ( .A(n50), .B(n51), .C(n52), .Z(n49) );
  GTECH_XNOR2 U52 ( .A(n36), .B(n53), .Z(n50) );
  GTECH_XOR2 U53 ( .A(n36), .B(n54), .Z(n48) );
  GTECH_NAND2 U54 ( .A(n55), .B(n52), .Z(N28) );
  GTECH_MUX2 U55 ( .A(n37), .B(n51), .S(n46), .Z(n55) );
  GTECH_NAND2 U56 ( .A(n53), .B(n47), .Z(n46) );
  GTECH_NAND2 U57 ( .A(n52), .B(n56), .Z(N27) );
  GTECH_NAND2 U58 ( .A(n2), .B(n57), .Z(n56) );
  GTECH_NAND2 U59 ( .A(n37), .B(n51), .Z(n57) );
  GTECH_OR_NOT U60 ( .A(n38), .B(n58), .Z(n51) );
  GTECH_OR3 U61 ( .A(n53), .B(n59), .C(n60), .Z(n58) );
  GTECH_NAND2 U62 ( .A(n3), .B(n2), .Z(n53) );
  GTECH_NAND2 U63 ( .A(UPDN), .B(ENABLE), .Z(n37) );
  GTECH_NAND4 U64 ( .A(n54), .B(n38), .C(n59), .D(n60), .Z(n52) );
  GTECH_NOT U65 ( .A(n36), .Z(n60) );
  GTECH_NOT U66 ( .A(n35), .Z(n59) );
  GTECH_NAND2 U67 ( .A(ENABLE), .B(n61), .Z(n38) );
  GTECH_NOT U68 ( .A(UPDN), .Z(n61) );
  GTECH_NOT U69 ( .A(n47), .Z(n54) );
  GTECH_NAND2 U70 ( .A(n62), .B(n63), .Z(n47) );
  GTECH_NOT U71 ( .A(n2), .Z(n63) );
  GTECH_NOT U72 ( .A(n3), .Z(n62) );
endmodule

