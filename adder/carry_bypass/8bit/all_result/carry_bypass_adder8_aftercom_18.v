
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94;

  GTECH_XOR3 U37 ( .A(b[7]), .B(n68), .C(n69), .Z(sum[7]) );
  GTECH_XOR3 U38 ( .A(b[6]), .B(a[6]), .C(n70), .Z(sum[6]) );
  GTECH_XNOR3 U39 ( .A(b[5]), .B(a[5]), .C(n71), .Z(sum[5]) );
  GTECH_XOR3 U40 ( .A(b[4]), .B(a[4]), .C(n72), .Z(sum[4]) );
  GTECH_XOR3 U41 ( .A(b[3]), .B(n73), .C(n74), .Z(sum[3]) );
  GTECH_XOR3 U42 ( .A(b[2]), .B(a[2]), .C(n75), .Z(sum[2]) );
  GTECH_XOR3 U43 ( .A(b[1]), .B(n76), .C(n77), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U45 ( .A(n69), .B(n68), .C(n78), .Z(cout) );
  GTECH_OAI21 U46 ( .A(a[7]), .B(n79), .C(b[7]), .Z(n78) );
  GTECH_NOT U47 ( .A(a[7]), .Z(n68) );
  GTECH_NOT U48 ( .A(n79), .Z(n69) );
  GTECH_AO21 U49 ( .A(n70), .B(a[6]), .C(n80), .Z(n79) );
  GTECH_NOT U50 ( .A(n81), .Z(n80) );
  GTECH_OAI21 U51 ( .A(n70), .B(a[6]), .C(b[6]), .Z(n81) );
  GTECH_AOI21 U52 ( .A(n82), .B(n71), .C(n83), .Z(n70) );
  GTECH_AOI21 U53 ( .A(n84), .B(a[5]), .C(b[5]), .Z(n83) );
  GTECH_NOT U54 ( .A(n84), .Z(n71) );
  GTECH_AO21 U55 ( .A(n72), .B(a[4]), .C(n85), .Z(n84) );
  GTECH_NOT U56 ( .A(n86), .Z(n85) );
  GTECH_OAI21 U57 ( .A(a[4]), .B(n72), .C(b[4]), .Z(n86) );
  GTECH_OAI21 U58 ( .A(n74), .B(n73), .C(n87), .Z(n72) );
  GTECH_AO21 U59 ( .A(n73), .B(n74), .C(n88), .Z(n87) );
  GTECH_NOT U60 ( .A(b[3]), .Z(n88) );
  GTECH_NOT U61 ( .A(a[3]), .Z(n73) );
  GTECH_AOI21 U62 ( .A(n75), .B(a[2]), .C(n89), .Z(n74) );
  GTECH_NOT U63 ( .A(n90), .Z(n89) );
  GTECH_OAI21 U64 ( .A(a[2]), .B(n75), .C(b[2]), .Z(n90) );
  GTECH_OAI21 U65 ( .A(n77), .B(n76), .C(n91), .Z(n75) );
  GTECH_AO21 U66 ( .A(n76), .B(n77), .C(n92), .Z(n91) );
  GTECH_NOT U67 ( .A(b[1]), .Z(n92) );
  GTECH_NOT U68 ( .A(a[1]), .Z(n76) );
  GTECH_AOI21 U69 ( .A(a[0]), .B(b[0]), .C(n93), .Z(n77) );
  GTECH_NOT U70 ( .A(n94), .Z(n93) );
  GTECH_OAI21 U71 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n94) );
  GTECH_NOT U72 ( .A(a[5]), .Z(n82) );
endmodule

