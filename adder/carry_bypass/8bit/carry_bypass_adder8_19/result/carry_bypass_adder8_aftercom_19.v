
module carry_bypass_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101;

  GTECH_XOR3 U48 ( .A(b[7]), .B(n79), .C(n80), .Z(sum[7]) );
  GTECH_XOR3 U49 ( .A(b[6]), .B(a[6]), .C(n81), .Z(sum[6]) );
  GTECH_XOR3 U50 ( .A(b[5]), .B(a[5]), .C(n82), .Z(sum[5]) );
  GTECH_XOR3 U51 ( .A(b[4]), .B(a[4]), .C(n83), .Z(sum[4]) );
  GTECH_XOR3 U52 ( .A(b[3]), .B(a[3]), .C(n84), .Z(sum[3]) );
  GTECH_XOR3 U53 ( .A(b[2]), .B(a[2]), .C(n85), .Z(sum[2]) );
  GTECH_XOR3 U54 ( .A(b[1]), .B(a[1]), .C(n86), .Z(sum[1]) );
  GTECH_XOR3 U55 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U56 ( .A(n80), .B(n79), .C(n87), .Z(cout) );
  GTECH_OAI21 U57 ( .A(a[7]), .B(n88), .C(b[7]), .Z(n87) );
  GTECH_NOT U58 ( .A(n80), .Z(n88) );
  GTECH_NOT U59 ( .A(a[7]), .Z(n79) );
  GTECH_AOI21 U60 ( .A(n81), .B(a[6]), .C(n89), .Z(n80) );
  GTECH_OA21 U61 ( .A(n81), .B(a[6]), .C(b[6]), .Z(n89) );
  GTECH_OA21 U62 ( .A(a[5]), .B(n82), .C(n90), .Z(n81) );
  GTECH_NOT U63 ( .A(n91), .Z(n90) );
  GTECH_AOI21 U64 ( .A(n82), .B(a[5]), .C(b[5]), .Z(n91) );
  GTECH_OA21 U65 ( .A(a[4]), .B(n83), .C(n92), .Z(n82) );
  GTECH_NOT U66 ( .A(n93), .Z(n92) );
  GTECH_AOI21 U67 ( .A(n83), .B(a[4]), .C(b[4]), .Z(n93) );
  GTECH_OA21 U68 ( .A(a[3]), .B(n84), .C(n94), .Z(n83) );
  GTECH_NOT U69 ( .A(n95), .Z(n94) );
  GTECH_AOI21 U70 ( .A(n84), .B(a[3]), .C(b[3]), .Z(n95) );
  GTECH_OA21 U71 ( .A(a[2]), .B(n85), .C(n96), .Z(n84) );
  GTECH_NOT U72 ( .A(n97), .Z(n96) );
  GTECH_AOI21 U73 ( .A(n85), .B(a[2]), .C(b[2]), .Z(n97) );
  GTECH_OA21 U74 ( .A(a[1]), .B(n86), .C(n98), .Z(n85) );
  GTECH_NOT U75 ( .A(n99), .Z(n98) );
  GTECH_AOI21 U76 ( .A(n86), .B(a[1]), .C(b[1]), .Z(n99) );
  GTECH_OA21 U77 ( .A(b[0]), .B(a[0]), .C(n100), .Z(n86) );
  GTECH_NOT U78 ( .A(n101), .Z(n100) );
  GTECH_AOI21 U79 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n101) );
endmodule

