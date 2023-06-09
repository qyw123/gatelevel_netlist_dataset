
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
         n382, n383, n384, n385, n386;

  GTECH_MUX2 U144 ( .A(n283), .B(n284), .S(n285), .Z(sum[9]) );
  GTECH_ADD_AB U145 ( .A(n286), .B(n287), .S(n284) );
  GTECH_XNOR2 U146 ( .A(n288), .B(n287), .Z(n283) );
  GTECH_AOI21 U147 ( .A(a[9]), .B(b[9]), .C(n289), .Z(n287) );
  GTECH_NAND2 U148 ( .A(n290), .B(n291), .Z(sum[8]) );
  GTECH_AO21 U149 ( .A(n288), .B(n286), .C(n292), .Z(n290) );
  GTECH_MUX2 U150 ( .A(n293), .B(n294), .S(n295), .Z(sum[7]) );
  GTECH_XNOR2 U151 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_AOI21 U152 ( .A(n298), .B(n299), .C(n300), .Z(n296) );
  GTECH_ADD_AB U153 ( .A(n301), .B(n297), .S(n293) );
  GTECH_ADD_AB U154 ( .A(b[7]), .B(a[7]), .S(n297) );
  GTECH_MUX2 U155 ( .A(n302), .B(n303), .S(n304), .Z(sum[6]) );
  GTECH_AOI21 U156 ( .A(n305), .B(n306), .C(n299), .Z(n304) );
  GTECH_AND2 U157 ( .A(n307), .B(n308), .Z(n299) );
  GTECH_AO21 U158 ( .A(a[4]), .B(b[4]), .C(n309), .Z(n307) );
  GTECH_ADD_AB U159 ( .A(b[6]), .B(a[6]), .S(n303) );
  GTECH_OR_NOT U160 ( .A(n300), .B(n298), .Z(n302) );
  GTECH_XNOR2 U161 ( .A(n310), .B(n311), .Z(sum[5]) );
  GTECH_OR_NOT U162 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_AO21 U163 ( .A(a[4]), .B(b[4]), .C(n305), .Z(n313) );
  GTECH_AND_NOT U164 ( .A(n308), .B(n309), .Z(n310) );
  GTECH_XNOR2 U165 ( .A(n314), .B(n305), .Z(sum[4]) );
  GTECH_MUX2 U166 ( .A(n315), .B(n316), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U167 ( .A(n317), .B(n318), .Z(n316) );
  GTECH_XNOR2 U168 ( .A(n319), .B(n318), .Z(n315) );
  GTECH_XNOR2 U169 ( .A(b[3]), .B(a[3]), .Z(n318) );
  GTECH_OA21 U170 ( .A(a[2]), .B(n320), .C(n321), .Z(n319) );
  GTECH_AO21 U171 ( .A(a[2]), .B(n320), .C(b[2]), .Z(n321) );
  GTECH_MUX2 U172 ( .A(n322), .B(n323), .S(cin), .Z(sum[2]) );
  GTECH_ADD_AB U173 ( .A(n324), .B(n325), .S(n323) );
  GTECH_ADD_AB U174 ( .A(n320), .B(n325), .S(n322) );
  GTECH_ADD_AB U175 ( .A(b[2]), .B(a[2]), .S(n325) );
  GTECH_OA21 U176 ( .A(n326), .B(n327), .C(n328), .Z(n320) );
  GTECH_MUX2 U177 ( .A(n329), .B(n330), .S(n331), .Z(sum[1]) );
  GTECH_AND_NOT U178 ( .A(n328), .B(n326), .Z(n331) );
  GTECH_OAI21 U179 ( .A(cin), .B(n327), .C(n332), .Z(n330) );
  GTECH_OAI21 U180 ( .A(n333), .B(n334), .C(n335), .Z(n329) );
  GTECH_NOT U181 ( .A(n327), .Z(n335) );
  GTECH_MUX2 U182 ( .A(n336), .B(n337), .S(n338), .Z(sum[15]) );
  GTECH_XNOR2 U183 ( .A(n339), .B(n340), .Z(n337) );
  GTECH_OA21 U184 ( .A(n341), .B(n342), .C(n343), .Z(n339) );
  GTECH_ADD_AB U185 ( .A(n344), .B(n340), .S(n336) );
  GTECH_ADD_AB U186 ( .A(b[15]), .B(a[15]), .S(n340) );
  GTECH_MUX2 U187 ( .A(n345), .B(n346), .S(n347), .Z(sum[14]) );
  GTECH_OA21 U188 ( .A(n348), .B(n338), .C(n342), .Z(n347) );
  GTECH_OA21 U189 ( .A(n349), .B(n350), .C(n351), .Z(n342) );
  GTECH_ADD_AB U190 ( .A(b[14]), .B(a[14]), .S(n346) );
  GTECH_OR_NOT U191 ( .A(n341), .B(n343), .Z(n345) );
  GTECH_MUX2 U192 ( .A(n352), .B(n353), .S(n354), .Z(sum[13]) );
  GTECH_OA21 U193 ( .A(n355), .B(n338), .C(n350), .Z(n354) );
  GTECH_NOT U194 ( .A(n356), .Z(n355) );
  GTECH_ADD_AB U195 ( .A(b[13]), .B(a[13]), .S(n353) );
  GTECH_OR_NOT U196 ( .A(n349), .B(n351), .Z(n352) );
  GTECH_NAND2 U197 ( .A(n357), .B(n358), .Z(sum[12]) );
  GTECH_AO21 U198 ( .A(n350), .B(n356), .C(n338), .Z(n357) );
  GTECH_MUX2 U199 ( .A(n359), .B(n360), .S(n285), .Z(sum[11]) );
  GTECH_ADD_AB U200 ( .A(n361), .B(n362), .S(n360) );
  GTECH_XNOR2 U201 ( .A(n363), .B(n362), .Z(n359) );
  GTECH_ADD_AB U202 ( .A(b[11]), .B(a[11]), .S(n362) );
  GTECH_AND2 U203 ( .A(n364), .B(n365), .Z(n363) );
  GTECH_OAI21 U204 ( .A(b[10]), .B(a[10]), .C(n366), .Z(n365) );
  GTECH_OAI21 U205 ( .A(n367), .B(n364), .C(n368), .Z(sum[10]) );
  GTECH_MUX2 U206 ( .A(n369), .B(n370), .S(b[10]), .Z(n368) );
  GTECH_OR_NOT U207 ( .A(a[10]), .B(n367), .Z(n370) );
  GTECH_ADD_AB U208 ( .A(a[10]), .B(n367), .S(n369) );
  GTECH_AOI21 U209 ( .A(n371), .B(n285), .C(n366), .Z(n367) );
  GTECH_OAI2N2 U210 ( .A(n289), .B(n288), .C(a[9]), .D(b[9]), .Z(n366) );
  GTECH_NOT U211 ( .A(n292), .Z(n285) );
  GTECH_XNOR2 U212 ( .A(n334), .B(n372), .Z(sum[0]) );
  GTECH_NOT U213 ( .A(cin), .Z(n334) );
  GTECH_OAI21 U214 ( .A(n338), .B(n373), .C(n358), .Z(cout) );
  GTECH_NAND3 U215 ( .A(n350), .B(n356), .C(n338), .Z(n358) );
  GTECH_NAND2 U216 ( .A(a[12]), .B(b[12]), .Z(n350) );
  GTECH_AOI21 U217 ( .A(n344), .B(a[15]), .C(n374), .Z(n373) );
  GTECH_OA21 U218 ( .A(a[15]), .B(n344), .C(b[15]), .Z(n374) );
  GTECH_NAND2 U219 ( .A(n375), .B(n343), .Z(n344) );
  GTECH_NAND2 U220 ( .A(a[14]), .B(b[14]), .Z(n343) );
  GTECH_AO21 U221 ( .A(n348), .B(n351), .C(n341), .Z(n375) );
  GTECH_NOR2 U222 ( .A(b[14]), .B(a[14]), .Z(n341) );
  GTECH_NAND2 U223 ( .A(b[13]), .B(a[13]), .Z(n351) );
  GTECH_OR_NOT U224 ( .A(n349), .B(n356), .Z(n348) );
  GTECH_OR2 U225 ( .A(b[12]), .B(a[12]), .Z(n356) );
  GTECH_NOR2 U226 ( .A(a[13]), .B(b[13]), .Z(n349) );
  GTECH_OA21 U227 ( .A(n376), .B(n292), .C(n291), .Z(n338) );
  GTECH_NAND3 U228 ( .A(n288), .B(n286), .C(n292), .Z(n291) );
  GTECH_NAND2 U229 ( .A(b[8]), .B(a[8]), .Z(n288) );
  GTECH_MUX2 U230 ( .A(n314), .B(n377), .S(n305), .Z(n292) );
  GTECH_NOT U231 ( .A(n295), .Z(n305) );
  GTECH_MUX2 U232 ( .A(n378), .B(n379), .S(cin), .Z(n295) );
  GTECH_AOI21 U233 ( .A(n317), .B(a[3]), .C(n380), .Z(n379) );
  GTECH_OA21 U234 ( .A(a[3]), .B(n317), .C(b[3]), .Z(n380) );
  GTECH_AO21 U235 ( .A(n324), .B(a[2]), .C(n381), .Z(n317) );
  GTECH_OA21 U236 ( .A(n324), .B(a[2]), .C(b[2]), .Z(n381) );
  GTECH_OA21 U237 ( .A(n326), .B(n332), .C(n328), .Z(n324) );
  GTECH_OR2 U238 ( .A(b[1]), .B(a[1]), .Z(n328) );
  GTECH_AND2 U239 ( .A(a[1]), .B(b[1]), .Z(n326) );
  GTECH_NOT U240 ( .A(n372), .Z(n378) );
  GTECH_AND_NOT U241 ( .A(n332), .B(n327), .Z(n372) );
  GTECH_AND2 U242 ( .A(b[0]), .B(a[0]), .Z(n327) );
  GTECH_NOT U243 ( .A(n333), .Z(n332) );
  GTECH_NOR2 U244 ( .A(b[0]), .B(a[0]), .Z(n333) );
  GTECH_AOI21 U245 ( .A(n301), .B(a[7]), .C(n382), .Z(n377) );
  GTECH_OA21 U246 ( .A(a[7]), .B(n301), .C(b[7]), .Z(n382) );
  GTECH_AO21 U247 ( .A(n298), .B(n306), .C(n300), .Z(n301) );
  GTECH_AND2 U248 ( .A(b[6]), .B(a[6]), .Z(n300) );
  GTECH_OA21 U249 ( .A(n309), .B(n383), .C(n308), .Z(n306) );
  GTECH_OR2 U250 ( .A(b[5]), .B(a[5]), .Z(n308) );
  GTECH_AND2 U251 ( .A(b[5]), .B(a[5]), .Z(n309) );
  GTECH_OR2 U252 ( .A(a[6]), .B(b[6]), .Z(n298) );
  GTECH_AO21 U253 ( .A(a[4]), .B(b[4]), .C(n312), .Z(n314) );
  GTECH_NOT U254 ( .A(n383), .Z(n312) );
  GTECH_OR2 U255 ( .A(a[4]), .B(b[4]), .Z(n383) );
  GTECH_AOI21 U256 ( .A(n361), .B(a[11]), .C(n384), .Z(n376) );
  GTECH_OA21 U257 ( .A(a[11]), .B(n361), .C(b[11]), .Z(n384) );
  GTECH_NAND2 U258 ( .A(n385), .B(n364), .Z(n361) );
  GTECH_NAND2 U259 ( .A(a[10]), .B(b[10]), .Z(n364) );
  GTECH_OAI21 U260 ( .A(a[10]), .B(b[10]), .C(n371), .Z(n385) );
  GTECH_OAI2N2 U261 ( .A(n386), .B(n289), .C(a[9]), .D(b[9]), .Z(n371) );
  GTECH_NOR2 U262 ( .A(a[9]), .B(b[9]), .Z(n289) );
  GTECH_NOT U263 ( .A(n286), .Z(n386) );
  GTECH_OR2 U264 ( .A(a[8]), .B(b[8]), .Z(n286) );
endmodule

