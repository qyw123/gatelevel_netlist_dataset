
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383;

  GTECH_MUX2 U143 ( .A(n282), .B(n283), .S(n284), .Z(sum[9]) );
  GTECH_ADD_AB U144 ( .A(n285), .B(n286), .S(n283) );
  GTECH_XNOR2 U145 ( .A(n287), .B(n286), .Z(n282) );
  GTECH_AOI21 U146 ( .A(a[9]), .B(b[9]), .C(n288), .Z(n286) );
  GTECH_NAND2 U147 ( .A(n289), .B(n290), .Z(sum[8]) );
  GTECH_AO21 U148 ( .A(n287), .B(n285), .C(n291), .Z(n289) );
  GTECH_MUX2 U149 ( .A(n292), .B(n293), .S(n294), .Z(sum[7]) );
  GTECH_XNOR2 U150 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_AND2 U151 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_AO21 U152 ( .A(n299), .B(n300), .C(n301), .Z(n298) );
  GTECH_ADD_AB U153 ( .A(n302), .B(n296), .S(n292) );
  GTECH_ADD_AB U154 ( .A(b[7]), .B(a[7]), .S(n296) );
  GTECH_OAI21 U155 ( .A(n303), .B(n297), .C(n304), .Z(sum[6]) );
  GTECH_MUX2 U156 ( .A(n305), .B(n306), .S(b[6]), .Z(n304) );
  GTECH_NAND2 U157 ( .A(n300), .B(n303), .Z(n306) );
  GTECH_XNOR2 U158 ( .A(n300), .B(n303), .Z(n305) );
  GTECH_OA21 U159 ( .A(n307), .B(n294), .C(n301), .Z(n303) );
  GTECH_OAI21 U160 ( .A(n308), .B(n309), .C(n310), .Z(n301) );
  GTECH_MUX2 U161 ( .A(n311), .B(n312), .S(n313), .Z(sum[5]) );
  GTECH_AND_NOT U162 ( .A(n310), .B(n308), .Z(n313) );
  GTECH_OAI21 U163 ( .A(a[4]), .B(n314), .C(n315), .Z(n312) );
  GTECH_AO21 U164 ( .A(n314), .B(a[4]), .C(b[4]), .Z(n315) );
  GTECH_AO21 U165 ( .A(n316), .B(n314), .C(n309), .Z(n311) );
  GTECH_ADD_AB U166 ( .A(n317), .B(n294), .S(sum[4]) );
  GTECH_MUX2 U167 ( .A(n318), .B(n319), .S(cin), .Z(sum[3]) );
  GTECH_ADD_AB U168 ( .A(n320), .B(n321), .S(n319) );
  GTECH_ADD_AB U169 ( .A(n322), .B(n321), .S(n318) );
  GTECH_ADD_AB U170 ( .A(b[3]), .B(a[3]), .S(n321) );
  GTECH_ADD_ABC U171 ( .A(a[2]), .B(n323), .C(b[2]), .COUT(n322) );
  GTECH_MUX2 U172 ( .A(n324), .B(n325), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U173 ( .A(n326), .B(n327), .Z(n325) );
  GTECH_XNOR2 U174 ( .A(n323), .B(n327), .Z(n324) );
  GTECH_XNOR2 U175 ( .A(b[2]), .B(a[2]), .Z(n327) );
  GTECH_OA21 U176 ( .A(n328), .B(n329), .C(n330), .Z(n323) );
  GTECH_MUX2 U177 ( .A(n331), .B(n332), .S(n333), .Z(sum[1]) );
  GTECH_AND_NOT U178 ( .A(n330), .B(n328), .Z(n333) );
  GTECH_OAI21 U179 ( .A(cin), .B(n329), .C(n334), .Z(n332) );
  GTECH_AO21 U180 ( .A(n334), .B(cin), .C(n329), .Z(n331) );
  GTECH_MUX2 U181 ( .A(n335), .B(n336), .S(n337), .Z(sum[15]) );
  GTECH_XNOR2 U182 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_OA21 U183 ( .A(n340), .B(n341), .C(n342), .Z(n338) );
  GTECH_ADD_AB U184 ( .A(n343), .B(n339), .S(n335) );
  GTECH_ADD_AB U185 ( .A(b[15]), .B(a[15]), .S(n339) );
  GTECH_MUX2 U186 ( .A(n344), .B(n345), .S(n346), .Z(sum[14]) );
  GTECH_OA21 U187 ( .A(n347), .B(n337), .C(n341), .Z(n346) );
  GTECH_OA21 U188 ( .A(n348), .B(n349), .C(n350), .Z(n341) );
  GTECH_ADD_AB U189 ( .A(b[14]), .B(a[14]), .S(n345) );
  GTECH_OR_NOT U190 ( .A(n340), .B(n342), .Z(n344) );
  GTECH_MUX2 U191 ( .A(n351), .B(n352), .S(n353), .Z(sum[13]) );
  GTECH_OA21 U192 ( .A(n354), .B(n337), .C(n349), .Z(n353) );
  GTECH_NOT U193 ( .A(n355), .Z(n354) );
  GTECH_ADD_AB U194 ( .A(b[13]), .B(a[13]), .S(n352) );
  GTECH_OR_NOT U195 ( .A(n348), .B(n350), .Z(n351) );
  GTECH_NAND2 U196 ( .A(n356), .B(n357), .Z(sum[12]) );
  GTECH_AO21 U197 ( .A(n349), .B(n355), .C(n337), .Z(n356) );
  GTECH_MUX2 U198 ( .A(n358), .B(n359), .S(n284), .Z(sum[11]) );
  GTECH_ADD_AB U199 ( .A(n360), .B(n361), .S(n359) );
  GTECH_XNOR2 U200 ( .A(n362), .B(n361), .Z(n358) );
  GTECH_ADD_AB U201 ( .A(b[11]), .B(a[11]), .S(n361) );
  GTECH_AND2 U202 ( .A(n363), .B(n364), .Z(n362) );
  GTECH_OAI21 U203 ( .A(b[10]), .B(a[10]), .C(n365), .Z(n364) );
  GTECH_OAI21 U204 ( .A(n366), .B(n363), .C(n367), .Z(sum[10]) );
  GTECH_MUX2 U205 ( .A(n368), .B(n369), .S(b[10]), .Z(n367) );
  GTECH_OR_NOT U206 ( .A(a[10]), .B(n366), .Z(n369) );
  GTECH_ADD_AB U207 ( .A(a[10]), .B(n366), .S(n368) );
  GTECH_AOI21 U208 ( .A(n370), .B(n284), .C(n365), .Z(n366) );
  GTECH_OAI2N2 U209 ( .A(n288), .B(n287), .C(a[9]), .D(b[9]), .Z(n365) );
  GTECH_NOT U210 ( .A(n291), .Z(n284) );
  GTECH_ADD_AB U211 ( .A(cin), .B(n371), .S(sum[0]) );
  GTECH_OAI21 U212 ( .A(n337), .B(n372), .C(n357), .Z(cout) );
  GTECH_NAND3 U213 ( .A(n349), .B(n355), .C(n337), .Z(n357) );
  GTECH_NAND2 U214 ( .A(a[12]), .B(b[12]), .Z(n349) );
  GTECH_AOI21 U215 ( .A(n343), .B(a[15]), .C(n373), .Z(n372) );
  GTECH_OA21 U216 ( .A(a[15]), .B(n343), .C(b[15]), .Z(n373) );
  GTECH_NAND2 U217 ( .A(n374), .B(n342), .Z(n343) );
  GTECH_NAND2 U218 ( .A(a[14]), .B(b[14]), .Z(n342) );
  GTECH_AO21 U219 ( .A(n347), .B(n350), .C(n340), .Z(n374) );
  GTECH_NOR2 U220 ( .A(b[14]), .B(a[14]), .Z(n340) );
  GTECH_NAND2 U221 ( .A(b[13]), .B(a[13]), .Z(n350) );
  GTECH_OR_NOT U222 ( .A(n348), .B(n355), .Z(n347) );
  GTECH_OR2 U223 ( .A(b[12]), .B(a[12]), .Z(n355) );
  GTECH_NOR2 U224 ( .A(a[13]), .B(b[13]), .Z(n348) );
  GTECH_OA21 U225 ( .A(n375), .B(n291), .C(n290), .Z(n337) );
  GTECH_NAND3 U226 ( .A(n287), .B(n285), .C(n291), .Z(n290) );
  GTECH_NAND2 U227 ( .A(b[8]), .B(a[8]), .Z(n287) );
  GTECH_MUX2 U228 ( .A(n376), .B(n317), .S(n294), .Z(n291) );
  GTECH_NOT U229 ( .A(n314), .Z(n294) );
  GTECH_MUX2 U230 ( .A(n371), .B(n377), .S(cin), .Z(n314) );
  GTECH_OA21 U231 ( .A(a[3]), .B(n320), .C(n378), .Z(n377) );
  GTECH_AO21 U232 ( .A(n320), .B(a[3]), .C(b[3]), .Z(n378) );
  GTECH_ADD_ABC U233 ( .A(n326), .B(a[2]), .C(b[2]), .COUT(n320) );
  GTECH_OA21 U234 ( .A(n328), .B(n334), .C(n330), .Z(n326) );
  GTECH_OR2 U235 ( .A(b[1]), .B(a[1]), .Z(n330) );
  GTECH_AND2 U236 ( .A(b[1]), .B(a[1]), .Z(n328) );
  GTECH_AND_NOT U237 ( .A(n334), .B(n329), .Z(n371) );
  GTECH_AND2 U238 ( .A(b[0]), .B(a[0]), .Z(n329) );
  GTECH_OR2 U239 ( .A(b[0]), .B(a[0]), .Z(n334) );
  GTECH_OR_NOT U240 ( .A(n309), .B(n316), .Z(n317) );
  GTECH_AND2 U241 ( .A(a[4]), .B(b[4]), .Z(n309) );
  GTECH_AOI21 U242 ( .A(n302), .B(a[7]), .C(n379), .Z(n376) );
  GTECH_OA21 U243 ( .A(a[7]), .B(n302), .C(b[7]), .Z(n379) );
  GTECH_NAND2 U244 ( .A(n380), .B(n297), .Z(n302) );
  GTECH_OR_NOT U245 ( .A(n300), .B(b[6]), .Z(n297) );
  GTECH_AO21 U246 ( .A(n300), .B(n299), .C(n307), .Z(n380) );
  GTECH_OAI21 U247 ( .A(n308), .B(n316), .C(n310), .Z(n307) );
  GTECH_OR2 U248 ( .A(b[5]), .B(a[5]), .Z(n310) );
  GTECH_OR2 U249 ( .A(a[4]), .B(b[4]), .Z(n316) );
  GTECH_AND2 U250 ( .A(b[5]), .B(a[5]), .Z(n308) );
  GTECH_NOT U251 ( .A(b[6]), .Z(n299) );
  GTECH_NOT U252 ( .A(a[6]), .Z(n300) );
  GTECH_AOI21 U253 ( .A(n360), .B(a[11]), .C(n381), .Z(n375) );
  GTECH_OA21 U254 ( .A(a[11]), .B(n360), .C(b[11]), .Z(n381) );
  GTECH_NAND2 U255 ( .A(n382), .B(n363), .Z(n360) );
  GTECH_NAND2 U256 ( .A(a[10]), .B(b[10]), .Z(n363) );
  GTECH_OAI21 U257 ( .A(a[10]), .B(b[10]), .C(n370), .Z(n382) );
  GTECH_OAI2N2 U258 ( .A(n383), .B(n288), .C(a[9]), .D(b[9]), .Z(n370) );
  GTECH_NOR2 U259 ( .A(a[9]), .B(b[9]), .Z(n288) );
  GTECH_NOT U260 ( .A(n285), .Z(n383) );
  GTECH_OR2 U261 ( .A(a[8]), .B(b[8]), .Z(n285) );
endmodule

