
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
         n372, n373;

  GTECH_MUX2 U134 ( .A(n273), .B(n274), .S(n275), .Z(sum[9]) );
  GTECH_XNOR2 U135 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_XOR2 U136 ( .A(n276), .B(n278), .Z(n273) );
  GTECH_NOR2 U137 ( .A(n279), .B(n280), .Z(n276) );
  GTECH_NAND2 U138 ( .A(n281), .B(n282), .Z(sum[8]) );
  GTECH_AO21 U139 ( .A(n277), .B(n278), .C(n275), .Z(n281) );
  GTECH_MUX2 U140 ( .A(n283), .B(n284), .S(n285), .Z(sum[7]) );
  GTECH_XOR2 U141 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_OA21 U142 ( .A(n288), .B(n289), .C(n290), .Z(n287) );
  GTECH_XNOR2 U143 ( .A(n286), .B(n291), .Z(n283) );
  GTECH_XNOR2 U144 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_MUX2 U145 ( .A(n292), .B(n293), .S(n285), .Z(sum[6]) );
  GTECH_XNOR2 U146 ( .A(n289), .B(n294), .Z(n293) );
  GTECH_OA21 U147 ( .A(n295), .B(n296), .C(n297), .Z(n289) );
  GTECH_XNOR2 U148 ( .A(n294), .B(n298), .Z(n292) );
  GTECH_AND_NOT U149 ( .A(n290), .B(n288), .Z(n294) );
  GTECH_MUX2 U150 ( .A(n299), .B(n300), .S(n301), .Z(sum[5]) );
  GTECH_AND_NOT U151 ( .A(n297), .B(n295), .Z(n301) );
  GTECH_AO21 U152 ( .A(n296), .B(n285), .C(n302), .Z(n300) );
  GTECH_OAI21 U153 ( .A(n302), .B(n285), .C(n296), .Z(n299) );
  GTECH_XOR2 U154 ( .A(n303), .B(n285), .Z(sum[4]) );
  GTECH_MUX2 U155 ( .A(n304), .B(n305), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U156 ( .A(n306), .B(n307), .Z(n305) );
  GTECH_XOR2 U157 ( .A(n306), .B(n308), .Z(n304) );
  GTECH_OA21 U158 ( .A(n309), .B(n310), .C(n311), .Z(n308) );
  GTECH_XNOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n306) );
  GTECH_MUX2 U160 ( .A(n312), .B(n313), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U161 ( .A(n314), .B(n315), .Z(n313) );
  GTECH_XNOR2 U162 ( .A(n310), .B(n314), .Z(n312) );
  GTECH_AND_NOT U163 ( .A(n311), .B(n309), .Z(n314) );
  GTECH_OA21 U164 ( .A(n316), .B(n317), .C(n318), .Z(n310) );
  GTECH_MUX2 U165 ( .A(n319), .B(n320), .S(n321), .Z(sum[1]) );
  GTECH_AND_NOT U166 ( .A(n318), .B(n316), .Z(n321) );
  GTECH_AO21 U167 ( .A(n322), .B(n317), .C(n323), .Z(n320) );
  GTECH_OAI21 U168 ( .A(n323), .B(n322), .C(n317), .Z(n319) );
  GTECH_OR_NOT U169 ( .A(n324), .B(a[0]), .Z(n317) );
  GTECH_MUX2 U170 ( .A(n325), .B(n326), .S(n327), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_XOR2 U172 ( .A(n330), .B(n329), .Z(n325) );
  GTECH_XOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n329) );
  GTECH_OA21 U174 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_MUX2 U175 ( .A(n334), .B(n335), .S(n327), .Z(sum[14]) );
  GTECH_XOR2 U176 ( .A(n336), .B(n337), .Z(n335) );
  GTECH_XOR2 U177 ( .A(n336), .B(n332), .Z(n334) );
  GTECH_AOI21 U178 ( .A(n338), .B(n339), .C(n340), .Z(n332) );
  GTECH_AOI21 U179 ( .A(n341), .B(n342), .C(n331), .Z(n336) );
  GTECH_MUX2 U180 ( .A(n343), .B(n344), .S(n327), .Z(sum[13]) );
  GTECH_XOR2 U181 ( .A(n345), .B(n346), .Z(n344) );
  GTECH_XOR2 U182 ( .A(n345), .B(n339), .Z(n343) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n338), .Z(n345) );
  GTECH_OR_NOT U184 ( .A(n347), .B(n348), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n349), .B(n346), .C(n327), .Z(n348) );
  GTECH_MUX2 U186 ( .A(n350), .B(n351), .S(n275), .Z(sum[11]) );
  GTECH_XOR2 U187 ( .A(n352), .B(n353), .Z(n351) );
  GTECH_OA21 U188 ( .A(n354), .B(n355), .C(n356), .Z(n353) );
  GTECH_NOR2 U189 ( .A(b[10]), .B(a[10]), .Z(n354) );
  GTECH_XNOR2 U190 ( .A(n352), .B(n357), .Z(n350) );
  GTECH_XNOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n352) );
  GTECH_MUX2 U192 ( .A(n358), .B(n359), .S(n275), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n360), .B(n355), .Z(n359) );
  GTECH_AOI21 U194 ( .A(n361), .B(n362), .C(n280), .Z(n355) );
  GTECH_XNOR2 U195 ( .A(n360), .B(n363), .Z(n358) );
  GTECH_OAI21 U196 ( .A(b[10]), .B(a[10]), .C(n356), .Z(n360) );
  GTECH_XOR2 U197 ( .A(n322), .B(n364), .Z(sum[0]) );
  GTECH_NOT U198 ( .A(cin), .Z(n322) );
  GTECH_AO21 U199 ( .A(n365), .B(n327), .C(n347), .Z(cout) );
  GTECH_NOR3 U200 ( .A(n349), .B(n346), .C(n327), .Z(n347) );
  GTECH_NOT U201 ( .A(n339), .Z(n349) );
  GTECH_NAND2 U202 ( .A(a[12]), .B(b[12]), .Z(n339) );
  GTECH_OAI21 U203 ( .A(n366), .B(n275), .C(n282), .Z(n327) );
  GTECH_NAND3 U204 ( .A(n277), .B(n278), .C(n275), .Z(n282) );
  GTECH_NOT U205 ( .A(n362), .Z(n277) );
  GTECH_ADD_AB U206 ( .A(b[8]), .B(a[8]), .COUT(n362) );
  GTECH_MUX2 U207 ( .A(n367), .B(n303), .S(n285), .Z(n275) );
  GTECH_MUX2 U208 ( .A(n364), .B(n368), .S(cin), .Z(n285) );
  GTECH_AOI21 U209 ( .A(n307), .B(a[3]), .C(n369), .Z(n368) );
  GTECH_OA21 U210 ( .A(a[3]), .B(n307), .C(b[3]), .Z(n369) );
  GTECH_OAI21 U211 ( .A(n315), .B(n309), .C(n311), .Z(n307) );
  GTECH_NAND2 U212 ( .A(a[2]), .B(b[2]), .Z(n311) );
  GTECH_NOR2 U213 ( .A(a[2]), .B(b[2]), .Z(n309) );
  GTECH_OA21 U214 ( .A(n323), .B(n316), .C(n318), .Z(n315) );
  GTECH_NAND2 U215 ( .A(b[1]), .B(a[1]), .Z(n318) );
  GTECH_NOR2 U216 ( .A(b[1]), .B(a[1]), .Z(n316) );
  GTECH_AND_NOT U217 ( .A(n324), .B(a[0]), .Z(n323) );
  GTECH_NOT U218 ( .A(b[0]), .Z(n324) );
  GTECH_XNOR2 U219 ( .A(a[0]), .B(b[0]), .Z(n364) );
  GTECH_OR_NOT U220 ( .A(n302), .B(n296), .Z(n303) );
  GTECH_NAND2 U221 ( .A(b[4]), .B(a[4]), .Z(n296) );
  GTECH_AOI21 U222 ( .A(n291), .B(a[7]), .C(n370), .Z(n367) );
  GTECH_OA21 U223 ( .A(a[7]), .B(n291), .C(b[7]), .Z(n370) );
  GTECH_OAI21 U224 ( .A(n298), .B(n288), .C(n290), .Z(n291) );
  GTECH_NAND2 U225 ( .A(a[6]), .B(b[6]), .Z(n290) );
  GTECH_NOR2 U226 ( .A(a[6]), .B(b[6]), .Z(n288) );
  GTECH_OA21 U227 ( .A(n302), .B(n295), .C(n297), .Z(n298) );
  GTECH_NAND2 U228 ( .A(a[5]), .B(b[5]), .Z(n297) );
  GTECH_NOR2 U229 ( .A(a[5]), .B(b[5]), .Z(n295) );
  GTECH_NOR2 U230 ( .A(b[4]), .B(a[4]), .Z(n302) );
  GTECH_AOI21 U231 ( .A(n357), .B(a[11]), .C(n371), .Z(n366) );
  GTECH_OA21 U232 ( .A(a[11]), .B(n357), .C(b[11]), .Z(n371) );
  GTECH_NAND2 U233 ( .A(n372), .B(n356), .Z(n357) );
  GTECH_NAND2 U234 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_OAI21 U235 ( .A(a[10]), .B(b[10]), .C(n363), .Z(n372) );
  GTECH_AO21 U236 ( .A(n278), .B(n361), .C(n280), .Z(n363) );
  GTECH_ADD_AB U237 ( .A(a[9]), .B(b[9]), .COUT(n280) );
  GTECH_NOT U238 ( .A(n279), .Z(n361) );
  GTECH_NOR2 U239 ( .A(a[9]), .B(b[9]), .Z(n279) );
  GTECH_OR_NOT U240 ( .A(b[8]), .B(n373), .Z(n278) );
  GTECH_NOT U241 ( .A(a[8]), .Z(n373) );
  GTECH_ADD_ABC U242 ( .A(a[15]), .B(n328), .C(b[15]), .COUT(n365) );
  GTECH_OA21 U243 ( .A(n331), .B(n337), .C(n333), .Z(n328) );
  GTECH_NAND2 U244 ( .A(n342), .B(n341), .Z(n333) );
  GTECH_NOT U245 ( .A(a[14]), .Z(n341) );
  GTECH_NOT U246 ( .A(b[14]), .Z(n342) );
  GTECH_AOI21 U247 ( .A(n338), .B(n346), .C(n340), .Z(n337) );
  GTECH_NOR2 U248 ( .A(b[13]), .B(a[13]), .Z(n340) );
  GTECH_NOR2 U249 ( .A(b[12]), .B(a[12]), .Z(n346) );
  GTECH_NAND2 U250 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_ADD_AB U251 ( .A(b[14]), .B(a[14]), .COUT(n331) );
endmodule

