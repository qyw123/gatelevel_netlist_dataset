
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  GTECH_XNOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND_NOT U30 ( .A(cout), .B(n47), .Z(n46) );
  GTECH_AO21 U31 ( .A(cout), .B(n47), .C(n48), .Z(sum[6]) );
  GTECH_AOI21 U32 ( .A(cout), .B(n49), .C(n50), .Z(n48) );
  GTECH_XNOR2 U33 ( .A(cout), .B(n49), .Z(sum[5]) );
  GTECH_XOR3 U34 ( .A(b[4]), .B(a[4]), .C(n51), .Z(sum[4]) );
  GTECH_XNOR2 U35 ( .A(n52), .B(n53), .Z(sum[3]) );
  GTECH_AND_NOT U36 ( .A(n51), .B(n54), .Z(n53) );
  GTECH_AO21 U37 ( .A(n51), .B(n54), .C(n55), .Z(sum[2]) );
  GTECH_AOI21 U38 ( .A(n51), .B(n56), .C(n57), .Z(n55) );
  GTECH_XNOR2 U39 ( .A(n51), .B(n56), .Z(sum[1]) );
  GTECH_XOR3 U40 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U41 ( .A(n58), .B(a[7]), .C(n59), .Z(cout) );
  GTECH_OAI21 U42 ( .A(n47), .B(n45), .C(n60), .Z(n59) );
  GTECH_OAI21 U43 ( .A(a[7]), .B(n58), .C(b[7]), .Z(n60) );
  GTECH_XNOR3 U44 ( .A(b[7]), .B(a[7]), .C(n58), .Z(n45) );
  GTECH_AND2 U45 ( .A(n49), .B(n50), .Z(n47) );
  GTECH_XNOR3 U46 ( .A(b[6]), .B(a[6]), .C(n61), .Z(n50) );
  GTECH_XNOR3 U47 ( .A(b[5]), .B(a[5]), .C(n62), .Z(n49) );
  GTECH_AO21 U48 ( .A(n61), .B(a[6]), .C(n63), .Z(n58) );
  GTECH_OA21 U49 ( .A(a[6]), .B(n61), .C(b[6]), .Z(n63) );
  GTECH_AO21 U50 ( .A(n62), .B(a[5]), .C(n64), .Z(n61) );
  GTECH_OA21 U51 ( .A(a[5]), .B(n62), .C(b[5]), .Z(n64) );
  GTECH_AO21 U52 ( .A(n51), .B(a[4]), .C(n65), .Z(n62) );
  GTECH_OA21 U53 ( .A(a[4]), .B(n51), .C(b[4]), .Z(n65) );
  GTECH_AO21 U54 ( .A(n66), .B(a[3]), .C(n67), .Z(n51) );
  GTECH_OAI21 U55 ( .A(n54), .B(n52), .C(n68), .Z(n67) );
  GTECH_OAI21 U56 ( .A(a[3]), .B(n66), .C(b[3]), .Z(n68) );
  GTECH_XNOR3 U57 ( .A(b[3]), .B(a[3]), .C(n66), .Z(n52) );
  GTECH_AND2 U58 ( .A(n56), .B(n57), .Z(n54) );
  GTECH_XNOR3 U59 ( .A(b[2]), .B(a[2]), .C(n69), .Z(n57) );
  GTECH_XNOR3 U60 ( .A(b[1]), .B(a[1]), .C(n70), .Z(n56) );
  GTECH_AO21 U61 ( .A(n69), .B(a[2]), .C(n71), .Z(n66) );
  GTECH_OA21 U62 ( .A(a[2]), .B(n69), .C(b[2]), .Z(n71) );
  GTECH_AO21 U63 ( .A(n70), .B(a[1]), .C(n72), .Z(n69) );
  GTECH_OA21 U64 ( .A(a[1]), .B(n70), .C(b[1]), .Z(n72) );
  GTECH_ADD_ABC U65 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n70) );
endmodule

