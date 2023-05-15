
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, n30, n33, n36, n37, n28, n29, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66;

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
  GTECH_OAI22 U44 ( .A(n41), .B(n42), .C(n30), .D(n43), .Z(N31) );
  GTECH_OA21 U45 ( .A(n44), .B(n41), .C(n45), .Z(n43) );
  GTECH_AND2 U46 ( .A(n46), .B(n47), .Z(n45) );
  GTECH_OAI21 U47 ( .A(ENABLE), .B(n48), .C(n49), .Z(n47) );
  GTECH_OR_NOT U48 ( .A(n46), .B(n49), .Z(n42) );
  GTECH_XOR2 U49 ( .A(n50), .B(n33), .Z(n49) );
  GTECH_NOT U50 ( .A(n48), .Z(n41) );
  GTECH_OAI21 U51 ( .A(n33), .B(n50), .C(n51), .Z(n48) );
  GTECH_OAI21 U52 ( .A(n46), .B(n52), .C(n53), .Z(N29) );
  GTECH_OA21 U53 ( .A(n54), .B(n55), .C(n56), .Z(n53) );
  GTECH_XOR2 U54 ( .A(n33), .B(n57), .Z(n55) );
  GTECH_XOR2 U55 ( .A(n33), .B(n58), .Z(n52) );
  GTECH_NAND2 U56 ( .A(n59), .B(n56), .Z(N28) );
  GTECH_MUX2 U57 ( .A(n46), .B(n54), .S(n50), .Z(n59) );
  GTECH_NAND2 U58 ( .A(n60), .B(n51), .Z(n50) );
  GTECH_NAND2 U59 ( .A(n56), .B(n61), .Z(N27) );
  GTECH_NAND2 U60 ( .A(n40), .B(n62), .Z(n61) );
  GTECH_NAND2 U61 ( .A(n46), .B(n54), .Z(n62) );
  GTECH_OR3 U62 ( .A(UPDN), .B(n63), .C(n44), .Z(n54) );
  GTECH_AND3 U63 ( .A(n57), .B(n33), .C(n30), .Z(n63) );
  GTECH_NOT U64 ( .A(n60), .Z(n57) );
  GTECH_NAND2 U65 ( .A(n40), .B(n36), .Z(n60) );
  GTECH_NAND2 U66 ( .A(UPDN), .B(ENABLE), .Z(n46) );
  GTECH_OR3 U67 ( .A(n33), .B(n30), .C(n64), .Z(n56) );
  GTECH_OAI21 U68 ( .A(UPDN), .B(n44), .C(n58), .Z(n64) );
  GTECH_NOT U69 ( .A(n51), .Z(n58) );
  GTECH_NAND2 U70 ( .A(n65), .B(n66), .Z(n51) );
  GTECH_NOT U71 ( .A(n36), .Z(n66) );
  GTECH_NOT U72 ( .A(n40), .Z(n65) );
  GTECH_NOT U73 ( .A(ENABLE), .Z(n44) );
endmodule

