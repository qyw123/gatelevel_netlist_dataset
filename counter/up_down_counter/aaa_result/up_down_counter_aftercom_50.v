
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(N55), .CP(clk), .CD(n35), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(N55), .CP(clk), .CD(n35), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(N55), .CP(clk), .CD(n35), .Q(VALUE[2]), .QN(n38) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(N55), .CP(clk), .CD(n35), .Q(VALUE[3]), .QN(n37) );
  GTECH_NOT U41 ( .A(RST), .Z(n35) );
  GTECH_OR_NOT U42 ( .A(n39), .B(n40), .Z(N55) );
  GTECH_OAI2N2 U43 ( .A(n37), .B(n41), .C(n42), .D(n43), .Z(N31) );
  GTECH_AND_NOT U44 ( .A(n44), .B(n40), .Z(n42) );
  GTECH_AOI21 U45 ( .A(n44), .B(ENABLE), .C(n45), .Z(n41) );
  GTECH_OR_NOT U46 ( .A(n46), .B(n40), .Z(n45) );
  GTECH_OA21 U47 ( .A(ENABLE), .B(n44), .C(n43), .Z(n46) );
  GTECH_XOR2 U48 ( .A(n47), .B(n38), .Z(n43) );
  GTECH_OAI21 U49 ( .A(n38), .B(n47), .C(n48), .Z(n44) );
  GTECH_OAI21 U50 ( .A(n49), .B(n50), .C(n51), .Z(N29) );
  GTECH_OA21 U51 ( .A(n40), .B(n52), .C(n53), .Z(n51) );
  GTECH_XOR2 U52 ( .A(n38), .B(n54), .Z(n52) );
  GTECH_XOR2 U53 ( .A(n38), .B(n55), .Z(n50) );
  GTECH_NOT U54 ( .A(n56), .Z(N28) );
  GTECH_AND2 U55 ( .A(n53), .B(n57), .Z(n56) );
  GTECH_MUX2 U56 ( .A(n40), .B(n49), .S(n47), .Z(n57) );
  GTECH_XOR2 U57 ( .A(n58), .B(n3), .Z(n47) );
  GTECH_OAI21 U58 ( .A(n59), .B(n58), .C(n53), .Z(N27) );
  GTECH_NAND4 U59 ( .A(n54), .B(n60), .C(n61), .D(n62), .Z(n53) );
  GTECH_NOT U60 ( .A(n48), .Z(n54) );
  GTECH_OR_NOT U61 ( .A(n3), .B(n58), .Z(n48) );
  GTECH_NOT U62 ( .A(n2), .Z(n58) );
  GTECH_AND2 U63 ( .A(n40), .B(n49), .Z(n59) );
  GTECH_OAI21 U64 ( .A(n61), .B(n63), .C(n39), .Z(n49) );
  GTECH_NOT U65 ( .A(n60), .Z(n39) );
  GTECH_OR_NOT U66 ( .A(UPDN), .B(ENABLE), .Z(n60) );
  GTECH_OR_NOT U67 ( .A(n62), .B(n55), .Z(n63) );
  GTECH_NOT U68 ( .A(n64), .Z(n55) );
  GTECH_OR_NOT U69 ( .A(n65), .B(n2), .Z(n64) );
  GTECH_NOT U70 ( .A(n3), .Z(n65) );
  GTECH_NOT U71 ( .A(n38), .Z(n62) );
  GTECH_NOT U72 ( .A(n37), .Z(n61) );
  GTECH_OR_NOT U73 ( .A(n66), .B(UPDN), .Z(n40) );
  GTECH_NOT U74 ( .A(ENABLE), .Z(n66) );
endmodule

