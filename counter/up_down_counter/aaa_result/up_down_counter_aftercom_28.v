
module up_down_counter ( clk, ENABLE, UPDN, RST, VALUE );
  output [3:0] VALUE;
  input clk, ENABLE, UPDN, RST;
  wire   N27, N28, N29, N31, N55, n31, n34, n37, n38, n29, n30, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;

  GTECH_FJK3S counter_reg_0_ ( .J(n30), .K(n30), .TI(N27), .TE(N55), .CP(clk), 
        .CD(n38), .SD(n29), .Q(VALUE[0]), .QN(n41) );
  GTECH_FJK3S counter_reg_1_ ( .J(n30), .K(n30), .TI(N28), .TE(N55), .CP(clk), 
        .CD(n38), .SD(n29), .Q(VALUE[1]), .QN(n37) );
  GTECH_FJK3S counter_reg_3_ ( .J(n30), .K(n30), .TI(N31), .TE(N55), .CP(clk), 
        .CD(n38), .SD(n29), .Q(VALUE[3]), .QN(n34) );
  GTECH_FJK3S counter_reg_2_ ( .J(n30), .K(n30), .TI(N29), .TE(N55), .CP(clk), 
        .CD(n38), .SD(n29), .Q(VALUE[2]), .QN(n31) );
  GTECH_ZERO U44 ( .Z(n30) );
  GTECH_ONE U45 ( .Z(n29) );
  GTECH_NOT U46 ( .A(RST), .Z(n38) );
  GTECH_NAND2 U47 ( .A(n42), .B(n43), .Z(N55) );
  GTECH_OAI22 U48 ( .A(n34), .B(n44), .C(n42), .D(n45), .Z(N31) );
  GTECH_NAND2 U49 ( .A(n46), .B(n47), .Z(n45) );
  GTECH_OA21 U50 ( .A(n48), .B(n49), .C(n50), .Z(n44) );
  GTECH_AND_NOT U51 ( .A(n42), .B(n51), .Z(n50) );
  GTECH_OA21 U52 ( .A(ENABLE), .B(n47), .C(n46), .Z(n51) );
  GTECH_XOR2 U53 ( .A(n52), .B(n31), .Z(n46) );
  GTECH_NOT U54 ( .A(n47), .Z(n49) );
  GTECH_AO21 U55 ( .A(n53), .B(n54), .C(n55), .Z(n47) );
  GTECH_NOT U56 ( .A(ENABLE), .Z(n48) );
  GTECH_NOT U57 ( .A(n56), .Z(N29) );
  GTECH_OA21 U58 ( .A(n57), .B(n58), .C(n59), .Z(n56) );
  GTECH_OA21 U59 ( .A(n42), .B(n60), .C(n61), .Z(n59) );
  GTECH_XNOR2 U60 ( .A(n62), .B(n31), .Z(n60) );
  GTECH_XNOR2 U61 ( .A(n63), .B(n31), .Z(n58) );
  GTECH_NAND2 U62 ( .A(n64), .B(n61), .Z(N28) );
  GTECH_MUX2 U63 ( .A(n57), .B(n42), .S(n53), .Z(n64) );
  GTECH_NOT U64 ( .A(n52), .Z(n53) );
  GTECH_NAND2 U65 ( .A(n63), .B(n62), .Z(n52) );
  GTECH_NAND2 U66 ( .A(n61), .B(n65), .Z(N27) );
  GTECH_AO21 U67 ( .A(n42), .B(n57), .C(n66), .Z(n65) );
  GTECH_OR_NOT U68 ( .A(n43), .B(n67), .Z(n57) );
  GTECH_OR_NOT U69 ( .A(n63), .B(n68), .Z(n67) );
  GTECH_AND2 U70 ( .A(n31), .B(n34), .Z(n68) );
  GTECH_NAND2 U71 ( .A(n41), .B(n37), .Z(n63) );
  GTECH_NAND2 U72 ( .A(UPDN), .B(ENABLE), .Z(n42) );
  GTECH_NAND4 U73 ( .A(n55), .B(n43), .C(n54), .D(n69), .Z(n61) );
  GTECH_NOT U74 ( .A(n34), .Z(n69) );
  GTECH_NOT U75 ( .A(n31), .Z(n54) );
  GTECH_NAND2 U76 ( .A(ENABLE), .B(n70), .Z(n43) );
  GTECH_NOT U77 ( .A(UPDN), .Z(n70) );
  GTECH_NOT U78 ( .A(n62), .Z(n55) );
  GTECH_NAND2 U79 ( .A(n71), .B(n66), .Z(n62) );
  GTECH_NOT U80 ( .A(n41), .Z(n66) );
  GTECH_NOT U81 ( .A(n37), .Z(n71) );
endmodule

