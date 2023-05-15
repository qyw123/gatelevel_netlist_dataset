
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146;

  GTECH_XOR2 U97 ( .A(n78), .B(n79), .Z(sum[9]) );
  GTECH_XOR2 U98 ( .A(n80), .B(n81), .Z(sum[8]) );
  GTECH_XOR2 U99 ( .A(n82), .B(n83), .Z(sum[7]) );
  GTECH_OA21 U100 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n85), .B(n84), .Z(sum[6]) );
  GTECH_OA21 U102 ( .A(n87), .B(n88), .C(n89), .Z(n84) );
  GTECH_XOR2 U103 ( .A(n88), .B(n87), .Z(sum[5]) );
  GTECH_OA21 U104 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_XOR2 U105 ( .A(n91), .B(n90), .Z(sum[4]) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n94), .Z(sum[3]) );
  GTECH_OA21 U107 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n96), .B(n95), .Z(sum[2]) );
  GTECH_AOI21 U109 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n99), .B(n98), .Z(sum[1]) );
  GTECH_AO22 U111 ( .A(n101), .B(cin), .C(a[0]), .D(b[0]), .Z(n98) );
  GTECH_XOR2 U112 ( .A(n102), .B(n103), .Z(sum[15]) );
  GTECH_OA21 U113 ( .A(n104), .B(n105), .C(n106), .Z(n103) );
  GTECH_XOR2 U114 ( .A(n105), .B(n104), .Z(sum[14]) );
  GTECH_OA21 U115 ( .A(n107), .B(n108), .C(n109), .Z(n104) );
  GTECH_XOR2 U116 ( .A(n108), .B(n107), .Z(sum[13]) );
  GTECH_OA21 U117 ( .A(n110), .B(n111), .C(n112), .Z(n107) );
  GTECH_XNOR2 U118 ( .A(cout), .B(n111), .Z(sum[12]) );
  GTECH_XOR2 U119 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_OA21 U120 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_XOR2 U121 ( .A(n116), .B(n115), .Z(sum[10]) );
  GTECH_OA21 U122 ( .A(n79), .B(n78), .C(n118), .Z(n115) );
  GTECH_OA21 U123 ( .A(n81), .B(n80), .C(n119), .Z(n79) );
  GTECH_XOR2 U124 ( .A(cin), .B(n101), .Z(sum[0]) );
  GTECH_NOT U125 ( .A(n110), .Z(cout) );
  GTECH_OA21 U126 ( .A(n81), .B(n120), .C(n121), .Z(n110) );
  GTECH_OA21 U127 ( .A(n90), .B(n122), .C(n123), .Z(n81) );
  GTECH_AND2 U128 ( .A(n124), .B(n125), .Z(n90) );
  GTECH_NAND4 U129 ( .A(n126), .B(n127), .C(cin), .D(n128), .Z(n124) );
  GTECH_NOT U130 ( .A(n129), .Z(n128) );
  GTECH_NAND3 U131 ( .A(n101), .B(n99), .C(n93), .Z(n129) );
  GTECH_NOR4 U132 ( .A(n122), .B(n130), .C(n120), .D(n131), .Z(Pm) );
  GTECH_NAND4 U133 ( .A(n127), .B(n101), .C(n93), .D(n99), .Z(n131) );
  GTECH_XOR2 U134 ( .A(a[0]), .B(b[0]), .Z(n101) );
  GTECH_OAI21 U135 ( .A(n132), .B(n120), .C(n121), .Z(Gm) );
  GTECH_AOI2N2 U136 ( .A(b[15]), .B(a[15]), .C(n133), .D(n102), .Z(n121) );
  GTECH_OA21 U137 ( .A(n134), .B(n105), .C(n106), .Z(n133) );
  GTECH_OA21 U138 ( .A(n112), .B(n108), .C(n109), .Z(n134) );
  GTECH_OR4 U139 ( .A(n111), .B(n105), .C(n108), .D(n102), .Z(n120) );
  GTECH_XNOR2 U140 ( .A(a[15]), .B(b[15]), .Z(n102) );
  GTECH_OAI21 U141 ( .A(b[13]), .B(a[13]), .C(n109), .Z(n108) );
  GTECH_NAND2 U142 ( .A(a[13]), .B(b[13]), .Z(n109) );
  GTECH_OAI21 U143 ( .A(b[14]), .B(a[14]), .C(n106), .Z(n105) );
  GTECH_NAND2 U144 ( .A(a[14]), .B(b[14]), .Z(n106) );
  GTECH_OAI21 U145 ( .A(b[12]), .B(a[12]), .C(n112), .Z(n111) );
  GTECH_NAND2 U146 ( .A(a[12]), .B(b[12]), .Z(n112) );
  GTECH_OA21 U147 ( .A(n125), .B(n122), .C(n123), .Z(n132) );
  GTECH_AOI2N2 U148 ( .A(b[11]), .B(a[11]), .C(n135), .D(n113), .Z(n123) );
  GTECH_OA21 U149 ( .A(n136), .B(n116), .C(n117), .Z(n135) );
  GTECH_OA21 U150 ( .A(n119), .B(n78), .C(n118), .Z(n136) );
  GTECH_OR4 U151 ( .A(n80), .B(n116), .C(n78), .D(n113), .Z(n122) );
  GTECH_XNOR2 U152 ( .A(a[11]), .B(b[11]), .Z(n113) );
  GTECH_OAI21 U153 ( .A(b[9]), .B(a[9]), .C(n118), .Z(n78) );
  GTECH_NAND2 U154 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_OAI21 U155 ( .A(b[10]), .B(a[10]), .C(n117), .Z(n116) );
  GTECH_NAND2 U156 ( .A(a[10]), .B(b[10]), .Z(n117) );
  GTECH_OAI21 U157 ( .A(b[8]), .B(a[8]), .C(n119), .Z(n80) );
  GTECH_NAND2 U158 ( .A(a[8]), .B(b[8]), .Z(n119) );
  GTECH_AOI222 U159 ( .A(n126), .B(n137), .C(b[7]), .D(a[7]), .E(n138), .F(
        n139), .Z(n125) );
  GTECH_OAI21 U160 ( .A(n140), .B(n85), .C(n86), .Z(n139) );
  GTECH_OA21 U161 ( .A(n88), .B(n92), .C(n89), .Z(n140) );
  GTECH_NOT U162 ( .A(n82), .Z(n138) );
  GTECH_NOT U163 ( .A(n141), .Z(n137) );
  GTECH_AOI21 U164 ( .A(b[3]), .B(a[3]), .C(n142), .Z(n141) );
  GTECH_OA21 U165 ( .A(n143), .B(n144), .C(n93), .Z(n142) );
  GTECH_XOR2 U166 ( .A(a[3]), .B(b[3]), .Z(n93) );
  GTECH_NOT U167 ( .A(n97), .Z(n144) );
  GTECH_AOI21 U168 ( .A(n145), .B(n146), .C(n96), .Z(n143) );
  GTECH_NOT U169 ( .A(n127), .Z(n96) );
  GTECH_OA21 U170 ( .A(b[2]), .B(a[2]), .C(n97), .Z(n127) );
  GTECH_NAND2 U171 ( .A(a[2]), .B(b[2]), .Z(n97) );
  GTECH_NOT U172 ( .A(n100), .Z(n146) );
  GTECH_AND2 U173 ( .A(a[1]), .B(b[1]), .Z(n100) );
  GTECH_NAND3 U174 ( .A(b[0]), .B(n99), .C(a[0]), .Z(n145) );
  GTECH_XOR2 U175 ( .A(a[1]), .B(b[1]), .Z(n99) );
  GTECH_NOT U176 ( .A(n130), .Z(n126) );
  GTECH_OR4 U177 ( .A(n91), .B(n85), .C(n88), .D(n82), .Z(n130) );
  GTECH_XNOR2 U178 ( .A(a[7]), .B(b[7]), .Z(n82) );
  GTECH_OAI21 U179 ( .A(b[5]), .B(a[5]), .C(n89), .Z(n88) );
  GTECH_NAND2 U180 ( .A(a[5]), .B(b[5]), .Z(n89) );
  GTECH_OAI21 U181 ( .A(b[6]), .B(a[6]), .C(n86), .Z(n85) );
  GTECH_NAND2 U182 ( .A(a[6]), .B(b[6]), .Z(n86) );
  GTECH_OAI21 U183 ( .A(b[4]), .B(a[4]), .C(n92), .Z(n91) );
  GTECH_NAND2 U184 ( .A(a[4]), .B(b[4]), .Z(n92) );
endmodule

