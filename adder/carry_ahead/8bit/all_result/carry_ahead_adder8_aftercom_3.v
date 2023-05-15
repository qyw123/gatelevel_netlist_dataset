
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40;

  GTECH_XOR3 U37 ( .A(b[7]), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_XNOR3 U38 ( .A(b[6]), .B(a[6]), .C(n21), .Z(sum[6]) );
  GTECH_XNOR3 U39 ( .A(b[5]), .B(a[5]), .C(n22), .Z(sum[5]) );
  GTECH_XNOR3 U40 ( .A(b[4]), .B(a[4]), .C(n23), .Z(sum[4]) );
  GTECH_XNOR3 U41 ( .A(b[3]), .B(a[3]), .C(n24), .Z(sum[3]) );
  GTECH_XNOR3 U42 ( .A(b[2]), .B(a[2]), .C(n25), .Z(sum[2]) );
  GTECH_XNOR3 U43 ( .A(b[1]), .B(a[1]), .C(n26), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(ci), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U45 ( .A(co[6]), .B(a[7]), .C(n27), .Z(co[7]) );
  GTECH_NOT U46 ( .A(n28), .Z(n27) );
  GTECH_OAI21 U47 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n28) );
  GTECH_OAI21 U48 ( .A(n21), .B(n29), .C(n30), .Z(co[6]) );
  GTECH_OAI21 U49 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n30) );
  GTECH_NOT U50 ( .A(a[6]), .Z(n29) );
  GTECH_NOT U51 ( .A(co[5]), .Z(n21) );
  GTECH_OAI21 U52 ( .A(n22), .B(n31), .C(n32), .Z(co[5]) );
  GTECH_OAI21 U53 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n32) );
  GTECH_NOT U54 ( .A(a[5]), .Z(n31) );
  GTECH_NOT U55 ( .A(co[4]), .Z(n22) );
  GTECH_OAI21 U56 ( .A(n23), .B(n33), .C(n34), .Z(co[4]) );
  GTECH_OAI21 U57 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n34) );
  GTECH_NOT U58 ( .A(a[4]), .Z(n33) );
  GTECH_NOT U59 ( .A(co[3]), .Z(n23) );
  GTECH_OAI21 U60 ( .A(n24), .B(n35), .C(n36), .Z(co[3]) );
  GTECH_OAI21 U61 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n36) );
  GTECH_NOT U62 ( .A(a[3]), .Z(n35) );
  GTECH_NOT U63 ( .A(co[2]), .Z(n24) );
  GTECH_OAI21 U64 ( .A(n25), .B(n37), .C(n38), .Z(co[2]) );
  GTECH_OAI21 U65 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n38) );
  GTECH_NOT U66 ( .A(a[2]), .Z(n37) );
  GTECH_NOT U67 ( .A(co[1]), .Z(n25) );
  GTECH_OAI21 U68 ( .A(n26), .B(n39), .C(n40), .Z(co[1]) );
  GTECH_OAI21 U69 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n40) );
  GTECH_NOT U70 ( .A(a[1]), .Z(n39) );
  GTECH_NOT U71 ( .A(co[0]), .Z(n26) );
  GTECH_ADD_ABC U72 ( .A(a[0]), .B(b[0]), .C(ci), .COUT(co[0]) );
endmodule

