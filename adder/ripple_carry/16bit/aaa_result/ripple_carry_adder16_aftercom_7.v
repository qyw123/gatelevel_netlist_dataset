
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92;

  GTECH_XOR3 U58 ( .A(b[9]), .B(a[9]), .C(n41), .Z(sum[9]) );
  GTECH_XNOR3 U59 ( .A(b[8]), .B(a[8]), .C(n42), .Z(sum[8]) );
  GTECH_XOR3 U60 ( .A(b[7]), .B(a[7]), .C(n43), .Z(sum[7]) );
  GTECH_XNOR3 U61 ( .A(b[6]), .B(a[6]), .C(n44), .Z(sum[6]) );
  GTECH_XOR3 U62 ( .A(b[5]), .B(a[5]), .C(n45), .Z(sum[5]) );
  GTECH_XNOR3 U63 ( .A(b[4]), .B(a[4]), .C(n46), .Z(sum[4]) );
  GTECH_XOR3 U64 ( .A(b[3]), .B(a[3]), .C(n47), .Z(sum[3]) );
  GTECH_XNOR3 U65 ( .A(b[2]), .B(a[2]), .C(n48), .Z(sum[2]) );
  GTECH_XOR3 U66 ( .A(b[1]), .B(a[1]), .C(n49), .Z(sum[1]) );
  GTECH_XOR3 U67 ( .A(b[15]), .B(a[15]), .C(n50), .Z(sum[15]) );
  GTECH_XNOR3 U68 ( .A(b[14]), .B(a[14]), .C(n51), .Z(sum[14]) );
  GTECH_XOR3 U69 ( .A(b[13]), .B(a[13]), .C(n52), .Z(sum[13]) );
  GTECH_XNOR3 U70 ( .A(b[12]), .B(a[12]), .C(n53), .Z(sum[12]) );
  GTECH_XOR3 U71 ( .A(b[11]), .B(a[11]), .C(n54), .Z(sum[11]) );
  GTECH_XNOR3 U72 ( .A(b[10]), .B(a[10]), .C(n55), .Z(sum[10]) );
  GTECH_XOR3 U73 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U74 ( .A(n50), .B(a[15]), .C(n56), .Z(cout) );
  GTECH_NOT U75 ( .A(n57), .Z(n56) );
  GTECH_OAI21 U76 ( .A(a[15]), .B(n50), .C(b[15]), .Z(n57) );
  GTECH_OAI21 U77 ( .A(n51), .B(n58), .C(n59), .Z(n50) );
  GTECH_OAI21 U78 ( .A(a[14]), .B(n60), .C(b[14]), .Z(n59) );
  GTECH_NOT U79 ( .A(n51), .Z(n60) );
  GTECH_NOT U80 ( .A(a[14]), .Z(n58) );
  GTECH_AOI21 U81 ( .A(n52), .B(a[13]), .C(n61), .Z(n51) );
  GTECH_NOT U82 ( .A(n62), .Z(n61) );
  GTECH_OAI21 U83 ( .A(a[13]), .B(n52), .C(b[13]), .Z(n62) );
  GTECH_OAI21 U84 ( .A(n53), .B(n63), .C(n64), .Z(n52) );
  GTECH_OAI21 U85 ( .A(a[12]), .B(n65), .C(b[12]), .Z(n64) );
  GTECH_NOT U86 ( .A(n53), .Z(n65) );
  GTECH_NOT U87 ( .A(a[12]), .Z(n63) );
  GTECH_AOI21 U88 ( .A(n54), .B(a[11]), .C(n66), .Z(n53) );
  GTECH_NOT U89 ( .A(n67), .Z(n66) );
  GTECH_OAI21 U90 ( .A(a[11]), .B(n54), .C(b[11]), .Z(n67) );
  GTECH_OAI21 U91 ( .A(n55), .B(n68), .C(n69), .Z(n54) );
  GTECH_OAI21 U92 ( .A(a[10]), .B(n70), .C(b[10]), .Z(n69) );
  GTECH_NOT U93 ( .A(n55), .Z(n70) );
  GTECH_NOT U94 ( .A(a[10]), .Z(n68) );
  GTECH_AOI21 U95 ( .A(n41), .B(a[9]), .C(n71), .Z(n55) );
  GTECH_NOT U96 ( .A(n72), .Z(n71) );
  GTECH_OAI21 U97 ( .A(a[9]), .B(n41), .C(b[9]), .Z(n72) );
  GTECH_OAI21 U98 ( .A(n42), .B(n73), .C(n74), .Z(n41) );
  GTECH_OAI21 U99 ( .A(a[8]), .B(n75), .C(b[8]), .Z(n74) );
  GTECH_NOT U100 ( .A(n42), .Z(n75) );
  GTECH_NOT U101 ( .A(a[8]), .Z(n73) );
  GTECH_AOI21 U102 ( .A(n43), .B(a[7]), .C(n76), .Z(n42) );
  GTECH_NOT U103 ( .A(n77), .Z(n76) );
  GTECH_OAI21 U104 ( .A(a[7]), .B(n43), .C(b[7]), .Z(n77) );
  GTECH_OAI21 U105 ( .A(n44), .B(n78), .C(n79), .Z(n43) );
  GTECH_OAI21 U106 ( .A(a[6]), .B(n80), .C(b[6]), .Z(n79) );
  GTECH_NOT U107 ( .A(n44), .Z(n80) );
  GTECH_NOT U108 ( .A(a[6]), .Z(n78) );
  GTECH_AOI21 U109 ( .A(n45), .B(a[5]), .C(n81), .Z(n44) );
  GTECH_NOT U110 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U111 ( .A(a[5]), .B(n45), .C(b[5]), .Z(n82) );
  GTECH_OAI21 U112 ( .A(n46), .B(n83), .C(n84), .Z(n45) );
  GTECH_OAI21 U113 ( .A(a[4]), .B(n85), .C(b[4]), .Z(n84) );
  GTECH_NOT U114 ( .A(n46), .Z(n85) );
  GTECH_NOT U115 ( .A(a[4]), .Z(n83) );
  GTECH_AOI21 U116 ( .A(n47), .B(a[3]), .C(n86), .Z(n46) );
  GTECH_NOT U117 ( .A(n87), .Z(n86) );
  GTECH_OAI21 U118 ( .A(a[3]), .B(n47), .C(b[3]), .Z(n87) );
  GTECH_OAI21 U119 ( .A(n48), .B(n88), .C(n89), .Z(n47) );
  GTECH_OAI21 U120 ( .A(a[2]), .B(n90), .C(b[2]), .Z(n89) );
  GTECH_NOT U121 ( .A(n48), .Z(n90) );
  GTECH_NOT U122 ( .A(a[2]), .Z(n88) );
  GTECH_AOI21 U123 ( .A(n49), .B(a[1]), .C(n91), .Z(n48) );
  GTECH_NOT U124 ( .A(n92), .Z(n91) );
  GTECH_OAI21 U125 ( .A(a[1]), .B(n49), .C(b[1]), .Z(n92) );
  GTECH_ADD_ABC U126 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n49) );
endmodule

