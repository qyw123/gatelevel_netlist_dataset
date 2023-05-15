
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;

  GTECH_XOR2 U31 ( .A(n47), .B(n48), .Z(sum[7]) );
  GTECH_AND_NOT U32 ( .A(n49), .B(n50), .Z(n48) );
  GTECH_OAI21 U33 ( .A(n50), .B(n49), .C(n51), .Z(sum[6]) );
  GTECH_AO21 U34 ( .A(cout), .B(n52), .C(n53), .Z(n51) );
  GTECH_NOT U35 ( .A(n54), .Z(n52) );
  GTECH_XNOR2 U36 ( .A(n50), .B(n54), .Z(sum[5]) );
  GTECH_XOR3 U37 ( .A(b[4]), .B(a[4]), .C(n55), .Z(sum[4]) );
  GTECH_XOR2 U38 ( .A(n56), .B(n57), .Z(sum[3]) );
  GTECH_AND_NOT U39 ( .A(n58), .B(n59), .Z(n57) );
  GTECH_OAI21 U40 ( .A(n59), .B(n58), .C(n60), .Z(sum[2]) );
  GTECH_AO21 U41 ( .A(n55), .B(n61), .C(n62), .Z(n60) );
  GTECH_NOT U42 ( .A(n63), .Z(n61) );
  GTECH_XNOR2 U43 ( .A(n59), .B(n63), .Z(sum[1]) );
  GTECH_XOR3 U44 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_NOT U45 ( .A(n50), .Z(cout) );
  GTECH_AOI222 U46 ( .A(a[7]), .B(n64), .C(b[7]), .D(n65), .E(n47), .F(n49), 
        .Z(n50) );
  GTECH_OR_NOT U47 ( .A(n54), .B(n53), .Z(n49) );
  GTECH_XNOR3 U48 ( .A(n66), .B(a[6]), .C(n67), .Z(n53) );
  GTECH_XOR3 U49 ( .A(b[5]), .B(a[5]), .C(n68), .Z(n54) );
  GTECH_XNOR3 U50 ( .A(b[7]), .B(n69), .C(n64), .Z(n47) );
  GTECH_OR_NOT U51 ( .A(n64), .B(n69), .Z(n65) );
  GTECH_NOT U52 ( .A(a[7]), .Z(n69) );
  GTECH_OAI21 U53 ( .A(n67), .B(n70), .C(n71), .Z(n64) );
  GTECH_AO21 U54 ( .A(n70), .B(n67), .C(n66), .Z(n71) );
  GTECH_NOT U55 ( .A(b[6]), .Z(n66) );
  GTECH_NOT U56 ( .A(a[6]), .Z(n70) );
  GTECH_AOI21 U57 ( .A(n68), .B(a[5]), .C(n72), .Z(n67) );
  GTECH_NOT U58 ( .A(n73), .Z(n72) );
  GTECH_OAI21 U59 ( .A(a[5]), .B(n68), .C(b[5]), .Z(n73) );
  GTECH_OAI21 U60 ( .A(n59), .B(n74), .C(n75), .Z(n68) );
  GTECH_OAI21 U61 ( .A(a[4]), .B(n55), .C(b[4]), .Z(n75) );
  GTECH_NOT U62 ( .A(n59), .Z(n55) );
  GTECH_NOT U63 ( .A(a[4]), .Z(n74) );
  GTECH_AOI222 U64 ( .A(a[3]), .B(n76), .C(b[3]), .D(n77), .E(n56), .F(n58), 
        .Z(n59) );
  GTECH_OR_NOT U65 ( .A(n63), .B(n62), .Z(n58) );
  GTECH_XNOR3 U66 ( .A(b[2]), .B(a[2]), .C(n78), .Z(n62) );
  GTECH_XOR3 U67 ( .A(b[1]), .B(a[1]), .C(n79), .Z(n63) );
  GTECH_XOR3 U68 ( .A(b[3]), .B(a[3]), .C(n76), .Z(n56) );
  GTECH_OR_NOT U69 ( .A(a[3]), .B(n80), .Z(n77) );
  GTECH_NOT U70 ( .A(n80), .Z(n76) );
  GTECH_AOI21 U71 ( .A(n78), .B(a[2]), .C(n81), .Z(n80) );
  GTECH_NOT U72 ( .A(n82), .Z(n81) );
  GTECH_OAI21 U73 ( .A(a[2]), .B(n78), .C(b[2]), .Z(n82) );
  GTECH_AO21 U74 ( .A(n79), .B(a[1]), .C(n83), .Z(n78) );
  GTECH_NOT U75 ( .A(n84), .Z(n83) );
  GTECH_OAI21 U76 ( .A(a[1]), .B(n79), .C(b[1]), .Z(n84) );
  GTECH_ADD_ABC U77 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n79) );
endmodule

