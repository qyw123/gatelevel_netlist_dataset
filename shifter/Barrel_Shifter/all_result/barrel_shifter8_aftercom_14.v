
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43;

  GTECH_AND3 U29 ( .A(n21), .B(n22), .C(in[7]), .Z(out[7]) );
  GTECH_ADD_AB U30 ( .A(n23), .B(n21), .COUT(out[6]) );
  GTECH_MUX2 U31 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n23) );
  GTECH_MUX2 U32 ( .A(n24), .B(n25), .S(n22), .Z(out[5]) );
  GTECH_AND_NOT U33 ( .A(n26), .B(ctrl[2]), .Z(n25) );
  GTECH_ADD_AB U34 ( .A(in[6]), .B(n21), .COUT(n24) );
  GTECH_NOT U35 ( .A(n27), .Z(out[4]) );
  GTECH_MUX2 U36 ( .A(n28), .B(n29), .S(n22), .Z(n27) );
  GTECH_OR_NOT U37 ( .A(ctrl[2]), .B(n26), .Z(n28) );
  GTECH_NOT U38 ( .A(n30), .Z(out[3]) );
  GTECH_MUX2 U39 ( .A(n29), .B(n31), .S(n22), .Z(n30) );
  GTECH_AOI22 U40 ( .A(in[6]), .B(n32), .C(n21), .D(in[4]), .Z(n29) );
  GTECH_NOT U41 ( .A(n33), .Z(out[2]) );
  GTECH_MUX2 U42 ( .A(n34), .B(n31), .S(ctrl[0]), .Z(n33) );
  GTECH_AOI222 U43 ( .A(in[3]), .B(n21), .C(n35), .D(in[7]), .E(n32), .F(in[5]), .Z(n31) );
  GTECH_NOT U44 ( .A(n36), .Z(out[1]) );
  GTECH_MUX2 U45 ( .A(n34), .B(n37), .S(n22), .Z(n36) );
  GTECH_AOI222 U46 ( .A(in[2]), .B(n21), .C(n35), .D(in[6]), .E(in[4]), .F(n32), .Z(n34) );
  GTECH_MUX2 U47 ( .A(n38), .B(n39), .S(n22), .Z(out[0]) );
  GTECH_NOT U48 ( .A(ctrl[0]), .Z(n22) );
  GTECH_OR_NOT U49 ( .A(n40), .B(n41), .Z(n39) );
  GTECH_AOI22 U50 ( .A(in[0]), .B(n21), .C(n32), .D(in[2]), .Z(n41) );
  GTECH_AO21 U51 ( .A(in[4]), .B(n35), .C(n42), .Z(n40) );
  GTECH_AND3 U52 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n42) );
  GTECH_ADD_AB U53 ( .A(ctrl[2]), .B(n43), .COUT(n35) );
  GTECH_NOT U54 ( .A(n37), .Z(n38) );
  GTECH_AOI222 U55 ( .A(ctrl[2]), .B(n26), .C(in[3]), .D(n32), .E(in[1]), .F(
        n21), .Z(n37) );
  GTECH_NOR2 U56 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n21) );
  GTECH_AND_NOT U57 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n32) );
  GTECH_MUX2 U58 ( .A(in[7]), .B(in[5]), .S(n43), .Z(n26) );
  GTECH_NOT U59 ( .A(ctrl[1]), .Z(n43) );
endmodule

