
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384;

  GTECH_MUX2 U135 ( .A(n274), .B(n275), .S(n276), .Z(sum[9]) );
  GTECH_OA21 U136 ( .A(n277), .B(n278), .C(n279), .Z(n276) );
  GTECH_XOR2 U137 ( .A(b[9]), .B(a[9]), .Z(n275) );
  GTECH_NAND2 U138 ( .A(n280), .B(n281), .Z(n274) );
  GTECH_OAI21 U139 ( .A(n282), .B(n278), .C(n283), .Z(sum[8]) );
  GTECH_MUX2 U140 ( .A(n284), .B(n285), .S(n286), .Z(sum[7]) );
  GTECH_NOT U141 ( .A(n287), .Z(n285) );
  GTECH_XOR2 U142 ( .A(n288), .B(n289), .Z(n287) );
  GTECH_OA21 U143 ( .A(n290), .B(n291), .C(n292), .Z(n289) );
  GTECH_XOR2 U144 ( .A(n288), .B(n293), .Z(n284) );
  GTECH_XOR2 U145 ( .A(a[7]), .B(b[7]), .Z(n288) );
  GTECH_MUX2 U146 ( .A(n294), .B(n295), .S(n286), .Z(sum[6]) );
  GTECH_XOR2 U147 ( .A(n291), .B(n296), .Z(n295) );
  GTECH_AOI21 U148 ( .A(n297), .B(n298), .C(n299), .Z(n291) );
  GTECH_XOR2 U149 ( .A(n296), .B(n300), .Z(n294) );
  GTECH_OR_NOT U150 ( .A(n290), .B(n292), .Z(n296) );
  GTECH_XOR2 U151 ( .A(n301), .B(n302), .Z(sum[5]) );
  GTECH_OR_NOT U152 ( .A(n299), .B(n297), .Z(n302) );
  GTECH_OAI22 U153 ( .A(b[4]), .B(a[4]), .C(n298), .D(n303), .Z(n301) );
  GTECH_AND2 U154 ( .A(a[4]), .B(b[4]), .Z(n298) );
  GTECH_XOR2 U155 ( .A(n303), .B(n304), .Z(sum[4]) );
  GTECH_NOT U156 ( .A(n286), .Z(n303) );
  GTECH_MUX2 U157 ( .A(n305), .B(n306), .S(n307), .Z(sum[3]) );
  GTECH_NOT U158 ( .A(n308), .Z(n306) );
  GTECH_XOR2 U159 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_OA21 U160 ( .A(n311), .B(n312), .C(n313), .Z(n310) );
  GTECH_XOR2 U161 ( .A(n309), .B(n314), .Z(n305) );
  GTECH_XOR2 U162 ( .A(a[3]), .B(b[3]), .Z(n309) );
  GTECH_MUX2 U163 ( .A(n315), .B(n316), .S(n307), .Z(sum[2]) );
  GTECH_XOR2 U164 ( .A(n312), .B(n317), .Z(n316) );
  GTECH_OA21 U165 ( .A(n318), .B(n319), .C(n320), .Z(n312) );
  GTECH_XOR2 U166 ( .A(n317), .B(n321), .Z(n315) );
  GTECH_OR_NOT U167 ( .A(n311), .B(n313), .Z(n317) );
  GTECH_MUX2 U168 ( .A(n322), .B(n323), .S(n324), .Z(sum[1]) );
  GTECH_AND_NOT U169 ( .A(n320), .B(n318), .Z(n324) );
  GTECH_AO21 U170 ( .A(n307), .B(n319), .C(n325), .Z(n323) );
  GTECH_OAI21 U171 ( .A(n325), .B(n307), .C(n319), .Z(n322) );
  GTECH_NAND2 U172 ( .A(b[0]), .B(a[0]), .Z(n319) );
  GTECH_MUX2 U173 ( .A(n326), .B(n327), .S(n328), .Z(sum[15]) );
  GTECH_XOR2 U174 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_OAI21 U175 ( .A(n331), .B(n332), .C(n333), .Z(n329) );
  GTECH_XOR2 U176 ( .A(n334), .B(n330), .Z(n326) );
  GTECH_NOT U177 ( .A(n335), .Z(n330) );
  GTECH_XOR2 U178 ( .A(a[15]), .B(b[15]), .Z(n335) );
  GTECH_OAI21 U179 ( .A(n331), .B(n336), .C(n333), .Z(n334) );
  GTECH_MUX2 U180 ( .A(n337), .B(n338), .S(n328), .Z(sum[14]) );
  GTECH_XOR2 U181 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U182 ( .A(n341), .B(n340), .Z(n337) );
  GTECH_OAI21 U183 ( .A(a[14]), .B(b[14]), .C(n342), .Z(n340) );
  GTECH_NOT U184 ( .A(n331), .Z(n342) );
  GTECH_NOT U185 ( .A(n336), .Z(n341) );
  GTECH_AO21 U186 ( .A(n343), .B(n344), .C(n345), .Z(n336) );
  GTECH_MUX2 U187 ( .A(n346), .B(n347), .S(n348), .Z(sum[13]) );
  GTECH_AOI21 U188 ( .A(n328), .B(n349), .C(n344), .Z(n348) );
  GTECH_XOR2 U189 ( .A(b[13]), .B(a[13]), .Z(n347) );
  GTECH_OR_NOT U190 ( .A(n345), .B(n343), .Z(n346) );
  GTECH_AO21 U191 ( .A(n328), .B(n350), .C(n351), .Z(sum[12]) );
  GTECH_MUX2 U192 ( .A(n352), .B(n353), .S(n354), .Z(sum[11]) );
  GTECH_XOR2 U193 ( .A(n355), .B(n356), .Z(n353) );
  GTECH_XOR2 U194 ( .A(n357), .B(n355), .Z(n352) );
  GTECH_XOR2 U195 ( .A(a[11]), .B(b[11]), .Z(n355) );
  GTECH_OA21 U196 ( .A(a[10]), .B(n358), .C(n359), .Z(n357) );
  GTECH_AO21 U197 ( .A(n358), .B(a[10]), .C(b[10]), .Z(n359) );
  GTECH_MUX2 U198 ( .A(n360), .B(n361), .S(n354), .Z(sum[10]) );
  GTECH_XOR2 U199 ( .A(n362), .B(n363), .Z(n361) );
  GTECH_XOR2 U200 ( .A(n362), .B(n358), .Z(n360) );
  GTECH_OAI21 U201 ( .A(n364), .B(n279), .C(n281), .Z(n358) );
  GTECH_NOT U202 ( .A(n365), .Z(n362) );
  GTECH_XOR2 U203 ( .A(n366), .B(b[10]), .Z(n365) );
  GTECH_XOR2 U204 ( .A(n307), .B(n367), .Z(sum[0]) );
  GTECH_AO21 U205 ( .A(n368), .B(n328), .C(n351), .Z(cout) );
  GTECH_AND_NOT U206 ( .A(n369), .B(n350), .Z(n351) );
  GTECH_OR_NOT U207 ( .A(n344), .B(n349), .Z(n350) );
  GTECH_AND2 U208 ( .A(a[12]), .B(b[12]), .Z(n344) );
  GTECH_NOT U209 ( .A(n369), .Z(n328) );
  GTECH_OA21 U210 ( .A(n278), .B(n370), .C(n283), .Z(n369) );
  GTECH_NAND2 U211 ( .A(n278), .B(n282), .Z(n283) );
  GTECH_AND_NOT U212 ( .A(n279), .B(n277), .Z(n282) );
  GTECH_NAND2 U213 ( .A(a[8]), .B(b[8]), .Z(n279) );
  GTECH_OAI21 U214 ( .A(a[11]), .B(n356), .C(n371), .Z(n370) );
  GTECH_AO21 U215 ( .A(n356), .B(a[11]), .C(b[11]), .Z(n371) );
  GTECH_OAI21 U216 ( .A(n372), .B(n366), .C(n373), .Z(n356) );
  GTECH_OAI21 U217 ( .A(a[10]), .B(n363), .C(b[10]), .Z(n373) );
  GTECH_NOT U218 ( .A(a[10]), .Z(n366) );
  GTECH_NOT U219 ( .A(n363), .Z(n372) );
  GTECH_OAI21 U220 ( .A(n277), .B(n364), .C(n281), .Z(n363) );
  GTECH_NAND2 U221 ( .A(b[9]), .B(a[9]), .Z(n281) );
  GTECH_NOT U222 ( .A(n280), .Z(n364) );
  GTECH_OR2 U223 ( .A(b[9]), .B(a[9]), .Z(n280) );
  GTECH_AND_NOT U224 ( .A(n374), .B(b[8]), .Z(n277) );
  GTECH_NOT U225 ( .A(a[8]), .Z(n374) );
  GTECH_NOT U226 ( .A(n354), .Z(n278) );
  GTECH_MUX2 U227 ( .A(n375), .B(n304), .S(n286), .Z(n354) );
  GTECH_MUX2 U228 ( .A(n376), .B(n367), .S(n307), .Z(n286) );
  GTECH_NOT U229 ( .A(cin), .Z(n307) );
  GTECH_XOR2 U230 ( .A(a[0]), .B(n377), .Z(n367) );
  GTECH_AOI21 U231 ( .A(n314), .B(a[3]), .C(n378), .Z(n376) );
  GTECH_OA21 U232 ( .A(a[3]), .B(n314), .C(b[3]), .Z(n378) );
  GTECH_OAI21 U233 ( .A(n321), .B(n311), .C(n313), .Z(n314) );
  GTECH_NAND2 U234 ( .A(a[2]), .B(b[2]), .Z(n313) );
  GTECH_AND_NOT U235 ( .A(n379), .B(b[2]), .Z(n311) );
  GTECH_NOT U236 ( .A(a[2]), .Z(n379) );
  GTECH_OA21 U237 ( .A(n325), .B(n318), .C(n320), .Z(n321) );
  GTECH_OR_NOT U238 ( .A(n380), .B(b[1]), .Z(n320) );
  GTECH_AND_NOT U239 ( .A(n380), .B(b[1]), .Z(n318) );
  GTECH_NOT U240 ( .A(a[1]), .Z(n380) );
  GTECH_AND_NOT U241 ( .A(n377), .B(a[0]), .Z(n325) );
  GTECH_NOT U242 ( .A(b[0]), .Z(n377) );
  GTECH_XOR2 U243 ( .A(a[4]), .B(b[4]), .Z(n304) );
  GTECH_OA21 U244 ( .A(a[7]), .B(n293), .C(n381), .Z(n375) );
  GTECH_AO21 U245 ( .A(n293), .B(a[7]), .C(b[7]), .Z(n381) );
  GTECH_OAI21 U246 ( .A(n300), .B(n290), .C(n292), .Z(n293) );
  GTECH_OR_NOT U247 ( .A(n382), .B(b[6]), .Z(n292) );
  GTECH_AND_NOT U248 ( .A(n382), .B(b[6]), .Z(n290) );
  GTECH_NOT U249 ( .A(a[6]), .Z(n382) );
  GTECH_AND_NOT U250 ( .A(n383), .B(n299), .Z(n300) );
  GTECH_AND2 U251 ( .A(b[5]), .B(a[5]), .Z(n299) );
  GTECH_OAI21 U252 ( .A(b[4]), .B(a[4]), .C(n297), .Z(n383) );
  GTECH_OR2 U253 ( .A(b[5]), .B(a[5]), .Z(n297) );
  GTECH_ADD_ABC U254 ( .A(a[15]), .B(n384), .C(b[15]), .COUT(n368) );
  GTECH_OA21 U255 ( .A(n331), .B(n332), .C(n333), .Z(n384) );
  GTECH_OR2 U256 ( .A(a[14]), .B(b[14]), .Z(n333) );
  GTECH_NOT U257 ( .A(n339), .Z(n332) );
  GTECH_AOI21 U258 ( .A(n343), .B(n349), .C(n345), .Z(n339) );
  GTECH_AND2 U259 ( .A(b[13]), .B(a[13]), .Z(n345) );
  GTECH_OR2 U260 ( .A(b[12]), .B(a[12]), .Z(n349) );
  GTECH_OR2 U261 ( .A(a[13]), .B(b[13]), .Z(n343) );
  GTECH_AND2 U262 ( .A(b[14]), .B(a[14]), .Z(n331) );
endmodule

