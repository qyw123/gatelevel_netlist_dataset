
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_XOR2 U33 ( .A(cout), .B(n50), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n52), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND2 U36 ( .A(n55), .B(n56), .Z(n54) );
  GTECH_OAI21 U37 ( .A(n52), .B(n55), .C(n57), .Z(sum[2]) );
  GTECH_NOT U38 ( .A(n58), .Z(n57) );
  GTECH_AOI21 U39 ( .A(n56), .B(n59), .C(n60), .Z(n58) );
  GTECH_XNOR2 U40 ( .A(n56), .B(n59), .Z(sum[1]) );
  GTECH_XOR3 U41 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U42 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U43 ( .A(a[7]), .B(n61), .C(b[7]), .D(n62), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_OR2 U44 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_XNOR3 U45 ( .A(b[5]), .B(a[5]), .C(n63), .Z(n50) );
  GTECH_XOR3 U46 ( .A(b[6]), .B(n64), .C(n65), .Z(n51) );
  GTECH_XOR3 U47 ( .A(b[7]), .B(a[7]), .C(n61), .Z(n45) );
  GTECH_OR2 U48 ( .A(n61), .B(a[7]), .Z(n62) );
  GTECH_OAI21 U49 ( .A(n65), .B(n64), .C(n66), .Z(n61) );
  GTECH_OAI21 U50 ( .A(a[6]), .B(n67), .C(b[6]), .Z(n66) );
  GTECH_NOT U51 ( .A(a[6]), .Z(n64) );
  GTECH_NOT U52 ( .A(n67), .Z(n65) );
  GTECH_OAI21 U53 ( .A(n63), .B(n68), .C(n69), .Z(n67) );
  GTECH_OAI21 U54 ( .A(a[5]), .B(n70), .C(b[5]), .Z(n69) );
  GTECH_NOT U55 ( .A(a[5]), .Z(n68) );
  GTECH_NOT U56 ( .A(n70), .Z(n63) );
  GTECH_OAI21 U57 ( .A(n52), .B(n71), .C(n72), .Z(n70) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n56), .C(b[4]), .Z(n72) );
  GTECH_NOT U59 ( .A(n52), .Z(n56) );
  GTECH_NOT U60 ( .A(a[4]), .Z(n71) );
  GTECH_AOI222 U61 ( .A(a[3]), .B(n73), .C(b[3]), .D(n74), .E(n53), .F(n55), 
        .Z(n52) );
  GTECH_NAND2 U62 ( .A(n59), .B(n60), .Z(n55) );
  GTECH_XNOR3 U63 ( .A(b[2]), .B(a[2]), .C(n75), .Z(n60) );
  GTECH_XOR3 U64 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n59) );
  GTECH_XNOR3 U65 ( .A(b[3]), .B(a[3]), .C(n77), .Z(n53) );
  GTECH_OR_NOT U66 ( .A(a[3]), .B(n77), .Z(n74) );
  GTECH_NOT U67 ( .A(n77), .Z(n73) );
  GTECH_AOI21 U68 ( .A(n75), .B(a[2]), .C(n78), .Z(n77) );
  GTECH_NOT U69 ( .A(n79), .Z(n78) );
  GTECH_OAI21 U70 ( .A(a[2]), .B(n75), .C(b[2]), .Z(n79) );
  GTECH_OAI21 U71 ( .A(n76), .B(n80), .C(n81), .Z(n75) );
  GTECH_OAI21 U72 ( .A(a[1]), .B(n82), .C(b[1]), .Z(n81) );
  GTECH_NOT U73 ( .A(a[1]), .Z(n80) );
  GTECH_NOT U74 ( .A(n82), .Z(n76) );
  GTECH_ADD_ABC U75 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n82) );
endmodule

