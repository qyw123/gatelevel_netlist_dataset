
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n33, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;

  GTECH_FJK2S counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(N55), .CP(clk), .CD(n33), .Q(VALUE[0]), .QN(n37) );
  GTECH_FJK2S counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(N55), .CP(clk), .CD(n33), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(N55), .CP(clk), .CD(n33), .Q(VALUE[3]), .QN(n35) );
  GTECH_FJK2S counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(N55), .CP(clk), .CD(n33), .Q(VALUE[2]), .QN(n36) );
  GTECH_NOT U40 ( .A(RST), .Z(n33) );
  GTECH_NAND2 U41 ( .A(n38), .B(n39), .Z(N55) );
  GTECH_OAI22 U42 ( .A(n35), .B(n40), .C(n38), .D(n41), .Z(N31) );
  GTECH_NAND2 U43 ( .A(n42), .B(n43), .Z(n41) );
  GTECH_OA21 U44 ( .A(n44), .B(n45), .C(n46), .Z(n40) );
  GTECH_AND_NOT U45 ( .A(n38), .B(n47), .Z(n46) );
  GTECH_OA21 U46 ( .A(ENABLE), .B(n43), .C(n42), .Z(n47) );
  GTECH_XOR2 U47 ( .A(n48), .B(n36), .Z(n42) );
  GTECH_NOT U48 ( .A(n43), .Z(n45) );
  GTECH_AO21 U49 ( .A(n49), .B(n50), .C(n51), .Z(n43) );
  GTECH_NOT U50 ( .A(ENABLE), .Z(n44) );
  GTECH_NOT U51 ( .A(n52), .Z(N29) );
  GTECH_OA21 U52 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_OA21 U53 ( .A(n38), .B(n56), .C(n57), .Z(n55) );
  GTECH_XNOR2 U54 ( .A(n58), .B(n36), .Z(n56) );
  GTECH_XNOR2 U55 ( .A(n59), .B(n36), .Z(n54) );
  GTECH_NAND2 U56 ( .A(n60), .B(n57), .Z(N28) );
  GTECH_MUX2 U57 ( .A(n53), .B(n38), .S(n49), .Z(n60) );
  GTECH_NOT U58 ( .A(n48), .Z(n49) );
  GTECH_NAND2 U59 ( .A(n59), .B(n58), .Z(n48) );
  GTECH_NAND2 U60 ( .A(n57), .B(n61), .Z(N27) );
  GTECH_AO21 U61 ( .A(n38), .B(n53), .C(n62), .Z(n61) );
  GTECH_OR_NOT U62 ( .A(n39), .B(n63), .Z(n53) );
  GTECH_OR_NOT U63 ( .A(n59), .B(n64), .Z(n63) );
  GTECH_AND2 U64 ( .A(n36), .B(n35), .Z(n64) );
  GTECH_NAND2 U65 ( .A(n37), .B(n2), .Z(n59) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n38) );
  GTECH_NAND4 U67 ( .A(n51), .B(n39), .C(n65), .D(n50), .Z(n57) );
  GTECH_NOT U68 ( .A(n36), .Z(n50) );
  GTECH_NOT U69 ( .A(n35), .Z(n65) );
  GTECH_NAND2 U70 ( .A(ENABLE), .B(n66), .Z(n39) );
  GTECH_NOT U71 ( .A(UPDN), .Z(n66) );
  GTECH_NOT U72 ( .A(n58), .Z(n51) );
  GTECH_NAND2 U73 ( .A(n67), .B(n62), .Z(n58) );
  GTECH_NOT U74 ( .A(n37), .Z(n62) );
  GTECH_NOT U75 ( .A(n2), .Z(n67) );
endmodule

