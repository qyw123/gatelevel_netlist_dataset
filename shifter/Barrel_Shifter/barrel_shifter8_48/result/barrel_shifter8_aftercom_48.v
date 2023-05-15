
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U31 ( .A(n22), .B(n24), .Z(out[6]) );
  GTECH_AOI2N2 U32 ( .A(n25), .B(n23), .C(in[7]), .D(n23), .Z(n24) );
  GTECH_OAI21 U33 ( .A(n23), .B(n26), .C(n27), .Z(out[5]) );
  GTECH_NAND3 U34 ( .A(n28), .B(n29), .C(n23), .Z(n27) );
  GTECH_OR_NOT U35 ( .A(n25), .B(n22), .Z(n26) );
  GTECH_OAI21 U36 ( .A(ctrl[0]), .B(n30), .C(n31), .Z(out[4]) );
  GTECH_NAND3 U37 ( .A(n28), .B(n29), .C(ctrl[0]), .Z(n31) );
  GTECH_OAI22 U38 ( .A(n30), .B(n23), .C(ctrl[0]), .D(n32), .Z(out[3]) );
  GTECH_AOI22 U39 ( .A(n22), .B(in[4]), .C(in[6]), .D(n33), .Z(n30) );
  GTECH_OAI22 U40 ( .A(n32), .B(n23), .C(ctrl[0]), .D(n34), .Z(out[2]) );
  GTECH_AOI222 U41 ( .A(in[3]), .B(n22), .C(n35), .D(in[7]), .E(n33), .F(in[5]), .Z(n32) );
  GTECH_OAI22 U42 ( .A(ctrl[0]), .B(n36), .C(n34), .D(n23), .Z(out[1]) );
  GTECH_AOI222 U43 ( .A(in[2]), .B(n22), .C(n35), .D(in[6]), .E(in[4]), .F(n33), .Z(n34) );
  GTECH_OAI21 U44 ( .A(n36), .B(n23), .C(n37), .Z(out[0]) );
  GTECH_OAI21 U45 ( .A(n38), .B(n39), .C(n23), .Z(n37) );
  GTECH_AO22 U46 ( .A(n33), .B(in[2]), .C(in[0]), .D(n22), .Z(n39) );
  GTECH_AO21 U47 ( .A(in[4]), .B(n35), .C(n40), .Z(n38) );
  GTECH_NOR3 U48 ( .A(n41), .B(n25), .C(n29), .Z(n40) );
  GTECH_NOT U49 ( .A(in[6]), .Z(n25) );
  GTECH_AND_NOT U50 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n35) );
  GTECH_NOT U51 ( .A(ctrl[0]), .Z(n23) );
  GTECH_AOI222 U52 ( .A(ctrl[2]), .B(n28), .C(in[3]), .D(n33), .E(in[1]), .F(
        n22), .Z(n36) );
  GTECH_AND_NOT U53 ( .A(n41), .B(ctrl[2]), .Z(n22) );
  GTECH_AND2 U54 ( .A(n29), .B(ctrl[1]), .Z(n33) );
  GTECH_NOT U55 ( .A(ctrl[2]), .Z(n29) );
  GTECH_AO22 U56 ( .A(in[7]), .B(ctrl[1]), .C(n41), .D(in[5]), .Z(n28) );
  GTECH_NOT U57 ( .A(ctrl[1]), .Z(n41) );
endmodule

