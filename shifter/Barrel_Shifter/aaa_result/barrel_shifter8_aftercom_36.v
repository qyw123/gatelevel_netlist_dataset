
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_NOR3 U32 ( .A(n24), .B(ctrl[0]), .C(n25), .Z(out[7]) );
  GTECH_NOT U33 ( .A(in[7]), .Z(n24) );
  GTECH_AND2 U34 ( .A(n26), .B(n27), .Z(out[6]) );
  GTECH_MUX2 U35 ( .A(in[7]), .B(in[6]), .S(n28), .Z(n26) );
  GTECH_MUX2 U36 ( .A(n29), .B(n30), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U37 ( .A(in[6]), .B(n27), .Z(n30) );
  GTECH_AND_NOT U38 ( .A(n31), .B(ctrl[2]), .Z(n29) );
  GTECH_NOT U39 ( .A(n32), .Z(out[4]) );
  GTECH_MUX2 U40 ( .A(n33), .B(n34), .S(ctrl[0]), .Z(n32) );
  GTECH_OR_NOT U41 ( .A(ctrl[2]), .B(n31), .Z(n34) );
  GTECH_NOT U42 ( .A(n35), .Z(out[3]) );
  GTECH_MUX2 U43 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_AOI2N2 U44 ( .A(in[6]), .B(n37), .C(n25), .D(n38), .Z(n33) );
  GTECH_NOT U45 ( .A(n39), .Z(out[2]) );
  GTECH_MUX2 U46 ( .A(n36), .B(n40), .S(n28), .Z(n39) );
  GTECH_NOT U47 ( .A(ctrl[0]), .Z(n28) );
  GTECH_AOI222 U48 ( .A(in[3]), .B(n27), .C(n41), .D(in[7]), .E(n37), .F(in[5]), .Z(n36) );
  GTECH_NOT U49 ( .A(n42), .Z(out[1]) );
  GTECH_MUX2 U50 ( .A(n43), .B(n40), .S(ctrl[0]), .Z(n42) );
  GTECH_AOI222 U51 ( .A(in[2]), .B(n27), .C(n41), .D(in[6]), .E(in[4]), .F(n37), .Z(n40) );
  GTECH_MUX2 U52 ( .A(n44), .B(n45), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U53 ( .A(n43), .Z(n45) );
  GTECH_AOI222 U54 ( .A(ctrl[2]), .B(n31), .C(in[3]), .D(n37), .E(in[1]), .F(
        n27), .Z(n43) );
  GTECH_MUX2 U55 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n31) );
  GTECH_NAND2 U56 ( .A(n46), .B(n47), .Z(n44) );
  GTECH_OA21 U57 ( .A(n38), .B(n48), .C(n49), .Z(n47) );
  GTECH_NAND3 U58 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n49) );
  GTECH_NOT U59 ( .A(n41), .Z(n48) );
  GTECH_AND_NOT U60 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n41) );
  GTECH_NOT U61 ( .A(in[4]), .Z(n38) );
  GTECH_AOI22 U62 ( .A(in[0]), .B(n27), .C(n37), .D(in[2]), .Z(n46) );
  GTECH_AND_NOT U63 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n37) );
  GTECH_NOT U64 ( .A(n25), .Z(n27) );
  GTECH_OR2 U65 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n25) );
endmodule

