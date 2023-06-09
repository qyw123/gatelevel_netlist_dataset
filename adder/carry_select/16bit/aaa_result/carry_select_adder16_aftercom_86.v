
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379;

  GTECH_MUX2 U124 ( .A(n263), .B(n264), .S(n265), .Z(sum[9]) );
  GTECH_XNOR2 U125 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_XNOR2 U126 ( .A(n266), .B(n268), .Z(n263) );
  GTECH_AO21 U127 ( .A(a[9]), .B(b[9]), .C(n269), .Z(n266) );
  GTECH_NOT U128 ( .A(n270), .Z(n269) );
  GTECH_ADD_AB U129 ( .A(n271), .B(n272), .S(sum[8]) );
  GTECH_MUX2 U130 ( .A(n273), .B(n274), .S(n275), .Z(sum[7]) );
  GTECH_ADD_AB U131 ( .A(n276), .B(n277), .S(n274) );
  GTECH_ADD_AB U132 ( .A(n278), .B(n277), .S(n273) );
  GTECH_XNOR2 U133 ( .A(b[7]), .B(a[7]), .Z(n277) );
  GTECH_AND_NOT U134 ( .A(n279), .B(n280), .Z(n278) );
  GTECH_OAI21 U135 ( .A(b[6]), .B(a[6]), .C(n281), .Z(n279) );
  GTECH_AO21 U136 ( .A(n282), .B(n280), .C(n283), .Z(sum[6]) );
  GTECH_NOT U137 ( .A(n284), .Z(n283) );
  GTECH_MUX2 U138 ( .A(n285), .B(n286), .S(b[6]), .Z(n284) );
  GTECH_OR2 U139 ( .A(n282), .B(a[6]), .Z(n286) );
  GTECH_ADD_AB U140 ( .A(n287), .B(n282), .S(n285) );
  GTECH_NOT U141 ( .A(a[6]), .Z(n287) );
  GTECH_AO21 U142 ( .A(n288), .B(n275), .C(n281), .Z(n282) );
  GTECH_AO21 U143 ( .A(n289), .B(n290), .C(n291), .Z(n281) );
  GTECH_MUX2 U144 ( .A(n292), .B(n293), .S(n294), .Z(sum[5]) );
  GTECH_AND_NOT U145 ( .A(n289), .B(n291), .Z(n294) );
  GTECH_OAI21 U146 ( .A(a[4]), .B(n275), .C(n295), .Z(n293) );
  GTECH_AO21 U147 ( .A(n275), .B(a[4]), .C(b[4]), .Z(n295) );
  GTECH_AO21 U148 ( .A(n296), .B(n275), .C(n290), .Z(n292) );
  GTECH_XNOR2 U149 ( .A(n297), .B(n275), .Z(sum[4]) );
  GTECH_MUX2 U150 ( .A(n298), .B(n299), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U151 ( .A(n300), .B(n301), .S(n299) );
  GTECH_XNOR2 U152 ( .A(n302), .B(n301), .Z(n298) );
  GTECH_ADD_AB U153 ( .A(b[3]), .B(a[3]), .S(n301) );
  GTECH_AND_NOT U154 ( .A(n303), .B(n304), .Z(n302) );
  GTECH_OAI21 U155 ( .A(b[2]), .B(a[2]), .C(n305), .Z(n303) );
  GTECH_MUX2 U156 ( .A(n306), .B(n307), .S(cin), .Z(sum[2]) );
  GTECH_MUX2 U157 ( .A(n308), .B(n309), .S(n310), .Z(n307) );
  GTECH_MUX2 U158 ( .A(n309), .B(n308), .S(n305), .Z(n306) );
  GTECH_AO21 U159 ( .A(n311), .B(n312), .C(n313), .Z(n305) );
  GTECH_AO21 U160 ( .A(n314), .B(n315), .C(n304), .Z(n308) );
  GTECH_XNOR2 U161 ( .A(n314), .B(a[2]), .Z(n309) );
  GTECH_MUX2 U162 ( .A(n316), .B(n317), .S(n318), .Z(sum[1]) );
  GTECH_AND_NOT U163 ( .A(n311), .B(n313), .Z(n318) );
  GTECH_OAI21 U164 ( .A(cin), .B(n312), .C(n319), .Z(n317) );
  GTECH_AO21 U165 ( .A(n319), .B(cin), .C(n312), .Z(n316) );
  GTECH_MUX2 U166 ( .A(n320), .B(n321), .S(n322), .Z(sum[15]) );
  GTECH_ADD_AB U167 ( .A(n323), .B(n324), .S(n321) );
  GTECH_ADD_AB U168 ( .A(n325), .B(n324), .S(n320) );
  GTECH_ADD_AB U169 ( .A(b[15]), .B(n326), .S(n324) );
  GTECH_AND2 U170 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_OAI21 U171 ( .A(b[14]), .B(a[14]), .C(n329), .Z(n328) );
  GTECH_NOT U172 ( .A(n330), .Z(n329) );
  GTECH_OAI21 U173 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_OAI21 U174 ( .A(n334), .B(n327), .C(n335), .Z(sum[14]) );
  GTECH_MUX2 U175 ( .A(n336), .B(n337), .S(b[14]), .Z(n335) );
  GTECH_NAND2 U176 ( .A(n334), .B(n338), .Z(n337) );
  GTECH_ADD_AB U177 ( .A(n338), .B(n339), .S(n336) );
  GTECH_NOT U178 ( .A(n334), .Z(n339) );
  GTECH_NOT U179 ( .A(a[14]), .Z(n338) );
  GTECH_AOI21 U180 ( .A(n340), .B(n322), .C(n341), .Z(n334) );
  GTECH_AO21 U181 ( .A(n332), .B(n333), .C(n331), .Z(n341) );
  GTECH_MUX2 U182 ( .A(n342), .B(n343), .S(n322), .Z(sum[13]) );
  GTECH_XNOR2 U183 ( .A(n344), .B(n345), .Z(n343) );
  GTECH_XNOR2 U184 ( .A(n332), .B(n345), .Z(n342) );
  GTECH_OR_NOT U185 ( .A(n331), .B(n333), .Z(n345) );
  GTECH_OR_NOT U186 ( .A(n346), .B(n347), .Z(sum[12]) );
  GTECH_OAI21 U187 ( .A(n332), .B(n348), .C(n322), .Z(n347) );
  GTECH_MUX2 U188 ( .A(n349), .B(n350), .S(n265), .Z(sum[11]) );
  GTECH_ADD_AB U189 ( .A(n351), .B(n352), .S(n350) );
  GTECH_ADD_AB U190 ( .A(n353), .B(n352), .S(n349) );
  GTECH_XNOR2 U191 ( .A(b[11]), .B(a[11]), .Z(n352) );
  GTECH_AND_NOT U192 ( .A(n354), .B(n355), .Z(n353) );
  GTECH_OAI21 U193 ( .A(b[10]), .B(a[10]), .C(n356), .Z(n354) );
  GTECH_AO21 U194 ( .A(n357), .B(n355), .C(n358), .Z(sum[10]) );
  GTECH_NOT U195 ( .A(n359), .Z(n358) );
  GTECH_MUX2 U196 ( .A(n360), .B(n361), .S(b[10]), .Z(n359) );
  GTECH_OR2 U197 ( .A(n357), .B(a[10]), .Z(n361) );
  GTECH_ADD_AB U198 ( .A(n362), .B(n357), .S(n360) );
  GTECH_NOT U199 ( .A(a[10]), .Z(n362) );
  GTECH_AO21 U200 ( .A(n363), .B(n265), .C(n356), .Z(n357) );
  GTECH_AO22 U201 ( .A(a[9]), .B(b[9]), .C(n270), .D(n268), .Z(n356) );
  GTECH_ADD_AB U202 ( .A(cin), .B(n364), .S(sum[0]) );
  GTECH_AO21 U203 ( .A(n365), .B(n322), .C(n346), .Z(cout) );
  GTECH_NOR3 U204 ( .A(n348), .B(n332), .C(n322), .Z(n346) );
  GTECH_AND2 U205 ( .A(a[12]), .B(b[12]), .Z(n332) );
  GTECH_NOT U206 ( .A(n344), .Z(n348) );
  GTECH_NOT U207 ( .A(n366), .Z(n322) );
  GTECH_MUX2 U208 ( .A(n271), .B(n367), .S(n265), .Z(n366) );
  GTECH_NOT U209 ( .A(n272), .Z(n265) );
  GTECH_MUX2 U210 ( .A(n297), .B(n368), .S(n275), .Z(n272) );
  GTECH_MUX2 U211 ( .A(n364), .B(n369), .S(cin), .Z(n275) );
  GTECH_OA22 U212 ( .A(b[3]), .B(n370), .C(a[3]), .D(n300), .Z(n369) );
  GTECH_AND2 U213 ( .A(a[3]), .B(n300), .Z(n370) );
  GTECH_OR_NOT U214 ( .A(n304), .B(n371), .Z(n300) );
  GTECH_AO21 U215 ( .A(n315), .B(n314), .C(n310), .Z(n371) );
  GTECH_AOI21 U216 ( .A(n319), .B(n311), .C(n313), .Z(n310) );
  GTECH_AND2 U217 ( .A(b[1]), .B(a[1]), .Z(n313) );
  GTECH_OR2 U218 ( .A(a[1]), .B(b[1]), .Z(n311) );
  GTECH_NOT U219 ( .A(b[2]), .Z(n314) );
  GTECH_NOT U220 ( .A(a[2]), .Z(n315) );
  GTECH_AND2 U221 ( .A(a[2]), .B(b[2]), .Z(n304) );
  GTECH_AND_NOT U222 ( .A(n319), .B(n312), .Z(n364) );
  GTECH_AND2 U223 ( .A(b[0]), .B(a[0]), .Z(n312) );
  GTECH_OR2 U224 ( .A(a[0]), .B(b[0]), .Z(n319) );
  GTECH_AOI2N2 U225 ( .A(n372), .B(b[7]), .C(n276), .D(n373), .Z(n368) );
  GTECH_NOT U226 ( .A(a[7]), .Z(n373) );
  GTECH_OR_NOT U227 ( .A(a[7]), .B(n276), .Z(n372) );
  GTECH_AND_NOT U228 ( .A(n374), .B(n280), .Z(n276) );
  GTECH_AND2 U229 ( .A(b[6]), .B(a[6]), .Z(n280) );
  GTECH_OAI21 U230 ( .A(a[6]), .B(b[6]), .C(n288), .Z(n374) );
  GTECH_AO21 U231 ( .A(n296), .B(n289), .C(n291), .Z(n288) );
  GTECH_AND2 U232 ( .A(b[5]), .B(a[5]), .Z(n291) );
  GTECH_OR2 U233 ( .A(a[5]), .B(b[5]), .Z(n289) );
  GTECH_OR_NOT U234 ( .A(n290), .B(n296), .Z(n297) );
  GTECH_OR2 U235 ( .A(b[4]), .B(a[4]), .Z(n296) );
  GTECH_AND2 U236 ( .A(b[4]), .B(a[4]), .Z(n290) );
  GTECH_AOI2N2 U237 ( .A(n375), .B(b[11]), .C(n351), .D(n376), .Z(n367) );
  GTECH_NOT U238 ( .A(a[11]), .Z(n376) );
  GTECH_OR_NOT U239 ( .A(a[11]), .B(n351), .Z(n375) );
  GTECH_AND_NOT U240 ( .A(n377), .B(n355), .Z(n351) );
  GTECH_AND2 U241 ( .A(b[10]), .B(a[10]), .Z(n355) );
  GTECH_OAI21 U242 ( .A(a[10]), .B(b[10]), .C(n363), .Z(n377) );
  GTECH_AO22 U243 ( .A(a[9]), .B(b[9]), .C(n267), .D(n270), .Z(n363) );
  GTECH_OR2 U244 ( .A(b[9]), .B(a[9]), .Z(n270) );
  GTECH_OR_NOT U245 ( .A(n268), .B(n267), .Z(n271) );
  GTECH_OR2 U246 ( .A(b[8]), .B(a[8]), .Z(n267) );
  GTECH_AND2 U247 ( .A(a[8]), .B(b[8]), .Z(n268) );
  GTECH_OAI2N2 U248 ( .A(n323), .B(n326), .C(n378), .D(b[15]), .Z(n365) );
  GTECH_OR_NOT U249 ( .A(a[15]), .B(n323), .Z(n378) );
  GTECH_NOT U250 ( .A(a[15]), .Z(n326) );
  GTECH_AND2 U251 ( .A(n379), .B(n327), .Z(n323) );
  GTECH_NAND2 U252 ( .A(a[14]), .B(b[14]), .Z(n327) );
  GTECH_OAI21 U253 ( .A(a[14]), .B(b[14]), .C(n340), .Z(n379) );
  GTECH_AO21 U254 ( .A(n344), .B(n333), .C(n331), .Z(n340) );
  GTECH_AND2 U255 ( .A(a[13]), .B(b[13]), .Z(n331) );
  GTECH_OR2 U256 ( .A(b[13]), .B(a[13]), .Z(n333) );
  GTECH_OR2 U257 ( .A(b[12]), .B(a[12]), .Z(n344) );
endmodule

