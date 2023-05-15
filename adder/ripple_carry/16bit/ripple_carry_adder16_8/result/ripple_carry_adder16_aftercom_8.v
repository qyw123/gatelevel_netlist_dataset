
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  GTECH_XOR3 U54 ( .A(b[9]), .B(a[9]), .C(n37), .Z(sum[9]) );
  GTECH_XOR3 U55 ( .A(b[8]), .B(a[8]), .C(n38), .Z(sum[8]) );
  GTECH_XOR3 U56 ( .A(b[7]), .B(a[7]), .C(n39), .Z(sum[7]) );
  GTECH_XOR3 U57 ( .A(b[6]), .B(a[6]), .C(n40), .Z(sum[6]) );
  GTECH_XOR3 U58 ( .A(b[5]), .B(a[5]), .C(n41), .Z(sum[5]) );
  GTECH_XOR3 U59 ( .A(b[4]), .B(a[4]), .C(n42), .Z(sum[4]) );
  GTECH_XOR3 U60 ( .A(b[3]), .B(a[3]), .C(n43), .Z(sum[3]) );
  GTECH_XOR3 U61 ( .A(b[2]), .B(a[2]), .C(n44), .Z(sum[2]) );
  GTECH_XOR3 U62 ( .A(b[1]), .B(a[1]), .C(n45), .Z(sum[1]) );
  GTECH_XOR3 U63 ( .A(b[15]), .B(a[15]), .C(n46), .Z(sum[15]) );
  GTECH_XOR3 U64 ( .A(b[14]), .B(a[14]), .C(n47), .Z(sum[14]) );
  GTECH_XOR3 U65 ( .A(b[13]), .B(a[13]), .C(n48), .Z(sum[13]) );
  GTECH_XOR3 U66 ( .A(b[12]), .B(a[12]), .C(n49), .Z(sum[12]) );
  GTECH_XOR3 U67 ( .A(b[11]), .B(a[11]), .C(n50), .Z(sum[11]) );
  GTECH_OA22 U68 ( .A(a[10]), .B(n51), .C(b[10]), .D(n52), .Z(n50) );
  GTECH_AND2 U69 ( .A(n51), .B(a[10]), .Z(n52) );
  GTECH_XOR3 U70 ( .A(b[10]), .B(a[10]), .C(n51), .Z(sum[10]) );
  GTECH_XOR3 U71 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO22 U72 ( .A(n53), .B(b[15]), .C(n46), .D(a[15]), .Z(cout) );
  GTECH_OR2 U73 ( .A(a[15]), .B(n46), .Z(n53) );
  GTECH_ADD_ABC U74 ( .A(n47), .B(a[14]), .C(b[14]), .COUT(n46) );
  GTECH_ADD_ABC U75 ( .A(a[13]), .B(n48), .C(b[13]), .COUT(n47) );
  GTECH_ADD_ABC U76 ( .A(a[12]), .B(n49), .C(b[12]), .COUT(n48) );
  GTECH_ADD_ABC U77 ( .A(a[11]), .B(n54), .C(b[11]), .COUT(n49) );
  GTECH_OA21 U78 ( .A(a[10]), .B(n51), .C(n55), .Z(n54) );
  GTECH_AO21 U79 ( .A(a[10]), .B(n51), .C(b[10]), .Z(n55) );
  GTECH_AO22 U80 ( .A(n56), .B(b[9]), .C(n37), .D(a[9]), .Z(n51) );
  GTECH_OR2 U81 ( .A(a[9]), .B(n37), .Z(n56) );
  GTECH_AO22 U82 ( .A(n57), .B(b[8]), .C(n38), .D(a[8]), .Z(n37) );
  GTECH_OR2 U83 ( .A(a[8]), .B(n38), .Z(n57) );
  GTECH_AO22 U84 ( .A(n58), .B(b[7]), .C(n39), .D(a[7]), .Z(n38) );
  GTECH_OR2 U85 ( .A(a[7]), .B(n39), .Z(n58) );
  GTECH_AO22 U86 ( .A(n59), .B(b[6]), .C(n40), .D(a[6]), .Z(n39) );
  GTECH_OR2 U87 ( .A(a[6]), .B(n40), .Z(n59) );
  GTECH_AO22 U88 ( .A(n60), .B(b[5]), .C(n41), .D(a[5]), .Z(n40) );
  GTECH_OR2 U89 ( .A(a[5]), .B(n41), .Z(n60) );
  GTECH_AO22 U90 ( .A(n61), .B(b[4]), .C(n42), .D(a[4]), .Z(n41) );
  GTECH_OR2 U91 ( .A(a[4]), .B(n42), .Z(n61) );
  GTECH_AO22 U92 ( .A(n62), .B(b[3]), .C(n43), .D(a[3]), .Z(n42) );
  GTECH_OR2 U93 ( .A(a[3]), .B(n43), .Z(n62) );
  GTECH_AO22 U94 ( .A(n63), .B(b[2]), .C(n44), .D(a[2]), .Z(n43) );
  GTECH_OR2 U95 ( .A(a[2]), .B(n44), .Z(n63) );
  GTECH_AO22 U96 ( .A(n64), .B(b[1]), .C(n45), .D(a[1]), .Z(n44) );
  GTECH_OR2 U97 ( .A(n45), .B(a[1]), .Z(n64) );
  GTECH_ADD_ABC U98 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n45) );
endmodule

