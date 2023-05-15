
module ripple_carry_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60;

  GTECH_XOR3 U48 ( .A(b[9]), .B(a[9]), .C(n31), .Z(sum[9]) );
  GTECH_XOR3 U49 ( .A(b[8]), .B(a[8]), .C(n32), .Z(sum[8]) );
  GTECH_XOR3 U50 ( .A(b[7]), .B(a[7]), .C(n33), .Z(sum[7]) );
  GTECH_XOR3 U51 ( .A(b[6]), .B(a[6]), .C(n34), .Z(sum[6]) );
  GTECH_XOR3 U52 ( .A(b[5]), .B(a[5]), .C(n35), .Z(sum[5]) );
  GTECH_XOR3 U53 ( .A(b[4]), .B(a[4]), .C(n36), .Z(sum[4]) );
  GTECH_XOR3 U54 ( .A(b[3]), .B(a[3]), .C(n37), .Z(sum[3]) );
  GTECH_XOR3 U55 ( .A(b[2]), .B(a[2]), .C(n38), .Z(sum[2]) );
  GTECH_XOR3 U56 ( .A(b[1]), .B(a[1]), .C(n39), .Z(sum[1]) );
  GTECH_XOR3 U57 ( .A(b[15]), .B(a[15]), .C(n40), .Z(sum[15]) );
  GTECH_XOR3 U58 ( .A(b[14]), .B(a[14]), .C(n41), .Z(sum[14]) );
  GTECH_XOR3 U59 ( .A(b[13]), .B(a[13]), .C(n42), .Z(sum[13]) );
  GTECH_XOR3 U60 ( .A(b[12]), .B(a[12]), .C(n43), .Z(sum[12]) );
  GTECH_XOR3 U61 ( .A(b[11]), .B(a[11]), .C(n44), .Z(sum[11]) );
  GTECH_XOR3 U62 ( .A(b[10]), .B(a[10]), .C(n45), .Z(sum[10]) );
  GTECH_XOR3 U63 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_AO21 U64 ( .A(n40), .B(a[15]), .C(n46), .Z(cout) );
  GTECH_OA21 U65 ( .A(a[15]), .B(n40), .C(b[15]), .Z(n46) );
  GTECH_AO21 U66 ( .A(n41), .B(a[14]), .C(n47), .Z(n40) );
  GTECH_OA21 U67 ( .A(a[14]), .B(n41), .C(b[14]), .Z(n47) );
  GTECH_AO21 U68 ( .A(n42), .B(a[13]), .C(n48), .Z(n41) );
  GTECH_OA21 U69 ( .A(a[13]), .B(n42), .C(b[13]), .Z(n48) );
  GTECH_AO21 U70 ( .A(n43), .B(a[12]), .C(n49), .Z(n42) );
  GTECH_OA21 U71 ( .A(a[12]), .B(n43), .C(b[12]), .Z(n49) );
  GTECH_AO21 U72 ( .A(n44), .B(a[11]), .C(n50), .Z(n43) );
  GTECH_OA21 U73 ( .A(a[11]), .B(n44), .C(b[11]), .Z(n50) );
  GTECH_AO21 U74 ( .A(n45), .B(a[10]), .C(n51), .Z(n44) );
  GTECH_OA21 U75 ( .A(a[10]), .B(n45), .C(b[10]), .Z(n51) );
  GTECH_AO21 U76 ( .A(n31), .B(a[9]), .C(n52), .Z(n45) );
  GTECH_OA21 U77 ( .A(a[9]), .B(n31), .C(b[9]), .Z(n52) );
  GTECH_AO21 U78 ( .A(n32), .B(a[8]), .C(n53), .Z(n31) );
  GTECH_OA21 U79 ( .A(a[8]), .B(n32), .C(b[8]), .Z(n53) );
  GTECH_AO21 U80 ( .A(n33), .B(a[7]), .C(n54), .Z(n32) );
  GTECH_OA21 U81 ( .A(a[7]), .B(n33), .C(b[7]), .Z(n54) );
  GTECH_AO21 U82 ( .A(n34), .B(a[6]), .C(n55), .Z(n33) );
  GTECH_OA21 U83 ( .A(a[6]), .B(n34), .C(b[6]), .Z(n55) );
  GTECH_AO21 U84 ( .A(n35), .B(a[5]), .C(n56), .Z(n34) );
  GTECH_OA21 U85 ( .A(a[5]), .B(n35), .C(b[5]), .Z(n56) );
  GTECH_AO21 U86 ( .A(n36), .B(a[4]), .C(n57), .Z(n35) );
  GTECH_OA21 U87 ( .A(a[4]), .B(n36), .C(b[4]), .Z(n57) );
  GTECH_AO21 U88 ( .A(n37), .B(a[3]), .C(n58), .Z(n36) );
  GTECH_OA21 U89 ( .A(a[3]), .B(n37), .C(b[3]), .Z(n58) );
  GTECH_AO21 U90 ( .A(n38), .B(a[2]), .C(n59), .Z(n37) );
  GTECH_OA21 U91 ( .A(a[2]), .B(n38), .C(b[2]), .Z(n59) );
  GTECH_AO21 U92 ( .A(n39), .B(a[1]), .C(n60), .Z(n38) );
  GTECH_OA21 U93 ( .A(a[1]), .B(n39), .C(b[1]), .Z(n60) );
  GTECH_ADD_ABC U94 ( .A(a[0]), .B(b[0]), .C(cin), .COUT(n39) );
endmodule

