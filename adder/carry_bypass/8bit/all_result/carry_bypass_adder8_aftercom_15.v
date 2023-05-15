
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82;

  GTECH_XOR3 U31 ( .A(b[7]), .B(a[7]), .C(n62), .Z(sum[7]) );
  GTECH_XOR3 U32 ( .A(b[6]), .B(a[6]), .C(n63), .Z(sum[6]) );
  GTECH_XOR3 U33 ( .A(b[5]), .B(a[5]), .C(n64), .Z(sum[5]) );
  GTECH_XOR3 U34 ( .A(b[4]), .B(a[4]), .C(n65), .Z(sum[4]) );
  GTECH_XOR3 U35 ( .A(b[3]), .B(a[3]), .C(n66), .Z(sum[3]) );
  GTECH_XOR3 U36 ( .A(b[2]), .B(a[2]), .C(n67), .Z(sum[2]) );
  GTECH_XOR3 U37 ( .A(b[1]), .B(a[1]), .C(n68), .Z(sum[1]) );
  GTECH_XOR3 U38 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U39 ( .A(n62), .B(a[7]), .C(n69), .Z(cout) );
  GTECH_NOT U40 ( .A(n70), .Z(n69) );
  GTECH_OAI21 U41 ( .A(a[7]), .B(n62), .C(b[7]), .Z(n70) );
  GTECH_AO21 U42 ( .A(n63), .B(a[6]), .C(n71), .Z(n62) );
  GTECH_NOT U43 ( .A(n72), .Z(n71) );
  GTECH_OAI21 U44 ( .A(a[6]), .B(n63), .C(b[6]), .Z(n72) );
  GTECH_AO21 U45 ( .A(n64), .B(a[5]), .C(n73), .Z(n63) );
  GTECH_NOT U46 ( .A(n74), .Z(n73) );
  GTECH_OAI21 U47 ( .A(a[5]), .B(n64), .C(b[5]), .Z(n74) );
  GTECH_AO21 U48 ( .A(n65), .B(a[4]), .C(n75), .Z(n64) );
  GTECH_NOT U49 ( .A(n76), .Z(n75) );
  GTECH_OAI21 U50 ( .A(a[4]), .B(n65), .C(b[4]), .Z(n76) );
  GTECH_AO21 U51 ( .A(n66), .B(a[3]), .C(n77), .Z(n65) );
  GTECH_NOT U52 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U53 ( .A(a[3]), .B(n66), .C(b[3]), .Z(n78) );
  GTECH_AO21 U54 ( .A(n67), .B(a[2]), .C(n79), .Z(n66) );
  GTECH_NOT U55 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U56 ( .A(a[2]), .B(n67), .C(b[2]), .Z(n80) );
  GTECH_AO21 U57 ( .A(n68), .B(a[1]), .C(n81), .Z(n67) );
  GTECH_NOT U58 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U59 ( .A(a[1]), .B(n68), .C(b[1]), .Z(n82) );
  GTECH_ADD_ABC U60 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n68) );
endmodule

