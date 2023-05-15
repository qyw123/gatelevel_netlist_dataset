
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405;

  GTECH_OAI21 U144 ( .A(n283), .B(n284), .C(n285), .Z(sum[9]) );
  GTECH_OAI21 U145 ( .A(n286), .B(n287), .C(n283), .Z(n285) );
  GTECH_XOR2 U146 ( .A(n288), .B(b[9]), .Z(n284) );
  GTECH_OAI21 U147 ( .A(n289), .B(n290), .C(n291), .Z(n283) );
  GTECH_AO21 U148 ( .A(n292), .B(n293), .C(n294), .Z(sum[8]) );
  GTECH_OAI22 U149 ( .A(n295), .B(n296), .C(n297), .D(n298), .Z(sum[7]) );
  GTECH_XOR2 U150 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_OAI21 U151 ( .A(n301), .B(n302), .C(n303), .Z(n299) );
  GTECH_XOR2 U152 ( .A(n304), .B(n300), .Z(n295) );
  GTECH_XOR2 U153 ( .A(n305), .B(b[7]), .Z(n300) );
  GTECH_NOT U154 ( .A(a[7]), .Z(n305) );
  GTECH_OAI21 U155 ( .A(n306), .B(n307), .C(n308), .Z(sum[6]) );
  GTECH_OAI21 U156 ( .A(n301), .B(n309), .C(n306), .Z(n308) );
  GTECH_XOR2 U157 ( .A(n310), .B(b[6]), .Z(n307) );
  GTECH_OAI21 U158 ( .A(n311), .B(n296), .C(n302), .Z(n306) );
  GTECH_NAND2 U159 ( .A(n312), .B(n313), .Z(n302) );
  GTECH_OAI21 U160 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_XOR2 U161 ( .A(n317), .B(n318), .Z(sum[5]) );
  GTECH_ADD_ABC U162 ( .A(n315), .B(n319), .C(n314), .COUT(n318) );
  GTECH_AO22 U163 ( .A(n320), .B(cin), .C(n321), .D(n322), .Z(n319) );
  GTECH_NAND2 U164 ( .A(n313), .B(n316), .Z(n317) );
  GTECH_XOR2 U165 ( .A(n298), .B(n323), .Z(sum[4]) );
  GTECH_OAI22 U166 ( .A(n321), .B(n324), .C(cin), .D(n325), .Z(sum[3]) );
  GTECH_XOR2 U167 ( .A(n326), .B(n327), .Z(n325) );
  GTECH_NAND2 U168 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_OAI21 U169 ( .A(b[2]), .B(a[2]), .C(n330), .Z(n329) );
  GTECH_XOR2 U170 ( .A(n331), .B(n327), .Z(n324) );
  GTECH_XOR2 U171 ( .A(n332), .B(b[3]), .Z(n327) );
  GTECH_NOT U172 ( .A(a[3]), .Z(n332) );
  GTECH_OAI22 U173 ( .A(n321), .B(n333), .C(cin), .D(n334), .Z(sum[2]) );
  GTECH_AOI2N2 U174 ( .A(n335), .B(n330), .C(n330), .D(n336), .Z(n334) );
  GTECH_OA22 U175 ( .A(b[1]), .B(a[1]), .C(n337), .D(n338), .Z(n330) );
  GTECH_AOI2N2 U176 ( .A(n335), .B(n339), .C(n339), .D(n336), .Z(n333) );
  GTECH_NOT U177 ( .A(n340), .Z(n336) );
  GTECH_XOR2 U178 ( .A(a[2]), .B(b[2]), .Z(n340) );
  GTECH_OAI21 U179 ( .A(b[2]), .B(a[2]), .C(n328), .Z(n335) );
  GTECH_OAI2N2 U180 ( .A(n341), .B(n342), .C(n343), .D(n342), .Z(sum[1]) );
  GTECH_AO21 U181 ( .A(n344), .B(cin), .C(n338), .Z(n343) );
  GTECH_XOR2 U182 ( .A(n345), .B(b[1]), .Z(n342) );
  GTECH_OA21 U183 ( .A(cin), .B(n338), .C(n344), .Z(n341) );
  GTECH_AND2 U184 ( .A(a[0]), .B(b[0]), .Z(n338) );
  GTECH_OAI22 U185 ( .A(n346), .B(n347), .C(n348), .D(n349), .Z(sum[15]) );
  GTECH_XOR2 U186 ( .A(n350), .B(n351), .Z(n349) );
  GTECH_XOR2 U187 ( .A(n352), .B(n351), .Z(n347) );
  GTECH_XOR2 U188 ( .A(n353), .B(b[15]), .Z(n351) );
  GTECH_NOT U189 ( .A(a[15]), .Z(n353) );
  GTECH_OR_NOT U190 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_AO21 U191 ( .A(n356), .B(n357), .C(n358), .Z(n355) );
  GTECH_NOT U192 ( .A(n359), .Z(sum[14]) );
  GTECH_AOI222 U193 ( .A(n354), .B(n360), .C(n361), .D(b[14]), .E(n362), .F(
        n356), .Z(n359) );
  GTECH_XOR2 U194 ( .A(n360), .B(a[14]), .Z(n362) );
  GTECH_AND2 U195 ( .A(n363), .B(n357), .Z(n361) );
  GTECH_NOT U196 ( .A(n360), .Z(n363) );
  GTECH_OAI21 U197 ( .A(n348), .B(n364), .C(n358), .Z(n360) );
  GTECH_AOI21 U198 ( .A(n365), .B(n366), .C(n367), .Z(n358) );
  GTECH_OAI21 U199 ( .A(n368), .B(n369), .C(n370), .Z(sum[13]) );
  GTECH_OAI21 U200 ( .A(n371), .B(n367), .C(n368), .Z(n370) );
  GTECH_XOR2 U201 ( .A(a[13]), .B(n372), .Z(n369) );
  GTECH_AO21 U202 ( .A(n373), .B(n346), .C(n366), .Z(n368) );
  GTECH_AO21 U203 ( .A(n346), .B(n374), .C(n375), .Z(sum[12]) );
  GTECH_OAI2N2 U204 ( .A(n376), .B(n293), .C(n377), .D(n293), .Z(sum[11]) );
  GTECH_XOR2 U205 ( .A(n378), .B(n379), .Z(n377) );
  GTECH_XOR2 U206 ( .A(n380), .B(n379), .Z(n376) );
  GTECH_XOR2 U207 ( .A(a[11]), .B(b[11]), .Z(n379) );
  GTECH_AND_NOT U208 ( .A(n381), .B(n382), .Z(n380) );
  GTECH_AO21 U209 ( .A(n383), .B(n384), .C(n385), .Z(n381) );
  GTECH_NOT U210 ( .A(n386), .Z(sum[10]) );
  GTECH_AOI222 U211 ( .A(n382), .B(n387), .C(n388), .D(b[10]), .E(n389), .F(
        n383), .Z(n386) );
  GTECH_XOR2 U212 ( .A(n387), .B(a[10]), .Z(n389) );
  GTECH_AND2 U213 ( .A(n390), .B(n384), .Z(n388) );
  GTECH_NOT U214 ( .A(n387), .Z(n390) );
  GTECH_OAI21 U215 ( .A(n391), .B(n290), .C(n385), .Z(n387) );
  GTECH_OA21 U216 ( .A(n286), .B(n291), .C(n392), .Z(n385) );
  GTECH_XOR2 U217 ( .A(n321), .B(n322), .Z(sum[0]) );
  GTECH_AO21 U218 ( .A(n346), .B(n393), .C(n375), .Z(cout) );
  GTECH_NOR2 U219 ( .A(n346), .B(n374), .Z(n375) );
  GTECH_OR_NOT U220 ( .A(n366), .B(n373), .Z(n374) );
  GTECH_AND2 U221 ( .A(b[12]), .B(a[12]), .Z(n366) );
  GTECH_AO21 U222 ( .A(n350), .B(a[15]), .C(n394), .Z(n393) );
  GTECH_NOT U223 ( .A(n395), .Z(n394) );
  GTECH_OAI21 U224 ( .A(a[15]), .B(n350), .C(b[15]), .Z(n395) );
  GTECH_OR_NOT U225 ( .A(n354), .B(n396), .Z(n350) );
  GTECH_AO21 U226 ( .A(n357), .B(n356), .C(n364), .Z(n396) );
  GTECH_AOI21 U227 ( .A(n373), .B(n365), .C(n367), .Z(n364) );
  GTECH_AND2 U228 ( .A(a[13]), .B(b[13]), .Z(n367) );
  GTECH_NOT U229 ( .A(n371), .Z(n365) );
  GTECH_AND_NOT U230 ( .A(n372), .B(a[13]), .Z(n371) );
  GTECH_NOT U231 ( .A(b[13]), .Z(n372) );
  GTECH_OR2 U232 ( .A(a[12]), .B(b[12]), .Z(n373) );
  GTECH_NOT U233 ( .A(a[14]), .Z(n357) );
  GTECH_AND_NOT U234 ( .A(a[14]), .B(n356), .Z(n354) );
  GTECH_NOT U235 ( .A(b[14]), .Z(n356) );
  GTECH_NOT U236 ( .A(n348), .Z(n346) );
  GTECH_AOI21 U237 ( .A(n397), .B(n293), .C(n294), .Z(n348) );
  GTECH_NOR2 U238 ( .A(n293), .B(n292), .Z(n294) );
  GTECH_OR_NOT U239 ( .A(n289), .B(n291), .Z(n292) );
  GTECH_NAND2 U240 ( .A(b[8]), .B(a[8]), .Z(n291) );
  GTECH_NOT U241 ( .A(n290), .Z(n293) );
  GTECH_AOI2N2 U242 ( .A(n296), .B(n323), .C(n398), .D(n296), .Z(n290) );
  GTECH_AOI21 U243 ( .A(n304), .B(a[7]), .C(n399), .Z(n398) );
  GTECH_OA21 U244 ( .A(a[7]), .B(n304), .C(b[7]), .Z(n399) );
  GTECH_OAI21 U245 ( .A(n301), .B(n311), .C(n303), .Z(n304) );
  GTECH_NOT U246 ( .A(n309), .Z(n303) );
  GTECH_AND2 U247 ( .A(b[6]), .B(a[6]), .Z(n309) );
  GTECH_NAND2 U248 ( .A(n400), .B(n313), .Z(n311) );
  GTECH_OR2 U249 ( .A(b[5]), .B(a[5]), .Z(n313) );
  GTECH_NAND3 U250 ( .A(n315), .B(n314), .C(n316), .Z(n400) );
  GTECH_NAND2 U251 ( .A(b[5]), .B(a[5]), .Z(n316) );
  GTECH_AND_NOT U252 ( .A(n310), .B(b[6]), .Z(n301) );
  GTECH_NOT U253 ( .A(a[6]), .Z(n310) );
  GTECH_XOR2 U254 ( .A(n315), .B(n314), .Z(n323) );
  GTECH_NOT U255 ( .A(b[4]), .Z(n314) );
  GTECH_NOT U256 ( .A(a[4]), .Z(n315) );
  GTECH_NOT U257 ( .A(n298), .Z(n296) );
  GTECH_AOI22 U258 ( .A(n321), .B(n322), .C(n320), .D(cin), .Z(n298) );
  GTECH_OAI21 U259 ( .A(a[3]), .B(n331), .C(n401), .Z(n320) );
  GTECH_AO21 U260 ( .A(n331), .B(a[3]), .C(b[3]), .Z(n401) );
  GTECH_NAND2 U261 ( .A(n328), .B(n402), .Z(n331) );
  GTECH_OAI21 U262 ( .A(a[2]), .B(b[2]), .C(n339), .Z(n402) );
  GTECH_OA22 U263 ( .A(b[1]), .B(a[1]), .C(n337), .D(n344), .Z(n339) );
  GTECH_OR_NOT U264 ( .A(a[0]), .B(n403), .Z(n344) );
  GTECH_AND_NOT U265 ( .A(b[1]), .B(n345), .Z(n337) );
  GTECH_NOT U266 ( .A(a[1]), .Z(n345) );
  GTECH_NAND2 U267 ( .A(a[2]), .B(b[2]), .Z(n328) );
  GTECH_XOR2 U268 ( .A(a[0]), .B(n403), .Z(n322) );
  GTECH_NOT U269 ( .A(b[0]), .Z(n403) );
  GTECH_NOT U270 ( .A(cin), .Z(n321) );
  GTECH_AO21 U271 ( .A(n378), .B(a[11]), .C(n404), .Z(n397) );
  GTECH_OA21 U272 ( .A(a[11]), .B(n378), .C(b[11]), .Z(n404) );
  GTECH_OR_NOT U273 ( .A(n382), .B(n405), .Z(n378) );
  GTECH_AO21 U274 ( .A(n384), .B(n383), .C(n391), .Z(n405) );
  GTECH_OA21 U275 ( .A(n289), .B(n286), .C(n392), .Z(n391) );
  GTECH_NOT U276 ( .A(n287), .Z(n392) );
  GTECH_AND_NOT U277 ( .A(b[9]), .B(n288), .Z(n287) );
  GTECH_NOT U278 ( .A(a[9]), .Z(n288) );
  GTECH_NOR2 U279 ( .A(a[9]), .B(b[9]), .Z(n286) );
  GTECH_NOR2 U280 ( .A(a[8]), .B(b[8]), .Z(n289) );
  GTECH_NOT U281 ( .A(b[10]), .Z(n383) );
  GTECH_NOT U282 ( .A(a[10]), .Z(n384) );
  GTECH_AND2 U283 ( .A(a[10]), .B(b[10]), .Z(n382) );
endmodule

