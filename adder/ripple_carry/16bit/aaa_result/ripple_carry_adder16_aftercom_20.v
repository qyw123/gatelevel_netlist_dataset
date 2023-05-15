
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96;

  GTECH_XOR3 U67 ( .A(b[9]), .B(a[9]), .C(n50), .Z(sum[9]) );
  GTECH_XOR3 U68 ( .A(b[8]), .B(a[8]), .C(n51), .Z(sum[8]) );
  GTECH_XOR3 U69 ( .A(b[7]), .B(a[7]), .C(n52), .Z(sum[7]) );
  GTECH_XOR3 U70 ( .A(b[6]), .B(a[6]), .C(n53), .Z(sum[6]) );
  GTECH_XOR3 U71 ( .A(b[5]), .B(a[5]), .C(n54), .Z(sum[5]) );
  GTECH_XOR3 U72 ( .A(b[4]), .B(a[4]), .C(n55), .Z(sum[4]) );
  GTECH_XOR3 U73 ( .A(b[3]), .B(a[3]), .C(n56), .Z(sum[3]) );
  GTECH_XOR3 U74 ( .A(b[2]), .B(a[2]), .C(n57), .Z(sum[2]) );
  GTECH_XOR3 U75 ( .A(b[1]), .B(a[1]), .C(n58), .Z(sum[1]) );
  GTECH_XOR3 U76 ( .A(b[15]), .B(a[15]), .C(n59), .Z(sum[15]) );
  GTECH_XNOR3 U77 ( .A(b[14]), .B(a[14]), .C(n60), .Z(sum[14]) );
  GTECH_XOR3 U78 ( .A(b[13]), .B(a[13]), .C(n61), .Z(sum[13]) );
  GTECH_XOR3 U79 ( .A(b[12]), .B(a[12]), .C(n62), .Z(sum[12]) );
  GTECH_XOR3 U80 ( .A(b[11]), .B(a[11]), .C(n63), .Z(sum[11]) );
  GTECH_XOR3 U81 ( .A(b[10]), .B(a[10]), .C(n64), .Z(sum[10]) );
  GTECH_XOR3 U82 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U83 ( .A(n65), .Z(cout) );
  GTECH_AOI21 U84 ( .A(a[15]), .B(n59), .C(n66), .Z(n65) );
  GTECH_OA21 U85 ( .A(n59), .B(a[15]), .C(b[15]), .Z(n66) );
  GTECH_AOI21 U86 ( .A(n67), .B(n60), .C(n68), .Z(n59) );
  GTECH_AOI21 U87 ( .A(n69), .B(a[14]), .C(b[14]), .Z(n68) );
  GTECH_NOT U88 ( .A(n60), .Z(n69) );
  GTECH_AOI21 U89 ( .A(n61), .B(a[13]), .C(n70), .Z(n60) );
  GTECH_OA21 U90 ( .A(a[13]), .B(n61), .C(b[13]), .Z(n70) );
  GTECH_NOT U91 ( .A(n71), .Z(n61) );
  GTECH_AOI21 U92 ( .A(n62), .B(a[12]), .C(n72), .Z(n71) );
  GTECH_OA21 U93 ( .A(a[12]), .B(n62), .C(b[12]), .Z(n72) );
  GTECH_NOT U94 ( .A(n73), .Z(n62) );
  GTECH_AOI21 U95 ( .A(n63), .B(a[11]), .C(n74), .Z(n73) );
  GTECH_OA21 U96 ( .A(a[11]), .B(n63), .C(b[11]), .Z(n74) );
  GTECH_NOT U97 ( .A(n75), .Z(n63) );
  GTECH_AOI21 U98 ( .A(n64), .B(a[10]), .C(n76), .Z(n75) );
  GTECH_OA21 U99 ( .A(a[10]), .B(n64), .C(b[10]), .Z(n76) );
  GTECH_NOT U100 ( .A(n77), .Z(n64) );
  GTECH_AOI21 U101 ( .A(n50), .B(a[9]), .C(n78), .Z(n77) );
  GTECH_OA21 U102 ( .A(a[9]), .B(n50), .C(b[9]), .Z(n78) );
  GTECH_NOT U103 ( .A(n79), .Z(n50) );
  GTECH_AOI21 U104 ( .A(n51), .B(a[8]), .C(n80), .Z(n79) );
  GTECH_OA21 U105 ( .A(a[8]), .B(n51), .C(b[8]), .Z(n80) );
  GTECH_NOT U106 ( .A(n81), .Z(n51) );
  GTECH_AOI21 U107 ( .A(n52), .B(a[7]), .C(n82), .Z(n81) );
  GTECH_OA21 U108 ( .A(a[7]), .B(n52), .C(b[7]), .Z(n82) );
  GTECH_NOT U109 ( .A(n83), .Z(n52) );
  GTECH_AOI21 U110 ( .A(n53), .B(a[6]), .C(n84), .Z(n83) );
  GTECH_OA21 U111 ( .A(a[6]), .B(n53), .C(b[6]), .Z(n84) );
  GTECH_NOT U112 ( .A(n85), .Z(n53) );
  GTECH_AOI21 U113 ( .A(n54), .B(a[5]), .C(n86), .Z(n85) );
  GTECH_OA21 U114 ( .A(a[5]), .B(n54), .C(b[5]), .Z(n86) );
  GTECH_NOT U115 ( .A(n87), .Z(n54) );
  GTECH_AOI21 U116 ( .A(n55), .B(a[4]), .C(n88), .Z(n87) );
  GTECH_OA21 U117 ( .A(a[4]), .B(n55), .C(b[4]), .Z(n88) );
  GTECH_NOT U118 ( .A(n89), .Z(n55) );
  GTECH_AOI21 U119 ( .A(n56), .B(a[3]), .C(n90), .Z(n89) );
  GTECH_OA21 U120 ( .A(a[3]), .B(n56), .C(b[3]), .Z(n90) );
  GTECH_NOT U121 ( .A(n91), .Z(n56) );
  GTECH_AOI21 U122 ( .A(n57), .B(a[2]), .C(n92), .Z(n91) );
  GTECH_OA21 U123 ( .A(a[2]), .B(n57), .C(b[2]), .Z(n92) );
  GTECH_NOT U124 ( .A(n93), .Z(n57) );
  GTECH_AOI21 U125 ( .A(n58), .B(a[1]), .C(n94), .Z(n93) );
  GTECH_OA21 U126 ( .A(a[1]), .B(n58), .C(b[1]), .Z(n94) );
  GTECH_NOT U127 ( .A(n95), .Z(n58) );
  GTECH_AOI21 U128 ( .A(a[0]), .B(b[0]), .C(n96), .Z(n95) );
  GTECH_OA21 U129 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n96) );
  GTECH_NOT U130 ( .A(a[14]), .Z(n67) );
endmodule

