
module barrel_shifter8 ( in, ctrl, out );
  input [7:0] in;
  input [2:0] ctrl;
  output [7:0] out;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39;

  GTECH_AND3 U29 ( .A(n21), .B(n22), .C(in[7]), .Z(out[7]) );
  GTECH_ADD_AB U30 ( .A(n21), .B(n23), .COUT(out[6]) );
  GTECH_OA22 U31 ( .A(in[6]), .B(ctrl[0]), .C(in[7]), .D(n22), .Z(n23) );
  GTECH_NAND2 U32 ( .A(n24), .B(n25), .Z(out[5]) );
  GTECH_NAND3 U33 ( .A(n26), .B(n27), .C(n22), .Z(n25) );
  GTECH_NAND3 U34 ( .A(in[6]), .B(n21), .C(ctrl[0]), .Z(n24) );
  GTECH_OAI21 U35 ( .A(ctrl[0]), .B(n28), .C(n29), .Z(out[4]) );
  GTECH_NAND3 U36 ( .A(n26), .B(n27), .C(ctrl[0]), .Z(n29) );
  GTECH_OAI22 U37 ( .A(n28), .B(n22), .C(ctrl[0]), .D(n30), .Z(out[3]) );
  GTECH_AOI22 U38 ( .A(n21), .B(in[4]), .C(in[6]), .D(n31), .Z(n28) );
  GTECH_OAI22 U39 ( .A(n30), .B(n22), .C(ctrl[0]), .D(n32), .Z(out[2]) );
  GTECH_AOI222 U40 ( .A(in[3]), .B(n21), .C(n33), .D(in[7]), .E(n31), .F(in[5]), .Z(n30) );
  GTECH_OAI22 U41 ( .A(ctrl[0]), .B(n34), .C(n32), .D(n22), .Z(out[1]) );
  GTECH_AOI222 U42 ( .A(in[2]), .B(n21), .C(n33), .D(in[6]), .E(in[4]), .F(n31), .Z(n32) );
  GTECH_OAI21 U43 ( .A(n34), .B(n22), .C(n35), .Z(out[0]) );
  GTECH_OAI21 U44 ( .A(n36), .B(n37), .C(n22), .Z(n35) );
  GTECH_AO22 U45 ( .A(n31), .B(in[2]), .C(in[0]), .D(n21), .Z(n37) );
  GTECH_AO21 U46 ( .A(in[4]), .B(n33), .C(n38), .Z(n36) );
  GTECH_AND3 U47 ( .A(ctrl[1]), .B(in[6]), .C(ctrl[2]), .Z(n38) );
  GTECH_ADD_AB U48 ( .A(n39), .B(ctrl[2]), .COUT(n33) );
  GTECH_NOT U49 ( .A(ctrl[0]), .Z(n22) );
  GTECH_AOI222 U50 ( .A(ctrl[2]), .B(n26), .C(in[3]), .D(n31), .E(in[1]), .F(
        n21), .Z(n34) );
  GTECH_ADD_AB U51 ( .A(n27), .B(n39), .COUT(n21) );
  GTECH_NOT U52 ( .A(ctrl[2]), .Z(n27) );
  GTECH_AND_NOT U53 ( .A(ctrl[1]), .B(ctrl[2]), .Z(n31) );
  GTECH_AO22 U54 ( .A(in[7]), .B(ctrl[1]), .C(n39), .D(in[5]), .Z(n26) );
  GTECH_NOT U55 ( .A(ctrl[1]), .Z(n39) );
endmodule

