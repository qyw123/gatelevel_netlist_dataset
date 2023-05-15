
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U31 ( .A(n24), .B(n22), .Z(out[6]) );
  GTECH_MUX2 U32 ( .A(in[7]), .B(in[6]), .S(n23), .Z(n24) );
  GTECH_MUX2 U33 ( .A(n25), .B(n26), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U34 ( .A(in[6]), .B(n22), .Z(n26) );
  GTECH_MUX2 U35 ( .A(n25), .B(n27), .S(n23), .Z(out[4]) );
  GTECH_AND_NOT U36 ( .A(n28), .B(ctrl[2]), .Z(n25) );
  GTECH_MUX2 U37 ( .A(n27), .B(n29), .S(n23), .Z(out[3]) );
  GTECH_NOT U38 ( .A(n30), .Z(n29) );
  GTECH_AO22 U39 ( .A(n22), .B(in[4]), .C(in[6]), .D(n31), .Z(n27) );
  GTECH_NOT U40 ( .A(n32), .Z(out[2]) );
  GTECH_MUX2 U41 ( .A(n30), .B(n33), .S(n23), .Z(n32) );
  GTECH_NOT U42 ( .A(ctrl[0]), .Z(n23) );
  GTECH_AOI222 U43 ( .A(in[3]), .B(n22), .C(n34), .D(in[7]), .E(in[5]), .F(n31), .Z(n30) );
  GTECH_NOT U44 ( .A(n35), .Z(out[1]) );
  GTECH_MUX2 U45 ( .A(n36), .B(n33), .S(ctrl[0]), .Z(n35) );
  GTECH_AOI222 U46 ( .A(in[2]), .B(n22), .C(n34), .D(in[6]), .E(in[4]), .F(n31), .Z(n33) );
  GTECH_MUX2 U47 ( .A(n37), .B(n38), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U48 ( .A(n36), .Z(n38) );
  GTECH_AOI222 U49 ( .A(ctrl[2]), .B(n28), .C(in[3]), .D(n31), .E(in[1]), .F(
        n22), .Z(n36) );
  GTECH_MUX2 U50 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n28) );
  GTECH_OR2 U51 ( .A(n39), .B(n40), .Z(n37) );
  GTECH_AO22 U52 ( .A(n31), .B(in[2]), .C(in[0]), .D(n22), .Z(n40) );
  GTECH_NOR2 U53 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n22) );
  GTECH_AND_NOT U54 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n31) );
  GTECH_AO21 U55 ( .A(in[4]), .B(n34), .C(n41), .Z(n39) );
  GTECH_AND3 U56 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n41) );
  GTECH_AND_NOT U57 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n34) );
endmodule

