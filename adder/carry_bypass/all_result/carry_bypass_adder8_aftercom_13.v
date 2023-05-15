
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70;

  GTECH_XOR3 U25 ( .A(b[7]), .B(a[7]), .C(n56), .Z(sum[7]) );
  GTECH_XOR3 U26 ( .A(b[6]), .B(a[6]), .C(n57), .Z(sum[6]) );
  GTECH_XOR3 U27 ( .A(b[5]), .B(a[5]), .C(n58), .Z(sum[5]) );
  GTECH_XOR3 U28 ( .A(b[4]), .B(a[4]), .C(n59), .Z(sum[4]) );
  GTECH_XOR3 U29 ( .A(b[3]), .B(a[3]), .C(n60), .Z(sum[3]) );
  GTECH_XOR3 U30 ( .A(b[2]), .B(a[2]), .C(n61), .Z(sum[2]) );
  GTECH_XOR3 U31 ( .A(b[1]), .B(a[1]), .C(n62), .Z(sum[1]) );
  GTECH_XOR3 U32 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U33 ( .A(n56), .B(a[7]), .C(n63), .Z(cout) );
  GTECH_OA21 U34 ( .A(a[7]), .B(n56), .C(b[7]), .Z(n63) );
  GTECH_AO21 U35 ( .A(n57), .B(a[6]), .C(n64), .Z(n56) );
  GTECH_OA21 U36 ( .A(a[6]), .B(n57), .C(b[6]), .Z(n64) );
  GTECH_AO21 U37 ( .A(n58), .B(a[5]), .C(n65), .Z(n57) );
  GTECH_OA21 U38 ( .A(a[5]), .B(n58), .C(b[5]), .Z(n65) );
  GTECH_AO21 U39 ( .A(n59), .B(a[4]), .C(n66), .Z(n58) );
  GTECH_OA21 U40 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n66) );
  GTECH_AO21 U41 ( .A(n60), .B(a[3]), .C(n67), .Z(n59) );
  GTECH_OA21 U42 ( .A(a[3]), .B(n60), .C(b[3]), .Z(n67) );
  GTECH_AO21 U43 ( .A(n61), .B(a[2]), .C(n68), .Z(n60) );
  GTECH_OA21 U44 ( .A(a[2]), .B(n61), .C(b[2]), .Z(n68) );
  GTECH_AO21 U45 ( .A(n62), .B(a[1]), .C(n69), .Z(n61) );
  GTECH_OA21 U46 ( .A(a[1]), .B(n62), .C(b[1]), .Z(n69) );
  GTECH_AO21 U47 ( .A(a[0]), .B(b[0]), .C(n70), .Z(n62) );
  GTECH_OA21 U48 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n70) );
endmodule

