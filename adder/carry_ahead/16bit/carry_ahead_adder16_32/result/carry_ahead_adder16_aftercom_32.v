
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149;

  GTECH_XOR2 U93 ( .A(n74), .B(n75), .Z(sum[9]) );
  GTECH_XOR2 U94 ( .A(n76), .B(n77), .Z(sum[8]) );
  GTECH_XOR2 U95 ( .A(n78), .B(n79), .Z(sum[7]) );
  GTECH_OA21 U96 ( .A(n80), .B(n81), .C(n82), .Z(n79) );
  GTECH_XOR2 U97 ( .A(n81), .B(n80), .Z(sum[6]) );
  GTECH_OA21 U98 ( .A(n83), .B(n84), .C(n85), .Z(n80) );
  GTECH_XOR2 U99 ( .A(n83), .B(n84), .Z(sum[5]) );
  GTECH_OA21 U100 ( .A(n86), .B(n87), .C(n88), .Z(n83) );
  GTECH_XOR2 U101 ( .A(n87), .B(n86), .Z(sum[4]) );
  GTECH_NOT U102 ( .A(n89), .Z(n86) );
  GTECH_XOR2 U103 ( .A(n90), .B(n91), .Z(sum[3]) );
  GTECH_AO21 U104 ( .A(n92), .B(n93), .C(n94), .Z(n91) );
  GTECH_XOR2 U105 ( .A(n93), .B(n92), .Z(sum[2]) );
  GTECH_AO21 U106 ( .A(n95), .B(n96), .C(n97), .Z(n92) );
  GTECH_XOR2 U107 ( .A(n96), .B(n95), .Z(sum[1]) );
  GTECH_AO22 U108 ( .A(a[0]), .B(b[0]), .C(n98), .D(cin), .Z(n95) );
  GTECH_XOR2 U109 ( .A(n99), .B(n100), .Z(sum[15]) );
  GTECH_AO21 U110 ( .A(n101), .B(n102), .C(n103), .Z(n100) );
  GTECH_XOR2 U111 ( .A(n102), .B(n101), .Z(sum[14]) );
  GTECH_AO21 U112 ( .A(n104), .B(n105), .C(n106), .Z(n101) );
  GTECH_XOR2 U113 ( .A(n105), .B(n104), .Z(sum[13]) );
  GTECH_AO22 U114 ( .A(cout), .B(n107), .C(a[12]), .D(b[12]), .Z(n104) );
  GTECH_XOR2 U115 ( .A(n107), .B(cout), .Z(sum[12]) );
  GTECH_XNOR2 U116 ( .A(n108), .B(n109), .Z(sum[11]) );
  GTECH_OAI21 U117 ( .A(n110), .B(n111), .C(n112), .Z(n108) );
  GTECH_XOR2 U118 ( .A(n111), .B(n110), .Z(sum[10]) );
  GTECH_OA21 U119 ( .A(n74), .B(n75), .C(n113), .Z(n110) );
  GTECH_AOI22 U120 ( .A(a[8]), .B(b[8]), .C(n77), .D(n76), .Z(n74) );
  GTECH_NOT U121 ( .A(n114), .Z(n76) );
  GTECH_XOR2 U122 ( .A(cin), .B(n98), .Z(sum[0]) );
  GTECH_AO21 U123 ( .A(n77), .B(n115), .C(n116), .Z(cout) );
  GTECH_AO21 U124 ( .A(n89), .B(n117), .C(n118), .Z(n77) );
  GTECH_AO21 U125 ( .A(n119), .B(cin), .C(n120), .Z(n89) );
  GTECH_AND3 U126 ( .A(n117), .B(n119), .C(n115), .Z(Pm) );
  GTECH_AND5 U127 ( .A(n93), .B(n96), .C(n90), .D(n121), .E(n98), .Z(n119) );
  GTECH_XOR2 U128 ( .A(a[0]), .B(b[0]), .Z(n98) );
  GTECH_NOT U129 ( .A(n122), .Z(n121) );
  GTECH_AO21 U130 ( .A(n123), .B(n115), .C(n116), .Z(Gm) );
  GTECH_AO21 U131 ( .A(b[15]), .B(a[15]), .C(n124), .Z(n116) );
  GTECH_OA21 U132 ( .A(n103), .B(n125), .C(n99), .Z(n124) );
  GTECH_OA21 U133 ( .A(n106), .B(n126), .C(n102), .Z(n125) );
  GTECH_AND3 U134 ( .A(a[12]), .B(n105), .C(b[12]), .Z(n126) );
  GTECH_AND2 U135 ( .A(a[13]), .B(b[13]), .Z(n106) );
  GTECH_AND4 U136 ( .A(n102), .B(n107), .C(n99), .D(n105), .Z(n115) );
  GTECH_XOR2 U137 ( .A(a[13]), .B(b[13]), .Z(n105) );
  GTECH_XOR2 U138 ( .A(a[15]), .B(b[15]), .Z(n99) );
  GTECH_XOR2 U139 ( .A(a[12]), .B(b[12]), .Z(n107) );
  GTECH_OA21 U140 ( .A(b[14]), .B(a[14]), .C(n127), .Z(n102) );
  GTECH_NOT U141 ( .A(n103), .Z(n127) );
  GTECH_AND2 U142 ( .A(a[14]), .B(b[14]), .Z(n103) );
  GTECH_AO21 U143 ( .A(n120), .B(n117), .C(n118), .Z(n123) );
  GTECH_OAI21 U144 ( .A(n128), .B(n109), .C(n129), .Z(n118) );
  GTECH_AND_NOT U145 ( .A(n130), .B(n131), .Z(n128) );
  GTECH_AO21 U146 ( .A(n113), .B(n132), .C(n111), .Z(n130) );
  GTECH_NAND3 U147 ( .A(a[8]), .B(n133), .C(b[8]), .Z(n132) );
  GTECH_NOR4 U148 ( .A(n109), .B(n111), .C(n75), .D(n114), .Z(n117) );
  GTECH_XNOR2 U149 ( .A(a[8]), .B(b[8]), .Z(n114) );
  GTECH_NOT U150 ( .A(n133), .Z(n75) );
  GTECH_OA21 U151 ( .A(b[9]), .B(a[9]), .C(n113), .Z(n133) );
  GTECH_OR_NOT U152 ( .A(n134), .B(b[9]), .Z(n113) );
  GTECH_NOT U153 ( .A(a[9]), .Z(n134) );
  GTECH_OAI21 U154 ( .A(b[10]), .B(a[10]), .C(n112), .Z(n111) );
  GTECH_NOT U155 ( .A(n131), .Z(n112) );
  GTECH_AND2 U156 ( .A(a[10]), .B(b[10]), .Z(n131) );
  GTECH_OAI21 U157 ( .A(b[11]), .B(a[11]), .C(n129), .Z(n109) );
  GTECH_NOT U158 ( .A(n135), .Z(n129) );
  GTECH_AND2 U159 ( .A(a[11]), .B(b[11]), .Z(n135) );
  GTECH_OAI21 U160 ( .A(n136), .B(n122), .C(n137), .Z(n120) );
  GTECH_OA21 U161 ( .A(n138), .B(n78), .C(n139), .Z(n137) );
  GTECH_OA21 U162 ( .A(n140), .B(n81), .C(n82), .Z(n138) );
  GTECH_OA21 U163 ( .A(n84), .B(n88), .C(n85), .Z(n140) );
  GTECH_OR4 U164 ( .A(n87), .B(n78), .C(n81), .D(n84), .Z(n122) );
  GTECH_OAI21 U165 ( .A(b[5]), .B(a[5]), .C(n85), .Z(n84) );
  GTECH_OR_NOT U166 ( .A(n141), .B(b[5]), .Z(n85) );
  GTECH_NOT U167 ( .A(a[5]), .Z(n141) );
  GTECH_OAI21 U168 ( .A(b[6]), .B(a[6]), .C(n82), .Z(n81) );
  GTECH_OR_NOT U169 ( .A(n142), .B(b[6]), .Z(n82) );
  GTECH_NOT U170 ( .A(a[6]), .Z(n142) );
  GTECH_OAI21 U171 ( .A(b[7]), .B(a[7]), .C(n139), .Z(n78) );
  GTECH_OR_NOT U172 ( .A(n143), .B(a[7]), .Z(n139) );
  GTECH_NOT U173 ( .A(b[7]), .Z(n143) );
  GTECH_OAI21 U174 ( .A(b[4]), .B(a[4]), .C(n88), .Z(n87) );
  GTECH_OR_NOT U175 ( .A(n144), .B(b[4]), .Z(n88) );
  GTECH_NOT U176 ( .A(a[4]), .Z(n144) );
  GTECH_OA21 U177 ( .A(n145), .B(n146), .C(n147), .Z(n136) );
  GTECH_OAI21 U178 ( .A(n148), .B(n94), .C(n90), .Z(n147) );
  GTECH_XNOR2 U179 ( .A(a[3]), .B(n145), .Z(n90) );
  GTECH_AND2 U180 ( .A(b[2]), .B(a[2]), .Z(n94) );
  GTECH_OA21 U181 ( .A(n149), .B(n97), .C(n93), .Z(n148) );
  GTECH_XOR2 U182 ( .A(a[2]), .B(b[2]), .Z(n93) );
  GTECH_AND2 U183 ( .A(b[1]), .B(a[1]), .Z(n97) );
  GTECH_AND3 U184 ( .A(a[0]), .B(n96), .C(b[0]), .Z(n149) );
  GTECH_XOR2 U185 ( .A(a[1]), .B(b[1]), .Z(n96) );
  GTECH_NOT U186 ( .A(a[3]), .Z(n146) );
  GTECH_NOT U187 ( .A(b[3]), .Z(n145) );
endmodule

