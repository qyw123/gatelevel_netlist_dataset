
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n28, n31, n34, n35, n26, n27, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  GTECH_FJK3S counter_reg_0_ ( .J(n27), .K(n27), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n35), .SD(n26), .Q(VALUE[0]), .QN(n38) );
  GTECH_FJK3S counter_reg_1_ ( .J(n27), .K(n27), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n35), .SD(n26), .Q(VALUE[1]), .QN(n34) );
  GTECH_FJK3S counter_reg_2_ ( .J(n27), .K(n27), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n35), .SD(n26), .Q(VALUE[2]), .QN(n31) );
  GTECH_FJK3S counter_reg_3_ ( .J(n27), .K(n27), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n35), .SD(n26), .Q(VALUE[3]), .QN(n28) );
  GTECH_ZERO U41 ( .Z(n27) );
  GTECH_ONE U42 ( .Z(n26) );
  GTECH_NOT U43 ( .A(RST), .Z(n35) );
  GTECH_NAND2 U44 ( .A(n39), .B(n40), .Z(N55) );
  GTECH_OAI21 U45 ( .A(n28), .B(n41), .C(n42), .Z(N31) );
  GTECH_NAND3 U46 ( .A(n43), .B(n44), .C(n45), .Z(n42) );
  GTECH_AOI21 U47 ( .A(n43), .B(ENABLE), .C(n46), .Z(n41) );
  GTECH_NAND2 U48 ( .A(n47), .B(n40), .Z(n46) );
  GTECH_OAI21 U49 ( .A(ENABLE), .B(n43), .C(n44), .Z(n47) );
  GTECH_OAI21 U50 ( .A(n31), .B(n48), .C(n49), .Z(n44) );
  GTECH_XOR2 U51 ( .A(n48), .B(n31), .Z(n43) );
  GTECH_NAND2 U52 ( .A(n50), .B(n51), .Z(N29) );
  GTECH_MUX2 U53 ( .A(n52), .B(n53), .S(n31), .Z(n50) );
  GTECH_OA22 U54 ( .A(n54), .B(n55), .C(n40), .D(n49), .Z(n53) );
  GTECH_NAND2 U55 ( .A(n38), .B(n34), .Z(n55) );
  GTECH_OA22 U56 ( .A(n56), .B(n54), .C(n57), .D(n40), .Z(n52) );
  GTECH_AND2 U57 ( .A(n38), .B(n34), .Z(n56) );
  GTECH_NAND2 U58 ( .A(n58), .B(n51), .Z(N28) );
  GTECH_MUX2 U59 ( .A(n40), .B(n54), .S(n48), .Z(n58) );
  GTECH_OAI21 U60 ( .A(n59), .B(n60), .C(n49), .Z(n48) );
  GTECH_NAND2 U61 ( .A(n51), .B(n61), .Z(N27) );
  GTECH_OAI21 U62 ( .A(n62), .B(n45), .C(n38), .Z(n61) );
  GTECH_NOT U63 ( .A(n40), .Z(n45) );
  GTECH_NAND2 U64 ( .A(UPDN), .B(ENABLE), .Z(n40) );
  GTECH_NOT U65 ( .A(n54), .Z(n62) );
  GTECH_OR_NOT U66 ( .A(n39), .B(n63), .Z(n54) );
  GTECH_NAND3 U67 ( .A(n34), .B(n28), .C(n31), .Z(n63) );
  GTECH_NAND4 U68 ( .A(n57), .B(n39), .C(n64), .D(n65), .Z(n51) );
  GTECH_NOT U69 ( .A(n31), .Z(n65) );
  GTECH_NOT U70 ( .A(n28), .Z(n64) );
  GTECH_NAND2 U71 ( .A(ENABLE), .B(n66), .Z(n39) );
  GTECH_NOT U72 ( .A(UPDN), .Z(n66) );
  GTECH_NOT U73 ( .A(n49), .Z(n57) );
  GTECH_NAND2 U74 ( .A(n60), .B(n59), .Z(n49) );
  GTECH_NOT U75 ( .A(n34), .Z(n59) );
  GTECH_NOT U76 ( .A(n38), .Z(n60) );
endmodule

