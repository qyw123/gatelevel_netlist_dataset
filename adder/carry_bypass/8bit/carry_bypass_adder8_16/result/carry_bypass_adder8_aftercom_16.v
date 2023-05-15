
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73;

  GTECH_XOR3 U22 ( .A(b[7]), .B(a[7]), .C(n53), .Z(sum[7]) );
  GTECH_XOR3 U23 ( .A(b[6]), .B(a[6]), .C(n54), .Z(sum[6]) );
  GTECH_XOR3 U24 ( .A(b[5]), .B(n55), .C(n56), .Z(sum[5]) );
  GTECH_XOR3 U25 ( .A(b[4]), .B(a[4]), .C(n57), .Z(sum[4]) );
  GTECH_XOR3 U26 ( .A(b[3]), .B(a[3]), .C(n58), .Z(sum[3]) );
  GTECH_XOR3 U27 ( .A(b[2]), .B(a[2]), .C(n59), .Z(sum[2]) );
  GTECH_XOR3 U28 ( .A(b[1]), .B(a[1]), .C(n60), .Z(sum[1]) );
  GTECH_XOR3 U29 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U30 ( .A(n61), .B(n62), .C(n63), .Z(cout) );
  GTECH_OAI21 U31 ( .A(a[7]), .B(n53), .C(b[7]), .Z(n63) );
  GTECH_NOT U32 ( .A(n61), .Z(n53) );
  GTECH_NOT U33 ( .A(a[7]), .Z(n62) );
  GTECH_AOI21 U34 ( .A(n54), .B(a[6]), .C(n64), .Z(n61) );
  GTECH_OA21 U35 ( .A(a[6]), .B(n54), .C(b[6]), .Z(n64) );
  GTECH_OAI21 U36 ( .A(n56), .B(n55), .C(n65), .Z(n54) );
  GTECH_OAI21 U37 ( .A(a[5]), .B(n66), .C(b[5]), .Z(n65) );
  GTECH_NOT U38 ( .A(n56), .Z(n66) );
  GTECH_NOT U39 ( .A(a[5]), .Z(n55) );
  GTECH_AOI21 U40 ( .A(n57), .B(a[4]), .C(n67), .Z(n56) );
  GTECH_OA21 U41 ( .A(a[4]), .B(n57), .C(b[4]), .Z(n67) );
  GTECH_NOT U42 ( .A(n68), .Z(n57) );
  GTECH_AOI21 U43 ( .A(n58), .B(a[3]), .C(n69), .Z(n68) );
  GTECH_OA21 U44 ( .A(a[3]), .B(n58), .C(b[3]), .Z(n69) );
  GTECH_NOT U45 ( .A(n70), .Z(n58) );
  GTECH_AOI21 U46 ( .A(n59), .B(a[2]), .C(n71), .Z(n70) );
  GTECH_OA21 U47 ( .A(a[2]), .B(n59), .C(b[2]), .Z(n71) );
  GTECH_NOT U48 ( .A(n72), .Z(n59) );
  GTECH_AOI21 U49 ( .A(n60), .B(a[1]), .C(n73), .Z(n72) );
  GTECH_OA21 U50 ( .A(a[1]), .B(n60), .C(b[1]), .Z(n73) );
  GTECH_ADD_ABC U51 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n60) );
endmodule

