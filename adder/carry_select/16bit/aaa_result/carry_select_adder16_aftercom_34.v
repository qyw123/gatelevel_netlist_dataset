
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388;

  GTECH_OAI22 U140 ( .A(n279), .B(n280), .C(n281), .D(n282), .Z(sum[9]) );
  GTECH_XNOR2 U141 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_XOR2 U142 ( .A(n285), .B(n284), .Z(n280) );
  GTECH_AO21 U143 ( .A(a[9]), .B(b[9]), .C(n286), .Z(n284) );
  GTECH_NAND2 U144 ( .A(n287), .B(n288), .Z(sum[8]) );
  GTECH_OAI21 U145 ( .A(n285), .B(n283), .C(n279), .Z(n287) );
  GTECH_OAI2N2 U146 ( .A(n289), .B(n290), .C(n291), .D(n290), .Z(sum[7]) );
  GTECH_XNOR2 U147 ( .A(n292), .B(n293), .Z(n291) );
  GTECH_OA21 U148 ( .A(n294), .B(n295), .C(n296), .Z(n292) );
  GTECH_XNOR2 U149 ( .A(n297), .B(n293), .Z(n289) );
  GTECH_XOR2 U150 ( .A(a[7]), .B(b[7]), .Z(n293) );
  GTECH_OAI21 U151 ( .A(n298), .B(n299), .C(n300), .Z(sum[6]) );
  GTECH_OAI21 U152 ( .A(n294), .B(n301), .C(n298), .Z(n300) );
  GTECH_XNOR2 U153 ( .A(a[6]), .B(b[6]), .Z(n299) );
  GTECH_OAI21 U154 ( .A(n290), .B(n302), .C(n295), .Z(n298) );
  GTECH_AO21 U155 ( .A(n303), .B(n304), .C(n305), .Z(n295) );
  GTECH_XOR2 U156 ( .A(n306), .B(n307), .Z(sum[5]) );
  GTECH_AOI21 U157 ( .A(n303), .B(n290), .C(n308), .Z(n307) );
  GTECH_AND_NOT U158 ( .A(n304), .B(n305), .Z(n306) );
  GTECH_XNOR2 U159 ( .A(n290), .B(n309), .Z(sum[4]) );
  GTECH_OAI22 U160 ( .A(n310), .B(n311), .C(cin), .D(n312), .Z(sum[3]) );
  GTECH_XOR2 U161 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_AND2 U162 ( .A(n315), .B(n316), .Z(n313) );
  GTECH_OAI21 U163 ( .A(b[2]), .B(a[2]), .C(n317), .Z(n316) );
  GTECH_XNOR2 U164 ( .A(n318), .B(n314), .Z(n311) );
  GTECH_XOR2 U165 ( .A(a[3]), .B(b[3]), .Z(n314) );
  GTECH_OAI22 U166 ( .A(n310), .B(n319), .C(cin), .D(n320), .Z(sum[2]) );
  GTECH_AOI2N2 U167 ( .A(n321), .B(n317), .C(n317), .D(n322), .Z(n320) );
  GTECH_OA21 U168 ( .A(n323), .B(n324), .C(n325), .Z(n317) );
  GTECH_AOI2N2 U169 ( .A(n321), .B(n326), .C(n326), .D(n322), .Z(n319) );
  GTECH_XNOR2 U170 ( .A(a[2]), .B(b[2]), .Z(n322) );
  GTECH_OAI21 U171 ( .A(b[2]), .B(a[2]), .C(n315), .Z(n321) );
  GTECH_OAI2N2 U172 ( .A(n327), .B(n328), .C(n329), .D(n327), .Z(sum[1]) );
  GTECH_OAI21 U173 ( .A(cin), .B(n323), .C(n330), .Z(n329) );
  GTECH_AOI21 U174 ( .A(n330), .B(cin), .C(n323), .Z(n328) );
  GTECH_AND_NOT U175 ( .A(b[0]), .B(n331), .Z(n323) );
  GTECH_AND_NOT U176 ( .A(n325), .B(n324), .Z(n327) );
  GTECH_OAI22 U177 ( .A(n332), .B(n333), .C(n334), .D(n335), .Z(sum[15]) );
  GTECH_XNOR2 U178 ( .A(n336), .B(n337), .Z(n335) );
  GTECH_XOR2 U179 ( .A(n338), .B(n337), .Z(n333) );
  GTECH_XOR2 U180 ( .A(a[15]), .B(b[15]), .Z(n337) );
  GTECH_AND_NOT U181 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_OAI21 U182 ( .A(b[14]), .B(a[14]), .C(n341), .Z(n339) );
  GTECH_NOT U183 ( .A(n342), .Z(sum[14]) );
  GTECH_AOI222 U184 ( .A(n340), .B(n343), .C(n344), .D(b[14]), .E(n345), .F(
        n346), .Z(n342) );
  GTECH_NOT U185 ( .A(b[14]), .Z(n346) );
  GTECH_XOR2 U186 ( .A(n343), .B(a[14]), .Z(n345) );
  GTECH_NOR2 U187 ( .A(a[14]), .B(n343), .Z(n344) );
  GTECH_AO21 U188 ( .A(n332), .B(n347), .C(n341), .Z(n343) );
  GTECH_OAI22 U189 ( .A(n348), .B(n349), .C(n350), .D(n351), .Z(n341) );
  GTECH_OAI22 U190 ( .A(n332), .B(n352), .C(n334), .D(n353), .Z(sum[13]) );
  GTECH_XOR2 U191 ( .A(n354), .B(n355), .Z(n353) );
  GTECH_XNOR2 U192 ( .A(n349), .B(n354), .Z(n352) );
  GTECH_OAI21 U193 ( .A(n350), .B(n351), .C(n356), .Z(n354) );
  GTECH_NAND2 U194 ( .A(n357), .B(n358), .Z(sum[12]) );
  GTECH_AO21 U195 ( .A(n349), .B(n355), .C(n334), .Z(n357) );
  GTECH_OAI22 U196 ( .A(n359), .B(n279), .C(n360), .D(n282), .Z(sum[11]) );
  GTECH_XNOR2 U197 ( .A(n361), .B(n362), .Z(n360) );
  GTECH_XOR2 U198 ( .A(n363), .B(n362), .Z(n359) );
  GTECH_XOR2 U199 ( .A(a[11]), .B(b[11]), .Z(n362) );
  GTECH_AND_NOT U200 ( .A(n364), .B(n365), .Z(n363) );
  GTECH_OAI21 U201 ( .A(b[10]), .B(a[10]), .C(n366), .Z(n364) );
  GTECH_NOT U202 ( .A(n367), .Z(sum[10]) );
  GTECH_AOI222 U203 ( .A(n365), .B(n368), .C(n369), .D(b[10]), .E(n370), .F(
        n371), .Z(n367) );
  GTECH_XOR2 U204 ( .A(n368), .B(a[10]), .Z(n370) );
  GTECH_NOR2 U205 ( .A(a[10]), .B(n368), .Z(n369) );
  GTECH_AO21 U206 ( .A(n372), .B(n279), .C(n366), .Z(n368) );
  GTECH_OAI2N2 U207 ( .A(n373), .B(n374), .C(n375), .D(n285), .Z(n366) );
  GTECH_NOT U208 ( .A(n286), .Z(n375) );
  GTECH_XNOR2 U209 ( .A(n310), .B(n376), .Z(sum[0]) );
  GTECH_OAI21 U210 ( .A(n334), .B(n377), .C(n358), .Z(cout) );
  GTECH_NAND3 U211 ( .A(n349), .B(n355), .C(n334), .Z(n358) );
  GTECH_NAND2 U212 ( .A(b[12]), .B(a[12]), .Z(n349) );
  GTECH_AOI21 U213 ( .A(n336), .B(a[15]), .C(n378), .Z(n377) );
  GTECH_OA21 U214 ( .A(a[15]), .B(n336), .C(b[15]), .Z(n378) );
  GTECH_OR_NOT U215 ( .A(n340), .B(n379), .Z(n336) );
  GTECH_OAI21 U216 ( .A(a[14]), .B(b[14]), .C(n347), .Z(n379) );
  GTECH_OAI2N2 U217 ( .A(n350), .B(n351), .C(n355), .D(n356), .Z(n347) );
  GTECH_NOT U218 ( .A(n348), .Z(n356) );
  GTECH_AND_NOT U219 ( .A(n350), .B(b[13]), .Z(n348) );
  GTECH_OR2 U220 ( .A(a[12]), .B(b[12]), .Z(n355) );
  GTECH_NOT U221 ( .A(b[13]), .Z(n351) );
  GTECH_NOT U222 ( .A(a[13]), .Z(n350) );
  GTECH_AND2 U223 ( .A(a[14]), .B(b[14]), .Z(n340) );
  GTECH_NOT U224 ( .A(n332), .Z(n334) );
  GTECH_OAI21 U225 ( .A(n380), .B(n282), .C(n288), .Z(n332) );
  GTECH_OR3 U226 ( .A(n285), .B(n283), .C(n279), .Z(n288) );
  GTECH_NOT U227 ( .A(n282), .Z(n279) );
  GTECH_AND2 U228 ( .A(b[8]), .B(a[8]), .Z(n285) );
  GTECH_AOI2N2 U229 ( .A(n290), .B(n309), .C(n381), .D(n290), .Z(n282) );
  GTECH_AOI21 U230 ( .A(n297), .B(a[7]), .C(n382), .Z(n381) );
  GTECH_OA21 U231 ( .A(a[7]), .B(n297), .C(b[7]), .Z(n382) );
  GTECH_OAI21 U232 ( .A(n294), .B(n302), .C(n296), .Z(n297) );
  GTECH_NOT U233 ( .A(n301), .Z(n296) );
  GTECH_AND_NOT U234 ( .A(a[6]), .B(n383), .Z(n301) );
  GTECH_NOT U235 ( .A(b[6]), .Z(n383) );
  GTECH_AO21 U236 ( .A(n304), .B(n308), .C(n305), .Z(n302) );
  GTECH_NOR2 U237 ( .A(a[5]), .B(b[5]), .Z(n305) );
  GTECH_NAND2 U238 ( .A(b[5]), .B(a[5]), .Z(n304) );
  GTECH_NOR2 U239 ( .A(b[6]), .B(a[6]), .Z(n294) );
  GTECH_AND_NOT U240 ( .A(n303), .B(n308), .Z(n309) );
  GTECH_NOR2 U241 ( .A(b[4]), .B(a[4]), .Z(n308) );
  GTECH_NAND2 U242 ( .A(a[4]), .B(b[4]), .Z(n303) );
  GTECH_AOI2N2 U243 ( .A(n310), .B(n376), .C(n384), .D(n310), .Z(n290) );
  GTECH_AOI21 U244 ( .A(n318), .B(a[3]), .C(n385), .Z(n384) );
  GTECH_OA21 U245 ( .A(a[3]), .B(n318), .C(b[3]), .Z(n385) );
  GTECH_NAND2 U246 ( .A(n386), .B(n315), .Z(n318) );
  GTECH_NAND2 U247 ( .A(b[2]), .B(a[2]), .Z(n315) );
  GTECH_OAI21 U248 ( .A(a[2]), .B(b[2]), .C(n326), .Z(n386) );
  GTECH_OA21 U249 ( .A(n324), .B(n330), .C(n325), .Z(n326) );
  GTECH_OR2 U250 ( .A(a[1]), .B(b[1]), .Z(n325) );
  GTECH_OR2 U251 ( .A(b[0]), .B(a[0]), .Z(n330) );
  GTECH_AND2 U252 ( .A(b[1]), .B(a[1]), .Z(n324) );
  GTECH_XNOR2 U253 ( .A(n331), .B(b[0]), .Z(n376) );
  GTECH_NOT U254 ( .A(a[0]), .Z(n331) );
  GTECH_NOT U255 ( .A(cin), .Z(n310) );
  GTECH_AOI21 U256 ( .A(n361), .B(a[11]), .C(n387), .Z(n380) );
  GTECH_OA21 U257 ( .A(a[11]), .B(n361), .C(b[11]), .Z(n387) );
  GTECH_OR_NOT U258 ( .A(n365), .B(n388), .Z(n361) );
  GTECH_OAI21 U259 ( .A(a[10]), .B(b[10]), .C(n372), .Z(n388) );
  GTECH_OAI22 U260 ( .A(n283), .B(n286), .C(n373), .D(n374), .Z(n372) );
  GTECH_NOT U261 ( .A(a[9]), .Z(n373) );
  GTECH_AND_NOT U262 ( .A(n374), .B(a[9]), .Z(n286) );
  GTECH_NOT U263 ( .A(b[9]), .Z(n374) );
  GTECH_NOR2 U264 ( .A(b[8]), .B(a[8]), .Z(n283) );
  GTECH_AND_NOT U265 ( .A(a[10]), .B(n371), .Z(n365) );
  GTECH_NOT U266 ( .A(b[10]), .Z(n371) );
endmodule

