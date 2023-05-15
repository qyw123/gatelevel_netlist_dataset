
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34;

  GTECH_XOR3 U27 ( .A(b[7]), .B(a[7]), .C(n18), .Z(sum[7]) );
  GTECH_XOR3 U28 ( .A(b[6]), .B(a[6]), .C(n19), .Z(sum[6]) );
  GTECH_OA22 U29 ( .A(a[5]), .B(n20), .C(b[5]), .D(n21), .Z(n19) );
  GTECH_AND_NOT U30 ( .A(n20), .B(n22), .Z(n21) );
  GTECH_XNOR3 U31 ( .A(b[5]), .B(n22), .C(n20), .Z(sum[5]) );
  GTECH_XOR3 U32 ( .A(b[4]), .B(a[4]), .C(n23), .Z(sum[4]) );
  GTECH_XOR3 U33 ( .A(b[3]), .B(a[3]), .C(n24), .Z(sum[3]) );
  GTECH_XOR3 U34 ( .A(b[2]), .B(a[2]), .C(n25), .Z(sum[2]) );
  GTECH_XOR3 U35 ( .A(b[1]), .B(a[1]), .C(n26), .Z(sum[1]) );
  GTECH_XOR3 U36 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U37 ( .A(n18), .B(a[7]), .C(n27), .D(b[7]), .Z(cout) );
  GTECH_OR2 U38 ( .A(n18), .B(a[7]), .Z(n27) );
  GTECH_ADD_ABC U39 ( .A(n28), .B(a[6]), .C(b[6]), .COUT(n18) );
  GTECH_AOI21 U40 ( .A(n22), .B(n29), .C(n30), .Z(n28) );
  GTECH_AOI21 U41 ( .A(a[5]), .B(n20), .C(b[5]), .Z(n30) );
  GTECH_NOT U42 ( .A(n20), .Z(n29) );
  GTECH_AO22 U43 ( .A(n31), .B(b[4]), .C(n23), .D(a[4]), .Z(n20) );
  GTECH_OR2 U44 ( .A(a[4]), .B(n23), .Z(n31) );
  GTECH_AO22 U45 ( .A(n32), .B(b[3]), .C(n24), .D(a[3]), .Z(n23) );
  GTECH_OR2 U46 ( .A(a[3]), .B(n24), .Z(n32) );
  GTECH_AO22 U47 ( .A(n33), .B(b[2]), .C(n25), .D(a[2]), .Z(n24) );
  GTECH_OR2 U48 ( .A(a[2]), .B(n25), .Z(n33) );
  GTECH_AO22 U49 ( .A(n34), .B(b[1]), .C(n26), .D(a[1]), .Z(n25) );
  GTECH_OR2 U50 ( .A(n26), .B(a[1]), .Z(n34) );
  GTECH_ADD_ABC U51 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n26) );
  GTECH_NOT U52 ( .A(a[5]), .Z(n22) );
endmodule

