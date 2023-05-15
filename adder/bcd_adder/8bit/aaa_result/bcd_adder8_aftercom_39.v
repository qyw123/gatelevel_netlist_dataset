
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(n47), .B(n48), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_XOR2 U33 ( .A(cout), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI21 U37 ( .A(n52), .B(n55), .C(n56), .Z(sum[2]) );
  GTECH_OAI21 U38 ( .A(n52), .B(n57), .C(n58), .Z(n56) );
  GTECH_XOR2 U39 ( .A(n59), .B(n57), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n60), .C(b[7]), .D(n61), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_OR2 U43 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U44 ( .A(b[5]), .B(a[5]), .C(n62), .Z(n50) );
  GTECH_XNOR3 U45 ( .A(b[6]), .B(a[6]), .C(n63), .Z(n51) );
  GTECH_XOR3 U46 ( .A(b[7]), .B(a[7]), .C(n60), .Z(n45) );
  GTECH_OR2 U47 ( .A(a[7]), .B(n60), .Z(n61) );
  GTECH_OAI21 U48 ( .A(n63), .B(n64), .C(n65), .Z(n60) );
  GTECH_AO21 U49 ( .A(n64), .B(n63), .C(n66), .Z(n65) );
  GTECH_NOT U50 ( .A(b[6]), .Z(n66) );
  GTECH_NOT U51 ( .A(a[6]), .Z(n64) );
  GTECH_OA21 U52 ( .A(n62), .B(n67), .C(n68), .Z(n63) );
  GTECH_OAI21 U53 ( .A(a[5]), .B(n69), .C(b[5]), .Z(n68) );
  GTECH_NOT U54 ( .A(a[5]), .Z(n67) );
  GTECH_NOT U55 ( .A(n69), .Z(n62) );
  GTECH_AO21 U56 ( .A(n59), .B(a[4]), .C(n70), .Z(n69) );
  GTECH_OA21 U57 ( .A(a[4]), .B(n59), .C(b[4]), .Z(n70) );
  GTECH_NOT U58 ( .A(n52), .Z(n59) );
  GTECH_AOI222 U59 ( .A(a[3]), .B(n71), .C(b[3]), .D(n72), .E(n53), .F(n55), 
        .Z(n52) );
  GTECH_OR2 U60 ( .A(n58), .B(n57), .Z(n55) );
  GTECH_XNOR3 U61 ( .A(b[1]), .B(a[1]), .C(n73), .Z(n57) );
  GTECH_XNOR3 U62 ( .A(b[2]), .B(a[2]), .C(n74), .Z(n58) );
  GTECH_XOR3 U63 ( .A(b[3]), .B(a[3]), .C(n71), .Z(n53) );
  GTECH_OR2 U64 ( .A(a[3]), .B(n71), .Z(n72) );
  GTECH_OAI21 U65 ( .A(n74), .B(n75), .C(n76), .Z(n71) );
  GTECH_AO21 U66 ( .A(n75), .B(n74), .C(n77), .Z(n76) );
  GTECH_NOT U67 ( .A(b[2]), .Z(n77) );
  GTECH_NOT U68 ( .A(a[2]), .Z(n75) );
  GTECH_OA21 U69 ( .A(n73), .B(n78), .C(n79), .Z(n74) );
  GTECH_OAI21 U70 ( .A(a[1]), .B(n80), .C(b[1]), .Z(n79) );
  GTECH_NOT U71 ( .A(a[1]), .Z(n78) );
  GTECH_NOT U72 ( .A(n80), .Z(n73) );
  GTECH_ADD_ABC U73 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n80) );
endmodule

