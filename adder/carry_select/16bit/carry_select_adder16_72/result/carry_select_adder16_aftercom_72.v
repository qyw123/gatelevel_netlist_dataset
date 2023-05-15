
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382;

  GTECH_MUX2 U144 ( .A(n283), .B(n284), .S(n285), .Z(sum[9]) );
  GTECH_XNOR2 U145 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XOR2 U146 ( .A(n288), .B(n286), .Z(n283) );
  GTECH_AOI21 U147 ( .A(a[9]), .B(b[9]), .C(n289), .Z(n286) );
  GTECH_OAI21 U148 ( .A(n290), .B(n285), .C(n291), .Z(sum[8]) );
  GTECH_MUX2 U149 ( .A(n292), .B(n293), .S(n294), .Z(sum[7]) );
  GTECH_XOR2 U150 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_AOI21 U151 ( .A(n297), .B(n298), .C(n299), .Z(n296) );
  GTECH_XNOR2 U152 ( .A(n295), .B(n300), .Z(n292) );
  GTECH_XNOR2 U153 ( .A(a[7]), .B(b[7]), .Z(n295) );
  GTECH_MUX2 U154 ( .A(n301), .B(n302), .S(n303), .Z(sum[6]) );
  GTECH_AOI21 U155 ( .A(n304), .B(n305), .C(n298), .Z(n303) );
  GTECH_OA21 U156 ( .A(n306), .B(n307), .C(n308), .Z(n298) );
  GTECH_XOR2 U157 ( .A(b[6]), .B(a[6]), .Z(n302) );
  GTECH_NAND2 U158 ( .A(n297), .B(n309), .Z(n301) );
  GTECH_XOR2 U159 ( .A(n310), .B(n311), .Z(sum[5]) );
  GTECH_OA21 U160 ( .A(n306), .B(n304), .C(n312), .Z(n311) );
  GTECH_AND_NOT U161 ( .A(n308), .B(n307), .Z(n310) );
  GTECH_XNOR2 U162 ( .A(n313), .B(n304), .Z(sum[4]) );
  GTECH_NOT U163 ( .A(n294), .Z(n304) );
  GTECH_MUX2 U164 ( .A(n314), .B(n315), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U165 ( .A(n316), .B(n317), .Z(n315) );
  GTECH_XOR2 U166 ( .A(n318), .B(n316), .Z(n314) );
  GTECH_XOR2 U167 ( .A(a[3]), .B(b[3]), .Z(n316) );
  GTECH_ADD_ABC U168 ( .A(a[2]), .B(n319), .C(b[2]), .COUT(n318) );
  GTECH_MUX2 U169 ( .A(n320), .B(n321), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U170 ( .A(n322), .B(n323), .Z(n321) );
  GTECH_XOR2 U171 ( .A(n319), .B(n323), .Z(n320) );
  GTECH_XOR2 U172 ( .A(a[2]), .B(b[2]), .Z(n323) );
  GTECH_OA21 U173 ( .A(n324), .B(n325), .C(n326), .Z(n319) );
  GTECH_MUX2 U174 ( .A(n327), .B(n328), .S(n329), .Z(sum[1]) );
  GTECH_AND_NOT U175 ( .A(n326), .B(n324), .Z(n329) );
  GTECH_OAI21 U176 ( .A(cin), .B(n325), .C(n330), .Z(n328) );
  GTECH_AO21 U177 ( .A(n330), .B(cin), .C(n325), .Z(n327) );
  GTECH_AND2 U178 ( .A(a[0]), .B(b[0]), .Z(n325) );
  GTECH_MUX2 U179 ( .A(n331), .B(n332), .S(n333), .Z(sum[15]) );
  GTECH_XNOR2 U180 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_XOR2 U181 ( .A(n334), .B(n336), .Z(n331) );
  GTECH_AOI21 U182 ( .A(n337), .B(n338), .C(n339), .Z(n336) );
  GTECH_XNOR2 U183 ( .A(a[15]), .B(b[15]), .Z(n334) );
  GTECH_MUX2 U184 ( .A(n340), .B(n341), .S(n342), .Z(sum[14]) );
  GTECH_AOI21 U185 ( .A(n333), .B(n343), .C(n338), .Z(n342) );
  GTECH_AOI21 U186 ( .A(n344), .B(n345), .C(n346), .Z(n338) );
  GTECH_NOT U187 ( .A(n347), .Z(n333) );
  GTECH_XOR2 U188 ( .A(b[14]), .B(a[14]), .Z(n341) );
  GTECH_NAND2 U189 ( .A(n337), .B(n348), .Z(n340) );
  GTECH_MUX2 U190 ( .A(n349), .B(n350), .S(n351), .Z(sum[13]) );
  GTECH_AOI21 U191 ( .A(n345), .B(n347), .C(n352), .Z(n351) );
  GTECH_OR2 U192 ( .A(n346), .B(n353), .Z(n350) );
  GTECH_XOR2 U193 ( .A(b[13]), .B(a[13]), .Z(n349) );
  GTECH_NAND2 U194 ( .A(n354), .B(n355), .Z(sum[12]) );
  GTECH_AO21 U195 ( .A(n345), .B(n356), .C(n347), .Z(n354) );
  GTECH_MUX2 U196 ( .A(n357), .B(n358), .S(n359), .Z(sum[11]) );
  GTECH_XNOR2 U197 ( .A(n360), .B(n361), .Z(n358) );
  GTECH_XOR2 U198 ( .A(n360), .B(n362), .Z(n357) );
  GTECH_AOI21 U199 ( .A(n363), .B(n364), .C(n365), .Z(n362) );
  GTECH_XNOR2 U200 ( .A(a[11]), .B(b[11]), .Z(n360) );
  GTECH_MUX2 U201 ( .A(n366), .B(n367), .S(n368), .Z(sum[10]) );
  GTECH_AOI21 U202 ( .A(n369), .B(n359), .C(n364), .Z(n368) );
  GTECH_OAI2N2 U203 ( .A(n289), .B(n287), .C(a[9]), .D(b[9]), .Z(n364) );
  GTECH_NOT U204 ( .A(n370), .Z(n289) );
  GTECH_NOT U205 ( .A(n285), .Z(n359) );
  GTECH_XOR2 U206 ( .A(b[10]), .B(a[10]), .Z(n367) );
  GTECH_NAND2 U207 ( .A(n363), .B(n371), .Z(n366) );
  GTECH_XNOR2 U208 ( .A(cin), .B(n372), .Z(sum[0]) );
  GTECH_OAI21 U209 ( .A(n347), .B(n373), .C(n355), .Z(cout) );
  GTECH_NAND3 U210 ( .A(n356), .B(n345), .C(n347), .Z(n355) );
  GTECH_NAND2 U211 ( .A(b[12]), .B(a[12]), .Z(n345) );
  GTECH_AOI21 U212 ( .A(n335), .B(a[15]), .C(n374), .Z(n373) );
  GTECH_OA21 U213 ( .A(a[15]), .B(n335), .C(b[15]), .Z(n374) );
  GTECH_AO21 U214 ( .A(n337), .B(n343), .C(n339), .Z(n335) );
  GTECH_NOT U215 ( .A(n348), .Z(n339) );
  GTECH_NAND2 U216 ( .A(b[14]), .B(a[14]), .Z(n348) );
  GTECH_AOI21 U217 ( .A(n344), .B(n352), .C(n346), .Z(n343) );
  GTECH_AND_NOT U218 ( .A(n375), .B(a[13]), .Z(n346) );
  GTECH_NOT U219 ( .A(b[13]), .Z(n375) );
  GTECH_NOT U220 ( .A(n356), .Z(n352) );
  GTECH_OR2 U221 ( .A(a[12]), .B(b[12]), .Z(n356) );
  GTECH_NOT U222 ( .A(n353), .Z(n344) );
  GTECH_AND2 U223 ( .A(a[13]), .B(b[13]), .Z(n353) );
  GTECH_OR2 U224 ( .A(a[14]), .B(b[14]), .Z(n337) );
  GTECH_OA21 U225 ( .A(n285), .B(n376), .C(n291), .Z(n347) );
  GTECH_NAND2 U226 ( .A(n285), .B(n290), .Z(n291) );
  GTECH_AND2 U227 ( .A(n287), .B(n288), .Z(n290) );
  GTECH_NAND2 U228 ( .A(b[8]), .B(a[8]), .Z(n287) );
  GTECH_OAI21 U229 ( .A(a[11]), .B(n361), .C(n377), .Z(n376) );
  GTECH_AO21 U230 ( .A(n361), .B(a[11]), .C(b[11]), .Z(n377) );
  GTECH_AO21 U231 ( .A(n363), .B(n369), .C(n365), .Z(n361) );
  GTECH_NOT U232 ( .A(n371), .Z(n365) );
  GTECH_NAND2 U233 ( .A(b[10]), .B(a[10]), .Z(n371) );
  GTECH_AO22 U234 ( .A(n288), .B(n370), .C(a[9]), .D(b[9]), .Z(n369) );
  GTECH_OR2 U235 ( .A(b[9]), .B(a[9]), .Z(n370) );
  GTECH_OR2 U236 ( .A(a[8]), .B(b[8]), .Z(n288) );
  GTECH_OR2 U237 ( .A(a[10]), .B(b[10]), .Z(n363) );
  GTECH_MUX2 U238 ( .A(n378), .B(n313), .S(n294), .Z(n285) );
  GTECH_MUX2 U239 ( .A(n372), .B(n379), .S(cin), .Z(n294) );
  GTECH_AOI21 U240 ( .A(n317), .B(a[3]), .C(n380), .Z(n379) );
  GTECH_OA21 U241 ( .A(a[3]), .B(n317), .C(b[3]), .Z(n380) );
  GTECH_ADD_ABC U242 ( .A(n322), .B(a[2]), .C(b[2]), .COUT(n317) );
  GTECH_OA21 U243 ( .A(n324), .B(n330), .C(n326), .Z(n322) );
  GTECH_OR2 U244 ( .A(b[1]), .B(a[1]), .Z(n326) );
  GTECH_OR2 U245 ( .A(b[0]), .B(a[0]), .Z(n330) );
  GTECH_AND2 U246 ( .A(a[1]), .B(b[1]), .Z(n324) );
  GTECH_XNOR2 U247 ( .A(a[0]), .B(b[0]), .Z(n372) );
  GTECH_NOT U248 ( .A(n381), .Z(n313) );
  GTECH_AND_NOT U249 ( .A(n312), .B(n306), .Z(n381) );
  GTECH_AND2 U250 ( .A(b[4]), .B(a[4]), .Z(n306) );
  GTECH_AOI21 U251 ( .A(n300), .B(a[7]), .C(n382), .Z(n378) );
  GTECH_OA21 U252 ( .A(a[7]), .B(n300), .C(b[7]), .Z(n382) );
  GTECH_AO21 U253 ( .A(n297), .B(n305), .C(n299), .Z(n300) );
  GTECH_NOT U254 ( .A(n309), .Z(n299) );
  GTECH_NAND2 U255 ( .A(b[6]), .B(a[6]), .Z(n309) );
  GTECH_OA21 U256 ( .A(n307), .B(n312), .C(n308), .Z(n305) );
  GTECH_OR2 U257 ( .A(b[5]), .B(a[5]), .Z(n308) );
  GTECH_OR2 U258 ( .A(a[4]), .B(b[4]), .Z(n312) );
  GTECH_AND2 U259 ( .A(a[5]), .B(b[5]), .Z(n307) );
  GTECH_OR2 U260 ( .A(a[6]), .B(b[6]), .Z(n297) );
endmodule

