
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70;

  GTECH_XOR3 U52 ( .A(b[9]), .B(a[9]), .C(n35), .Z(sum[9]) );
  GTECH_XOR3 U53 ( .A(b[8]), .B(a[8]), .C(n36), .Z(sum[8]) );
  GTECH_XOR3 U54 ( .A(b[7]), .B(a[7]), .C(n37), .Z(sum[7]) );
  GTECH_XOR3 U55 ( .A(b[6]), .B(a[6]), .C(n38), .Z(sum[6]) );
  GTECH_XOR3 U56 ( .A(b[5]), .B(a[5]), .C(n39), .Z(sum[5]) );
  GTECH_XOR3 U57 ( .A(b[4]), .B(a[4]), .C(n40), .Z(sum[4]) );
  GTECH_XOR3 U58 ( .A(b[3]), .B(a[3]), .C(n41), .Z(sum[3]) );
  GTECH_XOR3 U59 ( .A(b[2]), .B(a[2]), .C(n42), .Z(sum[2]) );
  GTECH_XOR3 U60 ( .A(b[1]), .B(a[1]), .C(n43), .Z(sum[1]) );
  GTECH_XNOR3 U61 ( .A(b[15]), .B(n44), .C(n45), .Z(sum[15]) );
  GTECH_NOT U62 ( .A(n46), .Z(n45) );
  GTECH_XNOR3 U63 ( .A(n47), .B(n48), .C(n49), .Z(sum[14]) );
  GTECH_XNOR3 U64 ( .A(b[13]), .B(a[13]), .C(n50), .Z(sum[13]) );
  GTECH_XOR3 U65 ( .A(b[12]), .B(a[12]), .C(n51), .Z(sum[12]) );
  GTECH_XOR3 U66 ( .A(b[11]), .B(a[11]), .C(n52), .Z(sum[11]) );
  GTECH_XOR3 U67 ( .A(b[10]), .B(a[10]), .C(n53), .Z(sum[10]) );
  GTECH_XOR3 U68 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI2N2 U69 ( .A(n46), .B(n44), .C(n54), .D(b[15]), .Z(cout) );
  GTECH_OR_NOT U70 ( .A(a[15]), .B(n46), .Z(n54) );
  GTECH_NOT U71 ( .A(a[15]), .Z(n44) );
  GTECH_OA22 U72 ( .A(n49), .B(n48), .C(n55), .D(n47), .Z(n46) );
  GTECH_NOT U73 ( .A(b[14]), .Z(n47) );
  GTECH_AND_NOT U74 ( .A(n49), .B(a[14]), .Z(n55) );
  GTECH_NOT U75 ( .A(a[14]), .Z(n48) );
  GTECH_AOI2N2 U76 ( .A(n56), .B(b[13]), .C(n50), .D(n57), .Z(n49) );
  GTECH_NOT U77 ( .A(a[13]), .Z(n57) );
  GTECH_OR_NOT U78 ( .A(a[13]), .B(n50), .Z(n56) );
  GTECH_OAI22 U79 ( .A(b[12]), .B(n58), .C(a[12]), .D(n51), .Z(n50) );
  GTECH_AND2 U80 ( .A(a[12]), .B(n51), .Z(n58) );
  GTECH_OA22 U81 ( .A(b[11]), .B(n59), .C(a[11]), .D(n52), .Z(n51) );
  GTECH_AND2 U82 ( .A(a[11]), .B(n52), .Z(n59) );
  GTECH_OA22 U83 ( .A(b[10]), .B(n60), .C(a[10]), .D(n53), .Z(n52) );
  GTECH_AND2 U84 ( .A(a[10]), .B(n53), .Z(n60) );
  GTECH_AO22 U85 ( .A(n61), .B(b[9]), .C(n35), .D(a[9]), .Z(n53) );
  GTECH_OR2 U86 ( .A(a[9]), .B(n35), .Z(n61) );
  GTECH_AO22 U87 ( .A(n62), .B(b[8]), .C(n36), .D(a[8]), .Z(n35) );
  GTECH_OR2 U88 ( .A(a[8]), .B(n36), .Z(n62) );
  GTECH_AO22 U89 ( .A(n63), .B(b[7]), .C(n37), .D(a[7]), .Z(n36) );
  GTECH_OR2 U90 ( .A(a[7]), .B(n37), .Z(n63) );
  GTECH_AO22 U91 ( .A(n64), .B(b[6]), .C(n38), .D(a[6]), .Z(n37) );
  GTECH_OR2 U92 ( .A(a[6]), .B(n38), .Z(n64) );
  GTECH_AO22 U93 ( .A(n65), .B(b[5]), .C(n39), .D(a[5]), .Z(n38) );
  GTECH_OR2 U94 ( .A(a[5]), .B(n39), .Z(n65) );
  GTECH_AO22 U95 ( .A(n66), .B(b[4]), .C(n40), .D(a[4]), .Z(n39) );
  GTECH_OR2 U96 ( .A(a[4]), .B(n40), .Z(n66) );
  GTECH_AO22 U97 ( .A(n67), .B(b[3]), .C(n41), .D(a[3]), .Z(n40) );
  GTECH_OR2 U98 ( .A(a[3]), .B(n41), .Z(n67) );
  GTECH_AO22 U99 ( .A(n68), .B(b[2]), .C(n42), .D(a[2]), .Z(n41) );
  GTECH_OR2 U100 ( .A(a[2]), .B(n42), .Z(n68) );
  GTECH_AO22 U101 ( .A(n69), .B(b[1]), .C(n43), .D(a[1]), .Z(n42) );
  GTECH_OR2 U102 ( .A(a[1]), .B(n43), .Z(n69) );
  GTECH_AO22 U103 ( .A(n70), .B(cin), .C(a[0]), .D(b[0]), .Z(n43) );
  GTECH_OR2 U104 ( .A(b[0]), .B(a[0]), .Z(n70) );
endmodule

