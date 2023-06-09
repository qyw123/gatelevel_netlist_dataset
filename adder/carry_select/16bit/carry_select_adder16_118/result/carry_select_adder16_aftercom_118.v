
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392;

  GTECH_MUX2 U138 ( .A(n277), .B(n278), .S(n279), .Z(sum[9]) );
  GTECH_XNOR2 U139 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_XOR2 U140 ( .A(n282), .B(n280), .Z(n277) );
  GTECH_OA21 U141 ( .A(b[9]), .B(a[9]), .C(n283), .Z(n280) );
  GTECH_OR_NOT U142 ( .A(n284), .B(n285), .Z(sum[8]) );
  GTECH_AO21 U143 ( .A(n282), .B(n281), .C(n279), .Z(n285) );
  GTECH_MUX2 U144 ( .A(n286), .B(n287), .S(n288), .Z(sum[7]) );
  GTECH_XNOR2 U145 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_XOR2 U146 ( .A(n289), .B(n291), .Z(n286) );
  GTECH_AOI21 U147 ( .A(n292), .B(n293), .C(n294), .Z(n291) );
  GTECH_XNOR2 U148 ( .A(a[7]), .B(b[7]), .Z(n289) );
  GTECH_MUX2 U149 ( .A(n295), .B(n296), .S(n297), .Z(sum[6]) );
  GTECH_AND_NOT U150 ( .A(n298), .B(n293), .Z(n297) );
  GTECH_OA21 U151 ( .A(n299), .B(n300), .C(n301), .Z(n293) );
  GTECH_NAND3 U152 ( .A(n302), .B(n301), .C(n288), .Z(n298) );
  GTECH_XOR2 U153 ( .A(b[6]), .B(a[6]), .Z(n296) );
  GTECH_OR_NOT U154 ( .A(n294), .B(n292), .Z(n295) );
  GTECH_XOR2 U155 ( .A(n303), .B(n304), .Z(sum[5]) );
  GTECH_OA21 U156 ( .A(n300), .B(n288), .C(n305), .Z(n304) );
  GTECH_AND_NOT U157 ( .A(n301), .B(n299), .Z(n303) );
  GTECH_XOR2 U158 ( .A(n288), .B(n306), .Z(sum[4]) );
  GTECH_MUX2 U159 ( .A(n307), .B(n308), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U160 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_XOR2 U161 ( .A(n309), .B(n311), .Z(n307) );
  GTECH_NOR2 U162 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_OA21 U163 ( .A(a[2]), .B(b[2]), .C(n314), .Z(n313) );
  GTECH_XNOR2 U164 ( .A(a[3]), .B(b[3]), .Z(n309) );
  GTECH_MUX2 U165 ( .A(n315), .B(n316), .S(n317), .Z(sum[2]) );
  GTECH_MUX2 U166 ( .A(n318), .B(n319), .S(n314), .Z(n316) );
  GTECH_AOI21 U167 ( .A(n320), .B(n321), .C(n322), .Z(n314) );
  GTECH_MUX2 U168 ( .A(n318), .B(n319), .S(n323), .Z(n315) );
  GTECH_AO21 U169 ( .A(n324), .B(n325), .C(n312), .Z(n319) );
  GTECH_XOR2 U170 ( .A(n324), .B(n325), .Z(n318) );
  GTECH_NOT U171 ( .A(b[2]), .Z(n325) );
  GTECH_MUX2 U172 ( .A(n326), .B(n327), .S(n328), .Z(sum[1]) );
  GTECH_AND2 U173 ( .A(n329), .B(n321), .Z(n328) );
  GTECH_AO21 U174 ( .A(n320), .B(n317), .C(n330), .Z(n327) );
  GTECH_NOT U175 ( .A(n331), .Z(n320) );
  GTECH_AO21 U176 ( .A(cin), .B(n332), .C(n331), .Z(n326) );
  GTECH_AND2 U177 ( .A(a[0]), .B(b[0]), .Z(n331) );
  GTECH_MUX2 U178 ( .A(n333), .B(n334), .S(n335), .Z(sum[15]) );
  GTECH_XOR2 U179 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_OA21 U180 ( .A(n338), .B(n339), .C(n340), .Z(n337) );
  GTECH_XOR2 U181 ( .A(n336), .B(n341), .Z(n333) );
  GTECH_XOR2 U182 ( .A(a[15]), .B(n342), .Z(n336) );
  GTECH_MUX2 U183 ( .A(n343), .B(n344), .S(n345), .Z(sum[14]) );
  GTECH_OA21 U184 ( .A(n346), .B(n335), .C(n339), .Z(n345) );
  GTECH_AND_NOT U185 ( .A(n347), .B(n348), .Z(n339) );
  GTECH_OA21 U186 ( .A(a[13]), .B(b[13]), .C(n349), .Z(n348) );
  GTECH_XOR2 U187 ( .A(b[14]), .B(a[14]), .Z(n344) );
  GTECH_OR_NOT U188 ( .A(n338), .B(n340), .Z(n343) );
  GTECH_MUX2 U189 ( .A(n350), .B(n351), .S(n335), .Z(sum[13]) );
  GTECH_XNOR2 U190 ( .A(n352), .B(n353), .Z(n351) );
  GTECH_XOR2 U191 ( .A(n354), .B(n352), .Z(n350) );
  GTECH_OA21 U192 ( .A(b[13]), .B(a[13]), .C(n347), .Z(n352) );
  GTECH_OR_NOT U193 ( .A(n355), .B(n356), .Z(sum[12]) );
  GTECH_AO21 U194 ( .A(n354), .B(n353), .C(n335), .Z(n356) );
  GTECH_MUX2 U195 ( .A(n357), .B(n358), .S(n279), .Z(sum[11]) );
  GTECH_XNOR2 U196 ( .A(n359), .B(n360), .Z(n358) );
  GTECH_AOI21 U197 ( .A(n361), .B(n362), .C(n363), .Z(n360) );
  GTECH_XNOR2 U198 ( .A(n359), .B(n364), .Z(n357) );
  GTECH_XNOR2 U199 ( .A(n365), .B(b[11]), .Z(n359) );
  GTECH_MUX2 U200 ( .A(n366), .B(n367), .S(n368), .Z(sum[10]) );
  GTECH_AOI21 U201 ( .A(n369), .B(n370), .C(n362), .Z(n368) );
  GTECH_OR_NOT U202 ( .A(n371), .B(n283), .Z(n362) );
  GTECH_OA21 U203 ( .A(a[9]), .B(b[9]), .C(n372), .Z(n371) );
  GTECH_NOT U204 ( .A(n281), .Z(n372) );
  GTECH_XOR2 U205 ( .A(b[10]), .B(a[10]), .Z(n367) );
  GTECH_OR_NOT U206 ( .A(n363), .B(n361), .Z(n366) );
  GTECH_XNOR2 U207 ( .A(n317), .B(n373), .Z(sum[0]) );
  GTECH_NOT U208 ( .A(cin), .Z(n317) );
  GTECH_AO21 U209 ( .A(n374), .B(n375), .C(n355), .Z(cout) );
  GTECH_AND3 U210 ( .A(n353), .B(n354), .C(n335), .Z(n355) );
  GTECH_NOT U211 ( .A(n375), .Z(n335) );
  GTECH_NOT U212 ( .A(n349), .Z(n353) );
  GTECH_AND2 U213 ( .A(b[12]), .B(a[12]), .Z(n349) );
  GTECH_AO21 U214 ( .A(n370), .B(n376), .C(n284), .Z(n375) );
  GTECH_AND3 U215 ( .A(n282), .B(n281), .C(n279), .Z(n284) );
  GTECH_NOT U216 ( .A(n370), .Z(n279) );
  GTECH_NAND2 U217 ( .A(b[8]), .B(a[8]), .Z(n281) );
  GTECH_OAI2N2 U218 ( .A(n364), .B(n365), .C(n377), .D(b[11]), .Z(n376) );
  GTECH_NAND2 U219 ( .A(n365), .B(n364), .Z(n377) );
  GTECH_NOT U220 ( .A(a[11]), .Z(n365) );
  GTECH_AND_NOT U221 ( .A(n378), .B(n363), .Z(n364) );
  GTECH_AND2 U222 ( .A(b[10]), .B(a[10]), .Z(n363) );
  GTECH_AO21 U223 ( .A(n283), .B(n379), .C(n380), .Z(n378) );
  GTECH_NOT U224 ( .A(n361), .Z(n380) );
  GTECH_OR2 U225 ( .A(a[10]), .B(b[10]), .Z(n361) );
  GTECH_NOT U226 ( .A(n369), .Z(n379) );
  GTECH_OA21 U227 ( .A(a[9]), .B(b[9]), .C(n282), .Z(n369) );
  GTECH_OR2 U228 ( .A(a[8]), .B(b[8]), .Z(n282) );
  GTECH_NAND2 U229 ( .A(a[9]), .B(b[9]), .Z(n283) );
  GTECH_MUX2 U230 ( .A(n306), .B(n381), .S(n288), .Z(n370) );
  GTECH_MUX2 U231 ( .A(n373), .B(n382), .S(cin), .Z(n288) );
  GTECH_OA21 U232 ( .A(a[3]), .B(n310), .C(n383), .Z(n382) );
  GTECH_AO21 U233 ( .A(a[3]), .B(n310), .C(b[3]), .Z(n383) );
  GTECH_OR2 U234 ( .A(n384), .B(n312), .Z(n310) );
  GTECH_AND_NOT U235 ( .A(b[2]), .B(n324), .Z(n312) );
  GTECH_NOT U236 ( .A(a[2]), .Z(n324) );
  GTECH_OA21 U237 ( .A(b[2]), .B(a[2]), .C(n323), .Z(n384) );
  GTECH_OA21 U238 ( .A(n332), .B(n385), .C(n329), .Z(n323) );
  GTECH_NOT U239 ( .A(n322), .Z(n329) );
  GTECH_NOR2 U240 ( .A(b[1]), .B(a[1]), .Z(n322) );
  GTECH_NOT U241 ( .A(n321), .Z(n385) );
  GTECH_NAND2 U242 ( .A(a[1]), .B(b[1]), .Z(n321) );
  GTECH_NOT U243 ( .A(n330), .Z(n332) );
  GTECH_NOR2 U244 ( .A(b[0]), .B(a[0]), .Z(n330) );
  GTECH_XOR2 U245 ( .A(a[0]), .B(b[0]), .Z(n373) );
  GTECH_OA21 U246 ( .A(a[7]), .B(n290), .C(n386), .Z(n381) );
  GTECH_AO21 U247 ( .A(a[7]), .B(n290), .C(b[7]), .Z(n386) );
  GTECH_OR_NOT U248 ( .A(n294), .B(n387), .Z(n290) );
  GTECH_NAND3 U249 ( .A(n292), .B(n301), .C(n302), .Z(n387) );
  GTECH_OR2 U250 ( .A(n305), .B(n299), .Z(n302) );
  GTECH_AND2 U251 ( .A(b[5]), .B(a[5]), .Z(n299) );
  GTECH_OR2 U252 ( .A(b[5]), .B(a[5]), .Z(n301) );
  GTECH_OR2 U253 ( .A(b[6]), .B(a[6]), .Z(n292) );
  GTECH_AND2 U254 ( .A(b[6]), .B(a[6]), .Z(n294) );
  GTECH_AND_NOT U255 ( .A(n305), .B(n300), .Z(n306) );
  GTECH_AND2 U256 ( .A(b[4]), .B(a[4]), .Z(n300) );
  GTECH_OR2 U257 ( .A(b[4]), .B(a[4]), .Z(n305) );
  GTECH_OAI22 U258 ( .A(n341), .B(n388), .C(n389), .D(n342), .Z(n374) );
  GTECH_NOT U259 ( .A(b[15]), .Z(n342) );
  GTECH_AND2 U260 ( .A(n341), .B(n388), .Z(n389) );
  GTECH_NOT U261 ( .A(a[15]), .Z(n388) );
  GTECH_AND_NOT U262 ( .A(n390), .B(n391), .Z(n341) );
  GTECH_NOT U263 ( .A(n340), .Z(n391) );
  GTECH_NAND2 U264 ( .A(b[14]), .B(a[14]), .Z(n340) );
  GTECH_AO21 U265 ( .A(n347), .B(n346), .C(n338), .Z(n390) );
  GTECH_NOR2 U266 ( .A(a[14]), .B(b[14]), .Z(n338) );
  GTECH_NOT U267 ( .A(n392), .Z(n346) );
  GTECH_OA21 U268 ( .A(a[13]), .B(b[13]), .C(n354), .Z(n392) );
  GTECH_OR2 U269 ( .A(a[12]), .B(b[12]), .Z(n354) );
  GTECH_NAND2 U270 ( .A(a[13]), .B(b[13]), .Z(n347) );
endmodule

