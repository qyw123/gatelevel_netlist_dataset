
module bcd_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  GTECH_XOR2 U29 ( .A(n45), .B(n46), .Z(sum[7]) );
  GTECH_AND2 U30 ( .A(n47), .B(cout), .Z(n46) );
  GTECH_OAI21 U31 ( .A(n48), .B(n47), .C(n49), .Z(sum[6]) );
  GTECH_OAI21 U32 ( .A(n48), .B(n50), .C(n51), .Z(n49) );
  GTECH_XOR2 U33 ( .A(cout), .B(n50), .Z(sum[5]) );
  GTECH_ADD_ABC U34 ( .A(b[4]), .B(a[4]), .C(n52), .S(sum[4]) );
  GTECH_XOR2 U35 ( .A(n53), .B(n54), .Z(sum[3]) );
  GTECH_AND2 U36 ( .A(n55), .B(n52), .Z(n54) );
  GTECH_OAI21 U37 ( .A(n56), .B(n55), .C(n57), .Z(sum[2]) );
  GTECH_OAI21 U38 ( .A(n56), .B(n58), .C(n59), .Z(n57) );
  GTECH_XOR2 U39 ( .A(n52), .B(n58), .Z(sum[1]) );
  GTECH_ADD_ABC U40 ( .A(cin), .B(b[0]), .C(a[0]), .S(sum[0]) );
  GTECH_NOT U41 ( .A(n48), .Z(cout) );
  GTECH_AOI222 U42 ( .A(a[7]), .B(n60), .C(b[7]), .D(n61), .E(n45), .F(n47), 
        .Z(n48) );
  GTECH_OR2 U43 ( .A(n51), .B(n50), .Z(n47) );
  GTECH_ADD_ABC U44 ( .A(b[5]), .B(a[5]), .C(n62), .S(n50) );
  GTECH_ADD_ABC U45 ( .A(b[6]), .B(a[6]), .C(n63), .S(n51) );
  GTECH_ADD_ABC U46 ( .A(b[7]), .B(a[7]), .C(n60), .S(n45) );
  GTECH_OR2 U47 ( .A(a[7]), .B(n60), .Z(n61) );
  GTECH_AO21 U48 ( .A(n63), .B(a[6]), .C(n64), .Z(n60) );
  GTECH_OA21 U49 ( .A(a[6]), .B(n63), .C(b[6]), .Z(n64) );
  GTECH_AO21 U50 ( .A(n62), .B(a[5]), .C(n65), .Z(n63) );
  GTECH_OA21 U51 ( .A(a[5]), .B(n62), .C(b[5]), .Z(n65) );
  GTECH_AO21 U52 ( .A(n52), .B(a[4]), .C(n66), .Z(n62) );
  GTECH_OA21 U53 ( .A(a[4]), .B(n52), .C(b[4]), .Z(n66) );
  GTECH_NOT U54 ( .A(n56), .Z(n52) );
  GTECH_AOI222 U55 ( .A(a[3]), .B(n67), .C(b[3]), .D(n68), .E(n53), .F(n55), 
        .Z(n56) );
  GTECH_OR2 U56 ( .A(n59), .B(n58), .Z(n55) );
  GTECH_ADD_ABC U57 ( .A(b[1]), .B(a[1]), .C(n69), .S(n58) );
  GTECH_ADD_ABC U58 ( .A(b[2]), .B(a[2]), .C(n70), .S(n59) );
  GTECH_ADD_ABC U59 ( .A(b[3]), .B(a[3]), .C(n67), .S(n53) );
  GTECH_OR2 U60 ( .A(a[3]), .B(n67), .Z(n68) );
  GTECH_AO21 U61 ( .A(n70), .B(a[2]), .C(n71), .Z(n67) );
  GTECH_OA21 U62 ( .A(a[2]), .B(n70), .C(b[2]), .Z(n71) );
  GTECH_AO21 U63 ( .A(n69), .B(a[1]), .C(n72), .Z(n70) );
  GTECH_OA21 U64 ( .A(a[1]), .B(n69), .C(b[1]), .Z(n72) );
  GTECH_ADD_ABC U65 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n69) );
endmodule

