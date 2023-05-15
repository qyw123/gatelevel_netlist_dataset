
module carry_ahead_adder8 ( sum, co, ci, a, b );
  output [7:0] sum;
  output [7:0] co;
  input [7:0] a;
  input [7:0] b;
  input ci;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  GTECH_XOR3 U25 ( .A(b[7]), .B(a[7]), .C(co[6]), .Z(sum[7]) );
  GTECH_XOR3 U26 ( .A(b[6]), .B(a[6]), .C(co[5]), .Z(sum[6]) );
  GTECH_XOR3 U27 ( .A(b[5]), .B(a[5]), .C(co[4]), .Z(sum[5]) );
  GTECH_XOR3 U28 ( .A(b[4]), .B(a[4]), .C(co[3]), .Z(sum[4]) );
  GTECH_XOR3 U29 ( .A(b[3]), .B(a[3]), .C(co[2]), .Z(sum[3]) );
  GTECH_XOR3 U30 ( .A(b[2]), .B(a[2]), .C(co[1]), .Z(sum[2]) );
  GTECH_XOR3 U31 ( .A(b[1]), .B(a[1]), .C(co[0]), .Z(sum[1]) );
  GTECH_XOR3 U32 ( .A(ci), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U33 ( .A(co[6]), .B(a[7]), .C(n9), .Z(co[7]) );
  GTECH_OA21 U34 ( .A(a[7]), .B(co[6]), .C(b[7]), .Z(n9) );
  GTECH_AO21 U35 ( .A(co[5]), .B(a[6]), .C(n10), .Z(co[6]) );
  GTECH_OA21 U36 ( .A(a[6]), .B(co[5]), .C(b[6]), .Z(n10) );
  GTECH_AO21 U37 ( .A(co[4]), .B(a[5]), .C(n11), .Z(co[5]) );
  GTECH_OA21 U38 ( .A(a[5]), .B(co[4]), .C(b[5]), .Z(n11) );
  GTECH_AO21 U39 ( .A(co[3]), .B(a[4]), .C(n12), .Z(co[4]) );
  GTECH_OA21 U40 ( .A(a[4]), .B(co[3]), .C(b[4]), .Z(n12) );
  GTECH_AO21 U41 ( .A(co[2]), .B(a[3]), .C(n13), .Z(co[3]) );
  GTECH_OA21 U42 ( .A(a[3]), .B(co[2]), .C(b[3]), .Z(n13) );
  GTECH_AO21 U43 ( .A(co[1]), .B(a[2]), .C(n14), .Z(co[2]) );
  GTECH_OA21 U44 ( .A(a[2]), .B(co[1]), .C(b[2]), .Z(n14) );
  GTECH_AO21 U45 ( .A(co[0]), .B(a[1]), .C(n15), .Z(co[1]) );
  GTECH_OA21 U46 ( .A(a[1]), .B(co[0]), .C(b[1]), .Z(n15) );
  GTECH_AO21 U47 ( .A(a[0]), .B(b[0]), .C(n16), .Z(co[0]) );
  GTECH_OA21 U48 ( .A(a[0]), .B(b[0]), .C(ci), .Z(n16) );
endmodule

