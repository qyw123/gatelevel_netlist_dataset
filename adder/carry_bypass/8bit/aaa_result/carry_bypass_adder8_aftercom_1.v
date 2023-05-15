
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89;

  GTECH_XOR3 U34 ( .A(b[7]), .B(n65), .C(n66), .Z(sum[7]) );
  GTECH_XOR3 U35 ( .A(b[6]), .B(a[6]), .C(n67), .Z(sum[6]) );
  GTECH_XOR3 U36 ( .A(b[5]), .B(n68), .C(n69), .Z(sum[5]) );
  GTECH_XOR3 U37 ( .A(b[4]), .B(a[4]), .C(n70), .Z(sum[4]) );
  GTECH_XOR3 U38 ( .A(b[3]), .B(a[3]), .C(n71), .Z(sum[3]) );
  GTECH_XOR3 U39 ( .A(b[2]), .B(a[2]), .C(n72), .Z(sum[2]) );
  GTECH_AOI21 U40 ( .A(n73), .B(n74), .C(n75), .Z(n72) );
  GTECH_AOI21 U41 ( .A(n76), .B(a[1]), .C(b[1]), .Z(n75) );
  GTECH_XNOR3 U42 ( .A(b[1]), .B(a[1]), .C(n74), .Z(sum[1]) );
  GTECH_NOT U43 ( .A(n76), .Z(n74) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U45 ( .A(n66), .B(n65), .C(n77), .Z(cout) );
  GTECH_OAI21 U46 ( .A(a[7]), .B(n78), .C(b[7]), .Z(n77) );
  GTECH_NOT U47 ( .A(n66), .Z(n78) );
  GTECH_NOT U48 ( .A(a[7]), .Z(n65) );
  GTECH_AOI21 U49 ( .A(n67), .B(a[6]), .C(n79), .Z(n66) );
  GTECH_NOT U50 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U51 ( .A(a[6]), .B(n67), .C(b[6]), .Z(n80) );
  GTECH_OAI21 U52 ( .A(n69), .B(n68), .C(n81), .Z(n67) );
  GTECH_OAI21 U53 ( .A(a[5]), .B(n82), .C(b[5]), .Z(n81) );
  GTECH_NOT U54 ( .A(n69), .Z(n82) );
  GTECH_NOT U55 ( .A(a[5]), .Z(n68) );
  GTECH_AOI21 U56 ( .A(n70), .B(a[4]), .C(n83), .Z(n69) );
  GTECH_NOT U57 ( .A(n84), .Z(n83) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n70), .C(b[4]), .Z(n84) );
  GTECH_NOT U59 ( .A(n85), .Z(n70) );
  GTECH_AOI21 U60 ( .A(n71), .B(a[3]), .C(n86), .Z(n85) );
  GTECH_NOT U61 ( .A(n87), .Z(n86) );
  GTECH_OAI21 U62 ( .A(a[3]), .B(n71), .C(b[3]), .Z(n87) );
  GTECH_ADD_ABC U63 ( .A(n88), .B(a[2]), .C(b[2]), .COUT(n71) );
  GTECH_OA22 U64 ( .A(a[1]), .B(n76), .C(b[1]), .D(n89), .Z(n88) );
  GTECH_AND_NOT U65 ( .A(n76), .B(n73), .Z(n89) );
  GTECH_NOT U66 ( .A(a[1]), .Z(n73) );
  GTECH_ADD_ABC U67 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

