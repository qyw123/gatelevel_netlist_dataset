
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48;

  GTECH_AND3 U34 ( .A(n26), .B(n27), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U35 ( .A(n28), .B(n26), .Z(out[6]) );
  GTECH_MUX2 U36 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n28) );
  GTECH_MUX2 U37 ( .A(n29), .B(n30), .S(n27), .Z(out[5]) );
  GTECH_AND_NOT U38 ( .A(n31), .B(ctrl[2]), .Z(n30) );
  GTECH_AND2 U39 ( .A(in[6]), .B(n26), .Z(n29) );
  GTECH_NOT U40 ( .A(n32), .Z(out[4]) );
  GTECH_MUX2 U41 ( .A(n33), .B(n34), .S(n27), .Z(n32) );
  GTECH_OR_NOT U42 ( .A(ctrl[2]), .B(n31), .Z(n33) );
  GTECH_NOT U43 ( .A(n35), .Z(out[3]) );
  GTECH_MUX2 U44 ( .A(n34), .B(n36), .S(n27), .Z(n35) );
  GTECH_AOI22 U45 ( .A(in[6]), .B(n37), .C(n26), .D(in[4]), .Z(n34) );
  GTECH_NOT U46 ( .A(n38), .Z(out[2]) );
  GTECH_MUX2 U47 ( .A(n39), .B(n36), .S(ctrl[0]), .Z(n38) );
  GTECH_AOI222 U48 ( .A(in[3]), .B(n26), .C(n40), .D(in[7]), .E(in[5]), .F(n37), .Z(n36) );
  GTECH_NOT U49 ( .A(n41), .Z(out[1]) );
  GTECH_MUX2 U50 ( .A(n39), .B(n42), .S(n27), .Z(n41) );
  GTECH_AOI222 U51 ( .A(in[2]), .B(n26), .C(n40), .D(in[6]), .E(in[4]), .F(n37), .Z(n39) );
  GTECH_MUX2 U52 ( .A(n43), .B(n44), .S(n27), .Z(out[0]) );
  GTECH_NOT U53 ( .A(ctrl[0]), .Z(n27) );
  GTECH_OR_NOT U54 ( .A(n45), .B(n46), .Z(n44) );
  GTECH_AOI22 U55 ( .A(in[0]), .B(n26), .C(n37), .D(in[2]), .Z(n46) );
  GTECH_AO21 U56 ( .A(in[4]), .B(n40), .C(n47), .Z(n45) );
  GTECH_AND3 U57 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n47) );
  GTECH_AND2 U58 ( .A(ctrl[2]), .B(n48), .Z(n40) );
  GTECH_NOT U59 ( .A(n42), .Z(n43) );
  GTECH_AOI222 U60 ( .A(ctrl[2]), .B(n31), .C(in[3]), .D(n37), .E(in[1]), .F(
        n26), .Z(n42) );
  GTECH_AND_NOT U61 ( .A(n48), .B(ctrl[2]), .Z(n26) );
  GTECH_AND_NOT U62 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n37) );
  GTECH_MUX2 U63 ( .A(in[7]), .B(in[5]), .S(n48), .Z(n31) );
  GTECH_NOT U64 ( .A(ctrl[1]), .Z(n48) );
endmodule

