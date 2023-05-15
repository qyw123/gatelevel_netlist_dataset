
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70;

  GTECH_XOR3 U19 ( .A(b[7]), .B(n50), .C(n51), .Z(sum[7]) );
  GTECH_XOR3 U20 ( .A(b[6]), .B(a[6]), .C(n52), .Z(sum[6]) );
  GTECH_XOR3 U21 ( .A(b[5]), .B(a[5]), .C(n53), .Z(sum[5]) );
  GTECH_XOR3 U22 ( .A(b[4]), .B(a[4]), .C(n54), .Z(sum[4]) );
  GTECH_XOR3 U23 ( .A(b[3]), .B(a[3]), .C(n55), .Z(sum[3]) );
  GTECH_XOR3 U24 ( .A(b[2]), .B(a[2]), .C(n56), .Z(sum[2]) );
  GTECH_XOR3 U25 ( .A(b[1]), .B(a[1]), .C(n57), .Z(sum[1]) );
  GTECH_XOR3 U26 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U27 ( .A(n51), .B(n50), .C(n58), .Z(cout) );
  GTECH_OAI21 U28 ( .A(a[7]), .B(n59), .C(b[7]), .Z(n58) );
  GTECH_NOT U29 ( .A(n51), .Z(n59) );
  GTECH_NOT U30 ( .A(a[7]), .Z(n50) );
  GTECH_AOI21 U31 ( .A(n52), .B(a[6]), .C(n60), .Z(n51) );
  GTECH_OA21 U32 ( .A(a[6]), .B(n52), .C(b[6]), .Z(n60) );
  GTECH_NOT U33 ( .A(n61), .Z(n52) );
  GTECH_AOI21 U34 ( .A(n53), .B(a[5]), .C(n62), .Z(n61) );
  GTECH_OA21 U35 ( .A(a[5]), .B(n53), .C(b[5]), .Z(n62) );
  GTECH_NOT U36 ( .A(n63), .Z(n53) );
  GTECH_AOI21 U37 ( .A(n54), .B(a[4]), .C(n64), .Z(n63) );
  GTECH_OA21 U38 ( .A(a[4]), .B(n54), .C(b[4]), .Z(n64) );
  GTECH_NOT U39 ( .A(n65), .Z(n54) );
  GTECH_AOI21 U40 ( .A(n55), .B(a[3]), .C(n66), .Z(n65) );
  GTECH_OA21 U41 ( .A(a[3]), .B(n55), .C(b[3]), .Z(n66) );
  GTECH_NOT U42 ( .A(n67), .Z(n55) );
  GTECH_AOI21 U43 ( .A(n56), .B(a[2]), .C(n68), .Z(n67) );
  GTECH_OA21 U44 ( .A(a[2]), .B(n56), .C(b[2]), .Z(n68) );
  GTECH_NOT U45 ( .A(n69), .Z(n56) );
  GTECH_AOI21 U46 ( .A(n57), .B(a[1]), .C(n70), .Z(n69) );
  GTECH_OA21 U47 ( .A(a[1]), .B(n57), .C(b[1]), .Z(n70) );
  GTECH_ADD_ABC U48 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n57) );
endmodule

