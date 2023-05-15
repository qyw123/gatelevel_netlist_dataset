
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n2, n3, n30, n27, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;

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
  GTECH_OR_NOT U38 ( .A(n34), .B(n35), .Z(N55) );
  GTECH_OAI21 U39 ( .A(n32), .B(n36), .C(n37), .Z(N31) );
  GTECH_NAND3 U40 ( .A(n38), .B(n34), .C(n39), .Z(n37) );
  GTECH_AND_NOT U41 ( .A(n40), .B(n41), .Z(n36) );
  GTECH_AND2 U42 ( .A(n39), .B(ENABLE), .Z(n41) );
  GTECH_AND2 U43 ( .A(n42), .B(n43), .Z(n40) );
  GTECH_OAI21 U44 ( .A(n39), .B(ENABLE), .C(n38), .Z(n43) );
  GTECH_OAI21 U45 ( .A(n33), .B(n44), .C(n45), .Z(n38) );
  GTECH_XOR2 U46 ( .A(n44), .B(n33), .Z(n39) );
  GTECH_OAI21 U47 ( .A(n46), .B(n47), .C(n48), .Z(N29) );
  GTECH_AOI21 U48 ( .A(n49), .B(n34), .C(n50), .Z(n48) );
  GTECH_NOT U49 ( .A(n42), .Z(n34) );
  GTECH_XOR2 U50 ( .A(n45), .B(n33), .Z(n49) );
  GTECH_XOR2 U51 ( .A(n33), .B(n51), .Z(n47) );
  GTECH_AND2 U52 ( .A(n2), .B(n3), .Z(n51) );
  GTECH_OR_NOT U53 ( .A(n50), .B(n52), .Z(N28) );
  GTECH_MUX2 U54 ( .A(n42), .B(n46), .S(n44), .Z(n52) );
  GTECH_XOR2 U55 ( .A(n53), .B(n3), .Z(n44) );
  GTECH_NOT U56 ( .A(n54), .Z(n50) );
  GTECH_OAI21 U57 ( .A(n55), .B(n53), .C(n54), .Z(N27) );
  GTECH_NAND4 U58 ( .A(n56), .B(n35), .C(n57), .D(n58), .Z(n54) );
  GTECH_NOT U59 ( .A(n33), .Z(n58) );
  GTECH_NOT U60 ( .A(n32), .Z(n57) );
  GTECH_NOT U61 ( .A(n45), .Z(n56) );
  GTECH_OR_NOT U62 ( .A(n3), .B(n53), .Z(n45) );
  GTECH_NOT U63 ( .A(n2), .Z(n53) );
  GTECH_AND2 U64 ( .A(n42), .B(n46), .Z(n55) );
  GTECH_OR_NOT U65 ( .A(n35), .B(n59), .Z(n46) );
  GTECH_NAND3 U66 ( .A(n3), .B(n33), .C(n32), .Z(n59) );
  GTECH_OR_NOT U67 ( .A(UPDN), .B(ENABLE), .Z(n35) );
  GTECH_OR_NOT U68 ( .A(n60), .B(UPDN), .Z(n42) );
  GTECH_NOT U69 ( .A(ENABLE), .Z(n60) );
endmodule

