
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
         n379, n380, n381, n382, n383;

  GTECH_MUX2 U141 ( .A(n280), .B(n281), .S(n282), .Z(sum[9]) );
  GTECH_XNOR2 U142 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_ADD_AB U143 ( .A(n285), .B(n284), .S(n280) );
  GTECH_AND_NOT U144 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_ADD_AB U145 ( .A(n288), .B(n282), .S(sum[8]) );
  GTECH_MUX2 U146 ( .A(n289), .B(n290), .S(n291), .Z(sum[7]) );
  GTECH_XNOR2 U147 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_XNOR2 U148 ( .A(n294), .B(n293), .Z(n289) );
  GTECH_XNOR2 U149 ( .A(b[7]), .B(a[7]), .Z(n293) );
  GTECH_AO21 U150 ( .A(n295), .B(n296), .C(n297), .Z(n294) );
  GTECH_MUX2 U151 ( .A(n298), .B(n299), .S(n300), .Z(sum[6]) );
  GTECH_AO21 U152 ( .A(n291), .B(n301), .C(n296), .Z(n300) );
  GTECH_OA21 U153 ( .A(n302), .B(n303), .C(n304), .Z(n296) );
  GTECH_OR_NOT U154 ( .A(n297), .B(n295), .Z(n299) );
  GTECH_ADD_AB U155 ( .A(b[6]), .B(a[6]), .S(n298) );
  GTECH_XNOR2 U156 ( .A(n305), .B(n306), .Z(sum[5]) );
  GTECH_OAI22 U157 ( .A(n303), .B(n291), .C(b[4]), .D(a[4]), .Z(n306) );
  GTECH_AND2 U158 ( .A(b[4]), .B(a[4]), .Z(n303) );
  GTECH_AND_NOT U159 ( .A(n304), .B(n302), .Z(n305) );
  GTECH_ADD_AB U160 ( .A(n291), .B(n307), .S(sum[4]) );
  GTECH_MUX2 U161 ( .A(n308), .B(n309), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U162 ( .A(n310), .B(n311), .Z(n309) );
  GTECH_ADD_AB U163 ( .A(n312), .B(n311), .S(n308) );
  GTECH_XNOR2 U164 ( .A(b[3]), .B(a[3]), .Z(n311) );
  GTECH_OA21 U165 ( .A(n313), .B(n314), .C(n315), .Z(n312) );
  GTECH_MUX2 U166 ( .A(n316), .B(n317), .S(n318), .Z(sum[2]) );
  GTECH_MUX2 U167 ( .A(n319), .B(n320), .S(n314), .Z(n317) );
  GTECH_NAND2 U168 ( .A(n321), .B(n322), .Z(n314) );
  GTECH_AO21 U169 ( .A(b[0]), .B(a[0]), .C(n323), .Z(n321) );
  GTECH_MUX2 U170 ( .A(n319), .B(n320), .S(n324), .Z(n316) );
  GTECH_ADD_AB U171 ( .A(b[2]), .B(a[2]), .S(n320) );
  GTECH_OR_NOT U172 ( .A(n313), .B(n315), .Z(n319) );
  GTECH_XNOR2 U173 ( .A(n325), .B(n326), .Z(sum[1]) );
  GTECH_AOI22 U174 ( .A(n327), .B(cin), .C(b[0]), .D(a[0]), .Z(n326) );
  GTECH_AND_NOT U175 ( .A(n322), .B(n323), .Z(n325) );
  GTECH_MUX2 U176 ( .A(n328), .B(n329), .S(n330), .Z(sum[15]) );
  GTECH_ADD_AB U177 ( .A(n331), .B(n332), .S(n329) );
  GTECH_ADD_AB U178 ( .A(n333), .B(n332), .S(n328) );
  GTECH_XNOR2 U179 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_AND2 U180 ( .A(n336), .B(n337), .Z(n333) );
  GTECH_OAI21 U181 ( .A(b[14]), .B(a[14]), .C(n338), .Z(n336) );
  GTECH_OAI21 U182 ( .A(n339), .B(n337), .C(n340), .Z(sum[14]) );
  GTECH_MUX2 U183 ( .A(n341), .B(n342), .S(b[14]), .Z(n340) );
  GTECH_OR2 U184 ( .A(a[14]), .B(n343), .Z(n342) );
  GTECH_XNOR2 U185 ( .A(a[14]), .B(n343), .Z(n341) );
  GTECH_NOT U186 ( .A(n343), .Z(n339) );
  GTECH_AO21 U187 ( .A(n330), .B(n344), .C(n338), .Z(n343) );
  GTECH_OA21 U188 ( .A(n345), .B(n346), .C(n347), .Z(n338) );
  GTECH_MUX2 U189 ( .A(n348), .B(n349), .S(n350), .Z(sum[13]) );
  GTECH_OA21 U190 ( .A(n346), .B(n330), .C(n351), .Z(n350) );
  GTECH_OR_NOT U191 ( .A(n345), .B(n347), .Z(n349) );
  GTECH_ADD_AB U192 ( .A(b[13]), .B(a[13]), .S(n348) );
  GTECH_NAND2 U193 ( .A(n352), .B(n353), .Z(sum[12]) );
  GTECH_OAI21 U194 ( .A(n346), .B(n354), .C(n330), .Z(n352) );
  GTECH_MUX2 U195 ( .A(n355), .B(n356), .S(n282), .Z(sum[11]) );
  GTECH_XNOR2 U196 ( .A(n357), .B(n358), .Z(n356) );
  GTECH_ADD_AB U197 ( .A(n359), .B(n358), .S(n355) );
  GTECH_XNOR2 U198 ( .A(b[11]), .B(a[11]), .Z(n358) );
  GTECH_AND2 U199 ( .A(n360), .B(n361), .Z(n359) );
  GTECH_OAI2N2 U200 ( .A(b[10]), .B(a[10]), .C(n286), .D(n362), .Z(n361) );
  GTECH_OAI21 U201 ( .A(n363), .B(n360), .C(n364), .Z(sum[10]) );
  GTECH_MUX2 U202 ( .A(n365), .B(n366), .S(b[10]), .Z(n364) );
  GTECH_OR2 U203 ( .A(a[10]), .B(n367), .Z(n366) );
  GTECH_XNOR2 U204 ( .A(a[10]), .B(n367), .Z(n365) );
  GTECH_NOT U205 ( .A(n367), .Z(n363) );
  GTECH_AO21 U206 ( .A(n368), .B(n282), .C(n369), .Z(n367) );
  GTECH_NAND2 U207 ( .A(n286), .B(n362), .Z(n369) );
  GTECH_OR_NOT U208 ( .A(n287), .B(n285), .Z(n362) );
  GTECH_ADD_AB U209 ( .A(cin), .B(n370), .S(sum[0]) );
  GTECH_OAI21 U210 ( .A(n371), .B(n372), .C(n353), .Z(cout) );
  GTECH_OR3 U211 ( .A(n346), .B(n354), .C(n330), .Z(n353) );
  GTECH_NOT U212 ( .A(n351), .Z(n354) );
  GTECH_AND2 U213 ( .A(b[12]), .B(a[12]), .Z(n346) );
  GTECH_NOT U214 ( .A(n330), .Z(n372) );
  GTECH_MUX2 U215 ( .A(n288), .B(n373), .S(n282), .Z(n330) );
  GTECH_MUX2 U216 ( .A(n307), .B(n374), .S(n291), .Z(n282) );
  GTECH_MUX2 U217 ( .A(n375), .B(n370), .S(n318), .Z(n291) );
  GTECH_NOT U218 ( .A(cin), .Z(n318) );
  GTECH_ADD_AB U219 ( .A(b[0]), .B(a[0]), .S(n370) );
  GTECH_AO21 U220 ( .A(n310), .B(a[3]), .C(n376), .Z(n375) );
  GTECH_OA21 U221 ( .A(a[3]), .B(n310), .C(b[3]), .Z(n376) );
  GTECH_OAI21 U222 ( .A(n313), .B(n324), .C(n315), .Z(n310) );
  GTECH_NAND2 U223 ( .A(a[2]), .B(b[2]), .Z(n315) );
  GTECH_OAI21 U224 ( .A(n323), .B(n327), .C(n322), .Z(n324) );
  GTECH_OR2 U225 ( .A(a[1]), .B(b[1]), .Z(n322) );
  GTECH_OR2 U226 ( .A(a[0]), .B(b[0]), .Z(n327) );
  GTECH_AND2 U227 ( .A(b[1]), .B(a[1]), .Z(n323) );
  GTECH_NOR2 U228 ( .A(b[2]), .B(a[2]), .Z(n313) );
  GTECH_AO21 U229 ( .A(n292), .B(a[7]), .C(n377), .Z(n374) );
  GTECH_OA21 U230 ( .A(a[7]), .B(n292), .C(b[7]), .Z(n377) );
  GTECH_AO21 U231 ( .A(n295), .B(n301), .C(n297), .Z(n292) );
  GTECH_AND2 U232 ( .A(b[6]), .B(a[6]), .Z(n297) );
  GTECH_AND2 U233 ( .A(n378), .B(n304), .Z(n301) );
  GTECH_OR2 U234 ( .A(b[5]), .B(a[5]), .Z(n304) );
  GTECH_OR3 U235 ( .A(a[4]), .B(b[4]), .C(n302), .Z(n378) );
  GTECH_AND2 U236 ( .A(a[5]), .B(b[5]), .Z(n302) );
  GTECH_OR2 U237 ( .A(a[6]), .B(b[6]), .Z(n295) );
  GTECH_ADD_AB U238 ( .A(b[4]), .B(a[4]), .S(n307) );
  GTECH_AO21 U239 ( .A(n357), .B(a[11]), .C(n379), .Z(n373) );
  GTECH_OA21 U240 ( .A(a[11]), .B(n357), .C(b[11]), .Z(n379) );
  GTECH_NAND2 U241 ( .A(n380), .B(n360), .Z(n357) );
  GTECH_NAND2 U242 ( .A(b[10]), .B(a[10]), .Z(n360) );
  GTECH_OAI21 U243 ( .A(a[10]), .B(b[10]), .C(n368), .Z(n380) );
  GTECH_OAI21 U244 ( .A(n283), .B(n287), .C(n286), .Z(n368) );
  GTECH_NAND2 U245 ( .A(b[9]), .B(a[9]), .Z(n286) );
  GTECH_NOR2 U246 ( .A(a[9]), .B(b[9]), .Z(n287) );
  GTECH_NOR2 U247 ( .A(n285), .B(n283), .Z(n288) );
  GTECH_NOR2 U248 ( .A(a[8]), .B(b[8]), .Z(n283) );
  GTECH_AND2 U249 ( .A(b[8]), .B(a[8]), .Z(n285) );
  GTECH_OA21 U250 ( .A(n331), .B(n335), .C(n381), .Z(n371) );
  GTECH_AO21 U251 ( .A(n335), .B(n331), .C(n334), .Z(n381) );
  GTECH_NOT U252 ( .A(b[15]), .Z(n334) );
  GTECH_NOT U253 ( .A(a[15]), .Z(n335) );
  GTECH_AND_NOT U254 ( .A(n382), .B(n383), .Z(n331) );
  GTECH_NOT U255 ( .A(n337), .Z(n383) );
  GTECH_NAND2 U256 ( .A(b[14]), .B(a[14]), .Z(n337) );
  GTECH_OAI21 U257 ( .A(a[14]), .B(b[14]), .C(n344), .Z(n382) );
  GTECH_OA21 U258 ( .A(n345), .B(n351), .C(n347), .Z(n344) );
  GTECH_OR2 U259 ( .A(b[13]), .B(a[13]), .Z(n347) );
  GTECH_OR2 U260 ( .A(a[12]), .B(b[12]), .Z(n351) );
  GTECH_AND2 U261 ( .A(a[13]), .B(b[13]), .Z(n345) );
endmodule

