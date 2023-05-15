
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90;

  GTECH_XOR3 U63 ( .A(b[9]), .B(a[9]), .C(n46), .Z(sum[9]) );
  GTECH_XOR3 U64 ( .A(b[8]), .B(a[8]), .C(n47), .Z(sum[8]) );
  GTECH_XOR3 U65 ( .A(b[7]), .B(a[7]), .C(n48), .Z(sum[7]) );
  GTECH_XOR3 U66 ( .A(b[6]), .B(a[6]), .C(n49), .Z(sum[6]) );
  GTECH_XOR3 U67 ( .A(b[5]), .B(a[5]), .C(n50), .Z(sum[5]) );
  GTECH_XOR3 U68 ( .A(b[4]), .B(a[4]), .C(n51), .Z(sum[4]) );
  GTECH_XOR3 U69 ( .A(b[3]), .B(a[3]), .C(n52), .Z(sum[3]) );
  GTECH_XOR3 U70 ( .A(b[2]), .B(a[2]), .C(n53), .Z(sum[2]) );
  GTECH_XOR3 U71 ( .A(b[1]), .B(a[1]), .C(n54), .Z(sum[1]) );
  GTECH_XOR3 U72 ( .A(b[15]), .B(a[15]), .C(n55), .Z(sum[15]) );
  GTECH_XOR3 U73 ( .A(b[14]), .B(a[14]), .C(n56), .Z(sum[14]) );
  GTECH_XOR3 U74 ( .A(b[13]), .B(a[13]), .C(n57), .Z(sum[13]) );
  GTECH_XOR3 U75 ( .A(b[12]), .B(a[12]), .C(n58), .Z(sum[12]) );
  GTECH_XOR3 U76 ( .A(b[11]), .B(a[11]), .C(n59), .Z(sum[11]) );
  GTECH_XOR3 U77 ( .A(b[10]), .B(a[10]), .C(n60), .Z(sum[10]) );
  GTECH_XOR3 U78 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U79 ( .A(n55), .B(a[15]), .C(n61), .Z(cout) );
  GTECH_NOT U80 ( .A(n62), .Z(n61) );
  GTECH_OAI21 U81 ( .A(a[15]), .B(n55), .C(b[15]), .Z(n62) );
  GTECH_AO21 U82 ( .A(n56), .B(a[14]), .C(n63), .Z(n55) );
  GTECH_NOT U83 ( .A(n64), .Z(n63) );
  GTECH_OAI21 U84 ( .A(a[14]), .B(n56), .C(b[14]), .Z(n64) );
  GTECH_AO21 U85 ( .A(n57), .B(a[13]), .C(n65), .Z(n56) );
  GTECH_NOT U86 ( .A(n66), .Z(n65) );
  GTECH_OAI21 U87 ( .A(a[13]), .B(n57), .C(b[13]), .Z(n66) );
  GTECH_AO21 U88 ( .A(n58), .B(a[12]), .C(n67), .Z(n57) );
  GTECH_NOT U89 ( .A(n68), .Z(n67) );
  GTECH_OAI21 U90 ( .A(a[12]), .B(n58), .C(b[12]), .Z(n68) );
  GTECH_AO21 U91 ( .A(n59), .B(a[11]), .C(n69), .Z(n58) );
  GTECH_NOT U92 ( .A(n70), .Z(n69) );
  GTECH_OAI21 U93 ( .A(a[11]), .B(n59), .C(b[11]), .Z(n70) );
  GTECH_AO21 U94 ( .A(n60), .B(a[10]), .C(n71), .Z(n59) );
  GTECH_NOT U95 ( .A(n72), .Z(n71) );
  GTECH_OAI21 U96 ( .A(a[10]), .B(n60), .C(b[10]), .Z(n72) );
  GTECH_AO21 U97 ( .A(n46), .B(a[9]), .C(n73), .Z(n60) );
  GTECH_NOT U98 ( .A(n74), .Z(n73) );
  GTECH_OAI21 U99 ( .A(a[9]), .B(n46), .C(b[9]), .Z(n74) );
  GTECH_AO21 U100 ( .A(n47), .B(a[8]), .C(n75), .Z(n46) );
  GTECH_NOT U101 ( .A(n76), .Z(n75) );
  GTECH_OAI21 U102 ( .A(a[8]), .B(n47), .C(b[8]), .Z(n76) );
  GTECH_AO21 U103 ( .A(n48), .B(a[7]), .C(n77), .Z(n47) );
  GTECH_NOT U104 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U105 ( .A(a[7]), .B(n48), .C(b[7]), .Z(n78) );
  GTECH_AO21 U106 ( .A(n49), .B(a[6]), .C(n79), .Z(n48) );
  GTECH_NOT U107 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U108 ( .A(a[6]), .B(n49), .C(b[6]), .Z(n80) );
  GTECH_AO21 U109 ( .A(n50), .B(a[5]), .C(n81), .Z(n49) );
  GTECH_NOT U110 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U111 ( .A(a[5]), .B(n50), .C(b[5]), .Z(n82) );
  GTECH_AO21 U112 ( .A(n51), .B(a[4]), .C(n83), .Z(n50) );
  GTECH_NOT U113 ( .A(n84), .Z(n83) );
  GTECH_OAI21 U114 ( .A(a[4]), .B(n51), .C(b[4]), .Z(n84) );
  GTECH_AO21 U115 ( .A(n52), .B(a[3]), .C(n85), .Z(n51) );
  GTECH_NOT U116 ( .A(n86), .Z(n85) );
  GTECH_OAI21 U117 ( .A(a[3]), .B(n52), .C(b[3]), .Z(n86) );
  GTECH_AO21 U118 ( .A(n53), .B(a[2]), .C(n87), .Z(n52) );
  GTECH_NOT U119 ( .A(n88), .Z(n87) );
  GTECH_OAI21 U120 ( .A(a[2]), .B(n53), .C(b[2]), .Z(n88) );
  GTECH_AO21 U121 ( .A(n54), .B(a[1]), .C(n89), .Z(n53) );
  GTECH_NOT U122 ( .A(n90), .Z(n89) );
  GTECH_OAI21 U123 ( .A(a[1]), .B(n54), .C(b[1]), .Z(n90) );
  GTECH_ADD_ABC U124 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n54) );
endmodule

