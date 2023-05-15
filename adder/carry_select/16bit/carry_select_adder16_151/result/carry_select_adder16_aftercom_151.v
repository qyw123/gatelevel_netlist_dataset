
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
         n372, n373, n374, n375, n376;

  GTECH_MUX2 U134 ( .A(n273), .B(n274), .S(n275), .Z(sum[9]) );
  GTECH_XNOR2 U135 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_XNOR2 U136 ( .A(n276), .B(n278), .Z(n273) );
  GTECH_OR_NOT U137 ( .A(n279), .B(n280), .Z(n276) );
  GTECH_OAI21 U138 ( .A(n281), .B(n275), .C(n282), .Z(sum[8]) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n285), .Z(sum[7]) );
  GTECH_XOR2 U140 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XOR2 U141 ( .A(n288), .B(n286), .Z(n283) );
  GTECH_XOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_OA21 U143 ( .A(a[6]), .B(n289), .C(n290), .Z(n288) );
  GTECH_AO21 U144 ( .A(n289), .B(a[6]), .C(b[6]), .Z(n290) );
  GTECH_MUX2 U145 ( .A(n291), .B(n292), .S(n285), .Z(sum[6]) );
  GTECH_XOR2 U146 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_XNOR2 U147 ( .A(n293), .B(n289), .Z(n291) );
  GTECH_AO21 U148 ( .A(n295), .B(n296), .C(n297), .Z(n289) );
  GTECH_XOR2 U149 ( .A(a[6]), .B(n298), .Z(n293) );
  GTECH_MUX2 U150 ( .A(n299), .B(n300), .S(n301), .Z(sum[5]) );
  GTECH_OR_NOT U151 ( .A(n297), .B(n295), .Z(n301) );
  GTECH_AO21 U152 ( .A(n302), .B(n285), .C(n296), .Z(n300) );
  GTECH_OAI21 U153 ( .A(n296), .B(n285), .C(n302), .Z(n299) );
  GTECH_XOR2 U154 ( .A(n303), .B(n304), .Z(sum[4]) );
  GTECH_MUX2 U155 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U156 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XOR2 U157 ( .A(n307), .B(n309), .Z(n305) );
  GTECH_AOI21 U158 ( .A(n310), .B(n311), .C(n312), .Z(n309) );
  GTECH_NOT U159 ( .A(n313), .Z(n310) );
  GTECH_XNOR2 U160 ( .A(a[3]), .B(b[3]), .Z(n307) );
  GTECH_MUX2 U161 ( .A(n314), .B(n315), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U162 ( .A(n316), .B(n317), .Z(n315) );
  GTECH_XOR2 U163 ( .A(n311), .B(n316), .Z(n314) );
  GTECH_NOR2 U164 ( .A(n313), .B(n312), .Z(n316) );
  GTECH_AO21 U165 ( .A(n318), .B(n319), .C(n320), .Z(n311) );
  GTECH_MUX2 U166 ( .A(n321), .B(n322), .S(n323), .Z(sum[1]) );
  GTECH_OR_NOT U167 ( .A(n320), .B(n318), .Z(n323) );
  GTECH_AO21 U168 ( .A(n324), .B(cin), .C(n319), .Z(n322) );
  GTECH_OAI21 U169 ( .A(cin), .B(n319), .C(n324), .Z(n321) );
  GTECH_AND2 U170 ( .A(b[0]), .B(a[0]), .Z(n319) );
  GTECH_MUX2 U171 ( .A(n325), .B(n326), .S(n327), .Z(sum[15]) );
  GTECH_XOR2 U172 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_OA21 U173 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_XNOR2 U174 ( .A(n328), .B(n333), .Z(n325) );
  GTECH_XNOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n328) );
  GTECH_MUX2 U176 ( .A(n334), .B(n335), .S(n336), .Z(sum[14]) );
  GTECH_OA21 U177 ( .A(n337), .B(n327), .C(n330), .Z(n336) );
  GTECH_OA21 U178 ( .A(n338), .B(n339), .C(n340), .Z(n330) );
  GTECH_NOT U179 ( .A(n341), .Z(n340) );
  GTECH_XOR2 U180 ( .A(b[14]), .B(a[14]), .Z(n335) );
  GTECH_OR_NOT U181 ( .A(n331), .B(n332), .Z(n334) );
  GTECH_MUX2 U182 ( .A(n342), .B(n343), .S(n327), .Z(sum[13]) );
  GTECH_XNOR2 U183 ( .A(n339), .B(n344), .Z(n343) );
  GTECH_XOR2 U184 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_NOR2 U185 ( .A(n338), .B(n341), .Z(n344) );
  GTECH_NAND2 U186 ( .A(n346), .B(n347), .Z(sum[12]) );
  GTECH_OAI21 U187 ( .A(n348), .B(n349), .C(n350), .Z(n347) );
  GTECH_MUX2 U188 ( .A(n351), .B(n352), .S(n275), .Z(sum[11]) );
  GTECH_XOR2 U189 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_OA21 U190 ( .A(a[10]), .B(n355), .C(n356), .Z(n353) );
  GTECH_AO21 U191 ( .A(n355), .B(a[10]), .C(b[10]), .Z(n356) );
  GTECH_XOR2 U192 ( .A(n354), .B(n357), .Z(n351) );
  GTECH_XOR2 U193 ( .A(a[11]), .B(b[11]), .Z(n354) );
  GTECH_MUX2 U194 ( .A(n358), .B(n359), .S(n275), .Z(sum[10]) );
  GTECH_XNOR2 U195 ( .A(n360), .B(n355), .Z(n359) );
  GTECH_AO21 U196 ( .A(n280), .B(n277), .C(n279), .Z(n355) );
  GTECH_XNOR2 U197 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_XNOR2 U198 ( .A(a[10]), .B(b[10]), .Z(n360) );
  GTECH_XNOR2 U199 ( .A(cin), .B(n362), .Z(sum[0]) );
  GTECH_OAI21 U200 ( .A(n327), .B(n363), .C(n346), .Z(cout) );
  GTECH_NAND3 U201 ( .A(n345), .B(n339), .C(n327), .Z(n346) );
  GTECH_NOT U202 ( .A(n348), .Z(n339) );
  GTECH_AND2 U203 ( .A(b[12]), .B(a[12]), .Z(n348) );
  GTECH_AOI21 U204 ( .A(n333), .B(a[15]), .C(n364), .Z(n363) );
  GTECH_OA21 U205 ( .A(a[15]), .B(n333), .C(b[15]), .Z(n364) );
  GTECH_OAI21 U206 ( .A(n331), .B(n337), .C(n332), .Z(n333) );
  GTECH_NAND2 U207 ( .A(b[14]), .B(a[14]), .Z(n332) );
  GTECH_AOI21 U208 ( .A(n365), .B(n345), .C(n341), .Z(n337) );
  GTECH_AND2 U209 ( .A(a[13]), .B(b[13]), .Z(n341) );
  GTECH_NOT U210 ( .A(n349), .Z(n345) );
  GTECH_NOR2 U211 ( .A(b[12]), .B(a[12]), .Z(n349) );
  GTECH_NOT U212 ( .A(n338), .Z(n365) );
  GTECH_NOR2 U213 ( .A(b[13]), .B(a[13]), .Z(n338) );
  GTECH_NOR2 U214 ( .A(b[14]), .B(a[14]), .Z(n331) );
  GTECH_NOT U215 ( .A(n350), .Z(n327) );
  GTECH_OAI21 U216 ( .A(n275), .B(n366), .C(n282), .Z(n350) );
  GTECH_NAND2 U217 ( .A(n281), .B(n275), .Z(n282) );
  GTECH_AND2 U218 ( .A(n367), .B(n278), .Z(n281) );
  GTECH_NOT U219 ( .A(n277), .Z(n367) );
  GTECH_AND2 U220 ( .A(b[8]), .B(a[8]), .Z(n277) );
  GTECH_OAI21 U221 ( .A(a[11]), .B(n357), .C(n368), .Z(n366) );
  GTECH_AO21 U222 ( .A(n357), .B(a[11]), .C(b[11]), .Z(n368) );
  GTECH_AO21 U223 ( .A(n361), .B(a[10]), .C(n369), .Z(n357) );
  GTECH_OA21 U224 ( .A(a[10]), .B(n361), .C(b[10]), .Z(n369) );
  GTECH_AO21 U225 ( .A(n278), .B(n280), .C(n279), .Z(n361) );
  GTECH_AND2 U226 ( .A(b[9]), .B(a[9]), .Z(n279) );
  GTECH_OR2 U227 ( .A(b[9]), .B(a[9]), .Z(n280) );
  GTECH_OR2 U228 ( .A(a[8]), .B(b[8]), .Z(n278) );
  GTECH_MUX2 U229 ( .A(n303), .B(n370), .S(n285), .Z(n275) );
  GTECH_NOT U230 ( .A(n304), .Z(n285) );
  GTECH_MUX2 U231 ( .A(n362), .B(n371), .S(cin), .Z(n304) );
  GTECH_AOI21 U232 ( .A(n308), .B(a[3]), .C(n372), .Z(n371) );
  GTECH_OA21 U233 ( .A(a[3]), .B(n308), .C(b[3]), .Z(n372) );
  GTECH_OAI21 U234 ( .A(n317), .B(n313), .C(n373), .Z(n308) );
  GTECH_NOT U235 ( .A(n312), .Z(n373) );
  GTECH_AND2 U236 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_NOR2 U237 ( .A(b[2]), .B(a[2]), .Z(n313) );
  GTECH_AOI21 U238 ( .A(n324), .B(n318), .C(n320), .Z(n317) );
  GTECH_AND2 U239 ( .A(a[1]), .B(b[1]), .Z(n320) );
  GTECH_OR2 U240 ( .A(a[1]), .B(b[1]), .Z(n318) );
  GTECH_OR2 U241 ( .A(a[0]), .B(b[0]), .Z(n324) );
  GTECH_XNOR2 U242 ( .A(a[0]), .B(b[0]), .Z(n362) );
  GTECH_AOI21 U243 ( .A(n287), .B(a[7]), .C(n374), .Z(n370) );
  GTECH_OA21 U244 ( .A(a[7]), .B(n287), .C(b[7]), .Z(n374) );
  GTECH_OAI21 U245 ( .A(n294), .B(n375), .C(n376), .Z(n287) );
  GTECH_AO21 U246 ( .A(n375), .B(n294), .C(n298), .Z(n376) );
  GTECH_NOT U247 ( .A(b[6]), .Z(n298) );
  GTECH_NOT U248 ( .A(a[6]), .Z(n375) );
  GTECH_AOI21 U249 ( .A(n302), .B(n295), .C(n297), .Z(n294) );
  GTECH_AND2 U250 ( .A(b[5]), .B(a[5]), .Z(n297) );
  GTECH_OR2 U251 ( .A(b[5]), .B(a[5]), .Z(n295) );
  GTECH_OR_NOT U252 ( .A(n296), .B(n302), .Z(n303) );
  GTECH_OR2 U253 ( .A(b[4]), .B(a[4]), .Z(n302) );
  GTECH_AND2 U254 ( .A(b[4]), .B(a[4]), .Z(n296) );
endmodule

