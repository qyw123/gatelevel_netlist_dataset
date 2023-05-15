
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42;

  GTECH_ADD_ABC U30 ( .A(b[7]), .B(a[7]), .C(n21), .S(sum[7]) );
  GTECH_ADD_ABC U31 ( .A(b[6]), .B(a[6]), .C(n22), .S(sum[6]) );
  GTECH_ADD_ABC U32 ( .A(b[5]), .B(a[5]), .C(n23), .S(sum[5]) );
  GTECH_ADD_ABC U33 ( .A(b[4]), .B(a[4]), .C(n24), .S(sum[4]) );
  GTECH_ADD_ABC U34 ( .A(b[3]), .B(a[3]), .C(n25), .S(sum[3]) );
  GTECH_ADD_ABC U35 ( .A(b[2]), .B(a[2]), .C(n26), .S(sum[2]) );
  GTECH_ADD_ABC U36 ( .A(b[1]), .B(a[1]), .C(n27), .S(sum[1]) );
  GTECH_ADD_ABC U37 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U38 ( .A(n21), .B(a[7]), .C(n28), .Z(cout) );
  GTECH_NOT U39 ( .A(n29), .Z(n28) );
  GTECH_OAI21 U40 ( .A(a[7]), .B(n21), .C(b[7]), .Z(n29) );
  GTECH_OAI21 U41 ( .A(n30), .B(n31), .C(n32), .Z(n21) );
  GTECH_OAI21 U42 ( .A(a[6]), .B(n22), .C(b[6]), .Z(n32) );
  GTECH_NOT U43 ( .A(n30), .Z(n22) );
  GTECH_NOT U44 ( .A(a[6]), .Z(n31) );
  GTECH_AOI21 U45 ( .A(n23), .B(a[5]), .C(n33), .Z(n30) );
  GTECH_NOT U46 ( .A(n34), .Z(n33) );
  GTECH_OAI21 U47 ( .A(a[5]), .B(n23), .C(b[5]), .Z(n34) );
  GTECH_AO21 U48 ( .A(n24), .B(a[4]), .C(n35), .Z(n23) );
  GTECH_NOT U49 ( .A(n36), .Z(n35) );
  GTECH_OAI21 U50 ( .A(a[4]), .B(n24), .C(b[4]), .Z(n36) );
  GTECH_AO21 U51 ( .A(n25), .B(a[3]), .C(n37), .Z(n24) );
  GTECH_NOT U52 ( .A(n38), .Z(n37) );
  GTECH_OAI21 U53 ( .A(a[3]), .B(n25), .C(b[3]), .Z(n38) );
  GTECH_AO21 U54 ( .A(n26), .B(a[2]), .C(n39), .Z(n25) );
  GTECH_NOT U55 ( .A(n40), .Z(n39) );
  GTECH_OAI21 U56 ( .A(a[2]), .B(n26), .C(b[2]), .Z(n40) );
  GTECH_AO21 U57 ( .A(n27), .B(a[1]), .C(n41), .Z(n26) );
  GTECH_NOT U58 ( .A(n42), .Z(n41) );
  GTECH_OAI21 U59 ( .A(a[1]), .B(n27), .C(b[1]), .Z(n42) );
  GTECH_ADD_ABC U60 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n27) );
endmodule

