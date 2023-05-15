
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;

  GTECH_XOR3 U25 ( .A(b[7]), .B(a[7]), .C(n56), .Z(sum[7]) );
  GTECH_XOR3 U26 ( .A(b[6]), .B(a[6]), .C(n57), .Z(sum[6]) );
  GTECH_XNOR3 U27 ( .A(b[5]), .B(a[5]), .C(n58), .Z(sum[5]) );
  GTECH_XOR3 U28 ( .A(b[4]), .B(a[4]), .C(n59), .Z(sum[4]) );
  GTECH_XOR3 U29 ( .A(b[3]), .B(a[3]), .C(n60), .Z(sum[3]) );
  GTECH_XOR3 U30 ( .A(b[2]), .B(a[2]), .C(n61), .Z(sum[2]) );
  GTECH_XOR3 U31 ( .A(b[1]), .B(a[1]), .C(n62), .Z(sum[1]) );
  GTECH_XOR3 U32 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U33 ( .A(n56), .B(a[7]), .C(n63), .D(b[7]), .Z(cout) );
  GTECH_OR2 U34 ( .A(n56), .B(a[7]), .Z(n63) );
  GTECH_ADD_ABC U35 ( .A(n57), .B(a[6]), .C(b[6]), .COUT(n56) );
  GTECH_AOI2N2 U36 ( .A(n64), .B(n58), .C(b[5]), .D(n65), .Z(n57) );
  GTECH_AND_NOT U37 ( .A(a[5]), .B(n58), .Z(n65) );
  GTECH_AOI22 U38 ( .A(n59), .B(a[4]), .C(n66), .D(b[4]), .Z(n58) );
  GTECH_OR2 U39 ( .A(a[4]), .B(n59), .Z(n66) );
  GTECH_AO22 U40 ( .A(n67), .B(b[3]), .C(n60), .D(a[3]), .Z(n59) );
  GTECH_OR2 U41 ( .A(a[3]), .B(n60), .Z(n67) );
  GTECH_AO22 U42 ( .A(n68), .B(b[2]), .C(n61), .D(a[2]), .Z(n60) );
  GTECH_OR2 U43 ( .A(a[2]), .B(n61), .Z(n68) );
  GTECH_AO22 U44 ( .A(n69), .B(b[1]), .C(n62), .D(a[1]), .Z(n61) );
  GTECH_OR2 U45 ( .A(n62), .B(a[1]), .Z(n69) );
  GTECH_ADD_ABC U46 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n62) );
  GTECH_NOT U47 ( .A(a[5]), .Z(n64) );
endmodule

