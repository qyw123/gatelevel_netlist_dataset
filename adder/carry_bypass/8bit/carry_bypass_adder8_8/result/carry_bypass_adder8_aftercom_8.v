
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_XOR3 U24 ( .A(b[7]), .B(a[7]), .C(n55), .Z(sum[7]) );
  GTECH_XOR3 U25 ( .A(b[6]), .B(a[6]), .C(n56), .Z(sum[6]) );
  GTECH_XOR3 U26 ( .A(b[5]), .B(a[5]), .C(n57), .Z(sum[5]) );
  GTECH_XOR3 U27 ( .A(b[4]), .B(a[4]), .C(n58), .Z(sum[4]) );
  GTECH_XOR3 U28 ( .A(b[3]), .B(a[3]), .C(n59), .Z(sum[3]) );
  GTECH_XOR3 U29 ( .A(b[2]), .B(a[2]), .C(n60), .Z(sum[2]) );
  GTECH_XOR3 U30 ( .A(b[1]), .B(a[1]), .C(n61), .Z(sum[1]) );
  GTECH_XOR3 U31 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U32 ( .A(n62), .B(b[7]), .C(n55), .D(a[7]), .Z(cout) );
  GTECH_OR2 U33 ( .A(n55), .B(a[7]), .Z(n62) );
  GTECH_AO22 U34 ( .A(n63), .B(b[6]), .C(n56), .D(a[6]), .Z(n55) );
  GTECH_OR2 U35 ( .A(n56), .B(a[6]), .Z(n63) );
  GTECH_AO22 U36 ( .A(n64), .B(b[5]), .C(n57), .D(a[5]), .Z(n56) );
  GTECH_OR2 U37 ( .A(n57), .B(a[5]), .Z(n64) );
  GTECH_AO22 U38 ( .A(n65), .B(b[4]), .C(n58), .D(a[4]), .Z(n57) );
  GTECH_OR2 U39 ( .A(n58), .B(a[4]), .Z(n65) );
  GTECH_AO22 U40 ( .A(n66), .B(b[3]), .C(n59), .D(a[3]), .Z(n58) );
  GTECH_OR2 U41 ( .A(n59), .B(a[3]), .Z(n66) );
  GTECH_AO22 U42 ( .A(n67), .B(b[2]), .C(n60), .D(a[2]), .Z(n59) );
  GTECH_OR2 U43 ( .A(n60), .B(a[2]), .Z(n67) );
  GTECH_AO22 U44 ( .A(n68), .B(b[1]), .C(n61), .D(a[1]), .Z(n60) );
  GTECH_OR2 U45 ( .A(a[1]), .B(n61), .Z(n68) );
  GTECH_ADD_ABC U46 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n61) );
endmodule

