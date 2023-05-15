
module carry_ahead_adder16 ( a, b, cin, cout, sum, Gm, Pm );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout, Gm, Pm;
  wire   n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147;

  GTECH_XNOR2 U94 ( .A(n75), .B(n76), .Z(sum[9]) );
  GTECH_XNOR2 U95 ( .A(n77), .B(n78), .Z(sum[8]) );
  GTECH_XNOR2 U96 ( .A(n79), .B(n80), .Z(sum[7]) );
  GTECH_AOI21 U97 ( .A(n81), .B(n82), .C(n83), .Z(n80) );
  GTECH_XOR2 U98 ( .A(n82), .B(n81), .Z(sum[6]) );
  GTECH_OAI2N2 U99 ( .A(n84), .B(n85), .C(b[5]), .D(a[5]), .Z(n81) );
  GTECH_XNOR2 U100 ( .A(n86), .B(n84), .Z(sum[5]) );
  GTECH_OA21 U101 ( .A(n87), .B(n88), .C(n89), .Z(n84) );
  GTECH_NOT U102 ( .A(n90), .Z(n87) );
  GTECH_XNOR2 U103 ( .A(n90), .B(n88), .Z(sum[4]) );
  GTECH_XOR2 U104 ( .A(n91), .B(n92), .Z(sum[3]) );
  GTECH_OA21 U105 ( .A(n93), .B(n94), .C(n95), .Z(n92) );
  GTECH_XNOR2 U106 ( .A(n93), .B(n96), .Z(sum[2]) );
  GTECH_OA21 U107 ( .A(n97), .B(n98), .C(n99), .Z(n93) );
  GTECH_XNOR2 U108 ( .A(n98), .B(n100), .Z(sum[1]) );
  GTECH_AOI21 U109 ( .A(cin), .B(n101), .C(n102), .Z(n98) );
  GTECH_XNOR2 U110 ( .A(n103), .B(n104), .Z(sum[15]) );
  GTECH_AOI21 U111 ( .A(n105), .B(n106), .C(n107), .Z(n104) );
  GTECH_XOR2 U112 ( .A(n106), .B(n105), .Z(sum[14]) );
  GTECH_AO21 U113 ( .A(n108), .B(n109), .C(n110), .Z(n105) );
  GTECH_XOR2 U114 ( .A(n109), .B(n108), .Z(sum[13]) );
  GTECH_AO21 U115 ( .A(n111), .B(cout), .C(n112), .Z(n109) );
  GTECH_XOR2 U116 ( .A(cout), .B(n111), .Z(sum[12]) );
  GTECH_XOR2 U117 ( .A(n113), .B(n114), .Z(sum[11]) );
  GTECH_OA21 U118 ( .A(n115), .B(n116), .C(n117), .Z(n114) );
  GTECH_XOR2 U119 ( .A(n116), .B(n115), .Z(sum[10]) );
  GTECH_AOI22 U120 ( .A(n76), .B(n118), .C(b[9]), .D(a[9]), .Z(n115) );
  GTECH_OAI2N2 U121 ( .A(n119), .B(n77), .C(a[8]), .D(b[8]), .Z(n76) );
  GTECH_XOR2 U122 ( .A(cin), .B(n101), .Z(sum[0]) );
  GTECH_AO21 U123 ( .A(n120), .B(n78), .C(n121), .Z(cout) );
  GTECH_NOT U124 ( .A(n119), .Z(n78) );
  GTECH_OA21 U125 ( .A(n122), .B(n88), .C(n123), .Z(n119) );
  GTECH_AND2 U126 ( .A(n124), .B(n125), .Z(n88) );
  GTECH_NAND4 U127 ( .A(n101), .B(n126), .C(cin), .D(n127), .Z(n124) );
  GTECH_NOR3 U128 ( .A(n97), .B(n91), .C(n94), .Z(n127) );
  GTECH_AND4 U129 ( .A(n128), .B(n101), .C(n120), .D(n129), .Z(Pm) );
  GTECH_AND4 U130 ( .A(n126), .B(n96), .C(n100), .D(n130), .Z(n129) );
  GTECH_OA21 U131 ( .A(b[0]), .B(a[0]), .C(n131), .Z(n101) );
  GTECH_AO21 U132 ( .A(n120), .B(n132), .C(n121), .Z(Gm) );
  GTECH_NOT U133 ( .A(n133), .Z(n121) );
  GTECH_AOI22 U134 ( .A(b[15]), .B(a[15]), .C(n134), .D(n103), .Z(n133) );
  GTECH_AO21 U135 ( .A(n135), .B(n106), .C(n107), .Z(n134) );
  GTECH_NOT U136 ( .A(n136), .Z(n107) );
  GTECH_AO21 U137 ( .A(n112), .B(n108), .C(n110), .Z(n135) );
  GTECH_NOT U138 ( .A(n137), .Z(n112) );
  GTECH_NOT U139 ( .A(n138), .Z(n132) );
  GTECH_OA21 U140 ( .A(n122), .B(n125), .C(n123), .Z(n138) );
  GTECH_AOI2N2 U141 ( .A(b[11]), .B(a[11]), .C(n139), .D(n113), .Z(n123) );
  GTECH_OA21 U142 ( .A(n140), .B(n116), .C(n117), .Z(n139) );
  GTECH_NAND2 U143 ( .A(b[10]), .B(a[10]), .Z(n117) );
  GTECH_AOI21 U144 ( .A(b[9]), .B(a[9]), .C(n141), .Z(n140) );
  GTECH_AND3 U145 ( .A(a[8]), .B(n118), .C(b[8]), .Z(n141) );
  GTECH_AOI222 U146 ( .A(n126), .B(n142), .C(b[7]), .D(a[7]), .E(n79), .F(n143), .Z(n125) );
  GTECH_AO21 U147 ( .A(n82), .B(n144), .C(n83), .Z(n143) );
  GTECH_AND2 U148 ( .A(b[6]), .B(a[6]), .Z(n83) );
  GTECH_OAI2N2 U149 ( .A(n85), .B(n89), .C(b[5]), .D(a[5]), .Z(n144) );
  GTECH_NOT U150 ( .A(n86), .Z(n85) );
  GTECH_OAI2N2 U151 ( .A(n145), .B(n91), .C(b[3]), .D(a[3]), .Z(n142) );
  GTECH_NOT U152 ( .A(n130), .Z(n91) );
  GTECH_XOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n130) );
  GTECH_OA21 U154 ( .A(n146), .B(n94), .C(n95), .Z(n145) );
  GTECH_NOT U155 ( .A(n96), .Z(n94) );
  GTECH_OA21 U156 ( .A(b[2]), .B(a[2]), .C(n95), .Z(n96) );
  GTECH_NAND2 U157 ( .A(b[2]), .B(a[2]), .Z(n95) );
  GTECH_OA21 U158 ( .A(n131), .B(n97), .C(n99), .Z(n146) );
  GTECH_NOT U159 ( .A(n100), .Z(n97) );
  GTECH_OA21 U160 ( .A(b[1]), .B(a[1]), .C(n99), .Z(n100) );
  GTECH_NAND2 U161 ( .A(b[1]), .B(a[1]), .Z(n99) );
  GTECH_NOT U162 ( .A(n102), .Z(n131) );
  GTECH_AND2 U163 ( .A(a[0]), .B(b[0]), .Z(n102) );
  GTECH_AND4 U164 ( .A(n90), .B(n86), .C(n82), .D(n79), .Z(n126) );
  GTECH_XOR2 U165 ( .A(a[7]), .B(b[7]), .Z(n79) );
  GTECH_XOR2 U166 ( .A(a[6]), .B(b[6]), .Z(n82) );
  GTECH_XOR2 U167 ( .A(a[5]), .B(b[5]), .Z(n86) );
  GTECH_OA21 U168 ( .A(a[4]), .B(b[4]), .C(n89), .Z(n90) );
  GTECH_NAND2 U169 ( .A(b[4]), .B(a[4]), .Z(n89) );
  GTECH_NOT U170 ( .A(n128), .Z(n122) );
  GTECH_NOR4 U171 ( .A(n77), .B(n113), .C(n116), .D(n75), .Z(n128) );
  GTECH_NOT U172 ( .A(n118), .Z(n75) );
  GTECH_XOR2 U173 ( .A(a[9]), .B(b[9]), .Z(n118) );
  GTECH_XNOR2 U174 ( .A(a[10]), .B(b[10]), .Z(n116) );
  GTECH_XNOR2 U175 ( .A(a[11]), .B(b[11]), .Z(n113) );
  GTECH_XNOR2 U176 ( .A(a[8]), .B(b[8]), .Z(n77) );
  GTECH_AND4 U177 ( .A(n111), .B(n106), .C(n108), .D(n103), .Z(n120) );
  GTECH_XOR2 U178 ( .A(a[15]), .B(b[15]), .Z(n103) );
  GTECH_OA21 U179 ( .A(b[13]), .B(a[13]), .C(n147), .Z(n108) );
  GTECH_NOT U180 ( .A(n110), .Z(n147) );
  GTECH_AND2 U181 ( .A(b[13]), .B(a[13]), .Z(n110) );
  GTECH_OA21 U182 ( .A(a[14]), .B(b[14]), .C(n136), .Z(n106) );
  GTECH_NAND2 U183 ( .A(b[14]), .B(a[14]), .Z(n136) );
  GTECH_OA21 U184 ( .A(a[12]), .B(b[12]), .C(n137), .Z(n111) );
  GTECH_NAND2 U185 ( .A(a[12]), .B(b[12]), .Z(n137) );
endmodule

