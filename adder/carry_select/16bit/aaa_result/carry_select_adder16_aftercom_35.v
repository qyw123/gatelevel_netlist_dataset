
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
         n376, n377, n378, n379, n380, n381;

  GTECH_MUX2 U138 ( .A(n277), .B(n278), .S(n279), .Z(sum[9]) );
  GTECH_OA21 U139 ( .A(n280), .B(n281), .C(n282), .Z(n279) );
  GTECH_OR_NOT U140 ( .A(n283), .B(n284), .Z(n278) );
  GTECH_XOR2 U141 ( .A(b[9]), .B(a[9]), .Z(n277) );
  GTECH_NAND2 U142 ( .A(n285), .B(n286), .Z(sum[8]) );
  GTECH_OAI21 U143 ( .A(n287), .B(n280), .C(n281), .Z(n285) );
  GTECH_MUX2 U144 ( .A(n288), .B(n289), .S(n290), .Z(sum[7]) );
  GTECH_XNOR2 U145 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_XOR2 U146 ( .A(n291), .B(n293), .Z(n288) );
  GTECH_AOI21 U147 ( .A(n294), .B(n295), .C(n296), .Z(n293) );
  GTECH_XNOR2 U148 ( .A(a[7]), .B(b[7]), .Z(n291) );
  GTECH_MUX2 U149 ( .A(n297), .B(n298), .S(n299), .Z(sum[6]) );
  GTECH_AOI21 U150 ( .A(n290), .B(n300), .C(n295), .Z(n299) );
  GTECH_OA21 U151 ( .A(n301), .B(n302), .C(n303), .Z(n295) );
  GTECH_XOR2 U152 ( .A(b[6]), .B(a[6]), .Z(n298) );
  GTECH_OR_NOT U153 ( .A(n296), .B(n294), .Z(n297) );
  GTECH_XOR2 U154 ( .A(n304), .B(n305), .Z(sum[5]) );
  GTECH_OA21 U155 ( .A(n301), .B(n290), .C(n306), .Z(n305) );
  GTECH_AND_NOT U156 ( .A(n303), .B(n302), .Z(n304) );
  GTECH_XNOR2 U157 ( .A(n307), .B(n308), .Z(sum[4]) );
  GTECH_MUX2 U158 ( .A(n309), .B(n310), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U159 ( .A(n311), .B(n312), .Z(n310) );
  GTECH_XOR2 U160 ( .A(n313), .B(n311), .Z(n309) );
  GTECH_XOR2 U161 ( .A(a[3]), .B(b[3]), .Z(n311) );
  GTECH_OA21 U162 ( .A(a[2]), .B(n314), .C(n315), .Z(n313) );
  GTECH_AO21 U163 ( .A(a[2]), .B(n314), .C(b[2]), .Z(n315) );
  GTECH_MUX2 U164 ( .A(n316), .B(n317), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U165 ( .A(n318), .B(n319), .Z(n317) );
  GTECH_XNOR2 U166 ( .A(n314), .B(n319), .Z(n316) );
  GTECH_XNOR2 U167 ( .A(n320), .B(n321), .Z(n319) );
  GTECH_AOI21 U168 ( .A(n322), .B(n323), .C(n324), .Z(n314) );
  GTECH_MUX2 U169 ( .A(n325), .B(n326), .S(n327), .Z(sum[1]) );
  GTECH_AND2 U170 ( .A(n328), .B(n322), .Z(n327) );
  GTECH_OAI21 U171 ( .A(cin), .B(n329), .C(n330), .Z(n326) );
  GTECH_OAI21 U172 ( .A(n331), .B(n332), .C(n323), .Z(n325) );
  GTECH_MUX2 U173 ( .A(n333), .B(n334), .S(n335), .Z(sum[15]) );
  GTECH_XOR2 U174 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_AOI21 U175 ( .A(n338), .B(n339), .C(n340), .Z(n337) );
  GTECH_XNOR2 U176 ( .A(n336), .B(n341), .Z(n333) );
  GTECH_XNOR2 U177 ( .A(a[15]), .B(b[15]), .Z(n336) );
  GTECH_MUX2 U178 ( .A(n342), .B(n343), .S(n344), .Z(sum[14]) );
  GTECH_AOI21 U179 ( .A(n345), .B(n346), .C(n339), .Z(n344) );
  GTECH_AOI21 U180 ( .A(n347), .B(n348), .C(n349), .Z(n339) );
  GTECH_XOR2 U181 ( .A(b[14]), .B(a[14]), .Z(n343) );
  GTECH_OR_NOT U182 ( .A(n340), .B(n338), .Z(n342) );
  GTECH_MUX2 U183 ( .A(n350), .B(n351), .S(n352), .Z(sum[13]) );
  GTECH_AOI21 U184 ( .A(n348), .B(n335), .C(n353), .Z(n352) );
  GTECH_OR_NOT U185 ( .A(n349), .B(n347), .Z(n351) );
  GTECH_XOR2 U186 ( .A(b[13]), .B(a[13]), .Z(n350) );
  GTECH_NAND2 U187 ( .A(n354), .B(n355), .Z(sum[12]) );
  GTECH_AO21 U188 ( .A(n356), .B(n348), .C(n335), .Z(n354) );
  GTECH_MUX2 U189 ( .A(n357), .B(n358), .S(n359), .Z(sum[11]) );
  GTECH_XOR2 U190 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_OA21 U191 ( .A(n362), .B(n363), .C(n364), .Z(n361) );
  GTECH_XNOR2 U192 ( .A(n360), .B(n365), .Z(n357) );
  GTECH_XNOR2 U193 ( .A(a[11]), .B(b[11]), .Z(n360) );
  GTECH_MUX2 U194 ( .A(n366), .B(n367), .S(n368), .Z(sum[10]) );
  GTECH_OA21 U195 ( .A(n359), .B(n369), .C(n363), .Z(n368) );
  GTECH_OAI21 U196 ( .A(n283), .B(n280), .C(n284), .Z(n363) );
  GTECH_XOR2 U197 ( .A(b[10]), .B(a[10]), .Z(n367) );
  GTECH_OR_NOT U198 ( .A(n362), .B(n364), .Z(n366) );
  GTECH_XOR2 U199 ( .A(n332), .B(n370), .Z(sum[0]) );
  GTECH_NOT U200 ( .A(cin), .Z(n332) );
  GTECH_OAI21 U201 ( .A(n335), .B(n371), .C(n355), .Z(cout) );
  GTECH_NAND3 U202 ( .A(n348), .B(n356), .C(n335), .Z(n355) );
  GTECH_NOT U203 ( .A(n353), .Z(n356) );
  GTECH_NAND2 U204 ( .A(b[12]), .B(a[12]), .Z(n348) );
  GTECH_AOI21 U205 ( .A(n341), .B(a[15]), .C(n372), .Z(n371) );
  GTECH_OA21 U206 ( .A(a[15]), .B(n341), .C(b[15]), .Z(n372) );
  GTECH_AO21 U207 ( .A(n338), .B(n346), .C(n340), .Z(n341) );
  GTECH_AND2 U208 ( .A(a[14]), .B(b[14]), .Z(n340) );
  GTECH_AOI21 U209 ( .A(n347), .B(n353), .C(n349), .Z(n346) );
  GTECH_NOR2 U210 ( .A(b[13]), .B(a[13]), .Z(n349) );
  GTECH_NOR2 U211 ( .A(b[12]), .B(a[12]), .Z(n353) );
  GTECH_NAND2 U212 ( .A(a[13]), .B(b[13]), .Z(n347) );
  GTECH_OR2 U213 ( .A(a[14]), .B(b[14]), .Z(n338) );
  GTECH_NOT U214 ( .A(n345), .Z(n335) );
  GTECH_OAI21 U215 ( .A(n373), .B(n359), .C(n286), .Z(n345) );
  GTECH_OR3 U216 ( .A(n280), .B(n287), .C(n281), .Z(n286) );
  GTECH_NOT U217 ( .A(n282), .Z(n287) );
  GTECH_AND2 U218 ( .A(b[8]), .B(a[8]), .Z(n280) );
  GTECH_NOT U219 ( .A(n281), .Z(n359) );
  GTECH_MUX2 U220 ( .A(n307), .B(n374), .S(n290), .Z(n281) );
  GTECH_NOT U221 ( .A(n308), .Z(n290) );
  GTECH_MUX2 U222 ( .A(n370), .B(n375), .S(cin), .Z(n308) );
  GTECH_AOI21 U223 ( .A(n312), .B(a[3]), .C(n376), .Z(n375) );
  GTECH_OA21 U224 ( .A(a[3]), .B(n312), .C(b[3]), .Z(n376) );
  GTECH_OAI21 U225 ( .A(n318), .B(n320), .C(n377), .Z(n312) );
  GTECH_AO21 U226 ( .A(n318), .B(n320), .C(n321), .Z(n377) );
  GTECH_NOT U227 ( .A(b[2]), .Z(n321) );
  GTECH_NOT U228 ( .A(a[2]), .Z(n320) );
  GTECH_OAI21 U229 ( .A(n378), .B(n330), .C(n328), .Z(n318) );
  GTECH_NOT U230 ( .A(n324), .Z(n328) );
  GTECH_NOR2 U231 ( .A(a[1]), .B(b[1]), .Z(n324) );
  GTECH_NOT U232 ( .A(n322), .Z(n378) );
  GTECH_NAND2 U233 ( .A(b[1]), .B(a[1]), .Z(n322) );
  GTECH_NAND2 U234 ( .A(n323), .B(n330), .Z(n370) );
  GTECH_NOT U235 ( .A(n331), .Z(n330) );
  GTECH_NOR2 U236 ( .A(a[0]), .B(b[0]), .Z(n331) );
  GTECH_NOT U237 ( .A(n329), .Z(n323) );
  GTECH_AND2 U238 ( .A(b[0]), .B(a[0]), .Z(n329) );
  GTECH_OA21 U239 ( .A(a[7]), .B(n292), .C(n379), .Z(n374) );
  GTECH_AO21 U240 ( .A(n292), .B(a[7]), .C(b[7]), .Z(n379) );
  GTECH_AO21 U241 ( .A(n294), .B(n300), .C(n296), .Z(n292) );
  GTECH_AND2 U242 ( .A(a[6]), .B(b[6]), .Z(n296) );
  GTECH_OA21 U243 ( .A(n302), .B(n306), .C(n303), .Z(n300) );
  GTECH_OR2 U244 ( .A(a[5]), .B(b[5]), .Z(n303) );
  GTECH_AND2 U245 ( .A(b[5]), .B(a[5]), .Z(n302) );
  GTECH_OR2 U246 ( .A(a[6]), .B(b[6]), .Z(n294) );
  GTECH_AND_NOT U247 ( .A(n306), .B(n301), .Z(n307) );
  GTECH_AND2 U248 ( .A(a[4]), .B(b[4]), .Z(n301) );
  GTECH_OR2 U249 ( .A(b[4]), .B(a[4]), .Z(n306) );
  GTECH_AOI21 U250 ( .A(n365), .B(a[11]), .C(n380), .Z(n373) );
  GTECH_OA21 U251 ( .A(a[11]), .B(n365), .C(b[11]), .Z(n380) );
  GTECH_OAI21 U252 ( .A(n362), .B(n369), .C(n364), .Z(n365) );
  GTECH_NAND2 U253 ( .A(a[10]), .B(b[10]), .Z(n364) );
  GTECH_OAI21 U254 ( .A(n283), .B(n282), .C(n284), .Z(n369) );
  GTECH_OR_NOT U255 ( .A(a[9]), .B(n381), .Z(n284) );
  GTECH_NOT U256 ( .A(b[9]), .Z(n381) );
  GTECH_OR2 U257 ( .A(b[8]), .B(a[8]), .Z(n282) );
  GTECH_AND2 U258 ( .A(a[9]), .B(b[9]), .Z(n283) );
  GTECH_NOR2 U259 ( .A(b[10]), .B(a[10]), .Z(n362) );
endmodule

