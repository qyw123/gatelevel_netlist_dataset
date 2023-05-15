
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_XNOR2 U33 ( .A(n48), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI21 U37 ( .A(n52), .B(n55), .C(n56), .Z(sum[2]) );
  GTECH_OAI21 U38 ( .A(n52), .B(n57), .C(n58), .Z(n56) );
  GTECH_XNOR2 U39 ( .A(n59), .B(n60), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n61), .C(b[7]), .D(n62), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_OR2 U43 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U44 ( .A(b[5]), .B(a[5]), .C(n63), .Z(n50) );
  GTECH_XNOR3 U45 ( .A(b[6]), .B(a[6]), .C(n64), .Z(n51) );
  GTECH_XNOR3 U46 ( .A(b[7]), .B(a[7]), .C(n65), .Z(n45) );
  GTECH_OR2 U47 ( .A(a[7]), .B(n61), .Z(n62) );
  GTECH_NOT U48 ( .A(n65), .Z(n61) );
  GTECH_AOI21 U49 ( .A(n66), .B(a[6]), .C(n67), .Z(n65) );
  GTECH_OA21 U50 ( .A(a[6]), .B(n66), .C(b[6]), .Z(n67) );
  GTECH_NOT U51 ( .A(n64), .Z(n66) );
  GTECH_AOI21 U52 ( .A(n68), .B(a[5]), .C(n69), .Z(n64) );
  GTECH_OA21 U53 ( .A(a[5]), .B(n68), .C(b[5]), .Z(n69) );
  GTECH_NOT U54 ( .A(n63), .Z(n68) );
  GTECH_AOI21 U55 ( .A(n59), .B(a[4]), .C(n70), .Z(n63) );
  GTECH_OA21 U56 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n70) );
  GTECH_NOT U57 ( .A(n52), .Z(n59) );
  GTECH_AOI222 U58 ( .A(a[3]), .B(n71), .C(b[3]), .D(n72), .E(n53), .F(n55), 
        .Z(n52) );
  GTECH_OR_NOT U59 ( .A(n58), .B(n60), .Z(n55) );
  GTECH_NOT U60 ( .A(n57), .Z(n60) );
  GTECH_XOR3 U61 ( .A(b[1]), .B(a[1]), .C(n73), .Z(n57) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n74), .Z(n58) );
  GTECH_XNOR3 U63 ( .A(b[3]), .B(a[3]), .C(n75), .Z(n53) );
  GTECH_OR2 U64 ( .A(a[3]), .B(n71), .Z(n72) );
  GTECH_NOT U65 ( .A(n75), .Z(n71) );
  GTECH_AOI21 U66 ( .A(n76), .B(a[2]), .C(n77), .Z(n75) );
  GTECH_OA21 U67 ( .A(a[2]), .B(n76), .C(b[2]), .Z(n77) );
  GTECH_NOT U68 ( .A(n74), .Z(n76) );
  GTECH_AOI21 U69 ( .A(n73), .B(a[1]), .C(n78), .Z(n74) );
  GTECH_OA21 U70 ( .A(a[1]), .B(n73), .C(b[1]), .Z(n78) );
  GTECH_ADD_ABC U71 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n73) );
endmodule
