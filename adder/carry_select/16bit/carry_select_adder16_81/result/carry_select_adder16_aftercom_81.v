
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398;

  GTECH_MUX2 U137 ( .A(n276), .B(n277), .S(n278), .Z(sum[9]) );
  GTECH_ADD_AB U138 ( .A(n279), .B(n280), .S(n277) );
  GTECH_ADD_AB U139 ( .A(n281), .B(n279), .S(n276) );
  GTECH_OA21 U140 ( .A(a[9]), .B(b[9]), .C(n282), .Z(n279) );
  GTECH_NOT U141 ( .A(n283), .Z(n282) );
  GTECH_ADD_AB U142 ( .A(n284), .B(n278), .S(sum[8]) );
  GTECH_MUX2 U143 ( .A(n285), .B(n286), .S(n287), .Z(sum[7]) );
  GTECH_XNOR2 U144 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_AND_NOT U145 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_AOI21 U146 ( .A(n292), .B(n293), .C(n294), .Z(n291) );
  GTECH_XNOR2 U147 ( .A(n295), .B(n289), .Z(n285) );
  GTECH_XNOR2 U148 ( .A(b[7]), .B(n296), .Z(n289) );
  GTECH_OAI21 U149 ( .A(n297), .B(n290), .C(n298), .Z(sum[6]) );
  GTECH_MUX2 U150 ( .A(n299), .B(n300), .S(b[6]), .Z(n298) );
  GTECH_OR_NOT U151 ( .A(a[6]), .B(n297), .Z(n300) );
  GTECH_ADD_AB U152 ( .A(a[6]), .B(n297), .S(n299) );
  GTECH_OA21 U153 ( .A(n301), .B(n287), .C(n294), .Z(n297) );
  GTECH_OA21 U154 ( .A(n302), .B(n303), .C(n304), .Z(n294) );
  GTECH_NOT U155 ( .A(n305), .Z(sum[5]) );
  GTECH_MUX2 U156 ( .A(n306), .B(n307), .S(n308), .Z(n305) );
  GTECH_AND_NOT U157 ( .A(n304), .B(n302), .Z(n308) );
  GTECH_ADD_ABC U158 ( .A(a[4]), .B(n309), .C(b[4]), .COUT(n307) );
  GTECH_MUX2 U159 ( .A(n310), .B(n311), .S(cin), .Z(n309) );
  GTECH_OAI21 U160 ( .A(n312), .B(n313), .C(n314), .Z(n311) );
  GTECH_OA21 U161 ( .A(n315), .B(n287), .C(n303), .Z(n306) );
  GTECH_XNOR2 U162 ( .A(n316), .B(n287), .Z(sum[4]) );
  GTECH_MUX2 U163 ( .A(n317), .B(n318), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U164 ( .A(n312), .B(n319), .S(n318) );
  GTECH_ADD_AB U165 ( .A(n320), .B(n319), .S(n317) );
  GTECH_XNOR2 U166 ( .A(b[3]), .B(a[3]), .Z(n319) );
  GTECH_AND_NOT U167 ( .A(n321), .B(n322), .Z(n320) );
  GTECH_AOI21 U168 ( .A(n323), .B(n324), .C(n325), .Z(n322) );
  GTECH_MUX2 U169 ( .A(n326), .B(n327), .S(n328), .Z(sum[2]) );
  GTECH_MUX2 U170 ( .A(n329), .B(n330), .S(n325), .Z(n327) );
  GTECH_AOI21 U171 ( .A(n331), .B(n332), .C(n333), .Z(n325) );
  GTECH_MUX2 U172 ( .A(n329), .B(n330), .S(n334), .Z(n326) );
  GTECH_XNOR2 U173 ( .A(n323), .B(a[2]), .Z(n330) );
  GTECH_OAI21 U174 ( .A(b[2]), .B(a[2]), .C(n321), .Z(n329) );
  GTECH_MUX2 U175 ( .A(n335), .B(n336), .S(n337), .Z(sum[1]) );
  GTECH_AND_NOT U176 ( .A(n331), .B(n333), .Z(n337) );
  GTECH_OAI21 U177 ( .A(cin), .B(n332), .C(n338), .Z(n336) );
  GTECH_OAI21 U178 ( .A(n339), .B(n328), .C(n340), .Z(n335) );
  GTECH_NOT U179 ( .A(cin), .Z(n328) );
  GTECH_MUX2 U180 ( .A(n341), .B(n342), .S(n343), .Z(sum[15]) );
  GTECH_XNOR2 U181 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_AND2 U182 ( .A(n346), .B(n347), .Z(n344) );
  GTECH_OAI21 U183 ( .A(b[14]), .B(a[14]), .C(n348), .Z(n346) );
  GTECH_ADD_AB U184 ( .A(n349), .B(n345), .S(n341) );
  GTECH_ADD_AB U185 ( .A(b[15]), .B(a[15]), .S(n345) );
  GTECH_OAI21 U186 ( .A(n350), .B(n347), .C(n351), .Z(sum[14]) );
  GTECH_MUX2 U187 ( .A(n352), .B(n353), .S(b[14]), .Z(n351) );
  GTECH_OR_NOT U188 ( .A(a[14]), .B(n350), .Z(n353) );
  GTECH_ADD_AB U189 ( .A(a[14]), .B(n350), .S(n352) );
  GTECH_AOI21 U190 ( .A(n354), .B(n355), .C(n348), .Z(n350) );
  GTECH_OA21 U191 ( .A(n356), .B(n357), .C(n358), .Z(n348) );
  GTECH_MUX2 U192 ( .A(n359), .B(n360), .S(n343), .Z(sum[13]) );
  GTECH_ADD_AB U193 ( .A(n361), .B(n357), .S(n360) );
  GTECH_ADD_AB U194 ( .A(n361), .B(n362), .S(n359) );
  GTECH_AOI21 U195 ( .A(n363), .B(n364), .C(n356), .Z(n361) );
  GTECH_NAND2 U196 ( .A(n365), .B(n366), .Z(sum[12]) );
  GTECH_OAI21 U197 ( .A(n357), .B(n367), .C(n355), .Z(n365) );
  GTECH_MUX2 U198 ( .A(n368), .B(n369), .S(n278), .Z(sum[11]) );
  GTECH_XNOR2 U199 ( .A(n370), .B(n371), .Z(n369) );
  GTECH_XNOR2 U200 ( .A(n372), .B(n371), .Z(n368) );
  GTECH_XNOR2 U201 ( .A(b[11]), .B(n373), .Z(n371) );
  GTECH_AND2 U202 ( .A(n374), .B(n375), .Z(n372) );
  GTECH_OAI21 U203 ( .A(b[10]), .B(a[10]), .C(n376), .Z(n374) );
  GTECH_OAI21 U204 ( .A(n377), .B(n375), .C(n378), .Z(sum[10]) );
  GTECH_MUX2 U205 ( .A(n379), .B(n380), .S(b[10]), .Z(n378) );
  GTECH_OR_NOT U206 ( .A(a[10]), .B(n377), .Z(n380) );
  GTECH_ADD_AB U207 ( .A(a[10]), .B(n377), .S(n379) );
  GTECH_AOI21 U208 ( .A(n278), .B(n381), .C(n376), .Z(n377) );
  GTECH_OA21 U209 ( .A(n281), .B(n283), .C(n382), .Z(n376) );
  GTECH_XNOR2 U210 ( .A(cin), .B(n383), .Z(sum[0]) );
  GTECH_OAI21 U211 ( .A(n384), .B(n343), .C(n366), .Z(cout) );
  GTECH_OR3 U212 ( .A(n367), .B(n357), .C(n355), .Z(n366) );
  GTECH_AND2 U213 ( .A(a[12]), .B(b[12]), .Z(n357) );
  GTECH_NOT U214 ( .A(n355), .Z(n343) );
  GTECH_MUX2 U215 ( .A(n284), .B(n385), .S(n278), .Z(n355) );
  GTECH_MUX2 U216 ( .A(n386), .B(n316), .S(n287), .Z(n278) );
  GTECH_MUX2 U217 ( .A(n383), .B(n387), .S(cin), .Z(n287) );
  GTECH_OA21 U218 ( .A(n312), .B(n313), .C(n314), .Z(n387) );
  GTECH_OAI21 U219 ( .A(a[3]), .B(n388), .C(b[3]), .Z(n314) );
  GTECH_NOT U220 ( .A(n312), .Z(n388) );
  GTECH_NOT U221 ( .A(a[3]), .Z(n313) );
  GTECH_AND_NOT U222 ( .A(n321), .B(n389), .Z(n312) );
  GTECH_AOI21 U223 ( .A(n324), .B(n323), .C(n334), .Z(n389) );
  GTECH_AOI21 U224 ( .A(n331), .B(n338), .C(n333), .Z(n334) );
  GTECH_AND2 U225 ( .A(b[1]), .B(a[1]), .Z(n333) );
  GTECH_NOT U226 ( .A(n339), .Z(n338) );
  GTECH_OR2 U227 ( .A(b[1]), .B(a[1]), .Z(n331) );
  GTECH_NOT U228 ( .A(b[2]), .Z(n323) );
  GTECH_OR_NOT U229 ( .A(n324), .B(b[2]), .Z(n321) );
  GTECH_NOT U230 ( .A(a[2]), .Z(n324) );
  GTECH_NOT U231 ( .A(n310), .Z(n383) );
  GTECH_AND_NOT U232 ( .A(n340), .B(n339), .Z(n310) );
  GTECH_NOR2 U233 ( .A(b[0]), .B(a[0]), .Z(n339) );
  GTECH_NOT U234 ( .A(n332), .Z(n340) );
  GTECH_AND2 U235 ( .A(a[0]), .B(b[0]), .Z(n332) );
  GTECH_AND_NOT U236 ( .A(n303), .B(n315), .Z(n316) );
  GTECH_NAND2 U237 ( .A(b[4]), .B(a[4]), .Z(n303) );
  GTECH_AOI21 U238 ( .A(n296), .B(n295), .C(n390), .Z(n386) );
  GTECH_OA21 U239 ( .A(n295), .B(n296), .C(n391), .Z(n390) );
  GTECH_NOT U240 ( .A(b[7]), .Z(n391) );
  GTECH_AND_NOT U241 ( .A(n290), .B(n392), .Z(n295) );
  GTECH_AOI21 U242 ( .A(n293), .B(n292), .C(n301), .Z(n392) );
  GTECH_OA21 U243 ( .A(n315), .B(n302), .C(n304), .Z(n301) );
  GTECH_NAND2 U244 ( .A(a[5]), .B(b[5]), .Z(n304) );
  GTECH_NOR2 U245 ( .A(b[5]), .B(a[5]), .Z(n302) );
  GTECH_NOR2 U246 ( .A(b[4]), .B(a[4]), .Z(n315) );
  GTECH_NOT U247 ( .A(a[6]), .Z(n293) );
  GTECH_OR_NOT U248 ( .A(n292), .B(a[6]), .Z(n290) );
  GTECH_NOT U249 ( .A(b[6]), .Z(n292) );
  GTECH_NOT U250 ( .A(a[7]), .Z(n296) );
  GTECH_AOI21 U251 ( .A(n373), .B(n370), .C(n393), .Z(n385) );
  GTECH_OA21 U252 ( .A(n370), .B(n373), .C(n394), .Z(n393) );
  GTECH_NOT U253 ( .A(b[11]), .Z(n394) );
  GTECH_AND2 U254 ( .A(n395), .B(n375), .Z(n370) );
  GTECH_NAND2 U255 ( .A(a[10]), .B(b[10]), .Z(n375) );
  GTECH_OAI21 U256 ( .A(a[10]), .B(b[10]), .C(n381), .Z(n395) );
  GTECH_OA21 U257 ( .A(n283), .B(n280), .C(n382), .Z(n381) );
  GTECH_OR2 U258 ( .A(a[9]), .B(b[9]), .Z(n382) );
  GTECH_NOT U259 ( .A(n396), .Z(n280) );
  GTECH_AND2 U260 ( .A(b[9]), .B(a[9]), .Z(n283) );
  GTECH_NOT U261 ( .A(a[11]), .Z(n373) );
  GTECH_NOR2 U262 ( .A(n396), .B(n281), .Z(n284) );
  GTECH_AND2 U263 ( .A(b[8]), .B(a[8]), .Z(n281) );
  GTECH_NOR2 U264 ( .A(a[8]), .B(b[8]), .Z(n396) );
  GTECH_AOI21 U265 ( .A(n349), .B(a[15]), .C(n397), .Z(n384) );
  GTECH_OA21 U266 ( .A(a[15]), .B(n349), .C(b[15]), .Z(n397) );
  GTECH_NAND2 U267 ( .A(n398), .B(n347), .Z(n349) );
  GTECH_NAND2 U268 ( .A(b[14]), .B(a[14]), .Z(n347) );
  GTECH_OAI21 U269 ( .A(a[14]), .B(b[14]), .C(n354), .Z(n398) );
  GTECH_OA21 U270 ( .A(n356), .B(n362), .C(n358), .Z(n354) );
  GTECH_OR_NOT U271 ( .A(a[13]), .B(n364), .Z(n358) );
  GTECH_NOT U272 ( .A(b[13]), .Z(n364) );
  GTECH_NOT U273 ( .A(n367), .Z(n362) );
  GTECH_NOR2 U274 ( .A(b[12]), .B(a[12]), .Z(n367) );
  GTECH_AND_NOT U275 ( .A(b[13]), .B(n363), .Z(n356) );
  GTECH_NOT U276 ( .A(a[13]), .Z(n363) );
endmodule

