
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384;

  GTECH_MUX2 U142 ( .A(n281), .B(n282), .S(n283), .Z(sum[9]) );
  GTECH_XNOR2 U143 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_XNOR2 U144 ( .A(n285), .B(n286), .Z(n281) );
  GTECH_OA21 U145 ( .A(b[9]), .B(a[9]), .C(n287), .Z(n285) );
  GTECH_XNOR2 U146 ( .A(n283), .B(n288), .Z(sum[8]) );
  GTECH_MUX2 U147 ( .A(n289), .B(n290), .S(n291), .Z(sum[7]) );
  GTECH_XOR2 U148 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_XOR2 U149 ( .A(n292), .B(n294), .Z(n289) );
  GTECH_OA21 U150 ( .A(n295), .B(n296), .C(n297), .Z(n294) );
  GTECH_XNOR2 U151 ( .A(a[7]), .B(b[7]), .Z(n292) );
  GTECH_MUX2 U152 ( .A(n298), .B(n299), .S(n291), .Z(sum[6]) );
  GTECH_XNOR2 U153 ( .A(n300), .B(n301), .Z(n299) );
  GTECH_XNOR2 U154 ( .A(n300), .B(n296), .Z(n298) );
  GTECH_AO21 U155 ( .A(n302), .B(n303), .C(n304), .Z(n296) );
  GTECH_AND_NOT U156 ( .A(n297), .B(n295), .Z(n300) );
  GTECH_MUX2 U157 ( .A(n305), .B(n306), .S(n307), .Z(sum[5]) );
  GTECH_NOT U158 ( .A(n291), .Z(n307) );
  GTECH_XNOR2 U159 ( .A(n303), .B(n308), .Z(n306) );
  GTECH_XNOR2 U160 ( .A(n308), .B(n309), .Z(n305) );
  GTECH_OA21 U161 ( .A(b[5]), .B(a[5]), .C(n302), .Z(n308) );
  GTECH_XOR2 U162 ( .A(n291), .B(n310), .Z(sum[4]) );
  GTECH_MUX2 U163 ( .A(n311), .B(n312), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U164 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_XOR2 U165 ( .A(n313), .B(n315), .Z(n311) );
  GTECH_AOI21 U166 ( .A(n316), .B(n317), .C(n318), .Z(n315) );
  GTECH_XNOR2 U167 ( .A(a[3]), .B(b[3]), .Z(n313) );
  GTECH_MUX2 U168 ( .A(n319), .B(n320), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U169 ( .A(n321), .B(n322), .Z(n320) );
  GTECH_XOR2 U170 ( .A(n321), .B(n317), .Z(n319) );
  GTECH_OA21 U171 ( .A(n323), .B(n324), .C(n325), .Z(n317) );
  GTECH_AND_NOT U172 ( .A(n316), .B(n318), .Z(n321) );
  GTECH_MUX2 U173 ( .A(n326), .B(n327), .S(n328), .Z(sum[1]) );
  GTECH_OA21 U174 ( .A(a[1]), .B(b[1]), .C(n329), .Z(n328) );
  GTECH_NOT U175 ( .A(n324), .Z(n329) );
  GTECH_NOT U176 ( .A(n330), .Z(n327) );
  GTECH_OA21 U177 ( .A(n323), .B(cin), .C(n331), .Z(n330) );
  GTECH_AO21 U178 ( .A(cin), .B(n331), .C(n323), .Z(n326) );
  GTECH_AND_NOT U179 ( .A(b[0]), .B(n332), .Z(n323) );
  GTECH_MUX2 U180 ( .A(n333), .B(n334), .S(n335), .Z(sum[15]) );
  GTECH_XOR2 U181 ( .A(n336), .B(n337), .Z(n334) );
  GTECH_OA21 U182 ( .A(n338), .B(n339), .C(n340), .Z(n336) );
  GTECH_XOR2 U183 ( .A(n341), .B(n337), .Z(n333) );
  GTECH_XOR2 U184 ( .A(a[15]), .B(b[15]), .Z(n337) );
  GTECH_MUX2 U185 ( .A(n342), .B(n343), .S(n335), .Z(sum[14]) );
  GTECH_XOR2 U186 ( .A(n344), .B(n339), .Z(n343) );
  GTECH_AOI21 U187 ( .A(n345), .B(n346), .C(n347), .Z(n339) );
  GTECH_XOR2 U188 ( .A(n344), .B(n348), .Z(n342) );
  GTECH_OA21 U189 ( .A(b[14]), .B(a[14]), .C(n349), .Z(n344) );
  GTECH_NOT U190 ( .A(n338), .Z(n349) );
  GTECH_MUX2 U191 ( .A(n350), .B(n351), .S(n335), .Z(sum[13]) );
  GTECH_XNOR2 U192 ( .A(n345), .B(n352), .Z(n351) );
  GTECH_XOR2 U193 ( .A(n353), .B(n352), .Z(n350) );
  GTECH_OA21 U194 ( .A(b[13]), .B(a[13]), .C(n346), .Z(n352) );
  GTECH_OR_NOT U195 ( .A(n354), .B(n355), .Z(sum[12]) );
  GTECH_AO21 U196 ( .A(n353), .B(n345), .C(n335), .Z(n355) );
  GTECH_MUX2 U197 ( .A(n356), .B(n357), .S(n283), .Z(sum[11]) );
  GTECH_XNOR2 U198 ( .A(n358), .B(n359), .Z(n357) );
  GTECH_XOR2 U199 ( .A(n358), .B(n360), .Z(n356) );
  GTECH_AOI21 U200 ( .A(n361), .B(n362), .C(n363), .Z(n360) );
  GTECH_XNOR2 U201 ( .A(a[11]), .B(b[11]), .Z(n358) );
  GTECH_MUX2 U202 ( .A(n364), .B(n365), .S(n283), .Z(sum[10]) );
  GTECH_XOR2 U203 ( .A(n366), .B(n367), .Z(n365) );
  GTECH_XOR2 U204 ( .A(n366), .B(n362), .Z(n364) );
  GTECH_AOI21 U205 ( .A(n287), .B(n286), .C(n368), .Z(n362) );
  GTECH_NOR2 U206 ( .A(n369), .B(n363), .Z(n366) );
  GTECH_XOR2 U207 ( .A(cin), .B(n370), .Z(sum[0]) );
  GTECH_AO21 U208 ( .A(n371), .B(n372), .C(n354), .Z(cout) );
  GTECH_AND3 U209 ( .A(n353), .B(n345), .C(n335), .Z(n354) );
  GTECH_NAND2 U210 ( .A(a[12]), .B(b[12]), .Z(n345) );
  GTECH_NOT U211 ( .A(n373), .Z(n353) );
  GTECH_ADD_ABC U212 ( .A(a[15]), .B(n341), .C(b[15]), .COUT(n372) );
  GTECH_OA21 U213 ( .A(n338), .B(n348), .C(n340), .Z(n341) );
  GTECH_NOT U214 ( .A(n374), .Z(n340) );
  GTECH_NOR2 U215 ( .A(a[14]), .B(b[14]), .Z(n374) );
  GTECH_AOI21 U216 ( .A(n373), .B(n346), .C(n347), .Z(n348) );
  GTECH_NOR2 U217 ( .A(a[13]), .B(b[13]), .Z(n347) );
  GTECH_NAND2 U218 ( .A(a[13]), .B(b[13]), .Z(n346) );
  GTECH_NOR2 U219 ( .A(a[12]), .B(b[12]), .Z(n373) );
  GTECH_AND2 U220 ( .A(a[14]), .B(b[14]), .Z(n338) );
  GTECH_NOT U221 ( .A(n335), .Z(n371) );
  GTECH_MUX2 U222 ( .A(n288), .B(n375), .S(n283), .Z(n335) );
  GTECH_MUX2 U223 ( .A(n310), .B(n376), .S(n291), .Z(n283) );
  GTECH_MUX2 U224 ( .A(n370), .B(n377), .S(cin), .Z(n291) );
  GTECH_OA21 U225 ( .A(a[3]), .B(n314), .C(n378), .Z(n377) );
  GTECH_AO21 U226 ( .A(a[3]), .B(n314), .C(b[3]), .Z(n378) );
  GTECH_AO21 U227 ( .A(n322), .B(n316), .C(n318), .Z(n314) );
  GTECH_AND2 U228 ( .A(a[2]), .B(b[2]), .Z(n318) );
  GTECH_OR_NOT U229 ( .A(a[2]), .B(n379), .Z(n316) );
  GTECH_NOT U230 ( .A(b[2]), .Z(n379) );
  GTECH_OA21 U231 ( .A(n331), .B(n324), .C(n325), .Z(n322) );
  GTECH_NOT U232 ( .A(n380), .Z(n325) );
  GTECH_NOR2 U233 ( .A(b[1]), .B(a[1]), .Z(n380) );
  GTECH_AND2 U234 ( .A(b[1]), .B(a[1]), .Z(n324) );
  GTECH_OR_NOT U235 ( .A(b[0]), .B(n332), .Z(n331) );
  GTECH_NOT U236 ( .A(a[0]), .Z(n332) );
  GTECH_XOR2 U237 ( .A(a[0]), .B(b[0]), .Z(n370) );
  GTECH_OA21 U238 ( .A(a[7]), .B(n381), .C(n382), .Z(n376) );
  GTECH_AO21 U239 ( .A(a[7]), .B(n381), .C(b[7]), .Z(n382) );
  GTECH_NOT U240 ( .A(n293), .Z(n381) );
  GTECH_OA21 U241 ( .A(n301), .B(n295), .C(n297), .Z(n293) );
  GTECH_NAND2 U242 ( .A(a[6]), .B(b[6]), .Z(n297) );
  GTECH_NOR2 U243 ( .A(a[6]), .B(b[6]), .Z(n295) );
  GTECH_NOT U244 ( .A(n383), .Z(n301) );
  GTECH_AOI21 U245 ( .A(n309), .B(n302), .C(n304), .Z(n383) );
  GTECH_NOR2 U246 ( .A(a[5]), .B(b[5]), .Z(n304) );
  GTECH_NAND2 U247 ( .A(a[5]), .B(b[5]), .Z(n302) );
  GTECH_AND_NOT U248 ( .A(n303), .B(n309), .Z(n310) );
  GTECH_NOR2 U249 ( .A(b[4]), .B(a[4]), .Z(n309) );
  GTECH_NAND2 U250 ( .A(b[4]), .B(a[4]), .Z(n303) );
  GTECH_AOI21 U251 ( .A(n359), .B(a[11]), .C(n384), .Z(n375) );
  GTECH_OA21 U252 ( .A(n359), .B(a[11]), .C(b[11]), .Z(n384) );
  GTECH_AO21 U253 ( .A(n367), .B(n361), .C(n363), .Z(n359) );
  GTECH_AND2 U254 ( .A(a[10]), .B(b[10]), .Z(n363) );
  GTECH_NOT U255 ( .A(n369), .Z(n361) );
  GTECH_NOR2 U256 ( .A(a[10]), .B(b[10]), .Z(n369) );
  GTECH_AOI21 U257 ( .A(n284), .B(n287), .C(n368), .Z(n367) );
  GTECH_NOR2 U258 ( .A(b[9]), .B(a[9]), .Z(n368) );
  GTECH_NAND2 U259 ( .A(b[9]), .B(a[9]), .Z(n287) );
  GTECH_OR_NOT U260 ( .A(n284), .B(n286), .Z(n288) );
  GTECH_NAND2 U261 ( .A(b[8]), .B(a[8]), .Z(n286) );
  GTECH_NOR2 U262 ( .A(b[8]), .B(a[8]), .Z(n284) );
endmodule

