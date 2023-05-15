
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
         n376, n377, n378;

  GTECH_MUX2 U138 ( .A(n277), .B(n278), .S(n279), .Z(sum[9]) );
  GTECH_XNOR2 U139 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_XNOR2 U140 ( .A(n282), .B(n281), .Z(n277) );
  GTECH_OR_NOT U141 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NAND2 U142 ( .A(n285), .B(n286), .Z(sum[8]) );
  GTECH_AO21 U143 ( .A(n282), .B(n287), .C(n279), .Z(n286) );
  GTECH_MUX2 U144 ( .A(n288), .B(n289), .S(n290), .Z(sum[7]) );
  GTECH_XNOR2 U145 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_OA21 U146 ( .A(a[6]), .B(n293), .C(n294), .Z(n291) );
  GTECH_AO21 U147 ( .A(n293), .B(a[6]), .C(b[6]), .Z(n294) );
  GTECH_XNOR2 U148 ( .A(n295), .B(n292), .Z(n288) );
  GTECH_XNOR2 U149 ( .A(b[7]), .B(a[7]), .Z(n292) );
  GTECH_XOR3 U150 ( .A(b[6]), .B(a[6]), .C(n296), .Z(sum[6]) );
  GTECH_AO21 U151 ( .A(n297), .B(n298), .C(n293), .Z(n296) );
  GTECH_NAND2 U152 ( .A(n299), .B(n300), .Z(n293) );
  GTECH_NAND3 U153 ( .A(b[4]), .B(n301), .C(a[4]), .Z(n300) );
  GTECH_XNOR2 U154 ( .A(n302), .B(n303), .Z(sum[5]) );
  GTECH_NAND2 U155 ( .A(n301), .B(n299), .Z(n303) );
  GTECH_ADD_ABC U156 ( .A(a[4]), .B(n304), .C(b[4]), .COUT(n302) );
  GTECH_MUX2 U157 ( .A(n305), .B(n306), .S(n307), .Z(n304) );
  GTECH_AO21 U158 ( .A(n308), .B(a[3]), .C(n309), .Z(n305) );
  GTECH_XNOR2 U159 ( .A(n298), .B(n310), .Z(sum[4]) );
  GTECH_NOT U160 ( .A(n290), .Z(n298) );
  GTECH_MUX2 U161 ( .A(n311), .B(n312), .S(n307), .Z(sum[3]) );
  GTECH_ADD_AB U162 ( .A(n313), .B(n314), .S(n312) );
  GTECH_OR_NOT U163 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_AO21 U164 ( .A(n317), .B(n318), .C(n319), .Z(n316) );
  GTECH_ADD_AB U165 ( .A(n308), .B(n314), .S(n311) );
  GTECH_ADD_AB U166 ( .A(b[3]), .B(a[3]), .S(n314) );
  GTECH_MUX2 U167 ( .A(n320), .B(n321), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U168 ( .A(n322), .B(n323), .S(n324), .Z(n321) );
  GTECH_MUX2 U169 ( .A(n322), .B(n323), .S(n319), .Z(n320) );
  GTECH_OA21 U170 ( .A(n325), .B(n326), .C(n327), .Z(n319) );
  GTECH_XNOR2 U171 ( .A(b[2]), .B(n318), .Z(n323) );
  GTECH_AO21 U172 ( .A(n317), .B(n318), .C(n315), .Z(n322) );
  GTECH_MUX2 U173 ( .A(n328), .B(n329), .S(n330), .Z(sum[1]) );
  GTECH_OR_NOT U174 ( .A(n325), .B(n327), .Z(n330) );
  GTECH_OAI21 U175 ( .A(n331), .B(n307), .C(n326), .Z(n329) );
  GTECH_AO21 U176 ( .A(n307), .B(n326), .C(n331), .Z(n328) );
  GTECH_NAND2 U177 ( .A(a[0]), .B(b[0]), .Z(n326) );
  GTECH_MUX2 U178 ( .A(n332), .B(n333), .S(n334), .Z(sum[15]) );
  GTECH_ADD_AB U179 ( .A(n335), .B(n336), .S(n333) );
  GTECH_XNOR2 U180 ( .A(n337), .B(n336), .Z(n332) );
  GTECH_ADD_AB U181 ( .A(b[15]), .B(a[15]), .S(n336) );
  GTECH_AOI21 U182 ( .A(n338), .B(n339), .C(n340), .Z(n337) );
  GTECH_MUX2 U183 ( .A(n341), .B(n342), .S(n343), .Z(sum[14]) );
  GTECH_AOI21 U184 ( .A(n344), .B(n334), .C(n338), .Z(n343) );
  GTECH_AO21 U185 ( .A(n345), .B(n346), .C(n347), .Z(n338) );
  GTECH_ADD_AB U186 ( .A(b[14]), .B(a[14]), .S(n342) );
  GTECH_OR_NOT U187 ( .A(n340), .B(n339), .Z(n341) );
  GTECH_MUX2 U188 ( .A(n348), .B(n349), .S(n350), .Z(sum[13]) );
  GTECH_AOI21 U189 ( .A(n351), .B(n352), .C(n353), .Z(n350) );
  GTECH_OR_NOT U190 ( .A(n347), .B(n345), .Z(n349) );
  GTECH_ADD_AB U191 ( .A(b[13]), .B(a[13]), .S(n348) );
  GTECH_NAND2 U192 ( .A(n354), .B(n355), .Z(sum[12]) );
  GTECH_AO21 U193 ( .A(n351), .B(n356), .C(n352), .Z(n355) );
  GTECH_MUX2 U194 ( .A(n357), .B(n358), .S(n279), .Z(sum[11]) );
  GTECH_XNOR2 U195 ( .A(n359), .B(n360), .Z(n358) );
  GTECH_OA21 U196 ( .A(a[10]), .B(n361), .C(n362), .Z(n359) );
  GTECH_AO21 U197 ( .A(n361), .B(a[10]), .C(b[10]), .Z(n362) );
  GTECH_XNOR2 U198 ( .A(n363), .B(n360), .Z(n357) );
  GTECH_XNOR2 U199 ( .A(b[11]), .B(a[11]), .Z(n360) );
  GTECH_XOR3 U200 ( .A(b[10]), .B(a[10]), .C(n364), .Z(sum[10]) );
  GTECH_AO21 U201 ( .A(n365), .B(n366), .C(n361), .Z(n364) );
  GTECH_AO21 U202 ( .A(n284), .B(n280), .C(n283), .Z(n361) );
  GTECH_NOT U203 ( .A(n287), .Z(n280) );
  GTECH_NOT U204 ( .A(n279), .Z(n366) );
  GTECH_XNOR2 U205 ( .A(n307), .B(n306), .Z(sum[0]) );
  GTECH_OAI21 U206 ( .A(n352), .B(n367), .C(n354), .Z(cout) );
  GTECH_OR3 U207 ( .A(n346), .B(n353), .C(n334), .Z(n354) );
  GTECH_NOT U208 ( .A(n352), .Z(n334) );
  GTECH_NOT U209 ( .A(n356), .Z(n353) );
  GTECH_NOT U210 ( .A(n351), .Z(n346) );
  GTECH_NAND2 U211 ( .A(b[12]), .B(a[12]), .Z(n351) );
  GTECH_AOI21 U212 ( .A(n335), .B(a[15]), .C(n368), .Z(n367) );
  GTECH_OA21 U213 ( .A(a[15]), .B(n335), .C(b[15]), .Z(n368) );
  GTECH_AO21 U214 ( .A(n344), .B(n339), .C(n340), .Z(n335) );
  GTECH_AND2 U215 ( .A(a[14]), .B(b[14]), .Z(n340) );
  GTECH_OR2 U216 ( .A(b[14]), .B(a[14]), .Z(n339) );
  GTECH_AO21 U217 ( .A(n345), .B(n356), .C(n347), .Z(n344) );
  GTECH_AND2 U218 ( .A(a[13]), .B(b[13]), .Z(n347) );
  GTECH_OR2 U219 ( .A(a[12]), .B(b[12]), .Z(n356) );
  GTECH_OR2 U220 ( .A(a[13]), .B(b[13]), .Z(n345) );
  GTECH_OA21 U221 ( .A(n369), .B(n279), .C(n285), .Z(n352) );
  GTECH_NAND3 U222 ( .A(n282), .B(n287), .C(n279), .Z(n285) );
  GTECH_NAND2 U223 ( .A(b[8]), .B(a[8]), .Z(n287) );
  GTECH_MUX2 U224 ( .A(n370), .B(n310), .S(n290), .Z(n279) );
  GTECH_MUX2 U225 ( .A(n371), .B(n372), .S(n307), .Z(n290) );
  GTECH_NOT U226 ( .A(cin), .Z(n307) );
  GTECH_NOT U227 ( .A(n306), .Z(n372) );
  GTECH_ADD_AB U228 ( .A(b[0]), .B(a[0]), .S(n306) );
  GTECH_AOI21 U229 ( .A(n308), .B(a[3]), .C(n309), .Z(n371) );
  GTECH_OA21 U230 ( .A(a[3]), .B(n308), .C(b[3]), .Z(n309) );
  GTECH_OR_NOT U231 ( .A(n315), .B(n373), .Z(n308) );
  GTECH_AO21 U232 ( .A(n318), .B(n317), .C(n324), .Z(n373) );
  GTECH_OA21 U233 ( .A(n325), .B(n331), .C(n327), .Z(n324) );
  GTECH_NAND2 U234 ( .A(b[1]), .B(a[1]), .Z(n327) );
  GTECH_NOR2 U235 ( .A(a[0]), .B(b[0]), .Z(n331) );
  GTECH_NOR2 U236 ( .A(a[1]), .B(b[1]), .Z(n325) );
  GTECH_NOR2 U237 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U238 ( .A(a[2]), .Z(n318) );
  GTECH_NOT U239 ( .A(b[2]), .Z(n317) );
  GTECH_XNOR2 U240 ( .A(b[4]), .B(a[4]), .Z(n310) );
  GTECH_AOI21 U241 ( .A(n295), .B(a[7]), .C(n374), .Z(n370) );
  GTECH_OA21 U242 ( .A(a[7]), .B(n295), .C(b[7]), .Z(n374) );
  GTECH_AO21 U243 ( .A(n297), .B(a[6]), .C(n375), .Z(n295) );
  GTECH_OA21 U244 ( .A(a[6]), .B(n297), .C(b[6]), .Z(n375) );
  GTECH_NAND2 U245 ( .A(n299), .B(n376), .Z(n297) );
  GTECH_OAI21 U246 ( .A(a[4]), .B(b[4]), .C(n301), .Z(n376) );
  GTECH_OR2 U247 ( .A(b[5]), .B(a[5]), .Z(n301) );
  GTECH_NAND2 U248 ( .A(b[5]), .B(a[5]), .Z(n299) );
  GTECH_AOI21 U249 ( .A(n363), .B(a[11]), .C(n377), .Z(n369) );
  GTECH_OA21 U250 ( .A(a[11]), .B(n363), .C(b[11]), .Z(n377) );
  GTECH_AO21 U251 ( .A(n365), .B(a[10]), .C(n378), .Z(n363) );
  GTECH_OA21 U252 ( .A(a[10]), .B(n365), .C(b[10]), .Z(n378) );
  GTECH_AO21 U253 ( .A(n282), .B(n284), .C(n283), .Z(n365) );
  GTECH_AND2 U254 ( .A(b[9]), .B(a[9]), .Z(n283) );
  GTECH_OR2 U255 ( .A(b[9]), .B(a[9]), .Z(n284) );
  GTECH_OR2 U256 ( .A(b[8]), .B(a[8]), .Z(n282) );
endmodule

