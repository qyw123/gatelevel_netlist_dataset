
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n2, n3, n34, n31, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63;

  GTECH_FJK2S counter_reg_0_ ( .J(n31), .K(n31), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[0]), .QN(n2) );
  GTECH_FJK2S counter_reg_1_ ( .J(n31), .K(n31), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[1]), .QN(n3) );
  GTECH_FJK2S counter_reg_2_ ( .J(n31), .K(n31), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[2]), .QN(n37) );
  GTECH_FJK2S counter_reg_3_ ( .J(n31), .K(n31), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n34), .Q(VALUE[3]), .QN(n36) );
  GTECH_ZERO U40 ( .Z(n31) );
  GTECH_NOT U41 ( .A(RST), .Z(n34) );
  GTECH_OAI21 U42 ( .A(n36), .B(n38), .C(n39), .Z(N31) );
  GTECH_NAND3 U43 ( .A(n40), .B(n41), .C(n42), .Z(n39) );
  GTECH_NOT U44 ( .A(n43), .Z(n41) );
  GTECH_AND3 U45 ( .A(n43), .B(n44), .C(n45), .Z(n38) );
  GTECH_OR_NOT U46 ( .A(n46), .B(n40), .Z(n45) );
  GTECH_OAI21 U47 ( .A(ENABLE), .B(n40), .C(n42), .Z(n44) );
  GTECH_XOR2 U48 ( .A(n47), .B(n37), .Z(n42) );
  GTECH_OAI21 U49 ( .A(n37), .B(n47), .C(n48), .Z(n40) );
  GTECH_OR_NOT U50 ( .A(n49), .B(n50), .Z(N29) );
  GTECH_MUX2 U51 ( .A(n51), .B(n52), .S(n37), .Z(n50) );
  GTECH_OR_NOT U52 ( .A(n43), .B(n53), .Z(n52) );
  GTECH_OA21 U53 ( .A(n53), .B(n43), .C(n54), .Z(n51) );
  GTECH_AO21 U54 ( .A(n3), .B(n2), .C(n55), .Z(n54) );
  GTECH_OAI21 U55 ( .A(n55), .B(n56), .C(n57), .Z(n49) );
  GTECH_NOT U56 ( .A(n58), .Z(N28) );
  GTECH_AND2 U57 ( .A(n57), .B(n59), .Z(n58) );
  GTECH_MUX2 U58 ( .A(n43), .B(n55), .S(n47), .Z(n59) );
  GTECH_XOR2 U59 ( .A(n60), .B(n3), .Z(n47) );
  GTECH_OAI21 U60 ( .A(n61), .B(n60), .C(n57), .Z(N27) );
  GTECH_OR3 U61 ( .A(n37), .B(n62), .C(n36), .Z(n57) );
  GTECH_OAI21 U62 ( .A(n46), .B(UPDN), .C(n53), .Z(n62) );
  GTECH_NOT U63 ( .A(n48), .Z(n53) );
  GTECH_OR_NOT U64 ( .A(n3), .B(n60), .Z(n48) );
  GTECH_NOT U65 ( .A(n2), .Z(n60) );
  GTECH_AND2 U66 ( .A(n55), .B(n43), .Z(n61) );
  GTECH_OR_NOT U67 ( .A(n46), .B(UPDN), .Z(n43) );
  GTECH_OR3 U68 ( .A(UPDN), .B(n63), .C(n46), .Z(n55) );
  GTECH_NOT U69 ( .A(ENABLE), .Z(n46) );
  GTECH_AND_NOT U70 ( .A(n36), .B(n56), .Z(n63) );
  GTECH_NAND3 U71 ( .A(n2), .B(n3), .C(n37), .Z(n56) );
endmodule

