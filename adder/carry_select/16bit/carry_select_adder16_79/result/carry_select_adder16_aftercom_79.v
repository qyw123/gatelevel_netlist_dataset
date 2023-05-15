
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
         n387;

  GTECH_MUX2 U138 ( .A(n277), .B(n278), .S(n279), .Z(sum[9]) );
  GTECH_AOI21 U139 ( .A(n280), .B(n281), .C(n282), .Z(n279) );
  GTECH_XNOR2 U140 ( .A(n283), .B(a[9]), .Z(n278) );
  GTECH_OR_NOT U141 ( .A(n284), .B(n285), .Z(n277) );
  GTECH_OR2 U142 ( .A(n286), .B(n287), .Z(sum[8]) );
  GTECH_OA21 U143 ( .A(n288), .B(n282), .C(n281), .Z(n286) );
  GTECH_MUX2 U144 ( .A(n289), .B(n290), .S(n291), .Z(sum[7]) );
  GTECH_ADD_AB U145 ( .A(n292), .B(n293), .S(n290) );
  GTECH_XNOR2 U146 ( .A(n294), .B(n293), .Z(n289) );
  GTECH_ADD_AB U147 ( .A(b[7]), .B(a[7]), .S(n293) );
  GTECH_NOR2 U148 ( .A(n295), .B(n296), .Z(n294) );
  GTECH_OA21 U149 ( .A(a[6]), .B(b[6]), .C(n297), .Z(n295) );
  GTECH_AO21 U150 ( .A(n296), .B(n298), .C(n299), .Z(sum[6]) );
  GTECH_MUX2 U151 ( .A(n300), .B(n301), .S(b[6]), .Z(n299) );
  GTECH_AND_NOT U152 ( .A(n302), .B(a[6]), .Z(n301) );
  GTECH_ADD_AB U153 ( .A(a[6]), .B(n298), .S(n300) );
  GTECH_NOT U154 ( .A(n302), .Z(n298) );
  GTECH_AOI21 U155 ( .A(n303), .B(n291), .C(n297), .Z(n302) );
  GTECH_OA21 U156 ( .A(n304), .B(n305), .C(n306), .Z(n297) );
  GTECH_NOT U157 ( .A(n307), .Z(sum[5]) );
  GTECH_MUX2 U158 ( .A(n308), .B(n309), .S(n310), .Z(n307) );
  GTECH_AND_NOT U159 ( .A(n306), .B(n305), .Z(n310) );
  GTECH_ADD_ABC U160 ( .A(a[4]), .B(n311), .C(b[4]), .COUT(n309) );
  GTECH_MUX2 U161 ( .A(n312), .B(n313), .S(cin), .Z(n311) );
  GTECH_AO22 U162 ( .A(n314), .B(a[3]), .C(n315), .D(b[3]), .Z(n313) );
  GTECH_OR2 U163 ( .A(n314), .B(a[3]), .Z(n315) );
  GTECH_AOI21 U164 ( .A(n316), .B(n291), .C(n304), .Z(n308) );
  GTECH_ADD_AB U165 ( .A(n317), .B(n291), .S(sum[4]) );
  GTECH_NOT U166 ( .A(n318), .Z(n291) );
  GTECH_MUX2 U167 ( .A(n319), .B(n320), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U168 ( .A(n314), .B(n321), .Z(n320) );
  GTECH_ADD_AB U169 ( .A(n322), .B(n321), .S(n319) );
  GTECH_XNOR2 U170 ( .A(b[3]), .B(a[3]), .Z(n321) );
  GTECH_AOI21 U171 ( .A(n323), .B(n324), .C(n325), .Z(n322) );
  GTECH_MUX2 U172 ( .A(n326), .B(n327), .S(n328), .Z(sum[2]) );
  GTECH_NOT U173 ( .A(cin), .Z(n328) );
  GTECH_MUX2 U174 ( .A(n329), .B(n330), .S(n324), .Z(n327) );
  GTECH_OA21 U175 ( .A(n331), .B(n332), .C(n333), .Z(n324) );
  GTECH_MUX2 U176 ( .A(n329), .B(n330), .S(n334), .Z(n326) );
  GTECH_OR_NOT U177 ( .A(n325), .B(n323), .Z(n330) );
  GTECH_XNOR2 U178 ( .A(b[2]), .B(n335), .Z(n329) );
  GTECH_MUX2 U179 ( .A(n336), .B(n337), .S(n338), .Z(sum[1]) );
  GTECH_AND_NOT U180 ( .A(n333), .B(n331), .Z(n338) );
  GTECH_NOT U181 ( .A(n339), .Z(n337) );
  GTECH_OA21 U182 ( .A(n332), .B(cin), .C(n340), .Z(n339) );
  GTECH_AO21 U183 ( .A(cin), .B(n340), .C(n332), .Z(n336) );
  GTECH_MUX2 U184 ( .A(n341), .B(n342), .S(n343), .Z(sum[15]) );
  GTECH_XNOR2 U185 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_ADD_AB U186 ( .A(n346), .B(n345), .S(n341) );
  GTECH_XNOR2 U187 ( .A(b[15]), .B(a[15]), .Z(n345) );
  GTECH_AOI21 U188 ( .A(n347), .B(n348), .C(n349), .Z(n346) );
  GTECH_MUX2 U189 ( .A(n350), .B(n351), .S(n352), .Z(sum[14]) );
  GTECH_AOI21 U190 ( .A(n353), .B(n343), .C(n348), .Z(n352) );
  GTECH_AO21 U191 ( .A(n354), .B(n355), .C(n356), .Z(n348) );
  GTECH_ADD_AB U192 ( .A(b[14]), .B(a[14]), .S(n351) );
  GTECH_OR_NOT U193 ( .A(n349), .B(n347), .Z(n350) );
  GTECH_MUX2 U194 ( .A(n357), .B(n358), .S(n359), .Z(sum[13]) );
  GTECH_AOI21 U195 ( .A(n343), .B(n360), .C(n354), .Z(n359) );
  GTECH_ADD_AB U196 ( .A(b[13]), .B(a[13]), .S(n358) );
  GTECH_OR_NOT U197 ( .A(n356), .B(n355), .Z(n357) );
  GTECH_OR2 U198 ( .A(n361), .B(n362), .Z(sum[12]) );
  GTECH_OA21 U199 ( .A(n363), .B(n354), .C(n343), .Z(n362) );
  GTECH_MUX2 U200 ( .A(n364), .B(n365), .S(n281), .Z(sum[11]) );
  GTECH_ADD_AB U201 ( .A(n366), .B(n367), .S(n365) );
  GTECH_ADD_AB U202 ( .A(n368), .B(n367), .S(n364) );
  GTECH_XNOR2 U203 ( .A(b[11]), .B(a[11]), .Z(n367) );
  GTECH_AOI21 U204 ( .A(n369), .B(n370), .C(n371), .Z(n368) );
  GTECH_MUX2 U205 ( .A(n372), .B(n373), .S(n374), .Z(sum[10]) );
  GTECH_AOI21 U206 ( .A(n375), .B(n281), .C(n370), .Z(n374) );
  GTECH_AO21 U207 ( .A(n282), .B(n285), .C(n284), .Z(n370) );
  GTECH_ADD_AB U208 ( .A(b[10]), .B(a[10]), .S(n373) );
  GTECH_OR_NOT U209 ( .A(n371), .B(n369), .Z(n372) );
  GTECH_XNOR2 U210 ( .A(cin), .B(n376), .Z(sum[0]) );
  GTECH_AO21 U211 ( .A(n377), .B(n343), .C(n361), .Z(cout) );
  GTECH_NOR3 U212 ( .A(n363), .B(n354), .C(n343), .Z(n361) );
  GTECH_AND2 U213 ( .A(a[12]), .B(b[12]), .Z(n354) );
  GTECH_AO21 U214 ( .A(n281), .B(n378), .C(n287), .Z(n343) );
  GTECH_NOR3 U215 ( .A(n288), .B(n282), .C(n281), .Z(n287) );
  GTECH_AND2 U216 ( .A(b[8]), .B(a[8]), .Z(n282) );
  GTECH_OAI2N2 U217 ( .A(n366), .B(n379), .C(n380), .D(b[11]), .Z(n378) );
  GTECH_OR_NOT U218 ( .A(a[11]), .B(n366), .Z(n380) );
  GTECH_NOT U219 ( .A(a[11]), .Z(n379) );
  GTECH_NOR2 U220 ( .A(n381), .B(n371), .Z(n366) );
  GTECH_AND2 U221 ( .A(b[10]), .B(a[10]), .Z(n371) );
  GTECH_OA21 U222 ( .A(n284), .B(n375), .C(n369), .Z(n381) );
  GTECH_OR2 U223 ( .A(b[10]), .B(a[10]), .Z(n369) );
  GTECH_AND2 U224 ( .A(n285), .B(n280), .Z(n375) );
  GTECH_NOT U225 ( .A(n288), .Z(n280) );
  GTECH_NOR2 U226 ( .A(b[8]), .B(a[8]), .Z(n288) );
  GTECH_OR2 U227 ( .A(a[9]), .B(b[9]), .Z(n285) );
  GTECH_AND_NOT U228 ( .A(a[9]), .B(n283), .Z(n284) );
  GTECH_NOT U229 ( .A(b[9]), .Z(n283) );
  GTECH_MUX2 U230 ( .A(n382), .B(n317), .S(n318), .Z(n281) );
  GTECH_MUX2 U231 ( .A(n376), .B(n383), .S(cin), .Z(n318) );
  GTECH_AOI21 U232 ( .A(n314), .B(a[3]), .C(n384), .Z(n383) );
  GTECH_OA21 U233 ( .A(n314), .B(a[3]), .C(b[3]), .Z(n384) );
  GTECH_AO21 U234 ( .A(n334), .B(n323), .C(n325), .Z(n314) );
  GTECH_AND2 U235 ( .A(b[2]), .B(a[2]), .Z(n325) );
  GTECH_OR_NOT U236 ( .A(b[2]), .B(n335), .Z(n323) );
  GTECH_NOT U237 ( .A(a[2]), .Z(n335) );
  GTECH_OA21 U238 ( .A(n340), .B(n331), .C(n333), .Z(n334) );
  GTECH_OR2 U239 ( .A(a[1]), .B(b[1]), .Z(n333) );
  GTECH_AND2 U240 ( .A(b[1]), .B(a[1]), .Z(n331) );
  GTECH_NOT U241 ( .A(n312), .Z(n376) );
  GTECH_AND_NOT U242 ( .A(n340), .B(n332), .Z(n312) );
  GTECH_AND2 U243 ( .A(b[0]), .B(a[0]), .Z(n332) );
  GTECH_OR2 U244 ( .A(a[0]), .B(b[0]), .Z(n340) );
  GTECH_AND_NOT U245 ( .A(n316), .B(n304), .Z(n317) );
  GTECH_AND2 U246 ( .A(b[4]), .B(a[4]), .Z(n304) );
  GTECH_AO21 U247 ( .A(n292), .B(a[7]), .C(n385), .Z(n382) );
  GTECH_OA21 U248 ( .A(n292), .B(a[7]), .C(b[7]), .Z(n385) );
  GTECH_OR2 U249 ( .A(n386), .B(n296), .Z(n292) );
  GTECH_AND2 U250 ( .A(a[6]), .B(b[6]), .Z(n296) );
  GTECH_OA21 U251 ( .A(b[6]), .B(a[6]), .C(n303), .Z(n386) );
  GTECH_OA21 U252 ( .A(n316), .B(n305), .C(n306), .Z(n303) );
  GTECH_OR2 U253 ( .A(a[5]), .B(b[5]), .Z(n306) );
  GTECH_AND2 U254 ( .A(b[5]), .B(a[5]), .Z(n305) );
  GTECH_OR2 U255 ( .A(b[4]), .B(a[4]), .Z(n316) );
  GTECH_AO22 U256 ( .A(n387), .B(b[15]), .C(n344), .D(a[15]), .Z(n377) );
  GTECH_OR2 U257 ( .A(a[15]), .B(n344), .Z(n387) );
  GTECH_AO21 U258 ( .A(n353), .B(n347), .C(n349), .Z(n344) );
  GTECH_AND2 U259 ( .A(b[14]), .B(a[14]), .Z(n349) );
  GTECH_OR2 U260 ( .A(b[14]), .B(a[14]), .Z(n347) );
  GTECH_AO21 U261 ( .A(n360), .B(n355), .C(n356), .Z(n353) );
  GTECH_AND2 U262 ( .A(a[13]), .B(b[13]), .Z(n356) );
  GTECH_OR2 U263 ( .A(a[13]), .B(b[13]), .Z(n355) );
  GTECH_NOT U264 ( .A(n363), .Z(n360) );
  GTECH_NOR2 U265 ( .A(b[12]), .B(a[12]), .Z(n363) );
endmodule

