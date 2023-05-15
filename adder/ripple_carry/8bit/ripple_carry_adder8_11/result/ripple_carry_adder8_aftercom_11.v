
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  GTECH_XOR3 U24 ( .A(b[7]), .B(a[7]), .C(n15), .Z(sum[7]) );
  GTECH_XOR3 U25 ( .A(b[6]), .B(a[6]), .C(n16), .Z(sum[6]) );
  GTECH_XOR3 U26 ( .A(b[5]), .B(a[5]), .C(n17), .Z(sum[5]) );
  GTECH_XOR3 U27 ( .A(b[4]), .B(a[4]), .C(n18), .Z(sum[4]) );
  GTECH_XOR3 U28 ( .A(b[3]), .B(a[3]), .C(n19), .Z(sum[3]) );
  GTECH_XOR3 U29 ( .A(b[2]), .B(a[2]), .C(n20), .Z(sum[2]) );
  GTECH_XOR3 U30 ( .A(b[1]), .B(a[1]), .C(n21), .Z(sum[1]) );
  GTECH_XOR3 U31 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U32 ( .A(n22), .B(b[7]), .C(n15), .D(a[7]), .Z(cout) );
  GTECH_OR2 U33 ( .A(n15), .B(a[7]), .Z(n22) );
  GTECH_AO22 U34 ( .A(n23), .B(b[6]), .C(n16), .D(a[6]), .Z(n15) );
  GTECH_OR2 U35 ( .A(n16), .B(a[6]), .Z(n23) );
  GTECH_AO22 U36 ( .A(n24), .B(b[5]), .C(n17), .D(a[5]), .Z(n16) );
  GTECH_OR2 U37 ( .A(n17), .B(a[5]), .Z(n24) );
  GTECH_AO22 U38 ( .A(n25), .B(b[4]), .C(n18), .D(a[4]), .Z(n17) );
  GTECH_OR2 U39 ( .A(n18), .B(a[4]), .Z(n25) );
  GTECH_AO22 U40 ( .A(n26), .B(b[3]), .C(n19), .D(a[3]), .Z(n18) );
  GTECH_OR2 U41 ( .A(n19), .B(a[3]), .Z(n26) );
  GTECH_AO22 U42 ( .A(n27), .B(b[2]), .C(n20), .D(a[2]), .Z(n19) );
  GTECH_OR2 U43 ( .A(n20), .B(a[2]), .Z(n27) );
  GTECH_AO22 U44 ( .A(n28), .B(b[1]), .C(n21), .D(a[1]), .Z(n20) );
  GTECH_OR2 U45 ( .A(a[1]), .B(n21), .Z(n28) );
  GTECH_ADD_ABC U46 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n21) );
endmodule

