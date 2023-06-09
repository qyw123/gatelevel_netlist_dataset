
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383;

  GTECH_MUX2 U140 ( .A(n279), .B(n280), .S(n281), .Z(sum[9]) );
  GTECH_XNOR2 U141 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_XOR2 U142 ( .A(n284), .B(n282), .Z(n279) );
  GTECH_OA21 U143 ( .A(a[9]), .B(b[9]), .C(n285), .Z(n282) );
  GTECH_OAI21 U144 ( .A(n286), .B(n281), .C(n287), .Z(sum[8]) );
  GTECH_MUX2 U145 ( .A(n288), .B(n289), .S(n290), .Z(sum[7]) );
  GTECH_XNOR2 U146 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_XOR2 U147 ( .A(n291), .B(n293), .Z(n288) );
  GTECH_AOI21 U148 ( .A(n294), .B(n295), .C(n296), .Z(n293) );
  GTECH_NOT U149 ( .A(n297), .Z(n294) );
  GTECH_XNOR2 U150 ( .A(a[7]), .B(b[7]), .Z(n291) );
  GTECH_MUX2 U151 ( .A(n298), .B(n299), .S(n290), .Z(sum[6]) );
  GTECH_XNOR2 U152 ( .A(n300), .B(n301), .Z(n299) );
  GTECH_XOR2 U153 ( .A(n295), .B(n300), .Z(n298) );
  GTECH_NOR2 U154 ( .A(n297), .B(n296), .Z(n300) );
  GTECH_AO21 U155 ( .A(n302), .B(n303), .C(n304), .Z(n295) );
  GTECH_MUX2 U156 ( .A(n305), .B(n306), .S(n307), .Z(sum[5]) );
  GTECH_OR_NOT U157 ( .A(n304), .B(n302), .Z(n307) );
  GTECH_AO21 U158 ( .A(n308), .B(n290), .C(n303), .Z(n306) );
  GTECH_OAI21 U159 ( .A(n303), .B(n290), .C(n308), .Z(n305) );
  GTECH_XOR2 U160 ( .A(n309), .B(n310), .Z(sum[4]) );
  GTECH_MUX2 U161 ( .A(n311), .B(n312), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U162 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_XOR2 U163 ( .A(n313), .B(n315), .Z(n311) );
  GTECH_AOI21 U164 ( .A(n316), .B(n317), .C(n318), .Z(n315) );
  GTECH_NOT U165 ( .A(n319), .Z(n316) );
  GTECH_XNOR2 U166 ( .A(a[3]), .B(b[3]), .Z(n313) );
  GTECH_MUX2 U167 ( .A(n320), .B(n321), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U168 ( .A(n322), .B(n323), .Z(n321) );
  GTECH_XOR2 U169 ( .A(n317), .B(n322), .Z(n320) );
  GTECH_NOR2 U170 ( .A(n319), .B(n318), .Z(n322) );
  GTECH_AO21 U171 ( .A(n324), .B(n325), .C(n326), .Z(n317) );
  GTECH_MUX2 U172 ( .A(n327), .B(n328), .S(n329), .Z(sum[1]) );
  GTECH_OR_NOT U173 ( .A(n326), .B(n324), .Z(n329) );
  GTECH_AO21 U174 ( .A(n330), .B(cin), .C(n325), .Z(n328) );
  GTECH_OAI21 U175 ( .A(cin), .B(n325), .C(n330), .Z(n327) );
  GTECH_AND2 U176 ( .A(b[0]), .B(a[0]), .Z(n325) );
  GTECH_MUX2 U177 ( .A(n331), .B(n332), .S(n333), .Z(sum[15]) );
  GTECH_XOR2 U178 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_OA21 U179 ( .A(n336), .B(n337), .C(n338), .Z(n335) );
  GTECH_NOT U180 ( .A(n339), .Z(n338) );
  GTECH_XNOR2 U181 ( .A(n334), .B(n340), .Z(n331) );
  GTECH_XNOR2 U182 ( .A(a[15]), .B(b[15]), .Z(n334) );
  GTECH_MUX2 U183 ( .A(n341), .B(n342), .S(n333), .Z(sum[14]) );
  GTECH_XNOR2 U184 ( .A(n336), .B(n343), .Z(n342) );
  GTECH_OA21 U185 ( .A(n344), .B(n345), .C(n346), .Z(n336) );
  GTECH_XOR2 U186 ( .A(n343), .B(n347), .Z(n341) );
  GTECH_NOR2 U187 ( .A(n337), .B(n339), .Z(n343) );
  GTECH_MUX2 U188 ( .A(n348), .B(n349), .S(n333), .Z(sum[13]) );
  GTECH_XNOR2 U189 ( .A(n350), .B(n351), .Z(n349) );
  GTECH_XOR2 U190 ( .A(n351), .B(n352), .Z(n348) );
  GTECH_OR_NOT U191 ( .A(n344), .B(n346), .Z(n351) );
  GTECH_NAND2 U192 ( .A(n353), .B(n354), .Z(sum[12]) );
  GTECH_OAI21 U193 ( .A(n350), .B(n352), .C(n355), .Z(n354) );
  GTECH_MUX2 U194 ( .A(n356), .B(n357), .S(n281), .Z(sum[11]) );
  GTECH_XOR2 U195 ( .A(n358), .B(n359), .Z(n357) );
  GTECH_AOI21 U196 ( .A(n360), .B(n361), .C(n362), .Z(n359) );
  GTECH_XNOR2 U197 ( .A(n358), .B(n363), .Z(n356) );
  GTECH_XNOR2 U198 ( .A(a[11]), .B(b[11]), .Z(n358) );
  GTECH_MUX2 U199 ( .A(n364), .B(n365), .S(n281), .Z(sum[10]) );
  GTECH_XNOR2 U200 ( .A(n366), .B(n361), .Z(n365) );
  GTECH_OA21 U201 ( .A(n367), .B(n368), .C(n369), .Z(n361) );
  GTECH_XNOR2 U202 ( .A(n366), .B(n370), .Z(n364) );
  GTECH_OR_NOT U203 ( .A(n362), .B(n360), .Z(n366) );
  GTECH_XNOR2 U204 ( .A(cin), .B(n371), .Z(sum[0]) );
  GTECH_OAI21 U205 ( .A(n333), .B(n372), .C(n353), .Z(cout) );
  GTECH_NAND3 U206 ( .A(n373), .B(n345), .C(n333), .Z(n353) );
  GTECH_NOT U207 ( .A(n350), .Z(n345) );
  GTECH_AND2 U208 ( .A(b[12]), .B(a[12]), .Z(n350) );
  GTECH_NOT U209 ( .A(n352), .Z(n373) );
  GTECH_AOI21 U210 ( .A(n340), .B(a[15]), .C(n374), .Z(n372) );
  GTECH_OA21 U211 ( .A(a[15]), .B(n340), .C(b[15]), .Z(n374) );
  GTECH_AO21 U212 ( .A(n347), .B(n375), .C(n339), .Z(n340) );
  GTECH_AND2 U213 ( .A(a[14]), .B(b[14]), .Z(n339) );
  GTECH_NOT U214 ( .A(n337), .Z(n375) );
  GTECH_NOR2 U215 ( .A(b[14]), .B(a[14]), .Z(n337) );
  GTECH_OAI21 U216 ( .A(n344), .B(n352), .C(n346), .Z(n347) );
  GTECH_NAND2 U217 ( .A(b[13]), .B(a[13]), .Z(n346) );
  GTECH_NOR2 U218 ( .A(b[12]), .B(a[12]), .Z(n352) );
  GTECH_NOR2 U219 ( .A(a[13]), .B(b[13]), .Z(n344) );
  GTECH_NOT U220 ( .A(n355), .Z(n333) );
  GTECH_OAI21 U221 ( .A(n281), .B(n376), .C(n287), .Z(n355) );
  GTECH_NAND2 U222 ( .A(n286), .B(n281), .Z(n287) );
  GTECH_AND2 U223 ( .A(n284), .B(n283), .Z(n286) );
  GTECH_NOT U224 ( .A(n368), .Z(n283) );
  GTECH_AND2 U225 ( .A(a[8]), .B(b[8]), .Z(n368) );
  GTECH_OAI21 U226 ( .A(a[11]), .B(n363), .C(n377), .Z(n376) );
  GTECH_AO21 U227 ( .A(n363), .B(a[11]), .C(b[11]), .Z(n377) );
  GTECH_AO21 U228 ( .A(n360), .B(n370), .C(n362), .Z(n363) );
  GTECH_AND2 U229 ( .A(a[10]), .B(b[10]), .Z(n362) );
  GTECH_OA21 U230 ( .A(n367), .B(n284), .C(n369), .Z(n370) );
  GTECH_OR2 U231 ( .A(a[9]), .B(b[9]), .Z(n369) );
  GTECH_OR2 U232 ( .A(a[8]), .B(b[8]), .Z(n284) );
  GTECH_NOT U233 ( .A(n285), .Z(n367) );
  GTECH_NAND2 U234 ( .A(a[9]), .B(b[9]), .Z(n285) );
  GTECH_OR2 U235 ( .A(b[10]), .B(a[10]), .Z(n360) );
  GTECH_MUX2 U236 ( .A(n309), .B(n378), .S(n290), .Z(n281) );
  GTECH_NOT U237 ( .A(n310), .Z(n290) );
  GTECH_MUX2 U238 ( .A(n371), .B(n379), .S(cin), .Z(n310) );
  GTECH_AOI21 U239 ( .A(n314), .B(a[3]), .C(n380), .Z(n379) );
  GTECH_OA21 U240 ( .A(a[3]), .B(n314), .C(b[3]), .Z(n380) );
  GTECH_OAI21 U241 ( .A(n323), .B(n319), .C(n381), .Z(n314) );
  GTECH_NOT U242 ( .A(n318), .Z(n381) );
  GTECH_AND2 U243 ( .A(b[2]), .B(a[2]), .Z(n318) );
  GTECH_NOR2 U244 ( .A(b[2]), .B(a[2]), .Z(n319) );
  GTECH_AOI21 U245 ( .A(n324), .B(n330), .C(n326), .Z(n323) );
  GTECH_AND2 U246 ( .A(a[1]), .B(b[1]), .Z(n326) );
  GTECH_OR2 U247 ( .A(a[0]), .B(b[0]), .Z(n330) );
  GTECH_OR2 U248 ( .A(a[1]), .B(b[1]), .Z(n324) );
  GTECH_XNOR2 U249 ( .A(a[0]), .B(b[0]), .Z(n371) );
  GTECH_AOI21 U250 ( .A(n292), .B(a[7]), .C(n382), .Z(n378) );
  GTECH_OA21 U251 ( .A(a[7]), .B(n292), .C(b[7]), .Z(n382) );
  GTECH_OAI21 U252 ( .A(n301), .B(n297), .C(n383), .Z(n292) );
  GTECH_NOT U253 ( .A(n296), .Z(n383) );
  GTECH_AND2 U254 ( .A(b[6]), .B(a[6]), .Z(n296) );
  GTECH_NOR2 U255 ( .A(b[6]), .B(a[6]), .Z(n297) );
  GTECH_AOI21 U256 ( .A(n302), .B(n308), .C(n304), .Z(n301) );
  GTECH_AND2 U257 ( .A(a[5]), .B(b[5]), .Z(n304) );
  GTECH_OR2 U258 ( .A(a[5]), .B(b[5]), .Z(n302) );
  GTECH_OR_NOT U259 ( .A(n303), .B(n308), .Z(n309) );
  GTECH_OR2 U260 ( .A(a[4]), .B(b[4]), .Z(n308) );
  GTECH_AND2 U261 ( .A(b[4]), .B(a[4]), .Z(n303) );
endmodule

