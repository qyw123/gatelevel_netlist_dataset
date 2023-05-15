
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
         n376, n377, n378, n379, n380;

  GTECH_MUX2 U138 ( .A(n277), .B(n278), .S(n279), .Z(sum[9]) );
  GTECH_XNOR2 U139 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_ADD_AB U140 ( .A(n282), .B(n281), .S(n277) );
  GTECH_OR_NOT U141 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_XNOR2 U142 ( .A(n285), .B(n279), .Z(sum[8]) );
  GTECH_MUX2 U143 ( .A(n286), .B(n287), .S(n288), .Z(sum[7]) );
  GTECH_XNOR2 U144 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_ADD_AB U145 ( .A(n291), .B(n290), .S(n286) );
  GTECH_XNOR2 U146 ( .A(b[7]), .B(a[7]), .Z(n290) );
  GTECH_AND_NOT U147 ( .A(n292), .B(n293), .Z(n291) );
  GTECH_OAI21 U148 ( .A(b[6]), .B(a[6]), .C(n294), .Z(n292) );
  GTECH_AO21 U149 ( .A(n295), .B(n293), .C(n296), .Z(sum[6]) );
  GTECH_NOT U150 ( .A(n297), .Z(n296) );
  GTECH_MUX2 U151 ( .A(n298), .B(n299), .S(b[6]), .Z(n297) );
  GTECH_OR_NOT U152 ( .A(n295), .B(n300), .Z(n299) );
  GTECH_XNOR2 U153 ( .A(a[6]), .B(n295), .Z(n298) );
  GTECH_AO21 U154 ( .A(n301), .B(n288), .C(n294), .Z(n295) );
  GTECH_AND_NOT U155 ( .A(n302), .B(n303), .Z(n294) );
  GTECH_OAI21 U156 ( .A(n304), .B(n305), .C(n306), .Z(n302) );
  GTECH_XNOR2 U157 ( .A(n307), .B(n308), .Z(sum[5]) );
  GTECH_OR_NOT U158 ( .A(n303), .B(n306), .Z(n308) );
  GTECH_OA21 U159 ( .A(a[4]), .B(n288), .C(n309), .Z(n307) );
  GTECH_AO21 U160 ( .A(n288), .B(a[4]), .C(b[4]), .Z(n309) );
  GTECH_XNOR2 U161 ( .A(n288), .B(n310), .Z(sum[4]) );
  GTECH_MUX2 U162 ( .A(n311), .B(n312), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U163 ( .A(n313), .B(n314), .S(n312) );
  GTECH_ADD_AB U164 ( .A(n315), .B(n314), .S(n311) );
  GTECH_ADD_AB U165 ( .A(b[3]), .B(a[3]), .S(n314) );
  GTECH_ADD_ABC U166 ( .A(a[2]), .B(n316), .C(b[2]), .COUT(n315) );
  GTECH_MUX2 U167 ( .A(n317), .B(n318), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U168 ( .A(n319), .B(n320), .Z(n318) );
  GTECH_XNOR2 U169 ( .A(n316), .B(n320), .Z(n317) );
  GTECH_XNOR2 U170 ( .A(b[2]), .B(a[2]), .Z(n320) );
  GTECH_OA21 U171 ( .A(n321), .B(n322), .C(n323), .Z(n316) );
  GTECH_MUX2 U172 ( .A(n324), .B(n325), .S(n326), .Z(sum[1]) );
  GTECH_AND_NOT U173 ( .A(n323), .B(n321), .Z(n326) );
  GTECH_OAI21 U174 ( .A(cin), .B(n322), .C(n327), .Z(n325) );
  GTECH_AO21 U175 ( .A(n327), .B(cin), .C(n322), .Z(n324) );
  GTECH_MUX2 U176 ( .A(n328), .B(n329), .S(n330), .Z(sum[15]) );
  GTECH_ADD_AB U177 ( .A(n331), .B(n332), .S(n329) );
  GTECH_XNOR2 U178 ( .A(n333), .B(n332), .Z(n328) );
  GTECH_ADD_AB U179 ( .A(b[15]), .B(a[15]), .S(n332) );
  GTECH_AND2 U180 ( .A(n334), .B(n335), .Z(n333) );
  GTECH_OAI21 U181 ( .A(n336), .B(n337), .C(n338), .Z(n334) );
  GTECH_OAI21 U182 ( .A(n339), .B(n335), .C(n340), .Z(sum[14]) );
  GTECH_MUX2 U183 ( .A(n341), .B(n342), .S(b[14]), .Z(n340) );
  GTECH_OR_NOT U184 ( .A(a[14]), .B(n339), .Z(n342) );
  GTECH_ADD_AB U185 ( .A(a[14]), .B(n339), .S(n341) );
  GTECH_NAND2 U186 ( .A(n343), .B(n344), .Z(n339) );
  GTECH_OAI21 U187 ( .A(n345), .B(n346), .C(n347), .Z(n344) );
  GTECH_NOR2 U188 ( .A(n337), .B(n336), .Z(n347) );
  GTECH_MUX2 U189 ( .A(n348), .B(n349), .S(n346), .Z(sum[13]) );
  GTECH_MUX2 U190 ( .A(n350), .B(n351), .S(n337), .Z(n349) );
  GTECH_MUX2 U191 ( .A(n351), .B(n350), .S(n345), .Z(n348) );
  GTECH_NOT U192 ( .A(n352), .Z(n345) );
  GTECH_ADD_AB U193 ( .A(b[13]), .B(a[13]), .S(n350) );
  GTECH_OR_NOT U194 ( .A(n336), .B(n343), .Z(n351) );
  GTECH_ADD_AB U195 ( .A(n353), .B(n346), .S(sum[12]) );
  GTECH_NOT U196 ( .A(n330), .Z(n346) );
  GTECH_MUX2 U197 ( .A(n354), .B(n355), .S(n279), .Z(sum[11]) );
  GTECH_XNOR2 U198 ( .A(n356), .B(n357), .Z(n355) );
  GTECH_AOI21 U199 ( .A(n358), .B(n359), .C(n360), .Z(n356) );
  GTECH_ADD_AB U200 ( .A(n361), .B(n357), .S(n354) );
  GTECH_ADD_AB U201 ( .A(b[11]), .B(a[11]), .S(n357) );
  GTECH_MUX2 U202 ( .A(n362), .B(n363), .S(n364), .Z(sum[10]) );
  GTECH_AOI21 U203 ( .A(n365), .B(n366), .C(n359), .Z(n364) );
  GTECH_AO21 U204 ( .A(n284), .B(n280), .C(n283), .Z(n359) );
  GTECH_NOT U205 ( .A(n279), .Z(n366) );
  GTECH_ADD_AB U206 ( .A(b[10]), .B(a[10]), .S(n363) );
  GTECH_OR_NOT U207 ( .A(n360), .B(n358), .Z(n362) );
  GTECH_ADD_AB U208 ( .A(cin), .B(n367), .S(sum[0]) );
  GTECH_NOT U209 ( .A(n368), .Z(cout) );
  GTECH_MUX2 U210 ( .A(n353), .B(n369), .S(n330), .Z(n368) );
  GTECH_MUX2 U211 ( .A(n370), .B(n285), .S(n279), .Z(n330) );
  GTECH_MUX2 U212 ( .A(n310), .B(n371), .S(n288), .Z(n279) );
  GTECH_MUX2 U213 ( .A(n367), .B(n372), .S(cin), .Z(n288) );
  GTECH_OA21 U214 ( .A(a[3]), .B(n313), .C(n373), .Z(n372) );
  GTECH_AO21 U215 ( .A(n313), .B(a[3]), .C(b[3]), .Z(n373) );
  GTECH_ADD_ABC U216 ( .A(n319), .B(a[2]), .C(b[2]), .COUT(n313) );
  GTECH_OA21 U217 ( .A(n321), .B(n327), .C(n323), .Z(n319) );
  GTECH_OR2 U218 ( .A(a[1]), .B(b[1]), .Z(n323) );
  GTECH_AND2 U219 ( .A(b[1]), .B(a[1]), .Z(n321) );
  GTECH_AND_NOT U220 ( .A(n327), .B(n322), .Z(n367) );
  GTECH_AND2 U221 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_OR2 U222 ( .A(a[0]), .B(b[0]), .Z(n327) );
  GTECH_AOI21 U223 ( .A(n289), .B(a[7]), .C(n374), .Z(n371) );
  GTECH_OA21 U224 ( .A(a[7]), .B(n289), .C(b[7]), .Z(n374) );
  GTECH_OR_NOT U225 ( .A(n293), .B(n375), .Z(n289) );
  GTECH_OAI21 U226 ( .A(a[6]), .B(b[6]), .C(n301), .Z(n375) );
  GTECH_AND_NOT U227 ( .A(n376), .B(n303), .Z(n301) );
  GTECH_NOR2 U228 ( .A(a[5]), .B(b[5]), .Z(n303) );
  GTECH_NAND3 U229 ( .A(n305), .B(n304), .C(n306), .Z(n376) );
  GTECH_NAND2 U230 ( .A(b[5]), .B(a[5]), .Z(n306) );
  GTECH_AND_NOT U231 ( .A(b[6]), .B(n300), .Z(n293) );
  GTECH_NOT U232 ( .A(a[6]), .Z(n300) );
  GTECH_XNOR2 U233 ( .A(n304), .B(n305), .Z(n310) );
  GTECH_NOT U234 ( .A(a[4]), .Z(n305) );
  GTECH_NOT U235 ( .A(b[4]), .Z(n304) );
  GTECH_NOR2 U236 ( .A(n280), .B(n282), .Z(n285) );
  GTECH_AND2 U237 ( .A(b[8]), .B(a[8]), .Z(n280) );
  GTECH_OA21 U238 ( .A(a[11]), .B(n361), .C(n377), .Z(n370) );
  GTECH_AO21 U239 ( .A(n361), .B(a[11]), .C(b[11]), .Z(n377) );
  GTECH_OR_NOT U240 ( .A(n360), .B(n378), .Z(n361) );
  GTECH_OAI21 U241 ( .A(n365), .B(n283), .C(n358), .Z(n378) );
  GTECH_OR2 U242 ( .A(b[10]), .B(a[10]), .Z(n358) );
  GTECH_AND2 U243 ( .A(a[9]), .B(b[9]), .Z(n283) );
  GTECH_AND_NOT U244 ( .A(n284), .B(n282), .Z(n365) );
  GTECH_NOR2 U245 ( .A(a[8]), .B(b[8]), .Z(n282) );
  GTECH_OR2 U246 ( .A(b[9]), .B(a[9]), .Z(n284) );
  GTECH_AND2 U247 ( .A(b[10]), .B(a[10]), .Z(n360) );
  GTECH_AOI21 U248 ( .A(n331), .B(a[15]), .C(n379), .Z(n369) );
  GTECH_OA21 U249 ( .A(a[15]), .B(n331), .C(b[15]), .Z(n379) );
  GTECH_NAND2 U250 ( .A(n380), .B(n335), .Z(n331) );
  GTECH_NAND2 U251 ( .A(b[14]), .B(a[14]), .Z(n335) );
  GTECH_OAI21 U252 ( .A(n336), .B(n352), .C(n338), .Z(n380) );
  GTECH_OA21 U253 ( .A(b[14]), .B(a[14]), .C(n343), .Z(n338) );
  GTECH_OR2 U254 ( .A(b[13]), .B(a[13]), .Z(n343) );
  GTECH_AND2 U255 ( .A(a[13]), .B(b[13]), .Z(n336) );
  GTECH_OR_NOT U256 ( .A(n337), .B(n352), .Z(n353) );
  GTECH_OR2 U257 ( .A(a[12]), .B(b[12]), .Z(n352) );
  GTECH_AND2 U258 ( .A(b[12]), .B(a[12]), .Z(n337) );
endmodule

