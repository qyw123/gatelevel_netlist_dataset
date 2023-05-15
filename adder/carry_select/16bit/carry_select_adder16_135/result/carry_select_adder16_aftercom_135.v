
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383;

  GTECH_MUX2 U134 ( .A(n273), .B(n274), .S(n275), .Z(sum[9]) );
  GTECH_XNOR2 U135 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_XNOR2 U136 ( .A(n278), .B(n277), .Z(n273) );
  GTECH_AOI21 U137 ( .A(a[9]), .B(b[9]), .C(n279), .Z(n277) );
  GTECH_OAI21 U138 ( .A(n280), .B(n281), .C(n282), .Z(sum[8]) );
  GTECH_AND2 U139 ( .A(n283), .B(n278), .Z(n280) );
  GTECH_MUX2 U140 ( .A(n284), .B(n285), .S(n286), .Z(sum[7]) );
  GTECH_XOR2 U141 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_AND_NOT U142 ( .A(n289), .B(n290), .Z(n288) );
  GTECH_AOI21 U143 ( .A(n291), .B(n292), .C(n293), .Z(n290) );
  GTECH_XNOR2 U144 ( .A(n287), .B(n294), .Z(n284) );
  GTECH_XNOR2 U145 ( .A(a[7]), .B(b[7]), .Z(n287) );
  GTECH_OAI21 U146 ( .A(n295), .B(n289), .C(n296), .Z(sum[6]) );
  GTECH_MUX2 U147 ( .A(n297), .B(n298), .S(b[6]), .Z(n296) );
  GTECH_OR2 U148 ( .A(n299), .B(a[6]), .Z(n298) );
  GTECH_XOR2 U149 ( .A(n292), .B(n299), .Z(n297) );
  GTECH_NOT U150 ( .A(n299), .Z(n295) );
  GTECH_OAI21 U151 ( .A(n300), .B(n286), .C(n293), .Z(n299) );
  GTECH_OA21 U152 ( .A(n301), .B(n302), .C(n303), .Z(n293) );
  GTECH_MUX2 U153 ( .A(n304), .B(n305), .S(n306), .Z(sum[5]) );
  GTECH_AND_NOT U154 ( .A(n303), .B(n301), .Z(n306) );
  GTECH_AO21 U155 ( .A(n302), .B(n286), .C(n307), .Z(n305) );
  GTECH_OAI21 U156 ( .A(n307), .B(n286), .C(n302), .Z(n304) );
  GTECH_NOT U157 ( .A(n308), .Z(n302) );
  GTECH_XOR2 U158 ( .A(n309), .B(n286), .Z(sum[4]) );
  GTECH_MUX2 U159 ( .A(n310), .B(n311), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U160 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_XOR2 U161 ( .A(n314), .B(n312), .Z(n310) );
  GTECH_XOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n312) );
  GTECH_OA21 U163 ( .A(a[2]), .B(n315), .C(n316), .Z(n314) );
  GTECH_AO21 U164 ( .A(n315), .B(a[2]), .C(b[2]), .Z(n316) );
  GTECH_MUX2 U165 ( .A(n317), .B(n318), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U166 ( .A(n319), .B(n320), .Z(n318) );
  GTECH_XNOR2 U167 ( .A(n319), .B(n315), .Z(n317) );
  GTECH_AO21 U168 ( .A(n321), .B(n322), .C(n323), .Z(n315) );
  GTECH_XNOR2 U169 ( .A(a[2]), .B(b[2]), .Z(n319) );
  GTECH_MUX2 U170 ( .A(n324), .B(n325), .S(n326), .Z(sum[1]) );
  GTECH_AND_NOT U171 ( .A(n321), .B(n323), .Z(n326) );
  GTECH_OAI22 U172 ( .A(cin), .B(n322), .C(b[0]), .D(a[0]), .Z(n325) );
  GTECH_AO21 U173 ( .A(n327), .B(cin), .C(n322), .Z(n324) );
  GTECH_AND2 U174 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_MUX2 U175 ( .A(n328), .B(n329), .S(n330), .Z(sum[15]) );
  GTECH_XOR2 U176 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_AND_NOT U177 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_AOI21 U178 ( .A(n335), .B(n336), .C(n337), .Z(n334) );
  GTECH_XNOR2 U179 ( .A(n331), .B(n338), .Z(n328) );
  GTECH_XNOR2 U180 ( .A(a[15]), .B(b[15]), .Z(n331) );
  GTECH_OAI21 U181 ( .A(n339), .B(n333), .C(n340), .Z(sum[14]) );
  GTECH_MUX2 U182 ( .A(n341), .B(n342), .S(b[14]), .Z(n340) );
  GTECH_OR2 U183 ( .A(n343), .B(a[14]), .Z(n342) );
  GTECH_XOR2 U184 ( .A(n336), .B(n343), .Z(n341) );
  GTECH_NOT U185 ( .A(n343), .Z(n339) );
  GTECH_OAI21 U186 ( .A(n344), .B(n330), .C(n337), .Z(n343) );
  GTECH_AOI2N2 U187 ( .A(a[13]), .B(b[13]), .C(n345), .D(n346), .Z(n337) );
  GTECH_MUX2 U188 ( .A(n347), .B(n348), .S(n330), .Z(sum[13]) );
  GTECH_XOR2 U189 ( .A(n349), .B(n350), .Z(n348) );
  GTECH_XNOR2 U190 ( .A(n351), .B(n350), .Z(n347) );
  GTECH_AOI21 U191 ( .A(a[13]), .B(b[13]), .C(n345), .Z(n350) );
  GTECH_OAI21 U192 ( .A(n330), .B(n352), .C(n353), .Z(sum[12]) );
  GTECH_AND_NOT U193 ( .A(n354), .B(n349), .Z(n352) );
  GTECH_MUX2 U194 ( .A(n355), .B(n356), .S(n281), .Z(sum[11]) );
  GTECH_XOR2 U195 ( .A(n357), .B(n358), .Z(n356) );
  GTECH_NOR2 U196 ( .A(n359), .B(n360), .Z(n358) );
  GTECH_OA21 U197 ( .A(b[10]), .B(a[10]), .C(n361), .Z(n360) );
  GTECH_XNOR2 U198 ( .A(n357), .B(n362), .Z(n355) );
  GTECH_XNOR2 U199 ( .A(a[11]), .B(b[11]), .Z(n357) );
  GTECH_AO21 U200 ( .A(n363), .B(n359), .C(n364), .Z(sum[10]) );
  GTECH_NOT U201 ( .A(n365), .Z(n364) );
  GTECH_MUX2 U202 ( .A(n366), .B(n367), .S(b[10]), .Z(n365) );
  GTECH_OR2 U203 ( .A(n363), .B(a[10]), .Z(n367) );
  GTECH_XNOR2 U204 ( .A(a[10]), .B(n363), .Z(n366) );
  GTECH_AO21 U205 ( .A(n368), .B(n275), .C(n361), .Z(n363) );
  GTECH_OAI2N2 U206 ( .A(n279), .B(n278), .C(a[9]), .D(b[9]), .Z(n361) );
  GTECH_NOT U207 ( .A(n281), .Z(n275) );
  GTECH_XNOR2 U208 ( .A(cin), .B(n369), .Z(sum[0]) );
  GTECH_OAI21 U209 ( .A(n330), .B(n370), .C(n353), .Z(cout) );
  GTECH_NAND3 U210 ( .A(n354), .B(n346), .C(n330), .Z(n353) );
  GTECH_NOT U211 ( .A(n349), .Z(n346) );
  GTECH_AND2 U212 ( .A(a[12]), .B(b[12]), .Z(n349) );
  GTECH_NOT U213 ( .A(n351), .Z(n354) );
  GTECH_AOI21 U214 ( .A(n338), .B(a[15]), .C(n371), .Z(n370) );
  GTECH_OA21 U215 ( .A(a[15]), .B(n338), .C(b[15]), .Z(n371) );
  GTECH_OAI21 U216 ( .A(n344), .B(n372), .C(n333), .Z(n338) );
  GTECH_OR2 U217 ( .A(n336), .B(n335), .Z(n333) );
  GTECH_AND2 U218 ( .A(n335), .B(n336), .Z(n372) );
  GTECH_NOT U219 ( .A(a[14]), .Z(n336) );
  GTECH_NOT U220 ( .A(b[14]), .Z(n335) );
  GTECH_AOI2N2 U221 ( .A(a[13]), .B(b[13]), .C(n345), .D(n351), .Z(n344) );
  GTECH_NOR2 U222 ( .A(b[12]), .B(a[12]), .Z(n351) );
  GTECH_NOR2 U223 ( .A(a[13]), .B(b[13]), .Z(n345) );
  GTECH_OA21 U224 ( .A(n373), .B(n281), .C(n282), .Z(n330) );
  GTECH_NAND3 U225 ( .A(n283), .B(n278), .C(n281), .Z(n282) );
  GTECH_NOT U226 ( .A(n374), .Z(n278) );
  GTECH_AND2 U227 ( .A(b[8]), .B(a[8]), .Z(n374) );
  GTECH_MUX2 U228 ( .A(n375), .B(n309), .S(n286), .Z(n281) );
  GTECH_MUX2 U229 ( .A(n369), .B(n376), .S(cin), .Z(n286) );
  GTECH_AOI21 U230 ( .A(n313), .B(a[3]), .C(n377), .Z(n376) );
  GTECH_OA21 U231 ( .A(a[3]), .B(n313), .C(b[3]), .Z(n377) );
  GTECH_AO21 U232 ( .A(n320), .B(a[2]), .C(n378), .Z(n313) );
  GTECH_OA21 U233 ( .A(a[2]), .B(n320), .C(b[2]), .Z(n378) );
  GTECH_AO21 U234 ( .A(n321), .B(n327), .C(n323), .Z(n320) );
  GTECH_AND2 U235 ( .A(a[1]), .B(b[1]), .Z(n323) );
  GTECH_OR2 U236 ( .A(a[0]), .B(b[0]), .Z(n327) );
  GTECH_OR2 U237 ( .A(a[1]), .B(b[1]), .Z(n321) );
  GTECH_XNOR2 U238 ( .A(a[0]), .B(b[0]), .Z(n369) );
  GTECH_OR2 U239 ( .A(n307), .B(n308), .Z(n309) );
  GTECH_AND2 U240 ( .A(a[4]), .B(b[4]), .Z(n308) );
  GTECH_AOI21 U241 ( .A(n294), .B(a[7]), .C(n379), .Z(n375) );
  GTECH_OA21 U242 ( .A(a[7]), .B(n294), .C(b[7]), .Z(n379) );
  GTECH_OAI21 U243 ( .A(n300), .B(n380), .C(n289), .Z(n294) );
  GTECH_OR2 U244 ( .A(n292), .B(n291), .Z(n289) );
  GTECH_AND2 U245 ( .A(n291), .B(n292), .Z(n380) );
  GTECH_NOT U246 ( .A(a[6]), .Z(n292) );
  GTECH_NOT U247 ( .A(b[6]), .Z(n291) );
  GTECH_OA21 U248 ( .A(n307), .B(n301), .C(n303), .Z(n300) );
  GTECH_NOT U249 ( .A(n381), .Z(n303) );
  GTECH_AND2 U250 ( .A(b[5]), .B(a[5]), .Z(n381) );
  GTECH_NOR2 U251 ( .A(a[5]), .B(b[5]), .Z(n301) );
  GTECH_NOR2 U252 ( .A(b[4]), .B(a[4]), .Z(n307) );
  GTECH_AOI21 U253 ( .A(n362), .B(a[11]), .C(n382), .Z(n373) );
  GTECH_OA21 U254 ( .A(a[11]), .B(n362), .C(b[11]), .Z(n382) );
  GTECH_AO21 U255 ( .A(n368), .B(n383), .C(n359), .Z(n362) );
  GTECH_AND2 U256 ( .A(b[10]), .B(a[10]), .Z(n359) );
  GTECH_OR2 U257 ( .A(b[10]), .B(a[10]), .Z(n383) );
  GTECH_OAI2N2 U258 ( .A(n276), .B(n279), .C(a[9]), .D(b[9]), .Z(n368) );
  GTECH_NOR2 U259 ( .A(a[9]), .B(b[9]), .Z(n279) );
  GTECH_NOT U260 ( .A(n283), .Z(n276) );
  GTECH_OR2 U261 ( .A(a[8]), .B(b[8]), .Z(n283) );
endmodule

