
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30;

  GTECH_XOR3 U25 ( .A(b[7]), .B(a[7]), .C(n16), .Z(sum[7]) );
  GTECH_XOR3 U26 ( .A(b[6]), .B(a[6]), .C(n17), .Z(sum[6]) );
  GTECH_XOR3 U27 ( .A(b[5]), .B(a[5]), .C(n18), .Z(sum[5]) );
  GTECH_XOR3 U28 ( .A(b[4]), .B(a[4]), .C(n19), .Z(sum[4]) );
  GTECH_XOR3 U29 ( .A(b[3]), .B(a[3]), .C(n20), .Z(sum[3]) );
  GTECH_XOR3 U30 ( .A(b[2]), .B(a[2]), .C(n21), .Z(sum[2]) );
  GTECH_XOR3 U31 ( .A(b[1]), .B(a[1]), .C(n22), .Z(sum[1]) );
  GTECH_XOR3 U32 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U33 ( .A(n16), .B(a[7]), .C(n23), .Z(cout) );
  GTECH_OA21 U34 ( .A(a[7]), .B(n16), .C(b[7]), .Z(n23) );
  GTECH_AO21 U35 ( .A(n17), .B(a[6]), .C(n24), .Z(n16) );
  GTECH_OA21 U36 ( .A(a[6]), .B(n17), .C(b[6]), .Z(n24) );
  GTECH_AO21 U37 ( .A(n18), .B(a[5]), .C(n25), .Z(n17) );
  GTECH_OA21 U38 ( .A(a[5]), .B(n18), .C(b[5]), .Z(n25) );
  GTECH_AO21 U39 ( .A(n19), .B(a[4]), .C(n26), .Z(n18) );
  GTECH_OA21 U40 ( .A(a[4]), .B(n19), .C(b[4]), .Z(n26) );
  GTECH_AO21 U41 ( .A(n20), .B(a[3]), .C(n27), .Z(n19) );
  GTECH_OA21 U42 ( .A(a[3]), .B(n20), .C(b[3]), .Z(n27) );
  GTECH_AO21 U43 ( .A(n21), .B(a[2]), .C(n28), .Z(n20) );
  GTECH_OA21 U44 ( .A(a[2]), .B(n21), .C(b[2]), .Z(n28) );
  GTECH_AO21 U45 ( .A(n22), .B(a[1]), .C(n29), .Z(n21) );
  GTECH_OA21 U46 ( .A(a[1]), .B(n22), .C(b[1]), .Z(n29) );
  GTECH_AO21 U47 ( .A(a[0]), .B(b[0]), .C(n30), .Z(n22) );
  GTECH_OA21 U48 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n30) );
endmodule

