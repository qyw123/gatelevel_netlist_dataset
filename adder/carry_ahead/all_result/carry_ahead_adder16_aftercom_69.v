
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
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147;

  GTECH_XOR2 U97 ( .A(n78), .B(n79), .Z(sum[9]) );
  GTECH_XOR2 U98 ( .A(n80), .B(n81), .Z(sum[8]) );
  GTECH_XNOR2 U99 ( .A(n82), .B(n83), .Z(sum[7]) );
  GTECH_OA21 U100 ( .A(n84), .B(n85), .C(n86), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n84), .B(n85), .Z(sum[6]) );
  GTECH_OA21 U102 ( .A(n87), .B(n88), .C(n89), .Z(n84) );
  GTECH_XOR2 U103 ( .A(n88), .B(n87), .Z(sum[5]) );
  GTECH_OA21 U104 ( .A(n90), .B(n91), .C(n92), .Z(n87) );
  GTECH_XOR2 U105 ( .A(n90), .B(n91), .Z(sum[4]) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n94), .Z(sum[3]) );
  GTECH_OA21 U107 ( .A(n95), .B(n96), .C(n97), .Z(n94) );
  GTECH_XOR2 U108 ( .A(n96), .B(n95), .Z(sum[2]) );
  GTECH_AOI21 U109 ( .A(n98), .B(n99), .C(n100), .Z(n95) );
  GTECH_XOR2 U110 ( .A(n99), .B(n98), .Z(sum[1]) );
  GTECH_AO21 U111 ( .A(n101), .B(cin), .C(n102), .Z(n98) );
  GTECH_XOR2 U112 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AO21 U113 ( .A(n105), .B(n106), .C(n107), .Z(n103) );
  GTECH_XNOR2 U114 ( .A(n105), .B(n108), .Z(sum[14]) );
  GTECH_OAI21 U115 ( .A(n109), .B(n110), .C(n111), .Z(n105) );
  GTECH_XNOR2 U116 ( .A(n112), .B(n109), .Z(sum[13]) );
  GTECH_AOI22 U117 ( .A(a[12]), .B(b[12]), .C(cout), .D(n113), .Z(n109) );
  GTECH_XOR2 U118 ( .A(n113), .B(cout), .Z(sum[12]) );
  GTECH_XOR2 U119 ( .A(n114), .B(n115), .Z(sum[11]) );
  GTECH_OA21 U120 ( .A(n116), .B(n117), .C(n118), .Z(n115) );
  GTECH_XOR2 U121 ( .A(n116), .B(n117), .Z(sum[10]) );
  GTECH_OA21 U122 ( .A(n78), .B(n79), .C(n119), .Z(n116) );
  GTECH_AOI2N2 U123 ( .A(a[8]), .B(b[8]), .C(n81), .D(n80), .Z(n78) );
  GTECH_XNOR2 U124 ( .A(n120), .B(n101), .Z(sum[0]) );
  GTECH_OAI21 U125 ( .A(n81), .B(n121), .C(n122), .Z(cout) );
  GTECH_OA21 U126 ( .A(n90), .B(n123), .C(n124), .Z(n81) );
  GTECH_OA21 U127 ( .A(n125), .B(n120), .C(n126), .Z(n90) );
  GTECH_NOT U128 ( .A(cin), .Z(n120) );
  GTECH_NOR3 U129 ( .A(n121), .B(n125), .C(n123), .Z(Pm) );
  GTECH_NAND5 U130 ( .A(n99), .B(n93), .C(n127), .D(n101), .E(n128), .Z(n125)
         );
  GTECH_OA21 U131 ( .A(b[0]), .B(a[0]), .C(n129), .Z(n101) );
  GTECH_NOT U132 ( .A(n102), .Z(n129) );
  GTECH_OAI21 U133 ( .A(n130), .B(n121), .C(n122), .Z(Gm) );
  GTECH_AND2 U134 ( .A(n131), .B(n132), .Z(n122) );
  GTECH_OAI21 U135 ( .A(n133), .B(n107), .C(n104), .Z(n131) );
  GTECH_AOI21 U136 ( .A(n134), .B(n111), .C(n108), .Z(n133) );
  GTECH_NOT U137 ( .A(n106), .Z(n108) );
  GTECH_NAND2 U138 ( .A(b[13]), .B(a[13]), .Z(n111) );
  GTECH_NAND3 U139 ( .A(b[12]), .B(n112), .C(a[12]), .Z(n134) );
  GTECH_NAND4 U140 ( .A(n104), .B(n106), .C(n113), .D(n112), .Z(n121) );
  GTECH_NOT U141 ( .A(n110), .Z(n112) );
  GTECH_XNOR2 U142 ( .A(a[13]), .B(b[13]), .Z(n110) );
  GTECH_XOR2 U143 ( .A(a[12]), .B(b[12]), .Z(n113) );
  GTECH_OA21 U144 ( .A(a[14]), .B(b[14]), .C(n135), .Z(n106) );
  GTECH_NOT U145 ( .A(n107), .Z(n135) );
  GTECH_AND2 U146 ( .A(a[14]), .B(b[14]), .Z(n107) );
  GTECH_OA21 U147 ( .A(a[15]), .B(b[15]), .C(n132), .Z(n104) );
  GTECH_NAND2 U148 ( .A(a[15]), .B(b[15]), .Z(n132) );
  GTECH_OA21 U149 ( .A(n126), .B(n123), .C(n124), .Z(n130) );
  GTECH_AOI21 U150 ( .A(b[11]), .B(a[11]), .C(n136), .Z(n124) );
  GTECH_AOI21 U151 ( .A(n137), .B(n118), .C(n114), .Z(n136) );
  GTECH_AO21 U152 ( .A(n138), .B(n119), .C(n117), .Z(n137) );
  GTECH_NAND3 U153 ( .A(b[8]), .B(n139), .C(a[8]), .Z(n138) );
  GTECH_NOT U154 ( .A(n79), .Z(n139) );
  GTECH_OR4 U155 ( .A(n117), .B(n79), .C(n80), .D(n114), .Z(n123) );
  GTECH_XNOR2 U156 ( .A(a[11]), .B(b[11]), .Z(n114) );
  GTECH_XNOR2 U157 ( .A(a[8]), .B(b[8]), .Z(n80) );
  GTECH_OAI21 U158 ( .A(a[9]), .B(b[9]), .C(n119), .Z(n79) );
  GTECH_NAND2 U159 ( .A(a[9]), .B(b[9]), .Z(n119) );
  GTECH_OAI21 U160 ( .A(a[10]), .B(b[10]), .C(n118), .Z(n117) );
  GTECH_NAND2 U161 ( .A(b[10]), .B(a[10]), .Z(n118) );
  GTECH_AOI222 U162 ( .A(a[7]), .B(b[7]), .C(n128), .D(n140), .E(n82), .F(n141), .Z(n126) );
  GTECH_OAI21 U163 ( .A(n142), .B(n85), .C(n86), .Z(n141) );
  GTECH_OA21 U164 ( .A(n88), .B(n92), .C(n89), .Z(n142) );
  GTECH_NAND2 U165 ( .A(a[5]), .B(b[5]), .Z(n89) );
  GTECH_OAI2N2 U166 ( .A(n143), .B(n144), .C(b[3]), .D(a[3]), .Z(n140) );
  GTECH_NOT U167 ( .A(n93), .Z(n144) );
  GTECH_XOR2 U168 ( .A(a[3]), .B(b[3]), .Z(n93) );
  GTECH_OA21 U169 ( .A(n145), .B(n96), .C(n97), .Z(n143) );
  GTECH_NOT U170 ( .A(n127), .Z(n96) );
  GTECH_OA21 U171 ( .A(b[2]), .B(a[2]), .C(n97), .Z(n127) );
  GTECH_NAND2 U172 ( .A(b[2]), .B(a[2]), .Z(n97) );
  GTECH_AOI21 U173 ( .A(n102), .B(n99), .C(n100), .Z(n145) );
  GTECH_OA21 U174 ( .A(b[1]), .B(a[1]), .C(n146), .Z(n99) );
  GTECH_NOT U175 ( .A(n100), .Z(n146) );
  GTECH_AND2 U176 ( .A(a[1]), .B(b[1]), .Z(n100) );
  GTECH_AND2 U177 ( .A(a[0]), .B(b[0]), .Z(n102) );
  GTECH_NOR4 U178 ( .A(n91), .B(n85), .C(n147), .D(n88), .Z(n128) );
  GTECH_XNOR2 U179 ( .A(a[5]), .B(b[5]), .Z(n88) );
  GTECH_NOT U180 ( .A(n82), .Z(n147) );
  GTECH_XOR2 U181 ( .A(a[7]), .B(b[7]), .Z(n82) );
  GTECH_OAI21 U182 ( .A(a[6]), .B(b[6]), .C(n86), .Z(n85) );
  GTECH_NAND2 U183 ( .A(b[6]), .B(a[6]), .Z(n86) );
  GTECH_OAI21 U184 ( .A(a[4]), .B(b[4]), .C(n92), .Z(n91) );
  GTECH_NAND2 U185 ( .A(a[4]), .B(b[4]), .Z(n92) );
endmodule

