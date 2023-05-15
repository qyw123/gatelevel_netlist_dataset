
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_NOT U32 ( .A(n24), .Z(out[7]) );
  GTECH_NAND3 U33 ( .A(in[7]), .B(n25), .C(n26), .Z(n24) );
  GTECH_AND2 U34 ( .A(n26), .B(n27), .Z(out[6]) );
  GTECH_MUX2 U35 ( .A(in[7]), .B(in[6]), .S(n25), .Z(n27) );
  GTECH_MUX2 U36 ( .A(n28), .B(n29), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U37 ( .A(n26), .B(in[6]), .Z(n29) );
  GTECH_AND_NOT U38 ( .A(n30), .B(ctrl[2]), .Z(n28) );
  GTECH_NOT U39 ( .A(n31), .Z(out[4]) );
  GTECH_MUX2 U40 ( .A(n32), .B(n33), .S(ctrl[0]), .Z(n31) );
  GTECH_OR_NOT U41 ( .A(ctrl[2]), .B(n30), .Z(n33) );
  GTECH_NOT U42 ( .A(n34), .Z(out[3]) );
  GTECH_MUX2 U43 ( .A(n35), .B(n32), .S(ctrl[0]), .Z(n34) );
  GTECH_OR_NOT U44 ( .A(ctrl[2]), .B(n36), .Z(n32) );
  GTECH_MUX2 U45 ( .A(in[6]), .B(in[4]), .S(n37), .Z(n36) );
  GTECH_NOT U46 ( .A(n38), .Z(out[2]) );
  GTECH_MUX2 U47 ( .A(n35), .B(n39), .S(n25), .Z(n38) );
  GTECH_NOT U48 ( .A(ctrl[0]), .Z(n25) );
  GTECH_AOI222 U49 ( .A(in[3]), .B(n26), .C(n40), .D(in[7]), .E(n41), .F(in[5]), .Z(n35) );
  GTECH_NOT U50 ( .A(n42), .Z(out[1]) );
  GTECH_MUX2 U51 ( .A(n43), .B(n39), .S(ctrl[0]), .Z(n42) );
  GTECH_AOI222 U52 ( .A(in[2]), .B(n26), .C(n40), .D(in[6]), .E(in[4]), .F(n41), .Z(n39) );
  GTECH_MUX2 U53 ( .A(n44), .B(n45), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U54 ( .A(n43), .Z(n45) );
  GTECH_AOI222 U55 ( .A(ctrl[2]), .B(n30), .C(in[3]), .D(n41), .E(in[1]), .F(
        n26), .Z(n43) );
  GTECH_MUX2 U56 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n30) );
  GTECH_OR_NOT U57 ( .A(n46), .B(n47), .Z(n44) );
  GTECH_AOI21 U58 ( .A(n40), .B(in[4]), .C(n48), .Z(n47) );
  GTECH_NOT U59 ( .A(n49), .Z(n48) );
  GTECH_NAND3 U60 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n49) );
  GTECH_AND_NOT U61 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n40) );
  GTECH_AO22 U62 ( .A(in[0]), .B(n26), .C(n41), .D(in[2]), .Z(n46) );
  GTECH_AND_NOT U63 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n41) );
  GTECH_AND_NOT U64 ( .A(n37), .B(ctrl[2]), .Z(n26) );
  GTECH_NOT U65 ( .A(ctrl[1]), .Z(n37) );
endmodule

