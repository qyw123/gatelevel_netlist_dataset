
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
         n379, n380;

  GTECH_MUX2 U141 ( .A(n280), .B(n281), .S(n282), .Z(sum[9]) );
  GTECH_AOI2N2 U142 ( .A(a[8]), .B(b[8]), .C(n283), .D(n284), .Z(n282) );
  GTECH_ADD_AB U143 ( .A(b[9]), .B(a[9]), .S(n281) );
  GTECH_NAND2 U144 ( .A(n285), .B(n286), .Z(n280) );
  GTECH_ADD_AB U145 ( .A(n287), .B(n284), .S(sum[8]) );
  GTECH_MUX2 U146 ( .A(n288), .B(n289), .S(n290), .Z(sum[7]) );
  GTECH_NOT U147 ( .A(n291), .Z(n290) );
  GTECH_XNOR2 U148 ( .A(n292), .B(n293), .Z(n289) );
  GTECH_AOI21 U149 ( .A(n294), .B(n295), .C(n296), .Z(n292) );
  GTECH_ADD_AB U150 ( .A(n297), .B(n293), .S(n288) );
  GTECH_ADD_AB U151 ( .A(b[7]), .B(a[7]), .S(n293) );
  GTECH_MUX2 U152 ( .A(n298), .B(n299), .S(n300), .Z(sum[6]) );
  GTECH_AOI21 U153 ( .A(n291), .B(n301), .C(n295), .Z(n300) );
  GTECH_AND2 U154 ( .A(n302), .B(n303), .Z(n295) );
  GTECH_OAI21 U155 ( .A(n304), .B(n305), .C(n306), .Z(n302) );
  GTECH_ADD_AB U156 ( .A(b[6]), .B(a[6]), .S(n299) );
  GTECH_NAND2 U157 ( .A(n294), .B(n307), .Z(n298) );
  GTECH_XNOR2 U158 ( .A(n308), .B(n309), .Z(sum[5]) );
  GTECH_NAND2 U159 ( .A(n303), .B(n306), .Z(n309) );
  GTECH_ADD_ABC U160 ( .A(a[4]), .B(n291), .C(b[4]), .COUT(n308) );
  GTECH_XNOR2 U161 ( .A(n291), .B(n310), .Z(sum[4]) );
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
  GTECH_AND2 U176 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_MUX2 U177 ( .A(n328), .B(n329), .S(n330), .Z(sum[15]) );
  GTECH_XNOR2 U178 ( .A(n331), .B(n332), .Z(n329) );
  GTECH_OA21 U179 ( .A(n333), .B(n334), .C(n335), .Z(n331) );
  GTECH_ADD_AB U180 ( .A(n336), .B(n332), .S(n328) );
  GTECH_ADD_AB U181 ( .A(b[15]), .B(a[15]), .S(n332) );
  GTECH_MUX2 U182 ( .A(n337), .B(n338), .S(n339), .Z(sum[14]) );
  GTECH_OA21 U183 ( .A(n340), .B(n330), .C(n334), .Z(n339) );
  GTECH_AOI21 U184 ( .A(n341), .B(n342), .C(n343), .Z(n334) );
  GTECH_ADD_AB U185 ( .A(b[14]), .B(a[14]), .S(n338) );
  GTECH_NOT U186 ( .A(n344), .Z(n337) );
  GTECH_AND_NOT U187 ( .A(n335), .B(n333), .Z(n344) );
  GTECH_MUX2 U188 ( .A(n345), .B(n346), .S(n347), .Z(sum[13]) );
  GTECH_AOI21 U189 ( .A(n348), .B(n349), .C(n342), .Z(n347) );
  GTECH_NOT U190 ( .A(n330), .Z(n349) );
  GTECH_ADD_AB U191 ( .A(b[13]), .B(a[13]), .S(n346) );
  GTECH_NAND2 U192 ( .A(n341), .B(n350), .Z(n345) );
  GTECH_OAI21 U193 ( .A(n351), .B(n330), .C(n352), .Z(sum[12]) );
  GTECH_MUX2 U194 ( .A(n353), .B(n354), .S(n284), .Z(sum[11]) );
  GTECH_XNOR2 U195 ( .A(n355), .B(n356), .Z(n354) );
  GTECH_AND2 U196 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_OAI21 U197 ( .A(b[10]), .B(a[10]), .C(n359), .Z(n357) );
  GTECH_ADD_AB U198 ( .A(n360), .B(n356), .S(n353) );
  GTECH_ADD_AB U199 ( .A(b[11]), .B(a[11]), .S(n356) );
  GTECH_OAI21 U200 ( .A(n361), .B(n358), .C(n362), .Z(sum[10]) );
  GTECH_MUX2 U201 ( .A(n363), .B(n364), .S(b[10]), .Z(n362) );
  GTECH_NOT U202 ( .A(n365), .Z(n364) );
  GTECH_AND_NOT U203 ( .A(n361), .B(a[10]), .Z(n365) );
  GTECH_ADD_AB U204 ( .A(a[10]), .B(n361), .S(n363) );
  GTECH_AOI21 U205 ( .A(n366), .B(n367), .C(n359), .Z(n361) );
  GTECH_NAND2 U206 ( .A(n368), .B(n285), .Z(n359) );
  GTECH_NAND3 U207 ( .A(a[8]), .B(n286), .C(b[8]), .Z(n368) );
  GTECH_NOT U208 ( .A(n369), .Z(n286) );
  GTECH_NOT U209 ( .A(n284), .Z(n367) );
  GTECH_ADD_AB U210 ( .A(cin), .B(n370), .S(sum[0]) );
  GTECH_OAI21 U211 ( .A(n371), .B(n330), .C(n352), .Z(cout) );
  GTECH_NAND2 U212 ( .A(n330), .B(n351), .Z(n352) );
  GTECH_AND_NOT U213 ( .A(n348), .B(n342), .Z(n351) );
  GTECH_AND2 U214 ( .A(b[12]), .B(a[12]), .Z(n342) );
  GTECH_MUX2 U215 ( .A(n372), .B(n287), .S(n284), .Z(n330) );
  GTECH_MUX2 U216 ( .A(n310), .B(n373), .S(n291), .Z(n284) );
  GTECH_MUX2 U217 ( .A(n370), .B(n374), .S(cin), .Z(n291) );
  GTECH_AO21 U218 ( .A(n313), .B(a[3]), .C(n375), .Z(n374) );
  GTECH_OA21 U219 ( .A(a[3]), .B(n313), .C(b[3]), .Z(n375) );
  GTECH_ADD_ABC U220 ( .A(n319), .B(a[2]), .C(b[2]), .COUT(n313) );
  GTECH_OA21 U221 ( .A(n321), .B(n327), .C(n323), .Z(n319) );
  GTECH_OR2 U222 ( .A(b[1]), .B(a[1]), .Z(n323) );
  GTECH_OR2 U223 ( .A(a[0]), .B(b[0]), .Z(n327) );
  GTECH_AND2 U224 ( .A(b[1]), .B(a[1]), .Z(n321) );
  GTECH_ADD_AB U225 ( .A(b[0]), .B(a[0]), .S(n370) );
  GTECH_AOI21 U226 ( .A(n297), .B(a[7]), .C(n376), .Z(n373) );
  GTECH_OA21 U227 ( .A(a[7]), .B(n297), .C(b[7]), .Z(n376) );
  GTECH_AO21 U228 ( .A(n294), .B(n301), .C(n296), .Z(n297) );
  GTECH_NOT U229 ( .A(n307), .Z(n296) );
  GTECH_NAND2 U230 ( .A(b[6]), .B(a[6]), .Z(n307) );
  GTECH_AND2 U231 ( .A(n377), .B(n303), .Z(n301) );
  GTECH_OR2 U232 ( .A(b[5]), .B(a[5]), .Z(n303) );
  GTECH_NAND3 U233 ( .A(n305), .B(n304), .C(n306), .Z(n377) );
  GTECH_NAND2 U234 ( .A(a[5]), .B(b[5]), .Z(n306) );
  GTECH_NOT U235 ( .A(b[4]), .Z(n304) );
  GTECH_NOT U236 ( .A(a[4]), .Z(n305) );
  GTECH_OR2 U237 ( .A(a[6]), .B(b[6]), .Z(n294) );
  GTECH_XNOR2 U238 ( .A(b[4]), .B(a[4]), .Z(n310) );
  GTECH_AO21 U239 ( .A(a[8]), .B(b[8]), .C(n283), .Z(n287) );
  GTECH_AOI21 U240 ( .A(n360), .B(a[11]), .C(n378), .Z(n372) );
  GTECH_OA21 U241 ( .A(a[11]), .B(n360), .C(b[11]), .Z(n378) );
  GTECH_NAND2 U242 ( .A(n379), .B(n358), .Z(n360) );
  GTECH_NAND2 U243 ( .A(b[10]), .B(a[10]), .Z(n358) );
  GTECH_OAI21 U244 ( .A(a[10]), .B(b[10]), .C(n366), .Z(n379) );
  GTECH_OAI21 U245 ( .A(n283), .B(n369), .C(n285), .Z(n366) );
  GTECH_NAND2 U246 ( .A(b[9]), .B(a[9]), .Z(n285) );
  GTECH_NOR2 U247 ( .A(a[9]), .B(b[9]), .Z(n369) );
  GTECH_NOR2 U248 ( .A(b[8]), .B(a[8]), .Z(n283) );
  GTECH_AOI21 U249 ( .A(n336), .B(a[15]), .C(n380), .Z(n371) );
  GTECH_OA21 U250 ( .A(a[15]), .B(n336), .C(b[15]), .Z(n380) );
  GTECH_OAI21 U251 ( .A(n333), .B(n340), .C(n335), .Z(n336) );
  GTECH_NAND2 U252 ( .A(b[14]), .B(a[14]), .Z(n335) );
  GTECH_AOI21 U253 ( .A(n348), .B(n341), .C(n343), .Z(n340) );
  GTECH_NOT U254 ( .A(n350), .Z(n343) );
  GTECH_NAND2 U255 ( .A(b[13]), .B(a[13]), .Z(n350) );
  GTECH_OR2 U256 ( .A(a[13]), .B(b[13]), .Z(n341) );
  GTECH_OR2 U257 ( .A(b[12]), .B(a[12]), .Z(n348) );
  GTECH_NOR2 U258 ( .A(a[14]), .B(b[14]), .Z(n333) );
endmodule

