
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386;

  GTECH_OAI21 U135 ( .A(n274), .B(n275), .C(n276), .Z(sum[9]) );
  GTECH_OAI21 U136 ( .A(n277), .B(n278), .C(n274), .Z(n276) );
  GTECH_XNOR2 U137 ( .A(a[9]), .B(b[9]), .Z(n275) );
  GTECH_OA21 U138 ( .A(n279), .B(n280), .C(n281), .Z(n274) );
  GTECH_NAND2 U139 ( .A(n282), .B(n283), .Z(sum[8]) );
  GTECH_AO21 U140 ( .A(n281), .B(n284), .C(n285), .Z(n282) );
  GTECH_OAI22 U141 ( .A(n286), .B(n287), .C(n288), .D(n289), .Z(sum[7]) );
  GTECH_XNOR2 U142 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_XOR2 U143 ( .A(n292), .B(n291), .Z(n286) );
  GTECH_XOR2 U144 ( .A(a[7]), .B(b[7]), .Z(n291) );
  GTECH_AND_NOT U145 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_OAI21 U146 ( .A(b[6]), .B(a[6]), .C(n295), .Z(n293) );
  GTECH_NOT U147 ( .A(n296), .Z(sum[6]) );
  GTECH_AOI222 U148 ( .A(n294), .B(n297), .C(n298), .D(b[6]), .E(n299), .F(
        n300), .Z(n296) );
  GTECH_NOT U149 ( .A(b[6]), .Z(n300) );
  GTECH_XOR2 U150 ( .A(n297), .B(a[6]), .Z(n299) );
  GTECH_NOR2 U151 ( .A(a[6]), .B(n297), .Z(n298) );
  GTECH_AO21 U152 ( .A(n287), .B(n301), .C(n295), .Z(n297) );
  GTECH_OA21 U153 ( .A(n302), .B(n303), .C(n304), .Z(n295) );
  GTECH_OAI22 U154 ( .A(n305), .B(n306), .C(n307), .D(n308), .Z(sum[5]) );
  GTECH_AOI21 U155 ( .A(n309), .B(n287), .C(n302), .Z(n308) );
  GTECH_NOT U156 ( .A(n307), .Z(n306) );
  GTECH_AND_NOT U157 ( .A(n304), .B(n303), .Z(n307) );
  GTECH_AOI21 U158 ( .A(n310), .B(n289), .C(n311), .Z(n305) );
  GTECH_XNOR2 U159 ( .A(n287), .B(n312), .Z(sum[4]) );
  GTECH_NOT U160 ( .A(n289), .Z(n287) );
  GTECH_OAI22 U161 ( .A(n313), .B(n314), .C(cin), .D(n315), .Z(sum[3]) );
  GTECH_XNOR2 U162 ( .A(n316), .B(n317), .Z(n315) );
  GTECH_ADD_ABC U163 ( .A(a[2]), .B(n318), .C(b[2]), .COUT(n317) );
  GTECH_XNOR2 U164 ( .A(n319), .B(n316), .Z(n314) );
  GTECH_XOR2 U165 ( .A(a[3]), .B(b[3]), .Z(n316) );
  GTECH_OAI22 U166 ( .A(n313), .B(n320), .C(cin), .D(n321), .Z(sum[2]) );
  GTECH_XOR2 U167 ( .A(n322), .B(n318), .Z(n321) );
  GTECH_OA21 U168 ( .A(n323), .B(n324), .C(n325), .Z(n318) );
  GTECH_XOR2 U169 ( .A(n322), .B(n326), .Z(n320) );
  GTECH_XNOR2 U170 ( .A(a[2]), .B(b[2]), .Z(n322) );
  GTECH_OAI22 U171 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(sum[1]) );
  GTECH_AOI21 U172 ( .A(n331), .B(cin), .C(n324), .Z(n330) );
  GTECH_NOT U173 ( .A(n328), .Z(n329) );
  GTECH_OR_NOT U174 ( .A(n323), .B(n325), .Z(n328) );
  GTECH_AOI21 U175 ( .A(n313), .B(n332), .C(n333), .Z(n327) );
  GTECH_NOT U176 ( .A(n331), .Z(n333) );
  GTECH_OAI22 U177 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(sum[15]) );
  GTECH_XNOR2 U178 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_XOR2 U179 ( .A(n340), .B(n339), .Z(n335) );
  GTECH_XOR2 U180 ( .A(a[15]), .B(b[15]), .Z(n339) );
  GTECH_OA21 U181 ( .A(n341), .B(n342), .C(n343), .Z(n340) );
  GTECH_OAI21 U182 ( .A(n344), .B(n345), .C(n346), .Z(sum[14]) );
  GTECH_OAI21 U183 ( .A(n341), .B(n347), .C(n344), .Z(n346) );
  GTECH_NOT U184 ( .A(n343), .Z(n347) );
  GTECH_XNOR2 U185 ( .A(a[14]), .B(b[14]), .Z(n345) );
  GTECH_OAI21 U186 ( .A(n336), .B(n348), .C(n342), .Z(n344) );
  GTECH_OAI21 U187 ( .A(n349), .B(n350), .C(n351), .Z(n342) );
  GTECH_OAI21 U188 ( .A(n352), .B(n353), .C(n354), .Z(sum[13]) );
  GTECH_OAI21 U189 ( .A(n355), .B(n349), .C(n352), .Z(n354) );
  GTECH_XNOR2 U190 ( .A(a[13]), .B(b[13]), .Z(n353) );
  GTECH_OA21 U191 ( .A(n350), .B(n334), .C(n356), .Z(n352) );
  GTECH_NOT U192 ( .A(n336), .Z(n334) );
  GTECH_NOT U193 ( .A(n357), .Z(n350) );
  GTECH_NAND2 U194 ( .A(n358), .B(n359), .Z(sum[12]) );
  GTECH_AO21 U195 ( .A(n356), .B(n357), .C(n336), .Z(n358) );
  GTECH_OAI22 U196 ( .A(n360), .B(n285), .C(n361), .D(n280), .Z(sum[11]) );
  GTECH_XOR2 U197 ( .A(n362), .B(n363), .Z(n361) );
  GTECH_OA21 U198 ( .A(n364), .B(n365), .C(n366), .Z(n362) );
  GTECH_XNOR2 U199 ( .A(n367), .B(n363), .Z(n360) );
  GTECH_XOR2 U200 ( .A(a[11]), .B(b[11]), .Z(n363) );
  GTECH_OAI21 U201 ( .A(n368), .B(n369), .C(n370), .Z(sum[10]) );
  GTECH_OAI21 U202 ( .A(n364), .B(n371), .C(n368), .Z(n370) );
  GTECH_NOT U203 ( .A(n366), .Z(n371) );
  GTECH_XNOR2 U204 ( .A(a[10]), .B(b[10]), .Z(n369) );
  GTECH_OAI21 U205 ( .A(n285), .B(n372), .C(n365), .Z(n368) );
  GTECH_OAI21 U206 ( .A(n278), .B(n279), .C(n373), .Z(n365) );
  GTECH_NOT U207 ( .A(n284), .Z(n279) );
  GTECH_XNOR2 U208 ( .A(cin), .B(n374), .Z(sum[0]) );
  GTECH_OAI21 U209 ( .A(n336), .B(n375), .C(n359), .Z(cout) );
  GTECH_NAND3 U210 ( .A(n357), .B(n356), .C(n336), .Z(n359) );
  GTECH_NAND2 U211 ( .A(b[12]), .B(a[12]), .Z(n357) );
  GTECH_AOI21 U212 ( .A(n338), .B(a[15]), .C(n376), .Z(n375) );
  GTECH_OA21 U213 ( .A(a[15]), .B(n338), .C(b[15]), .Z(n376) );
  GTECH_OAI21 U214 ( .A(n341), .B(n348), .C(n343), .Z(n338) );
  GTECH_NAND2 U215 ( .A(b[14]), .B(a[14]), .Z(n343) );
  GTECH_OAI21 U216 ( .A(n349), .B(n356), .C(n351), .Z(n348) );
  GTECH_NOT U217 ( .A(n355), .Z(n351) );
  GTECH_NOR2 U218 ( .A(a[13]), .B(b[13]), .Z(n355) );
  GTECH_OR2 U219 ( .A(b[12]), .B(a[12]), .Z(n356) );
  GTECH_AND2 U220 ( .A(a[13]), .B(b[13]), .Z(n349) );
  GTECH_NOR2 U221 ( .A(b[14]), .B(a[14]), .Z(n341) );
  GTECH_OA21 U222 ( .A(n377), .B(n285), .C(n283), .Z(n336) );
  GTECH_NAND3 U223 ( .A(n284), .B(n281), .C(n285), .Z(n283) );
  GTECH_NAND2 U224 ( .A(b[8]), .B(a[8]), .Z(n284) );
  GTECH_NOT U225 ( .A(n280), .Z(n285) );
  GTECH_AOI2N2 U226 ( .A(n312), .B(n289), .C(n378), .D(n289), .Z(n280) );
  GTECH_OA21 U227 ( .A(a[7]), .B(n290), .C(n379), .Z(n378) );
  GTECH_AO21 U228 ( .A(n290), .B(a[7]), .C(b[7]), .Z(n379) );
  GTECH_OR_NOT U229 ( .A(n294), .B(n380), .Z(n290) );
  GTECH_OAI21 U230 ( .A(a[6]), .B(b[6]), .C(n301), .Z(n380) );
  GTECH_AOI21 U231 ( .A(n381), .B(n311), .C(n382), .Z(n301) );
  GTECH_NOT U232 ( .A(n304), .Z(n382) );
  GTECH_OR2 U233 ( .A(b[5]), .B(a[5]), .Z(n304) );
  GTECH_NOT U234 ( .A(n303), .Z(n381) );
  GTECH_AND2 U235 ( .A(a[5]), .B(b[5]), .Z(n303) );
  GTECH_AND2 U236 ( .A(a[6]), .B(b[6]), .Z(n294) );
  GTECH_OA22 U237 ( .A(n383), .B(n313), .C(cin), .D(n374), .Z(n289) );
  GTECH_OR_NOT U238 ( .A(n324), .B(n331), .Z(n374) );
  GTECH_NOT U239 ( .A(n332), .Z(n324) );
  GTECH_NAND2 U240 ( .A(b[0]), .B(a[0]), .Z(n332) );
  GTECH_NOT U241 ( .A(cin), .Z(n313) );
  GTECH_AOI21 U242 ( .A(n319), .B(a[3]), .C(n384), .Z(n383) );
  GTECH_OA21 U243 ( .A(a[3]), .B(n319), .C(b[3]), .Z(n384) );
  GTECH_ADD_ABC U244 ( .A(n326), .B(a[2]), .C(b[2]), .COUT(n319) );
  GTECH_OA21 U245 ( .A(n323), .B(n331), .C(n325), .Z(n326) );
  GTECH_OR2 U246 ( .A(a[1]), .B(b[1]), .Z(n325) );
  GTECH_OR2 U247 ( .A(a[0]), .B(b[0]), .Z(n331) );
  GTECH_AND2 U248 ( .A(b[1]), .B(a[1]), .Z(n323) );
  GTECH_NAND2 U249 ( .A(n309), .B(n310), .Z(n312) );
  GTECH_NOT U250 ( .A(n302), .Z(n310) );
  GTECH_AND2 U251 ( .A(b[4]), .B(a[4]), .Z(n302) );
  GTECH_NOT U252 ( .A(n311), .Z(n309) );
  GTECH_NOR2 U253 ( .A(a[4]), .B(b[4]), .Z(n311) );
  GTECH_AOI21 U254 ( .A(n367), .B(a[11]), .C(n385), .Z(n377) );
  GTECH_OA21 U255 ( .A(a[11]), .B(n367), .C(b[11]), .Z(n385) );
  GTECH_OAI21 U256 ( .A(n364), .B(n372), .C(n366), .Z(n367) );
  GTECH_NAND2 U257 ( .A(b[10]), .B(a[10]), .Z(n366) );
  GTECH_OAI21 U258 ( .A(n278), .B(n281), .C(n373), .Z(n372) );
  GTECH_NOT U259 ( .A(n277), .Z(n373) );
  GTECH_AND_NOT U260 ( .A(n386), .B(a[9]), .Z(n277) );
  GTECH_NOT U261 ( .A(b[9]), .Z(n386) );
  GTECH_OR2 U262 ( .A(b[8]), .B(a[8]), .Z(n281) );
  GTECH_AND2 U263 ( .A(a[9]), .B(b[9]), .Z(n278) );
  GTECH_NOR2 U264 ( .A(b[10]), .B(a[10]), .Z(n364) );
endmodule

