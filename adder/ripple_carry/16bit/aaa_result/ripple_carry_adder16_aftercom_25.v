
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106;

  GTECH_XOR3 U69 ( .A(b[9]), .B(a[9]), .C(n52), .Z(sum[9]) );
  GTECH_AOI21 U70 ( .A(n53), .B(n54), .C(n55), .Z(n52) );
  GTECH_AOI21 U71 ( .A(n56), .B(a[8]), .C(b[8]), .Z(n55) );
  GTECH_XOR3 U72 ( .A(b[8]), .B(n53), .C(n54), .Z(sum[8]) );
  GTECH_XOR3 U73 ( .A(b[7]), .B(a[7]), .C(n57), .Z(sum[7]) );
  GTECH_XNOR3 U74 ( .A(b[6]), .B(n58), .C(n59), .Z(sum[6]) );
  GTECH_XNOR3 U75 ( .A(b[5]), .B(n60), .C(n61), .Z(sum[5]) );
  GTECH_XNOR3 U76 ( .A(b[4]), .B(n62), .C(n63), .Z(sum[4]) );
  GTECH_XNOR3 U77 ( .A(b[3]), .B(n64), .C(n65), .Z(sum[3]) );
  GTECH_XOR3 U78 ( .A(b[2]), .B(a[2]), .C(n66), .Z(sum[2]) );
  GTECH_AOI21 U79 ( .A(n67), .B(n68), .C(n69), .Z(n66) );
  GTECH_AOI21 U80 ( .A(n70), .B(a[1]), .C(b[1]), .Z(n69) );
  GTECH_XOR3 U81 ( .A(b[1]), .B(n67), .C(n68), .Z(sum[1]) );
  GTECH_XNOR3 U82 ( .A(b[15]), .B(a[15]), .C(n71), .Z(sum[15]) );
  GTECH_XOR3 U83 ( .A(b[14]), .B(a[14]), .C(n72), .Z(sum[14]) );
  GTECH_XNOR3 U84 ( .A(b[13]), .B(a[13]), .C(n73), .Z(sum[13]) );
  GTECH_XOR3 U85 ( .A(b[12]), .B(a[12]), .C(n74), .Z(sum[12]) );
  GTECH_XNOR3 U86 ( .A(b[11]), .B(n75), .C(n76), .Z(sum[11]) );
  GTECH_XNOR3 U87 ( .A(b[10]), .B(n77), .C(n78), .Z(sum[10]) );
  GTECH_XOR3 U88 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U89 ( .A(n71), .B(n79), .C(n80), .Z(cout) );
  GTECH_OAI21 U90 ( .A(a[15]), .B(n81), .C(b[15]), .Z(n80) );
  GTECH_NOT U91 ( .A(n71), .Z(n81) );
  GTECH_NOT U92 ( .A(a[15]), .Z(n79) );
  GTECH_AOI21 U93 ( .A(n72), .B(a[14]), .C(n82), .Z(n71) );
  GTECH_NOT U94 ( .A(n83), .Z(n82) );
  GTECH_OAI21 U95 ( .A(a[14]), .B(n72), .C(b[14]), .Z(n83) );
  GTECH_OAI21 U96 ( .A(n73), .B(n84), .C(n85), .Z(n72) );
  GTECH_OAI21 U97 ( .A(a[13]), .B(n86), .C(b[13]), .Z(n85) );
  GTECH_NOT U98 ( .A(n73), .Z(n86) );
  GTECH_NOT U99 ( .A(a[13]), .Z(n84) );
  GTECH_AOI21 U100 ( .A(n74), .B(a[12]), .C(n87), .Z(n73) );
  GTECH_NOT U101 ( .A(n88), .Z(n87) );
  GTECH_OAI21 U102 ( .A(a[12]), .B(n74), .C(b[12]), .Z(n88) );
  GTECH_OAI21 U103 ( .A(n89), .B(n75), .C(n90), .Z(n74) );
  GTECH_OAI21 U104 ( .A(a[11]), .B(n76), .C(b[11]), .Z(n90) );
  GTECH_NOT U105 ( .A(a[11]), .Z(n75) );
  GTECH_NOT U106 ( .A(n76), .Z(n89) );
  GTECH_OAI21 U107 ( .A(n91), .B(n77), .C(n92), .Z(n76) );
  GTECH_OAI21 U108 ( .A(a[10]), .B(n78), .C(b[10]), .Z(n92) );
  GTECH_NOT U109 ( .A(a[10]), .Z(n77) );
  GTECH_NOT U110 ( .A(n78), .Z(n91) );
  GTECH_ADD_ABC U111 ( .A(a[9]), .B(n93), .C(b[9]), .COUT(n78) );
  GTECH_AOI2N2 U112 ( .A(n53), .B(n54), .C(b[8]), .D(n94), .Z(n93) );
  GTECH_AND2 U113 ( .A(n56), .B(a[8]), .Z(n94) );
  GTECH_NOT U114 ( .A(n54), .Z(n56) );
  GTECH_AOI21 U115 ( .A(n57), .B(a[7]), .C(n95), .Z(n54) );
  GTECH_NOT U116 ( .A(n96), .Z(n95) );
  GTECH_OAI21 U117 ( .A(a[7]), .B(n57), .C(b[7]), .Z(n96) );
  GTECH_OAI21 U118 ( .A(n97), .B(n58), .C(n98), .Z(n57) );
  GTECH_OAI21 U119 ( .A(a[6]), .B(n59), .C(b[6]), .Z(n98) );
  GTECH_NOT U120 ( .A(a[6]), .Z(n58) );
  GTECH_NOT U121 ( .A(n59), .Z(n97) );
  GTECH_OAI21 U122 ( .A(n99), .B(n60), .C(n100), .Z(n59) );
  GTECH_OAI21 U123 ( .A(a[5]), .B(n61), .C(b[5]), .Z(n100) );
  GTECH_NOT U124 ( .A(a[5]), .Z(n60) );
  GTECH_NOT U125 ( .A(n61), .Z(n99) );
  GTECH_OAI21 U126 ( .A(n101), .B(n62), .C(n102), .Z(n61) );
  GTECH_OAI21 U127 ( .A(a[4]), .B(n63), .C(b[4]), .Z(n102) );
  GTECH_NOT U128 ( .A(a[4]), .Z(n62) );
  GTECH_NOT U129 ( .A(n63), .Z(n101) );
  GTECH_OAI21 U130 ( .A(n103), .B(n64), .C(n104), .Z(n63) );
  GTECH_OAI21 U131 ( .A(a[3]), .B(n65), .C(b[3]), .Z(n104) );
  GTECH_NOT U132 ( .A(a[3]), .Z(n64) );
  GTECH_NOT U133 ( .A(n65), .Z(n103) );
  GTECH_ADD_ABC U134 ( .A(n105), .B(a[2]), .C(b[2]), .COUT(n65) );
  GTECH_AOI2N2 U135 ( .A(n67), .B(n68), .C(b[1]), .D(n106), .Z(n105) );
  GTECH_AND2 U136 ( .A(n70), .B(a[1]), .Z(n106) );
  GTECH_NOT U137 ( .A(n70), .Z(n68) );
  GTECH_ADD_ABC U138 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n70) );
  GTECH_NOT U139 ( .A(a[1]), .Z(n67) );
  GTECH_NOT U140 ( .A(a[8]), .Z(n53) );
endmodule

