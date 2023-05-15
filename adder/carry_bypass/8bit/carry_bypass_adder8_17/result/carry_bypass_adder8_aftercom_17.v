
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87;

  GTECH_XNOR3 U33 ( .A(n64), .B(n65), .C(n66), .Z(sum[7]) );
  GTECH_NOT U34 ( .A(n67), .Z(sum[6]) );
  GTECH_XNOR3 U35 ( .A(b[6]), .B(a[6]), .C(n68), .Z(n67) );
  GTECH_NOT U36 ( .A(n69), .Z(sum[5]) );
  GTECH_XNOR3 U37 ( .A(b[5]), .B(a[5]), .C(n70), .Z(n69) );
  GTECH_NOT U38 ( .A(n71), .Z(sum[4]) );
  GTECH_XNOR3 U39 ( .A(b[4]), .B(a[4]), .C(n72), .Z(n71) );
  GTECH_NOT U40 ( .A(n73), .Z(sum[3]) );
  GTECH_XNOR3 U41 ( .A(b[3]), .B(a[3]), .C(n74), .Z(n73) );
  GTECH_NOT U42 ( .A(n75), .Z(sum[2]) );
  GTECH_XNOR3 U43 ( .A(b[2]), .B(a[2]), .C(n76), .Z(n75) );
  GTECH_XNOR3 U44 ( .A(n77), .B(a[1]), .C(n78), .Z(sum[1]) );
  GTECH_NOT U45 ( .A(b[1]), .Z(n77) );
  GTECH_NOT U46 ( .A(n79), .Z(sum[0]) );
  GTECH_XNOR3 U47 ( .A(cin), .B(b[0]), .C(a[0]), .Z(n79) );
  GTECH_OAI21 U48 ( .A(n66), .B(n65), .C(n80), .Z(cout) );
  GTECH_AO21 U49 ( .A(n65), .B(n66), .C(n64), .Z(n80) );
  GTECH_NOT U50 ( .A(b[7]), .Z(n64) );
  GTECH_NOT U51 ( .A(a[7]), .Z(n65) );
  GTECH_AOI21 U52 ( .A(n68), .B(a[6]), .C(n81), .Z(n66) );
  GTECH_OA21 U53 ( .A(a[6]), .B(n68), .C(b[6]), .Z(n81) );
  GTECH_AO21 U54 ( .A(n70), .B(a[5]), .C(n82), .Z(n68) );
  GTECH_OA21 U55 ( .A(a[5]), .B(n70), .C(b[5]), .Z(n82) );
  GTECH_AO21 U56 ( .A(n72), .B(a[4]), .C(n83), .Z(n70) );
  GTECH_OA21 U57 ( .A(a[4]), .B(n72), .C(b[4]), .Z(n83) );
  GTECH_AO21 U58 ( .A(n74), .B(a[3]), .C(n84), .Z(n72) );
  GTECH_OA21 U59 ( .A(a[3]), .B(n74), .C(b[3]), .Z(n84) );
  GTECH_AO21 U60 ( .A(n76), .B(a[2]), .C(n85), .Z(n74) );
  GTECH_OA21 U61 ( .A(a[2]), .B(n76), .C(b[2]), .Z(n85) );
  GTECH_AO21 U62 ( .A(n78), .B(a[1]), .C(n86), .Z(n76) );
  GTECH_OA21 U63 ( .A(a[1]), .B(n78), .C(b[1]), .Z(n86) );
  GTECH_AO21 U64 ( .A(a[0]), .B(b[0]), .C(n87), .Z(n78) );
  GTECH_OA21 U65 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n87) );
endmodule

