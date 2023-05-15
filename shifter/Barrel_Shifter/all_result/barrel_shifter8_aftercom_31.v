
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;

  GTECH_AND3 U30 ( .A(n22), .B(n23), .C(in[7]), .Z(out[7]) );
  GTECH_AND2 U31 ( .A(n22), .B(n24), .Z(out[6]) );
  GTECH_OA22 U32 ( .A(in[7]), .B(n23), .C(in[6]), .D(ctrl[0]), .Z(n24) );
  GTECH_NAND2 U33 ( .A(n25), .B(n26), .Z(out[5]) );
  GTECH_NAND3 U34 ( .A(n27), .B(n28), .C(n23), .Z(n26) );
  GTECH_NAND3 U35 ( .A(in[6]), .B(n22), .C(ctrl[0]), .Z(n25) );
  GTECH_OAI21 U36 ( .A(ctrl[0]), .B(n29), .C(n30), .Z(out[4]) );
  GTECH_NAND3 U37 ( .A(n27), .B(n28), .C(ctrl[0]), .Z(n30) );
  GTECH_OAI22 U38 ( .A(ctrl[0]), .B(n31), .C(n23), .D(n29), .Z(out[3]) );
  GTECH_OR_NOT U39 ( .A(ctrl[2]), .B(n32), .Z(n29) );
  GTECH_OA22 U40 ( .A(in[4]), .B(ctrl[1]), .C(in[6]), .D(n33), .Z(n32) );
  GTECH_OAI22 U41 ( .A(ctrl[0]), .B(n34), .C(n31), .D(n23), .Z(out[2]) );
  GTECH_AOI222 U42 ( .A(in[3]), .B(n22), .C(n35), .D(in[7]), .E(n36), .F(in[5]), .Z(n31) );
  GTECH_OAI22 U43 ( .A(ctrl[0]), .B(n37), .C(n34), .D(n23), .Z(out[1]) );
  GTECH_AOI222 U44 ( .A(in[2]), .B(n22), .C(n35), .D(in[6]), .E(in[4]), .F(n36), .Z(n34) );
  GTECH_OAI21 U45 ( .A(n37), .B(n23), .C(n38), .Z(out[0]) );
  GTECH_OAI21 U46 ( .A(n39), .B(n40), .C(n23), .Z(n38) );
  GTECH_AO22 U47 ( .A(n36), .B(in[2]), .C(in[0]), .D(n22), .Z(n40) );
  GTECH_AO21 U48 ( .A(n35), .B(in[4]), .C(n41), .Z(n39) );
  GTECH_AND3 U49 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n41) );
  GTECH_AND_NOT U50 ( .A(ctrl[2]), .B(ctrl[1]), .Z(n35) );
  GTECH_NOT U51 ( .A(ctrl[0]), .Z(n23) );
  GTECH_AOI222 U52 ( .A(ctrl[2]), .B(n27), .C(in[3]), .D(n36), .E(in[1]), .F(
        n22), .Z(n37) );
  GTECH_AND2 U53 ( .A(n28), .B(n33), .Z(n22) );
  GTECH_AND2 U54 ( .A(n28), .B(ctrl[1]), .Z(n36) );
  GTECH_NOT U55 ( .A(ctrl[2]), .Z(n28) );
  GTECH_AO22 U56 ( .A(in[7]), .B(ctrl[1]), .C(n33), .D(in[5]), .Z(n27) );
  GTECH_NOT U57 ( .A(ctrl[1]), .Z(n33) );
endmodule

