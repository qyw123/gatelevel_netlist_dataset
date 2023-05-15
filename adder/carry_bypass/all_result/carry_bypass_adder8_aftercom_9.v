
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71;

  GTECH_XNOR3 U25 ( .A(b[7]), .B(a[7]), .C(n56), .Z(sum[7]) );
  GTECH_XOR3 U26 ( .A(b[6]), .B(a[6]), .C(n57), .Z(sum[6]) );
  GTECH_XOR3 U27 ( .A(b[5]), .B(a[5]), .C(n58), .Z(sum[5]) );
  GTECH_XOR3 U28 ( .A(b[4]), .B(a[4]), .C(n59), .Z(sum[4]) );
  GTECH_XOR3 U29 ( .A(b[3]), .B(a[3]), .C(n60), .Z(sum[3]) );
  GTECH_XOR3 U30 ( .A(b[2]), .B(a[2]), .C(n61), .Z(sum[2]) );
  GTECH_XOR3 U31 ( .A(b[1]), .B(a[1]), .C(n62), .Z(sum[1]) );
  GTECH_XOR3 U32 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U33 ( .A(n63), .B(a[7]), .C(n64), .D(b[7]), .Z(cout) );
  GTECH_OR_NOT U34 ( .A(a[7]), .B(n56), .Z(n64) );
  GTECH_NOT U35 ( .A(n56), .Z(n63) );
  GTECH_AOI22 U36 ( .A(n57), .B(a[6]), .C(n65), .D(b[6]), .Z(n56) );
  GTECH_OR2 U37 ( .A(n57), .B(a[6]), .Z(n65) );
  GTECH_AO22 U38 ( .A(n66), .B(b[5]), .C(n58), .D(a[5]), .Z(n57) );
  GTECH_OR2 U39 ( .A(n58), .B(a[5]), .Z(n66) );
  GTECH_AO22 U40 ( .A(n67), .B(b[4]), .C(n59), .D(a[4]), .Z(n58) );
  GTECH_OR2 U41 ( .A(n59), .B(a[4]), .Z(n67) );
  GTECH_AO22 U42 ( .A(n68), .B(b[3]), .C(n60), .D(a[3]), .Z(n59) );
  GTECH_OR2 U43 ( .A(n60), .B(a[3]), .Z(n68) );
  GTECH_AO22 U44 ( .A(n69), .B(b[2]), .C(n61), .D(a[2]), .Z(n60) );
  GTECH_OR2 U45 ( .A(n61), .B(a[2]), .Z(n69) );
  GTECH_AO22 U46 ( .A(n70), .B(b[1]), .C(n62), .D(a[1]), .Z(n61) );
  GTECH_OR2 U47 ( .A(n62), .B(a[1]), .Z(n70) );
  GTECH_AO22 U48 ( .A(n71), .B(cin), .C(a[0]), .D(b[0]), .Z(n62) );
  GTECH_OR2 U49 ( .A(a[0]), .B(b[0]), .Z(n71) );
endmodule

