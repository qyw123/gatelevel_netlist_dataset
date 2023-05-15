
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n30, n33, n36, n37, n28, n29, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65;

  GTECH_FJK3S counter_reg_0_ ( .J(n29), .K(n29), .TI(N27), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[0]), .QN(n40) );
  GTECH_FJK3S counter_reg_1_ ( .J(n29), .K(n29), .TI(N28), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[1]), .QN(n36) );
  GTECH_FJK3S counter_reg_2_ ( .J(n29), .K(n29), .TI(N29), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[2]), .QN(n33) );
  GTECH_FJK3S counter_reg_3_ ( .J(n29), .K(n29), .TI(N31), .TE(ENABLE), .CP(
        clk), .CD(n37), .SD(n28), .Q(VALUE[3]), .QN(n30) );
  GTECH_ZERO U41 ( .Z(n29) );
  GTECH_ONE U42 ( .Z(n28) );
  GTECH_NOT U43 ( .A(RST), .Z(n37) );
  GTECH_OAI21 U44 ( .A(n30), .B(n41), .C(n42), .Z(N31) );
  GTECH_NAND3 U45 ( .A(n43), .B(n44), .C(n45), .Z(n42) );
  GTECH_AND3 U46 ( .A(n46), .B(n47), .C(n48), .Z(n41) );
  GTECH_NAND2 U47 ( .A(n43), .B(ENABLE), .Z(n48) );
  GTECH_OAI21 U48 ( .A(ENABLE), .B(n43), .C(n45), .Z(n47) );
  GTECH_XOR2 U49 ( .A(n49), .B(n33), .Z(n45) );
  GTECH_OAI21 U50 ( .A(n33), .B(n49), .C(n50), .Z(n43) );
  GTECH_OAI21 U51 ( .A(n46), .B(n51), .C(n52), .Z(N29) );
  GTECH_OA21 U52 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_XOR2 U53 ( .A(n33), .B(n56), .Z(n53) );
  GTECH_XNOR2 U54 ( .A(n33), .B(n50), .Z(n51) );
  GTECH_NAND2 U55 ( .A(n57), .B(n55), .Z(N28) );
  GTECH_MUX2 U56 ( .A(n46), .B(n54), .S(n49), .Z(n57) );
  GTECH_NAND2 U57 ( .A(n58), .B(n50), .Z(n49) );
  GTECH_NAND2 U58 ( .A(n55), .B(n59), .Z(N27) );
  GTECH_OAI21 U59 ( .A(n44), .B(n60), .C(n40), .Z(n59) );
  GTECH_NOT U60 ( .A(n54), .Z(n60) );
  GTECH_NAND3 U61 ( .A(n61), .B(n62), .C(ENABLE), .Z(n54) );
  GTECH_NOT U62 ( .A(UPDN), .Z(n62) );
  GTECH_NAND3 U63 ( .A(n56), .B(n33), .C(n30), .Z(n61) );
  GTECH_NOT U64 ( .A(n58), .Z(n56) );
  GTECH_NAND2 U65 ( .A(n40), .B(n36), .Z(n58) );
  GTECH_NOT U66 ( .A(n46), .Z(n44) );
  GTECH_NAND2 U67 ( .A(UPDN), .B(ENABLE), .Z(n46) );
  GTECH_OR4 U68 ( .A(n63), .B(n50), .C(n33), .D(n30), .Z(n55) );
  GTECH_NAND2 U69 ( .A(n64), .B(n65), .Z(n50) );
  GTECH_NOT U70 ( .A(n36), .Z(n65) );
  GTECH_NOT U71 ( .A(n40), .Z(n64) );
  GTECH_AND_NOT U72 ( .A(ENABLE), .B(UPDN), .Z(n63) );
endmodule

