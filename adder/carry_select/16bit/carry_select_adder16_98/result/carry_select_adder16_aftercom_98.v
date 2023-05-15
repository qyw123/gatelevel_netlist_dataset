
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391;

  GTECH_MUX2 U141 ( .A(n280), .B(n281), .S(n282), .Z(sum[9]) );
  GTECH_AOI2N2 U142 ( .A(a[8]), .B(b[8]), .C(n283), .D(n284), .Z(n282) );
  GTECH_XOR2 U143 ( .A(b[9]), .B(a[9]), .Z(n281) );
  GTECH_NAND2 U144 ( .A(n285), .B(n286), .Z(n280) );
  GTECH_XOR2 U145 ( .A(n284), .B(n287), .Z(sum[8]) );
  GTECH_MUX2 U146 ( .A(n288), .B(n289), .S(n290), .Z(sum[7]) );
  GTECH_XOR2 U147 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_AND2 U148 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_OAI21 U149 ( .A(b[6]), .B(a[6]), .C(n295), .Z(n293) );
  GTECH_NOT U150 ( .A(n296), .Z(n291) );
  GTECH_XOR2 U151 ( .A(n296), .B(n297), .Z(n288) );
  GTECH_XOR2 U152 ( .A(a[7]), .B(b[7]), .Z(n296) );
  GTECH_OAI21 U153 ( .A(n298), .B(n294), .C(n299), .Z(sum[6]) );
  GTECH_MUX2 U154 ( .A(n300), .B(n301), .S(b[6]), .Z(n299) );
  GTECH_NAND2 U155 ( .A(n302), .B(n298), .Z(n301) );
  GTECH_NOT U156 ( .A(a[6]), .Z(n302) );
  GTECH_XOR2 U157 ( .A(a[6]), .B(n298), .Z(n300) );
  GTECH_NOT U158 ( .A(n303), .Z(n298) );
  GTECH_AO21 U159 ( .A(n304), .B(n305), .C(n295), .Z(n303) );
  GTECH_OA21 U160 ( .A(n306), .B(n307), .C(n308), .Z(n295) );
  GTECH_MUX2 U161 ( .A(n309), .B(n310), .S(n311), .Z(sum[5]) );
  GTECH_AND_NOT U162 ( .A(n308), .B(n306), .Z(n311) );
  GTECH_OAI21 U163 ( .A(n307), .B(n304), .C(n312), .Z(n310) );
  GTECH_AO21 U164 ( .A(n312), .B(n304), .C(n307), .Z(n309) );
  GTECH_AND_NOT U165 ( .A(a[4]), .B(n313), .Z(n307) );
  GTECH_XOR2 U166 ( .A(n290), .B(n314), .Z(sum[4]) );
  GTECH_MUX2 U167 ( .A(n315), .B(n316), .S(n317), .Z(sum[3]) );
  GTECH_XOR2 U168 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_OA21 U169 ( .A(a[2]), .B(n320), .C(n321), .Z(n318) );
  GTECH_AO21 U170 ( .A(n320), .B(a[2]), .C(b[2]), .Z(n321) );
  GTECH_XOR2 U171 ( .A(n319), .B(n322), .Z(n315) );
  GTECH_XOR2 U172 ( .A(a[3]), .B(b[3]), .Z(n319) );
  GTECH_MUX2 U173 ( .A(n323), .B(n324), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U174 ( .A(n325), .B(n326), .Z(n324) );
  GTECH_XOR2 U175 ( .A(n325), .B(n320), .Z(n323) );
  GTECH_NAND2 U176 ( .A(n327), .B(n328), .Z(n320) );
  GTECH_OR3 U177 ( .A(n329), .B(n330), .C(n331), .Z(n327) );
  GTECH_XOR2 U178 ( .A(a[2]), .B(b[2]), .Z(n325) );
  GTECH_XNOR3 U179 ( .A(b[1]), .B(n332), .C(n333), .Z(sum[1]) );
  GTECH_OAI2N2 U180 ( .A(n334), .B(n317), .C(b[0]), .D(a[0]), .Z(n333) );
  GTECH_MUX2 U181 ( .A(n335), .B(n336), .S(n337), .Z(sum[15]) );
  GTECH_XOR2 U182 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_AO21 U183 ( .A(n340), .B(n341), .C(n342), .Z(n339) );
  GTECH_XOR2 U184 ( .A(n338), .B(n343), .Z(n335) );
  GTECH_XOR2 U185 ( .A(a[15]), .B(b[15]), .Z(n338) );
  GTECH_MUX2 U186 ( .A(n344), .B(n345), .S(n346), .Z(sum[14]) );
  GTECH_OA21 U187 ( .A(n347), .B(n337), .C(n348), .Z(n346) );
  GTECH_NOT U188 ( .A(n341), .Z(n348) );
  GTECH_OAI21 U189 ( .A(n349), .B(n350), .C(n351), .Z(n341) );
  GTECH_XOR2 U190 ( .A(b[14]), .B(a[14]), .Z(n345) );
  GTECH_OR_NOT U191 ( .A(n342), .B(n340), .Z(n344) );
  GTECH_MUX2 U192 ( .A(n352), .B(n353), .S(n354), .Z(sum[13]) );
  GTECH_OA21 U193 ( .A(n355), .B(n337), .C(n350), .Z(n354) );
  GTECH_XOR2 U194 ( .A(b[13]), .B(a[13]), .Z(n353) );
  GTECH_OR_NOT U195 ( .A(n349), .B(n351), .Z(n352) );
  GTECH_OAI21 U196 ( .A(n356), .B(n337), .C(n357), .Z(sum[12]) );
  GTECH_MUX2 U197 ( .A(n358), .B(n359), .S(n284), .Z(sum[11]) );
  GTECH_XOR2 U198 ( .A(n360), .B(n361), .Z(n359) );
  GTECH_AND2 U199 ( .A(n362), .B(n363), .Z(n361) );
  GTECH_AO21 U200 ( .A(n364), .B(n365), .C(n366), .Z(n362) );
  GTECH_XOR2 U201 ( .A(n360), .B(n367), .Z(n358) );
  GTECH_XOR2 U202 ( .A(n368), .B(b[11]), .Z(n360) );
  GTECH_OAI21 U203 ( .A(n369), .B(n363), .C(n370), .Z(sum[10]) );
  GTECH_MUX2 U204 ( .A(n371), .B(n372), .S(b[10]), .Z(n370) );
  GTECH_NAND2 U205 ( .A(n365), .B(n369), .Z(n372) );
  GTECH_XOR2 U206 ( .A(a[10]), .B(n369), .Z(n371) );
  GTECH_OA21 U207 ( .A(n373), .B(n284), .C(n366), .Z(n369) );
  GTECH_AND2 U208 ( .A(n374), .B(n286), .Z(n366) );
  GTECH_NAND3 U209 ( .A(a[8]), .B(n285), .C(b[8]), .Z(n374) );
  GTECH_XOR2 U210 ( .A(n317), .B(n375), .Z(sum[0]) );
  GTECH_OAI21 U211 ( .A(n376), .B(n337), .C(n357), .Z(cout) );
  GTECH_NAND2 U212 ( .A(n337), .B(n356), .Z(n357) );
  GTECH_AND_NOT U213 ( .A(n350), .B(n355), .Z(n356) );
  GTECH_NAND2 U214 ( .A(b[12]), .B(a[12]), .Z(n350) );
  GTECH_MUX2 U215 ( .A(n377), .B(n287), .S(n284), .Z(n337) );
  GTECH_MUX2 U216 ( .A(n314), .B(n378), .S(n304), .Z(n284) );
  GTECH_NOT U217 ( .A(n290), .Z(n304) );
  GTECH_MUX2 U218 ( .A(n379), .B(n375), .S(n317), .Z(n290) );
  GTECH_NOT U219 ( .A(cin), .Z(n317) );
  GTECH_XOR2 U220 ( .A(a[0]), .B(n329), .Z(n375) );
  GTECH_NOT U221 ( .A(n380), .Z(n379) );
  GTECH_AO21 U222 ( .A(n322), .B(a[3]), .C(n381), .Z(n380) );
  GTECH_OA21 U223 ( .A(a[3]), .B(n322), .C(b[3]), .Z(n381) );
  GTECH_AO21 U224 ( .A(n326), .B(a[2]), .C(n382), .Z(n322) );
  GTECH_OA21 U225 ( .A(a[2]), .B(n326), .C(b[2]), .Z(n382) );
  GTECH_OAI21 U226 ( .A(n330), .B(n334), .C(n328), .Z(n326) );
  GTECH_NAND2 U227 ( .A(a[1]), .B(b[1]), .Z(n328) );
  GTECH_AND2 U228 ( .A(n331), .B(n329), .Z(n334) );
  GTECH_NOT U229 ( .A(b[0]), .Z(n329) );
  GTECH_NOT U230 ( .A(a[0]), .Z(n331) );
  GTECH_AND_NOT U231 ( .A(n332), .B(b[1]), .Z(n330) );
  GTECH_NOT U232 ( .A(a[1]), .Z(n332) );
  GTECH_OAI21 U233 ( .A(a[7]), .B(n297), .C(n383), .Z(n378) );
  GTECH_AO21 U234 ( .A(n297), .B(a[7]), .C(b[7]), .Z(n383) );
  GTECH_NAND2 U235 ( .A(n384), .B(n294), .Z(n297) );
  GTECH_NAND2 U236 ( .A(a[6]), .B(b[6]), .Z(n294) );
  GTECH_OAI21 U237 ( .A(a[6]), .B(b[6]), .C(n305), .Z(n384) );
  GTECH_OA21 U238 ( .A(n306), .B(n312), .C(n308), .Z(n305) );
  GTECH_OR2 U239 ( .A(b[5]), .B(a[5]), .Z(n308) );
  GTECH_OR2 U240 ( .A(a[4]), .B(b[4]), .Z(n312) );
  GTECH_AND2 U241 ( .A(a[5]), .B(b[5]), .Z(n306) );
  GTECH_XOR2 U242 ( .A(a[4]), .B(n313), .Z(n314) );
  GTECH_NOT U243 ( .A(b[4]), .Z(n313) );
  GTECH_AO21 U244 ( .A(a[8]), .B(b[8]), .C(n283), .Z(n287) );
  GTECH_OA21 U245 ( .A(n367), .B(n368), .C(n385), .Z(n377) );
  GTECH_OAI21 U246 ( .A(a[11]), .B(n386), .C(b[11]), .Z(n385) );
  GTECH_NOT U247 ( .A(a[11]), .Z(n368) );
  GTECH_NOT U248 ( .A(n386), .Z(n367) );
  GTECH_NAND2 U249 ( .A(n387), .B(n363), .Z(n386) );
  GTECH_NAND2 U250 ( .A(a[10]), .B(b[10]), .Z(n363) );
  GTECH_AO21 U251 ( .A(n365), .B(n364), .C(n373), .Z(n387) );
  GTECH_OA21 U252 ( .A(n283), .B(n388), .C(n286), .Z(n373) );
  GTECH_NAND2 U253 ( .A(b[9]), .B(a[9]), .Z(n286) );
  GTECH_NOT U254 ( .A(n285), .Z(n388) );
  GTECH_OR2 U255 ( .A(a[9]), .B(b[9]), .Z(n285) );
  GTECH_NOR2 U256 ( .A(b[8]), .B(a[8]), .Z(n283) );
  GTECH_NOT U257 ( .A(b[10]), .Z(n364) );
  GTECH_NOT U258 ( .A(a[10]), .Z(n365) );
  GTECH_NOT U259 ( .A(n389), .Z(n376) );
  GTECH_AO21 U260 ( .A(n343), .B(a[15]), .C(n390), .Z(n389) );
  GTECH_OA21 U261 ( .A(a[15]), .B(n343), .C(b[15]), .Z(n390) );
  GTECH_AO21 U262 ( .A(n340), .B(n391), .C(n342), .Z(n343) );
  GTECH_AND2 U263 ( .A(a[14]), .B(b[14]), .Z(n342) );
  GTECH_NOT U264 ( .A(n347), .Z(n391) );
  GTECH_OA21 U265 ( .A(n355), .B(n349), .C(n351), .Z(n347) );
  GTECH_NAND2 U266 ( .A(b[13]), .B(a[13]), .Z(n351) );
  GTECH_NOR2 U267 ( .A(a[13]), .B(b[13]), .Z(n349) );
  GTECH_NOR2 U268 ( .A(b[12]), .B(a[12]), .Z(n355) );
  GTECH_OR2 U269 ( .A(b[14]), .B(a[14]), .Z(n340) );
endmodule
