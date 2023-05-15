
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;

  GTECH_ADD_ABC U24 ( .A(b[7]), .B(a[7]), .C(n55), .S(sum[7]) );
  GTECH_ADD_ABC U25 ( .A(b[6]), .B(a[6]), .C(n56), .S(sum[6]) );
  GTECH_ADD_ABC U26 ( .A(b[5]), .B(a[5]), .C(n57), .S(sum[5]) );
  GTECH_ADD_ABC U27 ( .A(b[4]), .B(a[4]), .C(n58), .S(sum[4]) );
  GTECH_ADD_ABC U28 ( .A(b[3]), .B(a[3]), .C(n59), .S(sum[3]) );
  GTECH_ADD_ABC U29 ( .A(b[2]), .B(a[2]), .C(n60), .S(sum[2]) );
  GTECH_ADD_ABC U30 ( .A(b[1]), .B(a[1]), .C(n61), .S(sum[1]) );
  GTECH_ADD_ABC U31 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_AO21 U32 ( .A(n55), .B(a[7]), .C(n62), .Z(cout) );
  GTECH_OA21 U33 ( .A(a[7]), .B(n55), .C(b[7]), .Z(n62) );
  GTECH_AO21 U34 ( .A(n56), .B(a[6]), .C(n63), .Z(n55) );
  GTECH_OA21 U35 ( .A(a[6]), .B(n56), .C(b[6]), .Z(n63) );
  GTECH_AO21 U36 ( .A(n57), .B(a[5]), .C(n64), .Z(n56) );
  GTECH_OA21 U37 ( .A(a[5]), .B(n57), .C(b[5]), .Z(n64) );
  GTECH_AO21 U38 ( .A(n58), .B(a[4]), .C(n65), .Z(n57) );
  GTECH_OA21 U39 ( .A(a[4]), .B(n58), .C(b[4]), .Z(n65) );
  GTECH_AO21 U40 ( .A(n59), .B(a[3]), .C(n66), .Z(n58) );
  GTECH_OA21 U41 ( .A(a[3]), .B(n59), .C(b[3]), .Z(n66) );
  GTECH_AO21 U42 ( .A(n60), .B(a[2]), .C(n67), .Z(n59) );
  GTECH_OA21 U43 ( .A(a[2]), .B(n60), .C(b[2]), .Z(n67) );
  GTECH_AO21 U44 ( .A(n61), .B(a[1]), .C(n68), .Z(n60) );
  GTECH_OA21 U45 ( .A(a[1]), .B(n61), .C(b[1]), .Z(n68) );
  GTECH_ADD_ABC U46 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n61) );
endmodule

