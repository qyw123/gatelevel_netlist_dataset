
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n30, n27, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;

  GTECH_FJK2S counter_reg_0_ ( .J(n27), .K(n27), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n30), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n27), .K(n27), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n30), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n27), .K(n27), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n30), .Q(VALUE[2]), .QN(n33) );
  GTECH_FJK2S counter_reg_3_ ( .J(n27), .K(n27), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n30), .Q(VALUE[3]), .QN(n32) );
  GTECH_ZERO U36 ( .Z(n27) );
  GTECH_NOT U37 ( .A(RST), .Z(n30) );
  GTECH_NAND2 U38 ( .A(n34), .B(n35), .Z(N55) );
  GTECH_OAI21 U39 ( .A(n32), .B(n36), .C(n37), .Z(N31) );
  GTECH_NAND3 U40 ( .A(n38), .B(n39), .C(n40), .Z(n37) );
  GTECH_AOI21 U41 ( .A(n38), .B(ENABLE), .C(n41), .Z(n36) );
  GTECH_NAND2 U42 ( .A(n42), .B(n35), .Z(n41) );
  GTECH_OAI21 U43 ( .A(ENABLE), .B(n38), .C(n39), .Z(n42) );
  GTECH_OAI21 U44 ( .A(n33), .B(n43), .C(n44), .Z(n39) );
  GTECH_XOR2 U45 ( .A(n43), .B(n33), .Z(n38) );
  GTECH_OAI21 U46 ( .A(n45), .B(n46), .C(n47), .Z(N29) );
  GTECH_AOI21 U47 ( .A(n48), .B(n40), .C(n49), .Z(n47) );
  GTECH_NOT U48 ( .A(n50), .Z(n49) );
  GTECH_XOR2 U49 ( .A(n44), .B(n33), .Z(n48) );
  GTECH_XOR2 U50 ( .A(n33), .B(n51), .Z(n46) );
  GTECH_AND2 U51 ( .A(n3), .B(n2), .Z(n51) );
  GTECH_NAND2 U52 ( .A(n52), .B(n50), .Z(N28) );
  GTECH_MUX2 U53 ( .A(n35), .B(n45), .S(n43), .Z(n52) );
  GTECH_OAI21 U54 ( .A(n53), .B(n54), .C(n44), .Z(n43) );
  GTECH_NAND2 U55 ( .A(n50), .B(n55), .Z(N27) );
  GTECH_OAI21 U56 ( .A(n56), .B(n40), .C(n2), .Z(n55) );
  GTECH_NOT U57 ( .A(n35), .Z(n40) );
  GTECH_NAND2 U58 ( .A(UPDN), .B(ENABLE), .Z(n35) );
  GTECH_NOT U59 ( .A(n45), .Z(n56) );
  GTECH_OR_NOT U60 ( .A(n34), .B(n57), .Z(n45) );
  GTECH_NAND3 U61 ( .A(n3), .B(n32), .C(n33), .Z(n57) );
  GTECH_NAND4 U62 ( .A(n58), .B(n34), .C(n59), .D(n60), .Z(n50) );
  GTECH_NOT U63 ( .A(n33), .Z(n60) );
  GTECH_NOT U64 ( .A(n32), .Z(n59) );
  GTECH_NAND2 U65 ( .A(ENABLE), .B(n61), .Z(n34) );
  GTECH_NOT U66 ( .A(UPDN), .Z(n61) );
  GTECH_NOT U67 ( .A(n44), .Z(n58) );
  GTECH_NAND2 U68 ( .A(n54), .B(n53), .Z(n44) );
  GTECH_NOT U69 ( .A(n2), .Z(n53) );
  GTECH_NOT U70 ( .A(n3), .Z(n54) );
endmodule

