
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_NOT U33 ( .A(cout), .Z(n48) );
  GTECH_XOR2 U34 ( .A(cout), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U35 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XNOR2 U36 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U37 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI21 U38 ( .A(n52), .B(n55), .C(n56), .Z(sum[2]) );
  GTECH_OAI21 U39 ( .A(n52), .B(n57), .C(n58), .Z(n56) );
  GTECH_NOT U40 ( .A(n59), .Z(n52) );
  GTECH_XOR2 U41 ( .A(n59), .B(n57), .Z(sum[1]) );
  GTECH_XOR3 U42 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U43 ( .A(n60), .B(a[7]), .C(n61), .Z(cout) );
  GTECH_OAI21 U44 ( .A(n62), .B(n45), .C(n63), .Z(n61) );
  GTECH_OAI21 U45 ( .A(a[7]), .B(n60), .C(b[7]), .Z(n63) );
  GTECH_XNOR3 U46 ( .A(b[7]), .B(a[7]), .C(n60), .Z(n45) );
  GTECH_NOT U47 ( .A(n47), .Z(n62) );
  GTECH_OR2 U48 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U49 ( .A(b[5]), .B(a[5]), .C(n64), .Z(n50) );
  GTECH_XNOR3 U50 ( .A(b[6]), .B(a[6]), .C(n65), .Z(n51) );
  GTECH_OAI21 U51 ( .A(n65), .B(n66), .C(n67), .Z(n60) );
  GTECH_AO21 U52 ( .A(n66), .B(n65), .C(n68), .Z(n67) );
  GTECH_NOT U53 ( .A(b[6]), .Z(n68) );
  GTECH_NOT U54 ( .A(a[6]), .Z(n66) );
  GTECH_OA21 U55 ( .A(n64), .B(n69), .C(n70), .Z(n65) );
  GTECH_OAI21 U56 ( .A(a[5]), .B(n71), .C(b[5]), .Z(n70) );
  GTECH_NOT U57 ( .A(a[5]), .Z(n69) );
  GTECH_NOT U58 ( .A(n71), .Z(n64) );
  GTECH_AO21 U59 ( .A(n59), .B(a[4]), .C(n72), .Z(n71) );
  GTECH_OA21 U60 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n72) );
  GTECH_AO21 U61 ( .A(n73), .B(a[3]), .C(n74), .Z(n59) );
  GTECH_OAI21 U62 ( .A(n75), .B(n53), .C(n76), .Z(n74) );
  GTECH_OAI21 U63 ( .A(a[3]), .B(n73), .C(b[3]), .Z(n76) );
  GTECH_XNOR3 U64 ( .A(b[3]), .B(a[3]), .C(n73), .Z(n53) );
  GTECH_NOT U65 ( .A(n55), .Z(n75) );
  GTECH_OR2 U66 ( .A(n58), .B(n57), .Z(n55) );
  GTECH_XNOR3 U67 ( .A(b[1]), .B(a[1]), .C(n77), .Z(n57) );
  GTECH_XNOR3 U68 ( .A(b[2]), .B(a[2]), .C(n78), .Z(n58) );
  GTECH_OAI21 U69 ( .A(n78), .B(n79), .C(n80), .Z(n73) );
  GTECH_AO21 U70 ( .A(n79), .B(n78), .C(n81), .Z(n80) );
  GTECH_NOT U71 ( .A(b[2]), .Z(n81) );
  GTECH_NOT U72 ( .A(a[2]), .Z(n79) );
  GTECH_OA21 U73 ( .A(n77), .B(n82), .C(n83), .Z(n78) );
  GTECH_OAI21 U74 ( .A(a[1]), .B(n84), .C(b[1]), .Z(n83) );
  GTECH_NOT U75 ( .A(a[1]), .Z(n82) );
  GTECH_NOT U76 ( .A(n84), .Z(n77) );
  GTECH_ADD_ABC U77 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n84) );
endmodule

