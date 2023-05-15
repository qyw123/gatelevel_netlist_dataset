
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;

  GTECH_AND3 U31 ( .A(n23), .B(n24), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U32 ( .A(n23), .B(n25), .Z(out[6]) );
  GTECH_MUX2 U33 ( .A(in[7]), .B(in[6]), .S(n24), .Z(n25) );
  GTECH_MUX2 U34 ( .A(n26), .B(n27), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U35 ( .A(n23), .B(in[6]), .Z(n27) );
  GTECH_AND2 U36 ( .A(n28), .B(n29), .Z(n26) );
  GTECH_NOT U37 ( .A(n30), .Z(out[4]) );
  GTECH_MUX2 U38 ( .A(n31), .B(n32), .S(ctrl[0]), .Z(n30) );
  GTECH_OR_NOT U39 ( .A(ctrl[2]), .B(n28), .Z(n32) );
  GTECH_NOT U40 ( .A(n33), .Z(out[3]) );
  GTECH_MUX2 U41 ( .A(n34), .B(n31), .S(ctrl[0]), .Z(n33) );
  GTECH_OR_NOT U42 ( .A(ctrl[2]), .B(n35), .Z(n31) );
  GTECH_MUX2 U43 ( .A(in[6]), .B(in[4]), .S(n36), .Z(n35) );
  GTECH_NOT U44 ( .A(n37), .Z(out[2]) );
  GTECH_MUX2 U45 ( .A(n34), .B(n38), .S(n24), .Z(n37) );
  GTECH_NOT U46 ( .A(ctrl[0]), .Z(n24) );
  GTECH_AOI222 U47 ( .A(in[3]), .B(n23), .C(n39), .D(in[7]), .E(n40), .F(in[5]), .Z(n34) );
  GTECH_NOT U48 ( .A(n41), .Z(out[1]) );
  GTECH_MUX2 U49 ( .A(n42), .B(n38), .S(ctrl[0]), .Z(n41) );
  GTECH_AOI222 U50 ( .A(in[2]), .B(n23), .C(n39), .D(in[6]), .E(in[4]), .F(n40), .Z(n38) );
  GTECH_MUX2 U51 ( .A(n43), .B(n44), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U52 ( .A(n42), .Z(n44) );
  GTECH_AOI222 U53 ( .A(ctrl[2]), .B(n28), .C(in[3]), .D(n40), .E(in[1]), .F(
        n23), .Z(n42) );
  GTECH_MUX2 U54 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n28) );
  GTECH_OR2 U55 ( .A(n45), .B(n46), .Z(n43) );
  GTECH_AO21 U56 ( .A(n39), .B(in[4]), .C(n47), .Z(n46) );
  GTECH_AND3 U57 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n47) );
  GTECH_AND_NOT U58 ( .A(n36), .B(n29), .Z(n39) );
  GTECH_AO22 U59 ( .A(in[0]), .B(n23), .C(n40), .D(in[2]), .Z(n45) );
  GTECH_AND_NOT U60 ( .A(n29), .B(n36), .Z(n40) );
  GTECH_NOT U61 ( .A(ctrl[2]), .Z(n29) );
  GTECH_AND_NOT U62 ( .A(n36), .B(ctrl[2]), .Z(n23) );
  GTECH_NOT U63 ( .A(ctrl[1]), .Z(n36) );
endmodule

