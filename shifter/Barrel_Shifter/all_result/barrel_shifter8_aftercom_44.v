
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  GTECH_NOT U33 ( .A(n25), .Z(out[7]) );
  GTECH_NAND3 U34 ( .A(in[7]), .B(n26), .C(n27), .Z(n25) );
  GTECH_AND2 U35 ( .A(n28), .B(n27), .Z(out[6]) );
  GTECH_MUX2 U36 ( .A(in[7]), .B(in[6]), .S(n26), .Z(n28) );
  GTECH_MUX2 U37 ( .A(n29), .B(n30), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U38 ( .A(in[6]), .B(n27), .Z(n30) );
  GTECH_AND2 U39 ( .A(n31), .B(n32), .Z(n29) );
  GTECH_NOT U40 ( .A(ctrl[2]), .Z(n32) );
  GTECH_NOT U41 ( .A(n33), .Z(out[4]) );
  GTECH_MUX2 U42 ( .A(n34), .B(n35), .S(ctrl[0]), .Z(n33) );
  GTECH_OR_NOT U43 ( .A(ctrl[2]), .B(n31), .Z(n35) );
  GTECH_NOT U44 ( .A(n36), .Z(out[3]) );
  GTECH_MUX2 U45 ( .A(n37), .B(n34), .S(ctrl[0]), .Z(n36) );
  GTECH_AOI22 U46 ( .A(in[6]), .B(n38), .C(n27), .D(in[4]), .Z(n34) );
  GTECH_NOT U47 ( .A(n39), .Z(out[2]) );
  GTECH_MUX2 U48 ( .A(n37), .B(n40), .S(n26), .Z(n39) );
  GTECH_NOT U49 ( .A(ctrl[0]), .Z(n26) );
  GTECH_AOI222 U50 ( .A(in[3]), .B(n27), .C(n41), .D(in[7]), .E(in[5]), .F(n38), .Z(n37) );
  GTECH_NOT U51 ( .A(n42), .Z(out[1]) );
  GTECH_MUX2 U52 ( .A(n43), .B(n40), .S(ctrl[0]), .Z(n42) );
  GTECH_AOI222 U53 ( .A(in[2]), .B(n27), .C(n41), .D(in[6]), .E(in[4]), .F(n38), .Z(n40) );
  GTECH_MUX2 U54 ( .A(n44), .B(n45), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U55 ( .A(n43), .Z(n45) );
  GTECH_AOI222 U56 ( .A(ctrl[2]), .B(n31), .C(in[3]), .D(n38), .E(in[1]), .F(
        n27), .Z(n43) );
  GTECH_MUX2 U57 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n31) );
  GTECH_OR_NOT U58 ( .A(n46), .B(n47), .Z(n44) );
  GTECH_AOI22 U59 ( .A(in[0]), .B(n27), .C(n38), .D(in[2]), .Z(n47) );
  GTECH_AND_NOT U60 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n38) );
  GTECH_NOR2 U61 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n27) );
  GTECH_AO21 U62 ( .A(in[4]), .B(n41), .C(n48), .Z(n46) );
  GTECH_NOT U63 ( .A(n49), .Z(n48) );
  GTECH_NAND3 U64 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n49) );
  GTECH_AND_NOT U65 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n41) );
endmodule

