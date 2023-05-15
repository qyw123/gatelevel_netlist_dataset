
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n31, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(N55), .CP(clk), .CD(n31), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(N55), .CP(clk), .CD(n31), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(N55), .CP(clk), .CD(n31), .Q(VALUE[2]), .QN(n34) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(N55), .CP(clk), .CD(n31), .Q(VALUE[3]), .QN(n33) );
  GTECH_NOT U37 ( .A(RST), .Z(n31) );
  GTECH_NAND2 U38 ( .A(n35), .B(n36), .Z(N55) );
  GTECH_OAI21 U39 ( .A(n33), .B(n37), .C(n38), .Z(N31) );
  GTECH_NAND3 U40 ( .A(n39), .B(n40), .C(n41), .Z(n38) );
  GTECH_AOI21 U41 ( .A(n39), .B(ENABLE), .C(n42), .Z(n37) );
  GTECH_NAND2 U42 ( .A(n43), .B(n36), .Z(n42) );
  GTECH_OAI21 U43 ( .A(ENABLE), .B(n39), .C(n40), .Z(n43) );
  GTECH_OAI21 U44 ( .A(n34), .B(n44), .C(n45), .Z(n40) );
  GTECH_XOR2 U45 ( .A(n44), .B(n34), .Z(n39) );
  GTECH_NAND2 U46 ( .A(n46), .B(n47), .Z(N29) );
  GTECH_MUX2 U47 ( .A(n48), .B(n49), .S(n34), .Z(n46) );
  GTECH_OA22 U48 ( .A(n50), .B(n51), .C(n36), .D(n45), .Z(n49) );
  GTECH_NAND2 U49 ( .A(n3), .B(n2), .Z(n51) );
  GTECH_OA22 U50 ( .A(n52), .B(n50), .C(n53), .D(n36), .Z(n48) );
  GTECH_AND2 U51 ( .A(n3), .B(n2), .Z(n52) );
  GTECH_NAND2 U52 ( .A(n54), .B(n47), .Z(N28) );
  GTECH_MUX2 U53 ( .A(n36), .B(n50), .S(n44), .Z(n54) );
  GTECH_OAI21 U54 ( .A(n55), .B(n56), .C(n45), .Z(n44) );
  GTECH_NAND2 U55 ( .A(n47), .B(n57), .Z(N27) );
  GTECH_OAI21 U56 ( .A(n58), .B(n41), .C(n2), .Z(n57) );
  GTECH_NOT U57 ( .A(n36), .Z(n41) );
  GTECH_NAND2 U58 ( .A(UPDN), .B(ENABLE), .Z(n36) );
  GTECH_NOT U59 ( .A(n50), .Z(n58) );
  GTECH_OR_NOT U60 ( .A(n35), .B(n59), .Z(n50) );
  GTECH_NAND3 U61 ( .A(n3), .B(n33), .C(n34), .Z(n59) );
  GTECH_NAND4 U62 ( .A(n53), .B(n35), .C(n60), .D(n61), .Z(n47) );
  GTECH_NOT U63 ( .A(n34), .Z(n61) );
  GTECH_NOT U64 ( .A(n33), .Z(n60) );
  GTECH_NAND2 U65 ( .A(ENABLE), .B(n62), .Z(n35) );
  GTECH_NOT U66 ( .A(UPDN), .Z(n62) );
  GTECH_NOT U67 ( .A(n45), .Z(n53) );
  GTECH_NAND2 U68 ( .A(n56), .B(n55), .Z(n45) );
  GTECH_NOT U69 ( .A(n2), .Z(n55) );
  GTECH_NOT U70 ( .A(n3), .Z(n56) );
endmodule

