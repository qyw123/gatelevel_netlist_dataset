
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
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386;

  GTECH_OAI22 U138 ( .A(n277), .B(n278), .C(n279), .D(n280), .Z(sum[9]) );
  GTECH_XNOR2 U139 ( .A(n281), .B(n282), .Z(n280) );
  GTECH_XOR2 U140 ( .A(n283), .B(n282), .Z(n277) );
  GTECH_AOI21 U141 ( .A(a[9]), .B(b[9]), .C(n284), .Z(n282) );
  GTECH_XOR2 U142 ( .A(n285), .B(n278), .Z(sum[8]) );
  GTECH_OAI22 U143 ( .A(n286), .B(n287), .C(n288), .D(n289), .Z(sum[7]) );
  GTECH_XOR2 U144 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_AND_NOT U145 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_OAI21 U146 ( .A(b[6]), .B(a[6]), .C(n294), .Z(n292) );
  GTECH_XNOR2 U147 ( .A(n295), .B(n291), .Z(n286) );
  GTECH_XOR2 U148 ( .A(a[7]), .B(b[7]), .Z(n291) );
  GTECH_NOT U149 ( .A(n296), .Z(sum[6]) );
  GTECH_AOI222 U150 ( .A(n293), .B(n297), .C(n298), .D(b[6]), .E(n299), .F(
        n300), .Z(n296) );
  GTECH_XOR2 U151 ( .A(n297), .B(a[6]), .Z(n299) );
  GTECH_NOR2 U152 ( .A(a[6]), .B(n297), .Z(n298) );
  GTECH_AO21 U153 ( .A(n301), .B(n289), .C(n294), .Z(n297) );
  GTECH_AO21 U154 ( .A(a[4]), .B(n302), .C(n303), .Z(n294) );
  GTECH_AND2 U155 ( .A(n304), .B(b[4]), .Z(n302) );
  GTECH_OAI2N2 U156 ( .A(n305), .B(n306), .C(n307), .D(n305), .Z(sum[5]) );
  GTECH_ADD_ABC U157 ( .A(n308), .B(n287), .C(n309), .COUT(n307) );
  GTECH_AOI2N2 U158 ( .A(n310), .B(n289), .C(n309), .D(n308), .Z(n306) );
  GTECH_NOT U159 ( .A(a[4]), .Z(n308) );
  GTECH_NOT U160 ( .A(n287), .Z(n289) );
  GTECH_AND_NOT U161 ( .A(n304), .B(n303), .Z(n305) );
  GTECH_XOR2 U162 ( .A(n287), .B(n311), .Z(sum[4]) );
  GTECH_OAI22 U163 ( .A(n312), .B(n313), .C(cin), .D(n314), .Z(sum[3]) );
  GTECH_XNOR2 U164 ( .A(n315), .B(n316), .Z(n314) );
  GTECH_OA21 U165 ( .A(a[2]), .B(n317), .C(n318), .Z(n316) );
  GTECH_AO21 U166 ( .A(n317), .B(a[2]), .C(b[2]), .Z(n318) );
  GTECH_XNOR2 U167 ( .A(n319), .B(n315), .Z(n313) );
  GTECH_XOR2 U168 ( .A(a[3]), .B(b[3]), .Z(n315) );
  GTECH_OAI22 U169 ( .A(n312), .B(n320), .C(cin), .D(n321), .Z(sum[2]) );
  GTECH_XNOR2 U170 ( .A(n317), .B(n322), .Z(n321) );
  GTECH_AO21 U171 ( .A(n323), .B(n324), .C(n325), .Z(n317) );
  GTECH_XNOR2 U172 ( .A(n326), .B(n322), .Z(n320) );
  GTECH_XOR2 U173 ( .A(a[2]), .B(b[2]), .Z(n322) );
  GTECH_OAI2N2 U174 ( .A(n327), .B(n328), .C(n329), .D(n328), .Z(sum[1]) );
  GTECH_OAI21 U175 ( .A(cin), .B(n324), .C(n330), .Z(n329) );
  GTECH_AND_NOT U176 ( .A(n323), .B(n325), .Z(n328) );
  GTECH_OA21 U177 ( .A(n331), .B(n312), .C(n332), .Z(n327) );
  GTECH_NOT U178 ( .A(n324), .Z(n332) );
  GTECH_OAI22 U179 ( .A(n333), .B(n334), .C(n335), .D(n336), .Z(sum[15]) );
  GTECH_XNOR2 U180 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_XOR2 U181 ( .A(n339), .B(n338), .Z(n333) );
  GTECH_XOR2 U182 ( .A(a[15]), .B(b[15]), .Z(n338) );
  GTECH_AND2 U183 ( .A(n340), .B(n341), .Z(n339) );
  GTECH_AO21 U184 ( .A(n342), .B(n343), .C(n344), .Z(n340) );
  GTECH_NOT U185 ( .A(n345), .Z(sum[14]) );
  GTECH_AOI222 U186 ( .A(n346), .B(n347), .C(n348), .D(b[14]), .E(n349), .F(
        n342), .Z(n345) );
  GTECH_XOR2 U187 ( .A(n347), .B(a[14]), .Z(n349) );
  GTECH_NOR2 U188 ( .A(a[14]), .B(n347), .Z(n348) );
  GTECH_OAI21 U189 ( .A(n350), .B(n336), .C(n344), .Z(n347) );
  GTECH_AOI22 U190 ( .A(n351), .B(n352), .C(a[13]), .D(b[13]), .Z(n344) );
  GTECH_OAI22 U191 ( .A(n334), .B(n353), .C(n354), .D(n336), .Z(sum[13]) );
  GTECH_XNOR2 U192 ( .A(n355), .B(n356), .Z(n354) );
  GTECH_XNOR2 U193 ( .A(n352), .B(n355), .Z(n353) );
  GTECH_AOI21 U194 ( .A(a[13]), .B(b[13]), .C(n357), .Z(n355) );
  GTECH_NOT U195 ( .A(n351), .Z(n357) );
  GTECH_XNOR2 U196 ( .A(n336), .B(n358), .Z(sum[12]) );
  GTECH_OAI22 U197 ( .A(n359), .B(n278), .C(n360), .D(n279), .Z(sum[11]) );
  GTECH_XOR2 U198 ( .A(n361), .B(n362), .Z(n360) );
  GTECH_AND_NOT U199 ( .A(n363), .B(n364), .Z(n361) );
  GTECH_OAI21 U200 ( .A(b[10]), .B(a[10]), .C(n365), .Z(n363) );
  GTECH_XNOR2 U201 ( .A(n366), .B(n362), .Z(n359) );
  GTECH_XOR2 U202 ( .A(a[11]), .B(b[11]), .Z(n362) );
  GTECH_NOT U203 ( .A(n367), .Z(sum[10]) );
  GTECH_AOI222 U204 ( .A(n364), .B(n368), .C(n369), .D(b[10]), .E(n370), .F(
        n371), .Z(n367) );
  GTECH_XOR2 U205 ( .A(n368), .B(a[10]), .Z(n370) );
  GTECH_NOR2 U206 ( .A(a[10]), .B(n368), .Z(n369) );
  GTECH_AO21 U207 ( .A(n372), .B(n279), .C(n365), .Z(n368) );
  GTECH_AO22 U208 ( .A(n373), .B(n281), .C(a[9]), .D(b[9]), .Z(n365) );
  GTECH_XOR2 U209 ( .A(n312), .B(n374), .Z(sum[0]) );
  GTECH_OAI2N2 U210 ( .A(n375), .B(n336), .C(n336), .D(n358), .Z(cout) );
  GTECH_AND_NOT U211 ( .A(n356), .B(n352), .Z(n358) );
  GTECH_AND2 U212 ( .A(a[12]), .B(b[12]), .Z(n352) );
  GTECH_NOT U213 ( .A(n334), .Z(n336) );
  GTECH_OAI22 U214 ( .A(n376), .B(n278), .C(n279), .D(n285), .Z(n334) );
  GTECH_OR2 U215 ( .A(n283), .B(n281), .Z(n285) );
  GTECH_AND2 U216 ( .A(a[8]), .B(b[8]), .Z(n281) );
  GTECH_NOT U217 ( .A(n278), .Z(n279) );
  GTECH_OAI2N2 U218 ( .A(n377), .B(n287), .C(n311), .D(n287), .Z(n278) );
  GTECH_XOR2 U219 ( .A(a[4]), .B(n309), .Z(n311) );
  GTECH_AO22 U220 ( .A(n312), .B(n374), .C(n378), .D(cin), .Z(n287) );
  GTECH_OAI21 U221 ( .A(a[3]), .B(n319), .C(n379), .Z(n378) );
  GTECH_AO21 U222 ( .A(n319), .B(a[3]), .C(b[3]), .Z(n379) );
  GTECH_AO21 U223 ( .A(n326), .B(a[2]), .C(n380), .Z(n319) );
  GTECH_OA21 U224 ( .A(a[2]), .B(n326), .C(b[2]), .Z(n380) );
  GTECH_AO21 U225 ( .A(n323), .B(n330), .C(n325), .Z(n326) );
  GTECH_AND2 U226 ( .A(b[1]), .B(a[1]), .Z(n325) );
  GTECH_OR2 U227 ( .A(a[1]), .B(b[1]), .Z(n323) );
  GTECH_OR_NOT U228 ( .A(n324), .B(n330), .Z(n374) );
  GTECH_NOT U229 ( .A(n331), .Z(n330) );
  GTECH_NOR2 U230 ( .A(a[0]), .B(b[0]), .Z(n331) );
  GTECH_AND2 U231 ( .A(a[0]), .B(b[0]), .Z(n324) );
  GTECH_NOT U232 ( .A(cin), .Z(n312) );
  GTECH_OA21 U233 ( .A(a[7]), .B(n295), .C(n381), .Z(n377) );
  GTECH_AO21 U234 ( .A(n295), .B(a[7]), .C(b[7]), .Z(n381) );
  GTECH_AO21 U235 ( .A(n301), .B(n382), .C(n293), .Z(n295) );
  GTECH_AND_NOT U236 ( .A(a[6]), .B(n300), .Z(n293) );
  GTECH_NOT U237 ( .A(b[6]), .Z(n300) );
  GTECH_OR2 U238 ( .A(a[6]), .B(b[6]), .Z(n382) );
  GTECH_AO21 U239 ( .A(n304), .B(n310), .C(n303), .Z(n301) );
  GTECH_AND2 U240 ( .A(a[5]), .B(b[5]), .Z(n303) );
  GTECH_OR_NOT U241 ( .A(a[4]), .B(n309), .Z(n310) );
  GTECH_NOT U242 ( .A(b[4]), .Z(n309) );
  GTECH_OR2 U243 ( .A(a[5]), .B(b[5]), .Z(n304) );
  GTECH_AOI21 U244 ( .A(n366), .B(a[11]), .C(n383), .Z(n376) );
  GTECH_OA21 U245 ( .A(a[11]), .B(n366), .C(b[11]), .Z(n383) );
  GTECH_AO21 U246 ( .A(n372), .B(n384), .C(n364), .Z(n366) );
  GTECH_AND_NOT U247 ( .A(a[10]), .B(n371), .Z(n364) );
  GTECH_NOT U248 ( .A(b[10]), .Z(n371) );
  GTECH_OR2 U249 ( .A(a[10]), .B(b[10]), .Z(n384) );
  GTECH_OAI2N2 U250 ( .A(n283), .B(n284), .C(a[9]), .D(b[9]), .Z(n372) );
  GTECH_NOT U251 ( .A(n373), .Z(n284) );
  GTECH_OR2 U252 ( .A(b[9]), .B(a[9]), .Z(n373) );
  GTECH_NOR2 U253 ( .A(a[8]), .B(b[8]), .Z(n283) );
  GTECH_AOI21 U254 ( .A(n337), .B(a[15]), .C(n385), .Z(n375) );
  GTECH_OA21 U255 ( .A(a[15]), .B(n337), .C(b[15]), .Z(n385) );
  GTECH_OAI21 U256 ( .A(n350), .B(n386), .C(n341), .Z(n337) );
  GTECH_NOT U257 ( .A(n346), .Z(n341) );
  GTECH_AND_NOT U258 ( .A(a[14]), .B(n342), .Z(n346) );
  GTECH_AND2 U259 ( .A(n343), .B(n342), .Z(n386) );
  GTECH_NOT U260 ( .A(b[14]), .Z(n342) );
  GTECH_NOT U261 ( .A(a[14]), .Z(n343) );
  GTECH_AOI22 U262 ( .A(a[13]), .B(b[13]), .C(n356), .D(n351), .Z(n350) );
  GTECH_OR2 U263 ( .A(a[13]), .B(b[13]), .Z(n351) );
  GTECH_OR2 U264 ( .A(b[12]), .B(a[12]), .Z(n356) );
endmodule

