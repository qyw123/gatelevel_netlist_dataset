
module ripple_carry_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61;

  GTECH_XOR3 U48 ( .A(b[7]), .B(n39), .C(n40), .Z(sum[7]) );
  GTECH_XOR3 U49 ( .A(b[6]), .B(a[6]), .C(n41), .Z(sum[6]) );
  GTECH_XOR3 U50 ( .A(b[5]), .B(a[5]), .C(n42), .Z(sum[5]) );
  GTECH_XOR3 U51 ( .A(b[4]), .B(a[4]), .C(n43), .Z(sum[4]) );
  GTECH_XOR3 U52 ( .A(b[3]), .B(a[3]), .C(n44), .Z(sum[3]) );
  GTECH_XOR3 U53 ( .A(b[2]), .B(a[2]), .C(n45), .Z(sum[2]) );
  GTECH_XOR3 U54 ( .A(b[1]), .B(a[1]), .C(n46), .Z(sum[1]) );
  GTECH_XOR3 U55 ( .A(cin), .B(b[0]), .C(a[0]), .Z(sum[0]) );
  GTECH_OAI21 U56 ( .A(n40), .B(n39), .C(n47), .Z(cout) );
  GTECH_OAI21 U57 ( .A(a[7]), .B(n48), .C(b[7]), .Z(n47) );
  GTECH_NOT U58 ( .A(n40), .Z(n48) );
  GTECH_NOT U59 ( .A(a[7]), .Z(n39) );
  GTECH_AOI21 U60 ( .A(n41), .B(a[6]), .C(n49), .Z(n40) );
  GTECH_OA21 U61 ( .A(n41), .B(a[6]), .C(b[6]), .Z(n49) );
  GTECH_OA21 U62 ( .A(a[5]), .B(n42), .C(n50), .Z(n41) );
  GTECH_NOT U63 ( .A(n51), .Z(n50) );
  GTECH_AOI21 U64 ( .A(n42), .B(a[5]), .C(b[5]), .Z(n51) );
  GTECH_OA21 U65 ( .A(a[4]), .B(n43), .C(n52), .Z(n42) );
  GTECH_NOT U66 ( .A(n53), .Z(n52) );
  GTECH_AOI21 U67 ( .A(n43), .B(a[4]), .C(b[4]), .Z(n53) );
  GTECH_OA21 U68 ( .A(a[3]), .B(n44), .C(n54), .Z(n43) );
  GTECH_NOT U69 ( .A(n55), .Z(n54) );
  GTECH_AOI21 U70 ( .A(n44), .B(a[3]), .C(b[3]), .Z(n55) );
  GTECH_OA21 U71 ( .A(a[2]), .B(n45), .C(n56), .Z(n44) );
  GTECH_NOT U72 ( .A(n57), .Z(n56) );
  GTECH_AOI21 U73 ( .A(n45), .B(a[2]), .C(b[2]), .Z(n57) );
  GTECH_OA21 U74 ( .A(a[1]), .B(n46), .C(n58), .Z(n45) );
  GTECH_NOT U75 ( .A(n59), .Z(n58) );
  GTECH_AOI21 U76 ( .A(n46), .B(a[1]), .C(b[1]), .Z(n59) );
  GTECH_OA21 U77 ( .A(b[0]), .B(a[0]), .C(n60), .Z(n46) );
  GTECH_NOT U78 ( .A(n61), .Z(n60) );
  GTECH_AOI21 U79 ( .A(a[0]), .B(b[0]), .C(cin), .Z(n61) );
endmodule

