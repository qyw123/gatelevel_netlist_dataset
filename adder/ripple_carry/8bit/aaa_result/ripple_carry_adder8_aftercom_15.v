
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33;

  GTECH_XOR3 U22 ( .A(b[7]), .B(a[7]), .C(n13), .Z(sum[7]) );
  GTECH_XOR3 U23 ( .A(b[6]), .B(a[6]), .C(n14), .Z(sum[6]) );
  GTECH_XOR3 U24 ( .A(b[5]), .B(n15), .C(n16), .Z(sum[5]) );
  GTECH_XOR3 U25 ( .A(b[4]), .B(a[4]), .C(n17), .Z(sum[4]) );
  GTECH_XOR3 U26 ( .A(b[3]), .B(a[3]), .C(n18), .Z(sum[3]) );
  GTECH_XOR3 U27 ( .A(b[2]), .B(a[2]), .C(n19), .Z(sum[2]) );
  GTECH_XOR3 U28 ( .A(b[1]), .B(a[1]), .C(n20), .Z(sum[1]) );
  GTECH_XOR3 U29 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U30 ( .A(n21), .B(n22), .C(n23), .Z(cout) );
  GTECH_OAI21 U31 ( .A(a[7]), .B(n13), .C(b[7]), .Z(n23) );
  GTECH_NOT U32 ( .A(n21), .Z(n13) );
  GTECH_NOT U33 ( .A(a[7]), .Z(n22) );
  GTECH_AOI21 U34 ( .A(n14), .B(a[6]), .C(n24), .Z(n21) );
  GTECH_OA21 U35 ( .A(a[6]), .B(n14), .C(b[6]), .Z(n24) );
  GTECH_OAI21 U36 ( .A(n16), .B(n15), .C(n25), .Z(n14) );
  GTECH_OAI21 U37 ( .A(a[5]), .B(n26), .C(b[5]), .Z(n25) );
  GTECH_NOT U38 ( .A(n16), .Z(n26) );
  GTECH_NOT U39 ( .A(a[5]), .Z(n15) );
  GTECH_AOI21 U40 ( .A(n17), .B(a[4]), .C(n27), .Z(n16) );
  GTECH_OA21 U41 ( .A(a[4]), .B(n17), .C(b[4]), .Z(n27) );
  GTECH_NOT U42 ( .A(n28), .Z(n17) );
  GTECH_AOI21 U43 ( .A(n18), .B(a[3]), .C(n29), .Z(n28) );
  GTECH_OA21 U44 ( .A(a[3]), .B(n18), .C(b[3]), .Z(n29) );
  GTECH_NOT U45 ( .A(n30), .Z(n18) );
  GTECH_AOI21 U46 ( .A(n19), .B(a[2]), .C(n31), .Z(n30) );
  GTECH_OA21 U47 ( .A(a[2]), .B(n19), .C(b[2]), .Z(n31) );
  GTECH_NOT U48 ( .A(n32), .Z(n19) );
  GTECH_AOI21 U49 ( .A(n20), .B(a[1]), .C(n33), .Z(n32) );
  GTECH_OA21 U50 ( .A(a[1]), .B(n20), .C(b[1]), .Z(n33) );
  GTECH_ADD_ABC U51 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n20) );
endmodule

