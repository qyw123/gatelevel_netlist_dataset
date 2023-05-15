
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;

  GTECH_AND3 U29 ( .A(n21), .B(n22), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U30 ( .A(n23), .B(n21), .Z(out[6]) );
  GTECH_MUX2 U31 ( .A(in[7]), .B(in[6]), .S(n22), .Z(n23) );
  GTECH_MUX2 U32 ( .A(n24), .B(n25), .S(ctrl[0]), .Z(out[5]) );
  GTECH_AND2 U33 ( .A(in[6]), .B(n21), .Z(n25) );
  GTECH_AND_NOT U34 ( .A(n26), .B(ctrl[2]), .Z(n24) );
  GTECH_NOT U35 ( .A(n27), .Z(out[4]) );
  GTECH_MUX2 U36 ( .A(n28), .B(n29), .S(ctrl[0]), .Z(n27) );
  GTECH_OR_NOT U37 ( .A(ctrl[2]), .B(n26), .Z(n29) );
  GTECH_NOT U38 ( .A(n30), .Z(out[3]) );
  GTECH_MUX2 U39 ( .A(n31), .B(n28), .S(ctrl[0]), .Z(n30) );
  GTECH_AOI22 U40 ( .A(in[6]), .B(n32), .C(n21), .D(in[4]), .Z(n28) );
  GTECH_NOT U41 ( .A(n33), .Z(out[2]) );
  GTECH_MUX2 U42 ( .A(n31), .B(n34), .S(n22), .Z(n33) );
  GTECH_NOT U43 ( .A(ctrl[0]), .Z(n22) );
  GTECH_AOI222 U44 ( .A(in[3]), .B(n21), .C(n35), .D(in[7]), .E(n32), .F(in[5]), .Z(n31) );
  GTECH_NOT U45 ( .A(n36), .Z(out[1]) );
  GTECH_MUX2 U46 ( .A(n37), .B(n34), .S(ctrl[0]), .Z(n36) );
  GTECH_AOI222 U47 ( .A(in[2]), .B(n21), .C(n35), .D(in[6]), .E(in[4]), .F(n32), .Z(n34) );
  GTECH_MUX2 U48 ( .A(n38), .B(n39), .S(ctrl[0]), .Z(out[0]) );
  GTECH_NOT U49 ( .A(n37), .Z(n39) );
  GTECH_AOI222 U50 ( .A(ctrl[2]), .B(n26), .C(in[3]), .D(n32), .E(in[1]), .F(
        n21), .Z(n37) );
  GTECH_MUX2 U51 ( .A(in[5]), .B(in[7]), .S(ctrl[1]), .Z(n26) );
  GTECH_NAND2 U52 ( .A(n40), .B(n41), .Z(n38) );
  GTECH_AOI21 U53 ( .A(in[4]), .B(n35), .C(n42), .Z(n41) );
  GTECH_AND3 U54 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n42) );
  GTECH_AND_NOT U55 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n35) );
  GTECH_AOI22 U56 ( .A(in[0]), .B(n21), .C(n32), .D(in[2]), .Z(n40) );
  GTECH_AND_NOT U57 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n32) );
  GTECH_NOR2 U58 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n21) );
endmodule

