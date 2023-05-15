
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
  GTECH_AO21 U31 ( .A(cout), .B(n48), .C(n49), .Z(sum[6]) );
  GTECH_AOI21 U32 ( .A(cout), .B(n50), .C(n51), .Z(n49) );
  GTECH_XOR2 U33 ( .A(cout), .B(n52), .Z(sum[5]) );
  GTECH_XNOR3 U34 ( .A(b[4]), .B(a[4]), .C(n53), .Z(sum[4]) );
  GTECH_XOR2 U35 ( .A(n54), .B(n55), .Z(sum[3]) );
  GTECH_AND2 U36 ( .A(n56), .B(n57), .Z(n55) );
  GTECH_AO21 U37 ( .A(n57), .B(n58), .C(n59), .Z(sum[2]) );
  GTECH_AOI21 U38 ( .A(n57), .B(n60), .C(n61), .Z(n59) );
  GTECH_XOR2 U39 ( .A(n57), .B(n62), .Z(sum[1]) );
  GTECH_ADD_ABC U40 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U41 ( .A(n63), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n64), .C(b[7]), .D(n65), .E(n45), .F(n47), 
        .Z(n63) );
  GTECH_NOT U43 ( .A(n48), .Z(n47) );
  GTECH_AND_NOT U44 ( .A(n51), .B(n52), .Z(n48) );
  GTECH_NOT U45 ( .A(n50), .Z(n52) );
  GTECH_XNOR3 U46 ( .A(b[5]), .B(a[5]), .C(n66), .Z(n50) );
  GTECH_XNOR3 U47 ( .A(b[6]), .B(a[6]), .C(n67), .Z(n51) );
  GTECH_ADD_ABC U48 ( .A(b[7]), .B(a[7]), .C(n64), .S(n45) );
  GTECH_OR2 U49 ( .A(a[7]), .B(n64), .Z(n65) );
  GTECH_AO21 U50 ( .A(n67), .B(a[6]), .C(n68), .Z(n64) );
  GTECH_NOT U51 ( .A(n69), .Z(n68) );
  GTECH_OAI21 U52 ( .A(a[6]), .B(n67), .C(b[6]), .Z(n69) );
  GTECH_AO21 U53 ( .A(n66), .B(a[5]), .C(n70), .Z(n67) );
  GTECH_NOT U54 ( .A(n71), .Z(n70) );
  GTECH_OAI21 U55 ( .A(a[5]), .B(n66), .C(b[5]), .Z(n71) );
  GTECH_AO21 U56 ( .A(n57), .B(a[4]), .C(n72), .Z(n66) );
  GTECH_NOT U57 ( .A(n73), .Z(n72) );
  GTECH_OAI21 U58 ( .A(a[4]), .B(n57), .C(b[4]), .Z(n73) );
  GTECH_NOT U59 ( .A(n53), .Z(n57) );
  GTECH_AOI222 U60 ( .A(a[3]), .B(n74), .C(b[3]), .D(n75), .E(n54), .F(n56), 
        .Z(n53) );
  GTECH_NOT U61 ( .A(n58), .Z(n56) );
  GTECH_AND_NOT U62 ( .A(n61), .B(n62), .Z(n58) );
  GTECH_NOT U63 ( .A(n60), .Z(n62) );
  GTECH_XNOR3 U64 ( .A(b[1]), .B(a[1]), .C(n76), .Z(n60) );
  GTECH_XNOR3 U65 ( .A(b[2]), .B(a[2]), .C(n77), .Z(n61) );
  GTECH_XNOR3 U66 ( .A(b[3]), .B(a[3]), .C(n78), .Z(n54) );
  GTECH_OR2 U67 ( .A(a[3]), .B(n74), .Z(n75) );
  GTECH_NOT U68 ( .A(n78), .Z(n74) );
  GTECH_AOI21 U69 ( .A(n77), .B(a[2]), .C(n79), .Z(n78) );
  GTECH_NOT U70 ( .A(n80), .Z(n79) );
  GTECH_OAI21 U71 ( .A(a[2]), .B(n77), .C(b[2]), .Z(n80) );
  GTECH_AO21 U72 ( .A(n76), .B(a[1]), .C(n81), .Z(n77) );
  GTECH_NOT U73 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U74 ( .A(a[1]), .B(n76), .C(b[1]), .Z(n82) );
  GTECH_ADD_ABC U75 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n76) );
endmodule

