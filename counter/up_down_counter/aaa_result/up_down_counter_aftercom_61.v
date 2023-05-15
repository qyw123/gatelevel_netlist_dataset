
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n33, n30, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;

  GTECH_FJK2S counter_reg_0_ ( .J(n30), .K(n30), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[0]), .QN(n37) );
  GTECH_FJK2S counter_reg_1_ ( .J(n30), .K(n30), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[1]), .QN(n2) );
  GTECH_FJK2S counter_reg_2_ ( .J(n30), .K(n30), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[2]), .QN(n36) );
  GTECH_FJK2S counter_reg_3_ ( .J(n30), .K(n30), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n33), .Q(VALUE[3]), .QN(n35) );
  GTECH_ZERO U40 ( .Z(n30) );
  GTECH_NOT U41 ( .A(RST), .Z(n33) );
  GTECH_NAND2 U42 ( .A(n38), .B(n39), .Z(N55) );
  GTECH_OAI22 U43 ( .A(n35), .B(n40), .C(n39), .D(n41), .Z(N31) );
  GTECH_NAND2 U44 ( .A(n42), .B(n43), .Z(n41) );
  GTECH_AOI21 U45 ( .A(n43), .B(ENABLE), .C(n44), .Z(n40) );
  GTECH_OR_NOT U46 ( .A(n45), .B(n39), .Z(n44) );
  GTECH_OA21 U47 ( .A(ENABLE), .B(n43), .C(n42), .Z(n45) );
  GTECH_XOR2 U48 ( .A(n46), .B(n36), .Z(n42) );
  GTECH_AO21 U49 ( .A(n47), .B(n48), .C(n49), .Z(n43) );
  GTECH_NAND2 U50 ( .A(n50), .B(n51), .Z(N29) );
  GTECH_MUX2 U51 ( .A(n52), .B(n53), .S(n36), .Z(n50) );
  GTECH_OA21 U52 ( .A(n39), .B(n54), .C(n55), .Z(n53) );
  GTECH_NAND3 U53 ( .A(n37), .B(n2), .C(n56), .Z(n55) );
  GTECH_NOT U54 ( .A(n57), .Z(n56) );
  GTECH_OA21 U55 ( .A(n49), .B(n39), .C(n58), .Z(n52) );
  GTECH_AO21 U56 ( .A(n37), .B(n2), .C(n57), .Z(n58) );
  GTECH_NAND2 U57 ( .A(n59), .B(n51), .Z(N28) );
  GTECH_MUX2 U58 ( .A(n57), .B(n39), .S(n47), .Z(n59) );
  GTECH_NOT U59 ( .A(n46), .Z(n47) );
  GTECH_AO21 U60 ( .A(n37), .B(n2), .C(n49), .Z(n46) );
  GTECH_NAND2 U61 ( .A(n51), .B(n60), .Z(N27) );
  GTECH_AO21 U62 ( .A(n39), .B(n57), .C(n61), .Z(n60) );
  GTECH_OR_NOT U63 ( .A(n38), .B(n62), .Z(n57) );
  GTECH_NAND3 U64 ( .A(n2), .B(n35), .C(n36), .Z(n62) );
  GTECH_NAND2 U65 ( .A(UPDN), .B(ENABLE), .Z(n39) );
  GTECH_NAND4 U66 ( .A(n49), .B(n38), .C(n63), .D(n48), .Z(n51) );
  GTECH_NOT U67 ( .A(n36), .Z(n48) );
  GTECH_NOT U68 ( .A(n35), .Z(n63) );
  GTECH_NAND2 U69 ( .A(ENABLE), .B(n64), .Z(n38) );
  GTECH_NOT U70 ( .A(UPDN), .Z(n64) );
  GTECH_NOT U71 ( .A(n54), .Z(n49) );
  GTECH_NAND2 U72 ( .A(n61), .B(n65), .Z(n54) );
  GTECH_NOT U73 ( .A(n2), .Z(n65) );
  GTECH_NOT U74 ( .A(n37), .Z(n61) );
endmodule

