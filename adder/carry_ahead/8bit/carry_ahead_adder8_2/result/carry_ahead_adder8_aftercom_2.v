
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;

  GTECH_XOR3 U20 ( .A(b[7]), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_XOR3 U21 ( .A(b[6]), .B(a[6]), .C(co[5]), .Z(sum[6]) );
  GTECH_XOR3 U22 ( .A(b[5]), .B(a[5]), .C(co[4]), .Z(sum[5]) );
  GTECH_XOR3 U23 ( .A(b[4]), .B(a[4]), .C(co[3]), .Z(sum[4]) );
  GTECH_XOR3 U24 ( .A(b[3]), .B(a[3]), .C(co[2]), .Z(sum[3]) );
  GTECH_XOR3 U25 ( .A(b[2]), .B(a[2]), .C(co[1]), .Z(sum[2]) );
  GTECH_XOR3 U26 ( .A(b[1]), .B(a[1]), .C(co[0]), .Z(sum[1]) );
  GTECH_XOR3 U27 ( .A(ci), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U28 ( .A(n4), .B(n5), .C(n6), .Z(co[7]) );
  GTECH_OAI21 U29 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n6) );
  GTECH_NOT U30 ( .A(a[7]), .Z(n5) );
  GTECH_NOT U31 ( .A(n4), .Z(co[6]) );
  GTECH_AOI21 U32 ( .A(co[5]), .B(a[6]), .C(n7), .Z(n4) );
  GTECH_OA21 U33 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n7) );
  GTECH_NOT U34 ( .A(n8), .Z(co[5]) );
  GTECH_AOI21 U35 ( .A(co[4]), .B(a[5]), .C(n9), .Z(n8) );
  GTECH_OA21 U36 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n9) );
  GTECH_NOT U37 ( .A(n10), .Z(co[4]) );
  GTECH_AOI21 U38 ( .A(co[3]), .B(a[4]), .C(n11), .Z(n10) );
  GTECH_OA21 U39 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n11) );
  GTECH_NOT U40 ( .A(n12), .Z(co[3]) );
  GTECH_AOI21 U41 ( .A(co[2]), .B(a[3]), .C(n13), .Z(n12) );
  GTECH_OA21 U42 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n13) );
  GTECH_NOT U43 ( .A(n14), .Z(co[2]) );
  GTECH_AOI21 U44 ( .A(co[1]), .B(a[2]), .C(n15), .Z(n14) );
  GTECH_OA21 U45 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n15) );
  GTECH_NOT U46 ( .A(n16), .Z(co[1]) );
  GTECH_AOI21 U47 ( .A(co[0]), .B(a[1]), .C(n17), .Z(n16) );
  GTECH_OA21 U48 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n17) );
  GTECH_ADD_ABC U49 ( .A(a[0]), .B(b[0]), .C(ci), .COUT(co[0]) );
endmodule

