
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;

  GTECH_AND3 U29 ( .A(n21), .B(n22), .C(in[7]), .Z(out[7]) );
  GTECH_ADD_AB U30 ( .A(n23), .B(n21), .COUT(out[6]) );
  GTECH_MUX2 U31 ( .A(in[6]), .B(in[7]), .S(ctrl[0]), .Z(n23) );
  GTECH_MUX2 U32 ( .A(n24), .B(n25), .S(n22), .Z(out[5]) );
  GTECH_ADD_AB U33 ( .A(in[6]), .B(n21), .COUT(n24) );
  GTECH_MUX2 U34 ( .A(n26), .B(n25), .S(ctrl[0]), .Z(out[4]) );
  GTECH_AND_NOT U35 ( .A(n27), .B(ctrl[2]), .Z(n25) );
  GTECH_MUX2 U36 ( .A(n28), .B(n26), .S(ctrl[0]), .Z(out[3]) );
  GTECH_AO22 U37 ( .A(in[6]), .B(n29), .C(n21), .D(in[4]), .Z(n26) );
  GTECH_NOT U38 ( .A(n30), .Z(n28) );
  GTECH_NOT U39 ( .A(n31), .Z(out[2]) );
  GTECH_MUX2 U40 ( .A(n32), .B(n30), .S(ctrl[0]), .Z(n31) );
  GTECH_AOI222 U41 ( .A(in[3]), .B(n21), .C(n33), .D(in[7]), .E(n29), .F(in[5]), .Z(n30) );
  GTECH_NOT U42 ( .A(n34), .Z(out[1]) );
  GTECH_MUX2 U43 ( .A(n32), .B(n35), .S(n22), .Z(n34) );
  GTECH_AOI222 U44 ( .A(in[2]), .B(n21), .C(n33), .D(in[6]), .E(in[4]), .F(n29), .Z(n32) );
  GTECH_MUX2 U45 ( .A(n36), .B(n37), .S(n22), .Z(out[0]) );
  GTECH_NOT U46 ( .A(ctrl[0]), .Z(n22) );
  GTECH_NAND2 U47 ( .A(n38), .B(n39), .Z(n37) );
  GTECH_AOI21 U48 ( .A(in[4]), .B(n33), .C(n40), .Z(n39) );
  GTECH_AND3 U49 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n40) );
  GTECH_ADD_AB U50 ( .A(ctrl[2]), .B(n41), .COUT(n33) );
  GTECH_AOI22 U51 ( .A(in[0]), .B(n21), .C(n29), .D(in[2]), .Z(n38) );
  GTECH_NOT U52 ( .A(n35), .Z(n36) );
  GTECH_AOI222 U53 ( .A(ctrl[2]), .B(n27), .C(in[3]), .D(n29), .E(in[1]), .F(
        n21), .Z(n35) );
  GTECH_NOR2 U54 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n21) );
  GTECH_AND_NOT U55 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n29) );
  GTECH_MUX2 U56 ( .A(in[7]), .B(in[5]), .S(n41), .Z(n27) );
  GTECH_NOT U57 ( .A(ctrl[1]), .Z(n41) );
endmodule

