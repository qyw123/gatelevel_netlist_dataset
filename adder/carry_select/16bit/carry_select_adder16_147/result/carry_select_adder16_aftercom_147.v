
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399;

  GTECH_MUX2 U147 ( .A(n286), .B(n287), .S(n288), .Z(sum[9]) );
  GTECH_AOI21 U148 ( .A(n289), .B(n290), .C(n291), .Z(n288) );
  GTECH_XOR2 U149 ( .A(b[9]), .B(a[9]), .Z(n287) );
  GTECH_NOT U150 ( .A(n292), .Z(n286) );
  GTECH_AND_NOT U151 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_AO21 U152 ( .A(n295), .B(n290), .C(n296), .Z(sum[8]) );
  GTECH_MUX2 U153 ( .A(n297), .B(n298), .S(n299), .Z(sum[7]) );
  GTECH_XOR2 U154 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U155 ( .A(n302), .Z(n297) );
  GTECH_XOR2 U156 ( .A(n300), .B(n303), .Z(n302) );
  GTECH_AND2 U157 ( .A(n304), .B(n305), .Z(n303) );
  GTECH_AO21 U158 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_XOR2 U159 ( .A(a[7]), .B(b[7]), .Z(n300) );
  GTECH_OAI21 U160 ( .A(n309), .B(n305), .C(n310), .Z(sum[6]) );
  GTECH_MUX2 U161 ( .A(n311), .B(n312), .S(b[6]), .Z(n310) );
  GTECH_NAND2 U162 ( .A(n309), .B(n313), .Z(n312) );
  GTECH_NOT U163 ( .A(a[6]), .Z(n313) );
  GTECH_XOR2 U164 ( .A(n309), .B(a[6]), .Z(n311) );
  GTECH_OAI21 U165 ( .A(n314), .B(n315), .C(n316), .Z(n309) );
  GTECH_NOT U166 ( .A(n317), .Z(n314) );
  GTECH_XOR2 U167 ( .A(n317), .B(n318), .Z(sum[5]) );
  GTECH_NAND2 U168 ( .A(n316), .B(n306), .Z(n318) );
  GTECH_NOT U169 ( .A(n315), .Z(n306) );
  GTECH_OAI2N2 U170 ( .A(b[4]), .B(a[4]), .C(n307), .D(n319), .Z(n317) );
  GTECH_NAND2 U171 ( .A(b[4]), .B(a[4]), .Z(n307) );
  GTECH_XOR2 U172 ( .A(n299), .B(n320), .Z(sum[4]) );
  GTECH_MUX2 U173 ( .A(n321), .B(n322), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U174 ( .A(n323), .B(n324), .Z(n322) );
  GTECH_NOT U175 ( .A(n325), .Z(n321) );
  GTECH_XOR2 U176 ( .A(n323), .B(n326), .Z(n325) );
  GTECH_OA21 U177 ( .A(n327), .B(n328), .C(n329), .Z(n326) );
  GTECH_NOT U178 ( .A(n330), .Z(n329) );
  GTECH_XOR2 U179 ( .A(a[3]), .B(b[3]), .Z(n323) );
  GTECH_MUX2 U180 ( .A(n331), .B(n332), .S(n333), .Z(sum[2]) );
  GTECH_MUX2 U181 ( .A(n334), .B(n335), .S(n328), .Z(n332) );
  GTECH_OAI2N2 U182 ( .A(b[1]), .B(a[1]), .C(n336), .D(n337), .Z(n328) );
  GTECH_MUX2 U183 ( .A(n335), .B(n334), .S(n338), .Z(n331) );
  GTECH_OR2 U184 ( .A(n330), .B(n327), .Z(n334) );
  GTECH_XOR2 U185 ( .A(a[2]), .B(b[2]), .Z(n335) );
  GTECH_MUX2 U186 ( .A(n339), .B(n340), .S(n341), .Z(sum[1]) );
  GTECH_XOR2 U187 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_AO21 U188 ( .A(n333), .B(n337), .C(n344), .Z(n340) );
  GTECH_OAI21 U189 ( .A(n344), .B(n333), .C(n337), .Z(n339) );
  GTECH_NAND2 U190 ( .A(b[0]), .B(a[0]), .Z(n337) );
  GTECH_NOT U191 ( .A(cin), .Z(n333) );
  GTECH_MUX2 U192 ( .A(n345), .B(n346), .S(n347), .Z(sum[15]) );
  GTECH_XOR2 U193 ( .A(n348), .B(n349), .Z(n346) );
  GTECH_OA21 U194 ( .A(n350), .B(n351), .C(n352), .Z(n349) );
  GTECH_XOR2 U195 ( .A(n348), .B(n353), .Z(n345) );
  GTECH_XOR2 U196 ( .A(n354), .B(b[15]), .Z(n348) );
  GTECH_MUX2 U197 ( .A(n355), .B(n356), .S(n357), .Z(sum[14]) );
  GTECH_OA21 U198 ( .A(n358), .B(n347), .C(n351), .Z(n357) );
  GTECH_OA21 U199 ( .A(n359), .B(n360), .C(n361), .Z(n351) );
  GTECH_XOR2 U200 ( .A(b[14]), .B(a[14]), .Z(n356) );
  GTECH_NOT U201 ( .A(n362), .Z(n355) );
  GTECH_AND_NOT U202 ( .A(n352), .B(n350), .Z(n362) );
  GTECH_MUX2 U203 ( .A(n363), .B(n364), .S(n365), .Z(sum[13]) );
  GTECH_OA21 U204 ( .A(n347), .B(n366), .C(n360), .Z(n365) );
  GTECH_NOT U205 ( .A(n367), .Z(n347) );
  GTECH_XOR2 U206 ( .A(b[13]), .B(a[13]), .Z(n364) );
  GTECH_NAND2 U207 ( .A(n361), .B(n368), .Z(n363) );
  GTECH_NOT U208 ( .A(n359), .Z(n368) );
  GTECH_AO21 U209 ( .A(n367), .B(n369), .C(n370), .Z(sum[12]) );
  GTECH_NOT U210 ( .A(n371), .Z(n369) );
  GTECH_MUX2 U211 ( .A(n372), .B(n373), .S(n290), .Z(sum[11]) );
  GTECH_XOR2 U212 ( .A(n374), .B(n375), .Z(n373) );
  GTECH_NOT U213 ( .A(n376), .Z(n372) );
  GTECH_XOR2 U214 ( .A(n374), .B(n377), .Z(n376) );
  GTECH_AOI21 U215 ( .A(n378), .B(n379), .C(n380), .Z(n377) );
  GTECH_XOR2 U216 ( .A(a[11]), .B(b[11]), .Z(n374) );
  GTECH_MUX2 U217 ( .A(n381), .B(n382), .S(n383), .Z(sum[10]) );
  GTECH_AOI21 U218 ( .A(n384), .B(n290), .C(n379), .Z(n383) );
  GTECH_AO21 U219 ( .A(n293), .B(n291), .C(n294), .Z(n379) );
  GTECH_XOR2 U220 ( .A(b[10]), .B(a[10]), .Z(n382) );
  GTECH_NAND2 U221 ( .A(n378), .B(n385), .Z(n381) );
  GTECH_NOT U222 ( .A(n380), .Z(n385) );
  GTECH_XOR2 U223 ( .A(cin), .B(n386), .Z(sum[0]) );
  GTECH_AO21 U224 ( .A(n367), .B(n387), .C(n370), .Z(cout) );
  GTECH_AND_NOT U225 ( .A(n371), .B(n367), .Z(n370) );
  GTECH_AND_NOT U226 ( .A(n360), .B(n366), .Z(n371) );
  GTECH_NAND2 U227 ( .A(b[12]), .B(a[12]), .Z(n360) );
  GTECH_OAI21 U228 ( .A(n353), .B(n354), .C(n388), .Z(n387) );
  GTECH_OAI21 U229 ( .A(a[15]), .B(n389), .C(b[15]), .Z(n388) );
  GTECH_NOT U230 ( .A(a[15]), .Z(n354) );
  GTECH_NOT U231 ( .A(n389), .Z(n353) );
  GTECH_OAI21 U232 ( .A(n350), .B(n358), .C(n352), .Z(n389) );
  GTECH_NAND2 U233 ( .A(b[14]), .B(a[14]), .Z(n352) );
  GTECH_OA21 U234 ( .A(n366), .B(n359), .C(n361), .Z(n358) );
  GTECH_NAND2 U235 ( .A(a[13]), .B(b[13]), .Z(n361) );
  GTECH_NOR2 U236 ( .A(b[13]), .B(a[13]), .Z(n359) );
  GTECH_NOR2 U237 ( .A(a[12]), .B(b[12]), .Z(n366) );
  GTECH_NOR2 U238 ( .A(a[14]), .B(b[14]), .Z(n350) );
  GTECH_AO21 U239 ( .A(n290), .B(n390), .C(n296), .Z(n367) );
  GTECH_NOR2 U240 ( .A(n295), .B(n290), .Z(n296) );
  GTECH_NOT U241 ( .A(n391), .Z(n295) );
  GTECH_AND_NOT U242 ( .A(n289), .B(n291), .Z(n391) );
  GTECH_AND2 U243 ( .A(a[8]), .B(b[8]), .Z(n291) );
  GTECH_OA21 U244 ( .A(a[11]), .B(n375), .C(n392), .Z(n390) );
  GTECH_AO21 U245 ( .A(n375), .B(a[11]), .C(b[11]), .Z(n392) );
  GTECH_AO21 U246 ( .A(n378), .B(n384), .C(n380), .Z(n375) );
  GTECH_AND2 U247 ( .A(b[10]), .B(a[10]), .Z(n380) );
  GTECH_AO21 U248 ( .A(n289), .B(n293), .C(n294), .Z(n384) );
  GTECH_AND2 U249 ( .A(b[9]), .B(a[9]), .Z(n294) );
  GTECH_OR2 U250 ( .A(a[9]), .B(b[9]), .Z(n293) );
  GTECH_OR2 U251 ( .A(b[8]), .B(a[8]), .Z(n289) );
  GTECH_OR2 U252 ( .A(a[10]), .B(b[10]), .Z(n378) );
  GTECH_MUX2 U253 ( .A(n320), .B(n393), .S(n299), .Z(n290) );
  GTECH_NOT U254 ( .A(n319), .Z(n299) );
  GTECH_MUX2 U255 ( .A(n394), .B(n395), .S(cin), .Z(n319) );
  GTECH_AOI21 U256 ( .A(n324), .B(a[3]), .C(n396), .Z(n395) );
  GTECH_OA21 U257 ( .A(a[3]), .B(n324), .C(b[3]), .Z(n396) );
  GTECH_AO21 U258 ( .A(n397), .B(n338), .C(n330), .Z(n324) );
  GTECH_AND2 U259 ( .A(a[2]), .B(b[2]), .Z(n330) );
  GTECH_AOI2N2 U260 ( .A(n336), .B(n344), .C(b[1]), .D(a[1]), .Z(n338) );
  GTECH_NOR2 U261 ( .A(a[0]), .B(b[0]), .Z(n344) );
  GTECH_OR2 U262 ( .A(n343), .B(n342), .Z(n336) );
  GTECH_NOT U263 ( .A(b[1]), .Z(n342) );
  GTECH_NOT U264 ( .A(a[1]), .Z(n343) );
  GTECH_NOT U265 ( .A(n327), .Z(n397) );
  GTECH_NOR2 U266 ( .A(a[2]), .B(b[2]), .Z(n327) );
  GTECH_NOT U267 ( .A(n386), .Z(n394) );
  GTECH_XOR2 U268 ( .A(a[0]), .B(b[0]), .Z(n386) );
  GTECH_OA21 U269 ( .A(a[7]), .B(n301), .C(n398), .Z(n393) );
  GTECH_AO21 U270 ( .A(n301), .B(a[7]), .C(b[7]), .Z(n398) );
  GTECH_OAI21 U271 ( .A(n399), .B(n308), .C(n305), .Z(n301) );
  GTECH_NAND2 U272 ( .A(b[6]), .B(a[6]), .Z(n305) );
  GTECH_OAI21 U273 ( .A(b[6]), .B(a[6]), .C(n316), .Z(n308) );
  GTECH_OR2 U274 ( .A(b[5]), .B(a[5]), .Z(n316) );
  GTECH_NOR3 U275 ( .A(a[4]), .B(b[4]), .C(n315), .Z(n399) );
  GTECH_AND2 U276 ( .A(b[5]), .B(a[5]), .Z(n315) );
  GTECH_XOR2 U277 ( .A(a[4]), .B(b[4]), .Z(n320) );
endmodule

