
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_XNOR2 U33 ( .A(n48), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XNOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI21 U37 ( .A(n52), .B(n55), .C(n56), .Z(sum[2]) );
  GTECH_OAI21 U38 ( .A(n52), .B(n57), .C(n58), .Z(n56) );
  GTECH_NOT U39 ( .A(n59), .Z(n55) );
  GTECH_XNOR2 U40 ( .A(n60), .B(n61), .Z(sum[1]) );
  GTECH_XOR3 U41 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U42 ( .A(n48), .Z(cout) );
  GTECH_AOI21 U43 ( .A(n62), .B(a[7]), .C(n63), .Z(n48) );
  GTECH_OAI21 U44 ( .A(n64), .B(n45), .C(n65), .Z(n63) );
  GTECH_OAI21 U45 ( .A(a[7]), .B(n62), .C(b[7]), .Z(n65) );
  GTECH_XOR3 U46 ( .A(b[7]), .B(a[7]), .C(n66), .Z(n45) );
  GTECH_NOT U47 ( .A(n47), .Z(n64) );
  GTECH_OR2 U48 ( .A(n50), .B(n51), .Z(n47) );
  GTECH_XNOR3 U49 ( .A(b[6]), .B(a[6]), .C(n67), .Z(n51) );
  GTECH_XNOR3 U50 ( .A(b[5]), .B(a[5]), .C(n68), .Z(n50) );
  GTECH_NOT U51 ( .A(n66), .Z(n62) );
  GTECH_AOI21 U52 ( .A(n69), .B(a[6]), .C(n70), .Z(n66) );
  GTECH_OA21 U53 ( .A(a[6]), .B(n69), .C(b[6]), .Z(n70) );
  GTECH_NOT U54 ( .A(n67), .Z(n69) );
  GTECH_AOI21 U55 ( .A(n71), .B(a[5]), .C(n72), .Z(n67) );
  GTECH_OA21 U56 ( .A(a[5]), .B(n71), .C(b[5]), .Z(n72) );
  GTECH_NOT U57 ( .A(n68), .Z(n71) );
  GTECH_AOI21 U58 ( .A(n60), .B(a[4]), .C(n73), .Z(n68) );
  GTECH_OA21 U59 ( .A(a[4]), .B(n60), .C(b[4]), .Z(n73) );
  GTECH_NOT U60 ( .A(n52), .Z(n60) );
  GTECH_AOI21 U61 ( .A(n74), .B(a[3]), .C(n75), .Z(n52) );
  GTECH_OAI21 U62 ( .A(n59), .B(n53), .C(n76), .Z(n75) );
  GTECH_OAI21 U63 ( .A(a[3]), .B(n74), .C(b[3]), .Z(n76) );
  GTECH_XOR3 U64 ( .A(b[3]), .B(a[3]), .C(n77), .Z(n53) );
  GTECH_AND_NOT U65 ( .A(n61), .B(n58), .Z(n59) );
  GTECH_XNOR3 U66 ( .A(b[2]), .B(a[2]), .C(n78), .Z(n58) );
  GTECH_NOT U67 ( .A(n57), .Z(n61) );
  GTECH_XOR3 U68 ( .A(b[1]), .B(a[1]), .C(n79), .Z(n57) );
  GTECH_NOT U69 ( .A(n77), .Z(n74) );
  GTECH_AOI21 U70 ( .A(n80), .B(a[2]), .C(n81), .Z(n77) );
  GTECH_OA21 U71 ( .A(a[2]), .B(n80), .C(b[2]), .Z(n81) );
  GTECH_NOT U72 ( .A(n78), .Z(n80) );
  GTECH_AOI21 U73 ( .A(n79), .B(a[1]), .C(n82), .Z(n78) );
  GTECH_OA21 U74 ( .A(a[1]), .B(n79), .C(b[1]), .Z(n82) );
  GTECH_ADD_ABC U75 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n79) );
endmodule

