
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94;

  GTECH_XNOR3 U65 ( .A(b[9]), .B(a[9]), .C(n48), .Z(sum[9]) );
  GTECH_NOT U66 ( .A(n49), .Z(n48) );
  GTECH_ADD_ABC U67 ( .A(b[8]), .B(a[8]), .C(n50), .S(sum[8]) );
  GTECH_ADD_ABC U68 ( .A(b[7]), .B(a[7]), .C(n51), .S(sum[7]) );
  GTECH_ADD_ABC U69 ( .A(b[6]), .B(a[6]), .C(n52), .S(sum[6]) );
  GTECH_ADD_ABC U70 ( .A(b[5]), .B(a[5]), .C(n53), .S(sum[5]) );
  GTECH_ADD_ABC U71 ( .A(b[4]), .B(a[4]), .C(n54), .S(sum[4]) );
  GTECH_ADD_ABC U72 ( .A(b[3]), .B(a[3]), .C(n55), .S(sum[3]) );
  GTECH_ADD_ABC U73 ( .A(b[2]), .B(a[2]), .C(n56), .S(sum[2]) );
  GTECH_ADD_ABC U74 ( .A(b[1]), .B(a[1]), .C(n57), .S(sum[1]) );
  GTECH_XNOR3 U75 ( .A(b[15]), .B(a[15]), .C(n58), .Z(sum[15]) );
  GTECH_AO21 U76 ( .A(n59), .B(n60), .C(n61), .Z(n58) );
  GTECH_AOI21 U77 ( .A(n62), .B(a[14]), .C(b[14]), .Z(n61) );
  GTECH_NOT U78 ( .A(n62), .Z(n60) );
  GTECH_XNOR3 U79 ( .A(b[14]), .B(n59), .C(n62), .Z(sum[14]) );
  GTECH_NOT U80 ( .A(a[14]), .Z(n59) );
  GTECH_ADD_ABC U81 ( .A(b[13]), .B(a[13]), .C(n63), .S(sum[13]) );
  GTECH_ADD_ABC U82 ( .A(b[12]), .B(a[12]), .C(n64), .S(sum[12]) );
  GTECH_ADD_ABC U83 ( .A(b[11]), .B(a[11]), .C(n65), .S(sum[11]) );
  GTECH_ADD_ABC U84 ( .A(b[10]), .B(a[10]), .C(n66), .S(sum[10]) );
  GTECH_ADD_ABC U85 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_ADD_ABC U86 ( .A(a[15]), .B(n67), .C(b[15]), .COUT(cout) );
  GTECH_OA22 U87 ( .A(a[14]), .B(n62), .C(b[14]), .D(n68), .Z(n67) );
  GTECH_AND2 U88 ( .A(n62), .B(a[14]), .Z(n68) );
  GTECH_AO21 U89 ( .A(n63), .B(a[13]), .C(n69), .Z(n62) );
  GTECH_NOT U90 ( .A(n70), .Z(n69) );
  GTECH_OAI21 U91 ( .A(a[13]), .B(n63), .C(b[13]), .Z(n70) );
  GTECH_AO21 U92 ( .A(n64), .B(a[12]), .C(n71), .Z(n63) );
  GTECH_NOT U93 ( .A(n72), .Z(n71) );
  GTECH_OAI21 U94 ( .A(a[12]), .B(n64), .C(b[12]), .Z(n72) );
  GTECH_AO21 U95 ( .A(n65), .B(a[11]), .C(n73), .Z(n64) );
  GTECH_NOT U96 ( .A(n74), .Z(n73) );
  GTECH_OAI21 U97 ( .A(a[11]), .B(n65), .C(b[11]), .Z(n74) );
  GTECH_AO21 U98 ( .A(n66), .B(a[10]), .C(n75), .Z(n65) );
  GTECH_NOT U99 ( .A(n76), .Z(n75) );
  GTECH_OAI21 U100 ( .A(a[10]), .B(n66), .C(b[10]), .Z(n76) );
  GTECH_AO21 U101 ( .A(n49), .B(a[9]), .C(n77), .Z(n66) );
  GTECH_NOT U102 ( .A(n78), .Z(n77) );
  GTECH_OAI21 U103 ( .A(a[9]), .B(n49), .C(b[9]), .Z(n78) );
  GTECH_AO21 U104 ( .A(n50), .B(a[8]), .C(n79), .Z(n49) );
  GTECH_NOT U105 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U106 ( .A(a[8]), .B(n50), .C(b[8]), .Z(n80) );
  GTECH_AO21 U107 ( .A(n51), .B(a[7]), .C(n81), .Z(n50) );
  GTECH_NOT U108 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U109 ( .A(a[7]), .B(n51), .C(b[7]), .Z(n82) );
  GTECH_AO21 U110 ( .A(n52), .B(a[6]), .C(n83), .Z(n51) );
  GTECH_NOT U111 ( .A(n84), .Z(n83) );
  GTECH_OAI21 U112 ( .A(a[6]), .B(n52), .C(b[6]), .Z(n84) );
  GTECH_AO21 U113 ( .A(n53), .B(a[5]), .C(n85), .Z(n52) );
  GTECH_NOT U114 ( .A(n86), .Z(n85) );
  GTECH_OAI21 U115 ( .A(a[5]), .B(n53), .C(b[5]), .Z(n86) );
  GTECH_AO21 U116 ( .A(n54), .B(a[4]), .C(n87), .Z(n53) );
  GTECH_NOT U117 ( .A(n88), .Z(n87) );
  GTECH_OAI21 U118 ( .A(a[4]), .B(n54), .C(b[4]), .Z(n88) );
  GTECH_AO21 U119 ( .A(n55), .B(a[3]), .C(n89), .Z(n54) );
  GTECH_NOT U120 ( .A(n90), .Z(n89) );
  GTECH_OAI21 U121 ( .A(a[3]), .B(n55), .C(b[3]), .Z(n90) );
  GTECH_AO21 U122 ( .A(n56), .B(a[2]), .C(n91), .Z(n55) );
  GTECH_NOT U123 ( .A(n92), .Z(n91) );
  GTECH_OAI21 U124 ( .A(a[2]), .B(n56), .C(b[2]), .Z(n92) );
  GTECH_AO21 U125 ( .A(n57), .B(a[1]), .C(n93), .Z(n56) );
  GTECH_NOT U126 ( .A(n94), .Z(n93) );
  GTECH_OAI21 U127 ( .A(a[1]), .B(n57), .C(b[1]), .Z(n94) );
  GTECH_ADD_ABC U128 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n57) );
endmodule

