
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381;

  GTECH_MUX2 U128 ( .A(n267), .B(n268), .S(n269), .Z(sum[9]) );
  GTECH_XNOR2 U129 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_XOR2 U130 ( .A(n272), .B(n270), .Z(n267) );
  GTECH_AOI21 U131 ( .A(a[9]), .B(b[9]), .C(n273), .Z(n270) );
  GTECH_NAND2 U132 ( .A(n274), .B(n275), .Z(sum[8]) );
  GTECH_OAI21 U133 ( .A(n272), .B(n271), .C(n269), .Z(n274) );
  GTECH_MUX2 U134 ( .A(n276), .B(n277), .S(n278), .Z(sum[7]) );
  GTECH_XOR2 U135 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_XOR2 U136 ( .A(n281), .B(n279), .Z(n276) );
  GTECH_XNOR2 U137 ( .A(n282), .B(b[7]), .Z(n279) );
  GTECH_OA21 U138 ( .A(a[6]), .B(n283), .C(n284), .Z(n281) );
  GTECH_NOT U139 ( .A(n285), .Z(n284) );
  GTECH_AOI21 U140 ( .A(n283), .B(a[6]), .C(b[6]), .Z(n285) );
  GTECH_MUX2 U141 ( .A(n286), .B(n287), .S(n278), .Z(sum[6]) );
  GTECH_XOR2 U142 ( .A(n288), .B(n289), .Z(n287) );
  GTECH_XOR2 U143 ( .A(n288), .B(n283), .Z(n286) );
  GTECH_NAND2 U144 ( .A(n290), .B(n291), .Z(n283) );
  GTECH_OAI21 U145 ( .A(b[5]), .B(a[5]), .C(n292), .Z(n290) );
  GTECH_XOR2 U146 ( .A(a[6]), .B(b[6]), .Z(n288) );
  GTECH_MUX2 U147 ( .A(n293), .B(n294), .S(n295), .Z(sum[5]) );
  GTECH_OA21 U148 ( .A(b[5]), .B(a[5]), .C(n291), .Z(n295) );
  GTECH_OAI21 U149 ( .A(n292), .B(n278), .C(n296), .Z(n294) );
  GTECH_NOT U150 ( .A(n297), .Z(n292) );
  GTECH_OAI21 U151 ( .A(n298), .B(n299), .C(n297), .Z(n293) );
  GTECH_NOT U152 ( .A(n278), .Z(n299) );
  GTECH_XOR2 U153 ( .A(n278), .B(n300), .Z(sum[4]) );
  GTECH_MUX2 U154 ( .A(n301), .B(n302), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U155 ( .A(n303), .B(n304), .Z(n302) );
  GTECH_XNOR2 U156 ( .A(n305), .B(n303), .Z(n301) );
  GTECH_XNOR2 U157 ( .A(a[3]), .B(b[3]), .Z(n303) );
  GTECH_AOI21 U158 ( .A(n306), .B(n307), .C(n308), .Z(n305) );
  GTECH_OA21 U159 ( .A(n307), .B(n306), .C(n309), .Z(n308) );
  GTECH_MUX2 U160 ( .A(n310), .B(n311), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U161 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_XNOR2 U162 ( .A(n312), .B(n307), .Z(n310) );
  GTECH_AOI21 U163 ( .A(n314), .B(n315), .C(n316), .Z(n307) );
  GTECH_XNOR2 U164 ( .A(a[2]), .B(n309), .Z(n312) );
  GTECH_MUX2 U165 ( .A(n317), .B(n318), .S(n319), .Z(sum[1]) );
  GTECH_AND_NOT U166 ( .A(n314), .B(n316), .Z(n319) );
  GTECH_OAI21 U167 ( .A(cin), .B(n315), .C(n320), .Z(n318) );
  GTECH_NOT U168 ( .A(n321), .Z(n317) );
  GTECH_AOI21 U169 ( .A(n320), .B(cin), .C(n315), .Z(n321) );
  GTECH_MUX2 U170 ( .A(n322), .B(n323), .S(n324), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_XOR2 U172 ( .A(n327), .B(n325), .Z(n322) );
  GTECH_XOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n325) );
  GTECH_AOI21 U174 ( .A(n328), .B(n329), .C(n330), .Z(n327) );
  GTECH_OA21 U175 ( .A(n329), .B(n328), .C(n331), .Z(n330) );
  GTECH_MUX2 U176 ( .A(n332), .B(n333), .S(n324), .Z(sum[14]) );
  GTECH_XNOR2 U177 ( .A(n334), .B(n335), .Z(n333) );
  GTECH_XNOR2 U178 ( .A(n334), .B(n329), .Z(n332) );
  GTECH_AOI21 U179 ( .A(n336), .B(n337), .C(n338), .Z(n329) );
  GTECH_XNOR2 U180 ( .A(a[14]), .B(n331), .Z(n334) );
  GTECH_NOT U181 ( .A(b[14]), .Z(n331) );
  GTECH_MUX2 U182 ( .A(n339), .B(n340), .S(n324), .Z(sum[13]) );
  GTECH_XNOR2 U183 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_XOR2 U184 ( .A(n337), .B(n341), .Z(n339) );
  GTECH_AND_NOT U185 ( .A(n336), .B(n338), .Z(n341) );
  GTECH_NAND2 U186 ( .A(n343), .B(n344), .Z(sum[12]) );
  GTECH_OAI21 U187 ( .A(n337), .B(n342), .C(n324), .Z(n343) );
  GTECH_MUX2 U188 ( .A(n345), .B(n346), .S(n269), .Z(sum[11]) );
  GTECH_XOR2 U189 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_XNOR2 U190 ( .A(n349), .B(n347), .Z(n345) );
  GTECH_XNOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n347) );
  GTECH_AOI21 U192 ( .A(n350), .B(n351), .C(n352), .Z(n349) );
  GTECH_AOI21 U193 ( .A(n353), .B(a[10]), .C(b[10]), .Z(n352) );
  GTECH_NOT U194 ( .A(n351), .Z(n353) );
  GTECH_NOT U195 ( .A(a[10]), .Z(n350) );
  GTECH_MUX2 U196 ( .A(n354), .B(n355), .S(n269), .Z(sum[10]) );
  GTECH_XOR2 U197 ( .A(n356), .B(n357), .Z(n355) );
  GTECH_XNOR2 U198 ( .A(n356), .B(n351), .Z(n354) );
  GTECH_AOI22 U199 ( .A(a[9]), .B(b[9]), .C(n358), .D(n272), .Z(n351) );
  GTECH_NOT U200 ( .A(n273), .Z(n358) );
  GTECH_XOR2 U201 ( .A(a[10]), .B(b[10]), .Z(n356) );
  GTECH_XOR2 U202 ( .A(cin), .B(n359), .Z(sum[0]) );
  GTECH_OAI21 U203 ( .A(n360), .B(n361), .C(n344), .Z(cout) );
  GTECH_OR3 U204 ( .A(n337), .B(n342), .C(n324), .Z(n344) );
  GTECH_NOT U205 ( .A(n360), .Z(n324) );
  GTECH_NOT U206 ( .A(n362), .Z(n342) );
  GTECH_AND2 U207 ( .A(a[12]), .B(b[12]), .Z(n337) );
  GTECH_AOI21 U208 ( .A(n326), .B(a[15]), .C(n363), .Z(n361) );
  GTECH_OA21 U209 ( .A(a[15]), .B(n326), .C(b[15]), .Z(n363) );
  GTECH_OAI21 U210 ( .A(n335), .B(n328), .C(n364), .Z(n326) );
  GTECH_OAI21 U211 ( .A(a[14]), .B(n365), .C(b[14]), .Z(n364) );
  GTECH_NOT U212 ( .A(n335), .Z(n365) );
  GTECH_NOT U213 ( .A(a[14]), .Z(n328) );
  GTECH_AOI21 U214 ( .A(n362), .B(n336), .C(n338), .Z(n335) );
  GTECH_AND2 U215 ( .A(b[13]), .B(a[13]), .Z(n338) );
  GTECH_OR2 U216 ( .A(b[13]), .B(a[13]), .Z(n336) );
  GTECH_OR2 U217 ( .A(b[12]), .B(a[12]), .Z(n362) );
  GTECH_OA21 U218 ( .A(n366), .B(n367), .C(n275), .Z(n360) );
  GTECH_OR3 U219 ( .A(n272), .B(n271), .C(n269), .Z(n275) );
  GTECH_AND2 U220 ( .A(a[8]), .B(b[8]), .Z(n272) );
  GTECH_NOT U221 ( .A(n269), .Z(n367) );
  GTECH_MUX2 U222 ( .A(n300), .B(n368), .S(n278), .Z(n269) );
  GTECH_MUX2 U223 ( .A(n359), .B(n369), .S(cin), .Z(n278) );
  GTECH_AOI21 U224 ( .A(n370), .B(n304), .C(n371), .Z(n369) );
  GTECH_AOI21 U225 ( .A(n372), .B(a[3]), .C(b[3]), .Z(n371) );
  GTECH_NOT U226 ( .A(n304), .Z(n372) );
  GTECH_OA21 U227 ( .A(n313), .B(n306), .C(n373), .Z(n304) );
  GTECH_NOT U228 ( .A(n374), .Z(n373) );
  GTECH_AOI21 U229 ( .A(n306), .B(n313), .C(n309), .Z(n374) );
  GTECH_NOT U230 ( .A(b[2]), .Z(n309) );
  GTECH_NOT U231 ( .A(a[2]), .Z(n306) );
  GTECH_AOI21 U232 ( .A(n314), .B(n320), .C(n316), .Z(n313) );
  GTECH_AND2 U233 ( .A(a[1]), .B(b[1]), .Z(n316) );
  GTECH_OR2 U234 ( .A(b[1]), .B(a[1]), .Z(n314) );
  GTECH_NOT U235 ( .A(a[3]), .Z(n370) );
  GTECH_AND_NOT U236 ( .A(n320), .B(n315), .Z(n359) );
  GTECH_AND2 U237 ( .A(a[0]), .B(b[0]), .Z(n315) );
  GTECH_OR2 U238 ( .A(b[0]), .B(a[0]), .Z(n320) );
  GTECH_AOI21 U239 ( .A(n282), .B(n375), .C(n376), .Z(n368) );
  GTECH_AOI21 U240 ( .A(n280), .B(a[7]), .C(b[7]), .Z(n376) );
  GTECH_NOT U241 ( .A(n375), .Z(n280) );
  GTECH_AOI21 U242 ( .A(n289), .B(a[6]), .C(n377), .Z(n375) );
  GTECH_OA21 U243 ( .A(a[6]), .B(n289), .C(b[6]), .Z(n377) );
  GTECH_NAND2 U244 ( .A(n378), .B(n291), .Z(n289) );
  GTECH_NAND2 U245 ( .A(a[5]), .B(b[5]), .Z(n291) );
  GTECH_OAI21 U246 ( .A(a[5]), .B(b[5]), .C(n296), .Z(n378) );
  GTECH_NOT U247 ( .A(a[7]), .Z(n282) );
  GTECH_AND_NOT U248 ( .A(n297), .B(n298), .Z(n300) );
  GTECH_NOT U249 ( .A(n296), .Z(n298) );
  GTECH_OR2 U250 ( .A(a[4]), .B(b[4]), .Z(n296) );
  GTECH_NAND2 U251 ( .A(b[4]), .B(a[4]), .Z(n297) );
  GTECH_AOI21 U252 ( .A(n379), .B(a[11]), .C(n380), .Z(n366) );
  GTECH_OA21 U253 ( .A(a[11]), .B(n379), .C(b[11]), .Z(n380) );
  GTECH_NOT U254 ( .A(n348), .Z(n379) );
  GTECH_AOI21 U255 ( .A(n357), .B(a[10]), .C(n381), .Z(n348) );
  GTECH_OA21 U256 ( .A(a[10]), .B(n357), .C(b[10]), .Z(n381) );
  GTECH_OAI2N2 U257 ( .A(n273), .B(n271), .C(a[9]), .D(b[9]), .Z(n357) );
  GTECH_NOR2 U258 ( .A(b[8]), .B(a[8]), .Z(n271) );
  GTECH_NOR2 U259 ( .A(b[9]), .B(a[9]), .Z(n273) );
endmodule
