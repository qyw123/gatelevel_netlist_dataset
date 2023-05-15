
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;

  GTECH_XOR3 U19 ( .A(b[7]), .B(n10), .C(n11), .Z(sum[7]) );
  GTECH_XOR3 U20 ( .A(b[6]), .B(a[6]), .C(n12), .Z(sum[6]) );
  GTECH_XOR3 U21 ( .A(b[5]), .B(a[5]), .C(n13), .Z(sum[5]) );
  GTECH_XOR3 U22 ( .A(b[4]), .B(a[4]), .C(n14), .Z(sum[4]) );
  GTECH_XOR3 U23 ( .A(b[3]), .B(a[3]), .C(n15), .Z(sum[3]) );
  GTECH_XOR3 U24 ( .A(b[2]), .B(a[2]), .C(n16), .Z(sum[2]) );
  GTECH_XOR3 U25 ( .A(b[1]), .B(a[1]), .C(n17), .Z(sum[1]) );
  GTECH_XOR3 U26 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U27 ( .A(n11), .B(n10), .C(n18), .Z(cout) );
  GTECH_OAI21 U28 ( .A(a[7]), .B(n19), .C(b[7]), .Z(n18) );
  GTECH_NOT U29 ( .A(n11), .Z(n19) );
  GTECH_NOT U30 ( .A(a[7]), .Z(n10) );
  GTECH_AOI21 U31 ( .A(n12), .B(a[6]), .C(n20), .Z(n11) );
  GTECH_OA21 U32 ( .A(a[6]), .B(n12), .C(b[6]), .Z(n20) );
  GTECH_NOT U33 ( .A(n21), .Z(n12) );
  GTECH_AOI21 U34 ( .A(n13), .B(a[5]), .C(n22), .Z(n21) );
  GTECH_OA21 U35 ( .A(a[5]), .B(n13), .C(b[5]), .Z(n22) );
  GTECH_NOT U36 ( .A(n23), .Z(n13) );
  GTECH_AOI21 U37 ( .A(n14), .B(a[4]), .C(n24), .Z(n23) );
  GTECH_OA21 U38 ( .A(a[4]), .B(n14), .C(b[4]), .Z(n24) );
  GTECH_NOT U39 ( .A(n25), .Z(n14) );
  GTECH_AOI21 U40 ( .A(n15), .B(a[3]), .C(n26), .Z(n25) );
  GTECH_OA21 U41 ( .A(a[3]), .B(n15), .C(b[3]), .Z(n26) );
  GTECH_NOT U42 ( .A(n27), .Z(n15) );
  GTECH_AOI21 U43 ( .A(n16), .B(a[2]), .C(n28), .Z(n27) );
  GTECH_OA21 U44 ( .A(a[2]), .B(n16), .C(b[2]), .Z(n28) );
  GTECH_NOT U45 ( .A(n29), .Z(n16) );
  GTECH_AOI21 U46 ( .A(n17), .B(a[1]), .C(n30), .Z(n29) );
  GTECH_OA21 U47 ( .A(a[1]), .B(n17), .C(b[1]), .Z(n30) );
  GTECH_ADD_ABC U48 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n17) );
endmodule

