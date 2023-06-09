
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380;

  GTECH_MUX2 U129 ( .A(n268), .B(n269), .S(n270), .Z(sum[9]) );
  GTECH_AOI21 U130 ( .A(n271), .B(n272), .C(n273), .Z(n270) );
  GTECH_XNOR2 U131 ( .A(n274), .B(a[9]), .Z(n269) );
  GTECH_OR_NOT U132 ( .A(n275), .B(n276), .Z(n268) );
  GTECH_XOR2 U133 ( .A(n272), .B(n277), .Z(sum[8]) );
  GTECH_MUX2 U134 ( .A(n278), .B(n279), .S(n280), .Z(sum[7]) );
  GTECH_XNOR2 U135 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_AOI21 U136 ( .A(n283), .B(n284), .C(n285), .Z(n282) );
  GTECH_XNOR2 U137 ( .A(n281), .B(n286), .Z(n278) );
  GTECH_XOR2 U138 ( .A(a[7]), .B(b[7]), .Z(n281) );
  GTECH_MUX2 U139 ( .A(n287), .B(n288), .S(n280), .Z(sum[6]) );
  GTECH_XOR2 U140 ( .A(n284), .B(n289), .Z(n288) );
  GTECH_OAI2N2 U141 ( .A(n290), .B(n291), .C(a[5]), .D(b[5]), .Z(n284) );
  GTECH_XOR2 U142 ( .A(n292), .B(n289), .Z(n287) );
  GTECH_AND_NOT U143 ( .A(n283), .B(n285), .Z(n289) );
  GTECH_NOT U144 ( .A(n293), .Z(sum[5]) );
  GTECH_MUX2 U145 ( .A(n294), .B(n295), .S(n296), .Z(n293) );
  GTECH_AO21 U146 ( .A(a[5]), .B(b[5]), .C(n290), .Z(n296) );
  GTECH_OA21 U147 ( .A(n297), .B(n280), .C(n291), .Z(n295) );
  GTECH_ADD_ABC U148 ( .A(a[4]), .B(n298), .C(b[4]), .COUT(n294) );
  GTECH_MUX2 U149 ( .A(n299), .B(n300), .S(cin), .Z(n298) );
  GTECH_OAI2N2 U150 ( .A(n301), .B(n302), .C(n303), .D(a[3]), .Z(n300) );
  GTECH_AND2 U151 ( .A(n304), .B(n305), .Z(n301) );
  GTECH_NOT U152 ( .A(a[3]), .Z(n305) );
  GTECH_XOR2 U153 ( .A(n306), .B(n280), .Z(sum[4]) );
  GTECH_MUX2 U154 ( .A(n307), .B(n308), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U155 ( .A(n309), .B(n304), .Z(n308) );
  GTECH_XOR2 U156 ( .A(n310), .B(n309), .Z(n307) );
  GTECH_XNOR2 U157 ( .A(a[3]), .B(n302), .Z(n309) );
  GTECH_NOT U158 ( .A(b[3]), .Z(n302) );
  GTECH_AOI21 U159 ( .A(n311), .B(n312), .C(n313), .Z(n310) );
  GTECH_OA21 U160 ( .A(n311), .B(n312), .C(n314), .Z(n313) );
  GTECH_MUX2 U161 ( .A(n315), .B(n316), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U162 ( .A(n317), .B(n318), .Z(n316) );
  GTECH_XNOR2 U163 ( .A(n317), .B(n312), .Z(n315) );
  GTECH_AOI21 U164 ( .A(n319), .B(n320), .C(n321), .Z(n312) );
  GTECH_XNOR2 U165 ( .A(a[2]), .B(n314), .Z(n317) );
  GTECH_MUX2 U166 ( .A(n322), .B(n323), .S(n324), .Z(sum[1]) );
  GTECH_AND_NOT U167 ( .A(n320), .B(n321), .Z(n324) );
  GTECH_NOT U168 ( .A(n325), .Z(n323) );
  GTECH_OA21 U169 ( .A(n319), .B(cin), .C(n326), .Z(n325) );
  GTECH_AO21 U170 ( .A(cin), .B(n326), .C(n319), .Z(n322) );
  GTECH_AND2 U171 ( .A(a[0]), .B(b[0]), .Z(n319) );
  GTECH_MUX2 U172 ( .A(n327), .B(n328), .S(n329), .Z(sum[15]) );
  GTECH_XNOR2 U173 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_XNOR2 U174 ( .A(n332), .B(n330), .Z(n327) );
  GTECH_XNOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n330) );
  GTECH_AOI21 U176 ( .A(n333), .B(n334), .C(n335), .Z(n332) );
  GTECH_OA21 U177 ( .A(n333), .B(n334), .C(n336), .Z(n335) );
  GTECH_MUX2 U178 ( .A(n337), .B(n338), .S(n329), .Z(sum[14]) );
  GTECH_XNOR2 U179 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XNOR2 U180 ( .A(n339), .B(n334), .Z(n337) );
  GTECH_AOI21 U181 ( .A(n341), .B(n342), .C(n343), .Z(n334) );
  GTECH_XNOR2 U182 ( .A(a[14]), .B(n336), .Z(n339) );
  GTECH_MUX2 U183 ( .A(n344), .B(n345), .S(n329), .Z(sum[13]) );
  GTECH_XOR2 U184 ( .A(n346), .B(n347), .Z(n345) );
  GTECH_XOR2 U185 ( .A(n341), .B(n347), .Z(n344) );
  GTECH_AND_NOT U186 ( .A(n342), .B(n343), .Z(n347) );
  GTECH_OR2 U187 ( .A(n348), .B(n349), .Z(sum[12]) );
  GTECH_AOI21 U188 ( .A(n350), .B(n346), .C(n351), .Z(n348) );
  GTECH_MUX2 U189 ( .A(n352), .B(n353), .S(n272), .Z(sum[11]) );
  GTECH_XOR2 U190 ( .A(n354), .B(n355), .Z(n353) );
  GTECH_XOR2 U191 ( .A(n354), .B(n356), .Z(n352) );
  GTECH_OA21 U192 ( .A(n357), .B(n358), .C(n359), .Z(n356) );
  GTECH_XNOR2 U193 ( .A(a[11]), .B(b[11]), .Z(n354) );
  GTECH_MUX2 U194 ( .A(n360), .B(n361), .S(n272), .Z(sum[10]) );
  GTECH_XNOR2 U195 ( .A(n362), .B(n363), .Z(n361) );
  GTECH_XNOR2 U196 ( .A(n358), .B(n363), .Z(n360) );
  GTECH_NOR2 U197 ( .A(n364), .B(n357), .Z(n363) );
  GTECH_AOI21 U198 ( .A(n273), .B(n276), .C(n275), .Z(n358) );
  GTECH_XOR2 U199 ( .A(cin), .B(n299), .Z(sum[0]) );
  GTECH_NOT U200 ( .A(n365), .Z(n299) );
  GTECH_AO21 U201 ( .A(n329), .B(n366), .C(n349), .Z(cout) );
  GTECH_AND3 U202 ( .A(n346), .B(n350), .C(n351), .Z(n349) );
  GTECH_NOT U203 ( .A(n329), .Z(n351) );
  GTECH_NOT U204 ( .A(n341), .Z(n350) );
  GTECH_AND2 U205 ( .A(a[12]), .B(b[12]), .Z(n341) );
  GTECH_AO22 U206 ( .A(n367), .B(b[15]), .C(n331), .D(a[15]), .Z(n366) );
  GTECH_OR2 U207 ( .A(n331), .B(a[15]), .Z(n367) );
  GTECH_OAI22 U208 ( .A(n340), .B(n333), .C(n368), .D(n336), .Z(n331) );
  GTECH_NOT U209 ( .A(b[14]), .Z(n336) );
  GTECH_AND2 U210 ( .A(n340), .B(n333), .Z(n368) );
  GTECH_NOT U211 ( .A(a[14]), .Z(n333) );
  GTECH_AOI21 U212 ( .A(n346), .B(n342), .C(n343), .Z(n340) );
  GTECH_AND2 U213 ( .A(a[13]), .B(b[13]), .Z(n343) );
  GTECH_OR2 U214 ( .A(b[13]), .B(a[13]), .Z(n342) );
  GTECH_OR2 U215 ( .A(a[12]), .B(b[12]), .Z(n346) );
  GTECH_MUX2 U216 ( .A(n277), .B(n369), .S(n272), .Z(n329) );
  GTECH_NOT U217 ( .A(n370), .Z(n272) );
  GTECH_MUX2 U218 ( .A(n371), .B(n306), .S(n280), .Z(n370) );
  GTECH_MUX2 U219 ( .A(n365), .B(n372), .S(cin), .Z(n280) );
  GTECH_AOI21 U220 ( .A(n303), .B(a[3]), .C(n373), .Z(n372) );
  GTECH_OA21 U221 ( .A(n303), .B(a[3]), .C(b[3]), .Z(n373) );
  GTECH_NOT U222 ( .A(n304), .Z(n303) );
  GTECH_OA22 U223 ( .A(n318), .B(n311), .C(n374), .D(n314), .Z(n304) );
  GTECH_NOT U224 ( .A(b[2]), .Z(n314) );
  GTECH_AND2 U225 ( .A(n318), .B(n311), .Z(n374) );
  GTECH_NOT U226 ( .A(a[2]), .Z(n311) );
  GTECH_AOI21 U227 ( .A(n326), .B(n320), .C(n321), .Z(n318) );
  GTECH_AND2 U228 ( .A(a[1]), .B(b[1]), .Z(n321) );
  GTECH_OR2 U229 ( .A(b[1]), .B(a[1]), .Z(n320) );
  GTECH_OR2 U230 ( .A(a[0]), .B(b[0]), .Z(n326) );
  GTECH_XNOR2 U231 ( .A(a[0]), .B(b[0]), .Z(n365) );
  GTECH_OR_NOT U232 ( .A(n297), .B(n291), .Z(n306) );
  GTECH_OR_NOT U233 ( .A(n375), .B(b[4]), .Z(n291) );
  GTECH_AO21 U234 ( .A(n376), .B(n286), .C(n377), .Z(n371) );
  GTECH_AOI21 U235 ( .A(a[7]), .B(n378), .C(b[7]), .Z(n377) );
  GTECH_NOT U236 ( .A(n286), .Z(n378) );
  GTECH_AOI21 U237 ( .A(n283), .B(n292), .C(n285), .Z(n286) );
  GTECH_AND2 U238 ( .A(b[6]), .B(a[6]), .Z(n285) );
  GTECH_OAI2N2 U239 ( .A(n297), .B(n290), .C(a[5]), .D(b[5]), .Z(n292) );
  GTECH_NOR2 U240 ( .A(a[5]), .B(b[5]), .Z(n290) );
  GTECH_AND_NOT U241 ( .A(n375), .B(b[4]), .Z(n297) );
  GTECH_NOT U242 ( .A(a[4]), .Z(n375) );
  GTECH_OR2 U243 ( .A(a[6]), .B(b[6]), .Z(n283) );
  GTECH_NOT U244 ( .A(a[7]), .Z(n376) );
  GTECH_OA21 U245 ( .A(a[11]), .B(n379), .C(n380), .Z(n369) );
  GTECH_AO21 U246 ( .A(a[11]), .B(n379), .C(b[11]), .Z(n380) );
  GTECH_NOT U247 ( .A(n355), .Z(n379) );
  GTECH_OA21 U248 ( .A(n357), .B(n362), .C(n359), .Z(n355) );
  GTECH_NOT U249 ( .A(n364), .Z(n359) );
  GTECH_AND2 U250 ( .A(a[10]), .B(b[10]), .Z(n364) );
  GTECH_AOI21 U251 ( .A(n276), .B(n271), .C(n275), .Z(n362) );
  GTECH_AND_NOT U252 ( .A(a[9]), .B(n274), .Z(n275) );
  GTECH_NOT U253 ( .A(b[9]), .Z(n274) );
  GTECH_OR2 U254 ( .A(a[9]), .B(b[9]), .Z(n276) );
  GTECH_NOR2 U255 ( .A(a[10]), .B(b[10]), .Z(n357) );
  GTECH_AND_NOT U256 ( .A(n271), .B(n273), .Z(n277) );
  GTECH_AND2 U257 ( .A(a[8]), .B(b[8]), .Z(n273) );
  GTECH_OR2 U258 ( .A(b[8]), .B(a[8]), .Z(n271) );
endmodule

