
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;

  GTECH_XOR3 U49 ( .A(b[9]), .B(a[9]), .C(n32), .Z(sum[9]) );
  GTECH_XOR3 U50 ( .A(b[8]), .B(a[8]), .C(n33), .Z(sum[8]) );
  GTECH_XOR3 U51 ( .A(b[7]), .B(a[7]), .C(n34), .Z(sum[7]) );
  GTECH_XOR3 U52 ( .A(b[6]), .B(a[6]), .C(n35), .Z(sum[6]) );
  GTECH_XOR3 U53 ( .A(b[5]), .B(a[5]), .C(n36), .Z(sum[5]) );
  GTECH_XOR3 U54 ( .A(b[4]), .B(a[4]), .C(n37), .Z(sum[4]) );
  GTECH_XOR3 U55 ( .A(b[3]), .B(a[3]), .C(n38), .Z(sum[3]) );
  GTECH_XOR3 U56 ( .A(b[2]), .B(a[2]), .C(n39), .Z(sum[2]) );
  GTECH_XOR3 U57 ( .A(b[1]), .B(a[1]), .C(n40), .Z(sum[1]) );
  GTECH_XOR3 U58 ( .A(b[15]), .B(a[15]), .C(n41), .Z(sum[15]) );
  GTECH_XOR3 U59 ( .A(b[14]), .B(a[14]), .C(n42), .Z(sum[14]) );
  GTECH_XOR3 U60 ( .A(b[13]), .B(a[13]), .C(n43), .Z(sum[13]) );
  GTECH_XOR3 U61 ( .A(b[12]), .B(a[12]), .C(n44), .Z(sum[12]) );
  GTECH_XOR3 U62 ( .A(b[11]), .B(a[11]), .C(n45), .Z(sum[11]) );
  GTECH_XOR3 U63 ( .A(b[10]), .B(n46), .C(n47), .Z(sum[10]) );
  GTECH_XOR3 U64 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U65 ( .A(n48), .B(b[15]), .C(n41), .D(a[15]), .Z(cout) );
  GTECH_OR2 U66 ( .A(n41), .B(a[15]), .Z(n48) );
  GTECH_AO22 U67 ( .A(n49), .B(b[14]), .C(n42), .D(a[14]), .Z(n41) );
  GTECH_OR2 U68 ( .A(n42), .B(a[14]), .Z(n49) );
  GTECH_AO22 U69 ( .A(n50), .B(b[13]), .C(n43), .D(a[13]), .Z(n42) );
  GTECH_OR2 U70 ( .A(n43), .B(a[13]), .Z(n50) );
  GTECH_AO22 U71 ( .A(n51), .B(b[12]), .C(n44), .D(a[12]), .Z(n43) );
  GTECH_OR2 U72 ( .A(n44), .B(a[12]), .Z(n51) );
  GTECH_AO22 U73 ( .A(n52), .B(b[11]), .C(n45), .D(a[11]), .Z(n44) );
  GTECH_OR2 U74 ( .A(n45), .B(a[11]), .Z(n52) );
  GTECH_OAI2N2 U75 ( .A(n47), .B(n46), .C(n53), .D(b[10]), .Z(n45) );
  GTECH_OR_NOT U76 ( .A(a[10]), .B(n47), .Z(n53) );
  GTECH_NOT U77 ( .A(a[10]), .Z(n46) );
  GTECH_AOI22 U78 ( .A(n32), .B(a[9]), .C(n54), .D(b[9]), .Z(n47) );
  GTECH_OR2 U79 ( .A(n32), .B(a[9]), .Z(n54) );
  GTECH_AO22 U80 ( .A(n55), .B(b[8]), .C(n33), .D(a[8]), .Z(n32) );
  GTECH_OR2 U81 ( .A(n33), .B(a[8]), .Z(n55) );
  GTECH_AO22 U82 ( .A(n56), .B(b[7]), .C(n34), .D(a[7]), .Z(n33) );
  GTECH_OR2 U83 ( .A(n34), .B(a[7]), .Z(n56) );
  GTECH_AO22 U84 ( .A(n57), .B(b[6]), .C(n35), .D(a[6]), .Z(n34) );
  GTECH_OR2 U85 ( .A(n35), .B(a[6]), .Z(n57) );
  GTECH_AO22 U86 ( .A(n58), .B(b[5]), .C(n36), .D(a[5]), .Z(n35) );
  GTECH_OR2 U87 ( .A(n36), .B(a[5]), .Z(n58) );
  GTECH_AO22 U88 ( .A(n59), .B(b[4]), .C(n37), .D(a[4]), .Z(n36) );
  GTECH_OR2 U89 ( .A(n37), .B(a[4]), .Z(n59) );
  GTECH_AO22 U90 ( .A(n60), .B(b[3]), .C(n38), .D(a[3]), .Z(n37) );
  GTECH_OR2 U91 ( .A(n38), .B(a[3]), .Z(n60) );
  GTECH_AO22 U92 ( .A(n61), .B(b[2]), .C(n39), .D(a[2]), .Z(n38) );
  GTECH_OR2 U93 ( .A(n39), .B(a[2]), .Z(n61) );
  GTECH_AO22 U94 ( .A(n62), .B(b[1]), .C(n40), .D(a[1]), .Z(n39) );
  GTECH_OR2 U95 ( .A(a[1]), .B(n40), .Z(n62) );
  GTECH_ADD_ABC U96 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n40) );
endmodule

