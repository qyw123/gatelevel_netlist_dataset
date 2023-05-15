
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95;

  GTECH_XNOR3 U65 ( .A(n48), .B(a[9]), .C(n49), .Z(sum[9]) );
  GTECH_NOT U66 ( .A(b[9]), .Z(n48) );
  GTECH_NOT U67 ( .A(n50), .Z(sum[8]) );
  GTECH_XNOR3 U68 ( .A(b[8]), .B(a[8]), .C(n51), .Z(n50) );
  GTECH_NOT U69 ( .A(n52), .Z(sum[7]) );
  GTECH_XNOR3 U70 ( .A(b[7]), .B(a[7]), .C(n53), .Z(n52) );
  GTECH_NOT U71 ( .A(n54), .Z(sum[6]) );
  GTECH_XNOR3 U72 ( .A(b[6]), .B(a[6]), .C(n55), .Z(n54) );
  GTECH_NOT U73 ( .A(n56), .Z(sum[5]) );
  GTECH_XNOR3 U74 ( .A(b[5]), .B(a[5]), .C(n57), .Z(n56) );
  GTECH_NOT U75 ( .A(n58), .Z(sum[4]) );
  GTECH_XNOR3 U76 ( .A(b[4]), .B(a[4]), .C(n59), .Z(n58) );
  GTECH_NOT U77 ( .A(n60), .Z(sum[3]) );
  GTECH_XNOR3 U78 ( .A(b[3]), .B(a[3]), .C(n61), .Z(n60) );
  GTECH_NOT U79 ( .A(n62), .Z(sum[2]) );
  GTECH_XNOR3 U80 ( .A(b[2]), .B(a[2]), .C(n63), .Z(n62) );
  GTECH_XNOR3 U81 ( .A(n64), .B(a[1]), .C(n65), .Z(sum[1]) );
  GTECH_NOT U82 ( .A(b[1]), .Z(n64) );
  GTECH_XNOR3 U83 ( .A(n66), .B(n67), .C(n68), .Z(sum[15]) );
  GTECH_NOT U84 ( .A(n69), .Z(sum[14]) );
  GTECH_XNOR3 U85 ( .A(b[14]), .B(a[14]), .C(n70), .Z(n69) );
  GTECH_NOT U86 ( .A(n71), .Z(sum[13]) );
  GTECH_XNOR3 U87 ( .A(b[13]), .B(a[13]), .C(n72), .Z(n71) );
  GTECH_NOT U88 ( .A(n73), .Z(sum[12]) );
  GTECH_XNOR3 U89 ( .A(b[12]), .B(a[12]), .C(n74), .Z(n73) );
  GTECH_NOT U90 ( .A(n75), .Z(sum[11]) );
  GTECH_XNOR3 U91 ( .A(b[11]), .B(a[11]), .C(n76), .Z(n75) );
  GTECH_XNOR3 U92 ( .A(n77), .B(a[10]), .C(n78), .Z(sum[10]) );
  GTECH_NOT U93 ( .A(b[10]), .Z(n77) );
  GTECH_NOT U94 ( .A(n79), .Z(sum[0]) );
  GTECH_XNOR3 U95 ( .A(cin), .B(b[0]), .C(a[0]), .Z(n79) );
  GTECH_OAI21 U96 ( .A(n68), .B(n67), .C(n80), .Z(cout) );
  GTECH_AO21 U97 ( .A(n67), .B(n68), .C(n66), .Z(n80) );
  GTECH_NOT U98 ( .A(b[15]), .Z(n66) );
  GTECH_NOT U99 ( .A(a[15]), .Z(n67) );
  GTECH_AOI21 U100 ( .A(n70), .B(a[14]), .C(n81), .Z(n68) );
  GTECH_OA21 U101 ( .A(a[14]), .B(n70), .C(b[14]), .Z(n81) );
  GTECH_AO21 U102 ( .A(n72), .B(a[13]), .C(n82), .Z(n70) );
  GTECH_OA21 U103 ( .A(a[13]), .B(n72), .C(b[13]), .Z(n82) );
  GTECH_AO21 U104 ( .A(n74), .B(a[12]), .C(n83), .Z(n72) );
  GTECH_OA21 U105 ( .A(a[12]), .B(n74), .C(b[12]), .Z(n83) );
  GTECH_AO21 U106 ( .A(n76), .B(a[11]), .C(n84), .Z(n74) );
  GTECH_OA21 U107 ( .A(a[11]), .B(n76), .C(b[11]), .Z(n84) );
  GTECH_AO21 U108 ( .A(n78), .B(a[10]), .C(n85), .Z(n76) );
  GTECH_OA21 U109 ( .A(a[10]), .B(n78), .C(b[10]), .Z(n85) );
  GTECH_AO21 U110 ( .A(n49), .B(a[9]), .C(n86), .Z(n78) );
  GTECH_OA21 U111 ( .A(a[9]), .B(n49), .C(b[9]), .Z(n86) );
  GTECH_AO21 U112 ( .A(n51), .B(a[8]), .C(n87), .Z(n49) );
  GTECH_OA21 U113 ( .A(a[8]), .B(n51), .C(b[8]), .Z(n87) );
  GTECH_AO21 U114 ( .A(n53), .B(a[7]), .C(n88), .Z(n51) );
  GTECH_OA21 U115 ( .A(a[7]), .B(n53), .C(b[7]), .Z(n88) );
  GTECH_AO21 U116 ( .A(n55), .B(a[6]), .C(n89), .Z(n53) );
  GTECH_OA21 U117 ( .A(a[6]), .B(n55), .C(b[6]), .Z(n89) );
  GTECH_AO21 U118 ( .A(n57), .B(a[5]), .C(n90), .Z(n55) );
  GTECH_OA21 U119 ( .A(a[5]), .B(n57), .C(b[5]), .Z(n90) );
  GTECH_AO21 U120 ( .A(n59), .B(a[4]), .C(n91), .Z(n57) );
  GTECH_OA21 U121 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n91) );
  GTECH_AO21 U122 ( .A(n61), .B(a[3]), .C(n92), .Z(n59) );
  GTECH_OA21 U123 ( .A(a[3]), .B(n61), .C(b[3]), .Z(n92) );
  GTECH_AO21 U124 ( .A(n63), .B(a[2]), .C(n93), .Z(n61) );
  GTECH_OA21 U125 ( .A(a[2]), .B(n63), .C(b[2]), .Z(n93) );
  GTECH_AO21 U126 ( .A(n65), .B(a[1]), .C(n94), .Z(n63) );
  GTECH_OA21 U127 ( .A(a[1]), .B(n65), .C(b[1]), .Z(n94) );
  GTECH_AO21 U128 ( .A(a[0]), .B(b[0]), .C(n95), .Z(n65) );
  GTECH_OA21 U129 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n95) );
endmodule

