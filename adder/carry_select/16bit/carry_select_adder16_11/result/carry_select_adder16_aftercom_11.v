
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379;

  GTECH_MUX2 U131 ( .A(n270), .B(n271), .S(n272), .Z(sum[9]) );
  GTECH_XOR2 U132 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_XOR2 U133 ( .A(n274), .B(n275), .Z(n270) );
  GTECH_OA21 U134 ( .A(a[9]), .B(b[9]), .C(n276), .Z(n274) );
  GTECH_OAI21 U135 ( .A(n277), .B(n278), .C(n279), .Z(sum[8]) );
  GTECH_NOT U136 ( .A(n280), .Z(n279) );
  GTECH_MUX2 U137 ( .A(n281), .B(n282), .S(n283), .Z(sum[7]) );
  GTECH_XOR2 U138 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_OA21 U139 ( .A(a[6]), .B(n286), .C(n287), .Z(n284) );
  GTECH_NOT U140 ( .A(n288), .Z(n287) );
  GTECH_AOI21 U141 ( .A(n286), .B(a[6]), .C(b[6]), .Z(n288) );
  GTECH_XOR2 U142 ( .A(n285), .B(n289), .Z(n281) );
  GTECH_XNOR2 U143 ( .A(n290), .B(b[7]), .Z(n285) );
  GTECH_MUX2 U144 ( .A(n291), .B(n292), .S(n283), .Z(sum[6]) );
  GTECH_XNOR2 U145 ( .A(n293), .B(n286), .Z(n292) );
  GTECH_OAI21 U146 ( .A(n294), .B(n295), .C(n296), .Z(n286) );
  GTECH_XNOR2 U147 ( .A(n293), .B(n297), .Z(n291) );
  GTECH_XNOR2 U148 ( .A(a[6]), .B(b[6]), .Z(n293) );
  GTECH_NOT U149 ( .A(n298), .Z(sum[5]) );
  GTECH_MUX2 U150 ( .A(n299), .B(n300), .S(n301), .Z(n298) );
  GTECH_AND_NOT U151 ( .A(n296), .B(n294), .Z(n301) );
  GTECH_ADD_ABC U152 ( .A(a[4]), .B(n302), .C(b[4]), .COUT(n300) );
  GTECH_MUX2 U153 ( .A(n303), .B(n304), .S(n305), .Z(n302) );
  GTECH_OAI21 U154 ( .A(n306), .B(n307), .C(n308), .Z(n303) );
  GTECH_OA21 U155 ( .A(n309), .B(n283), .C(n295), .Z(n299) );
  GTECH_NAND2 U156 ( .A(b[4]), .B(a[4]), .Z(n295) );
  GTECH_XNOR2 U157 ( .A(n283), .B(n310), .Z(sum[4]) );
  GTECH_MUX2 U158 ( .A(n311), .B(n312), .S(n305), .Z(sum[3]) );
  GTECH_XOR2 U159 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_OA21 U160 ( .A(a[2]), .B(n315), .C(n316), .Z(n313) );
  GTECH_NOT U161 ( .A(n317), .Z(n316) );
  GTECH_AOI21 U162 ( .A(n315), .B(a[2]), .C(b[2]), .Z(n317) );
  GTECH_XNOR2 U163 ( .A(n314), .B(n306), .Z(n311) );
  GTECH_XOR2 U164 ( .A(a[3]), .B(b[3]), .Z(n314) );
  GTECH_MUX2 U165 ( .A(n318), .B(n319), .S(n305), .Z(sum[2]) );
  GTECH_XNOR2 U166 ( .A(n320), .B(n315), .Z(n319) );
  GTECH_OAI21 U167 ( .A(n321), .B(n322), .C(n323), .Z(n315) );
  GTECH_XNOR2 U168 ( .A(n320), .B(n324), .Z(n318) );
  GTECH_XNOR2 U169 ( .A(a[2]), .B(b[2]), .Z(n320) );
  GTECH_MUX2 U170 ( .A(n325), .B(n326), .S(n327), .Z(sum[1]) );
  GTECH_AND_NOT U171 ( .A(n323), .B(n321), .Z(n327) );
  GTECH_NOT U172 ( .A(n328), .Z(n326) );
  GTECH_AOI21 U173 ( .A(n305), .B(n322), .C(n329), .Z(n328) );
  GTECH_OAI21 U174 ( .A(n329), .B(n305), .C(n322), .Z(n325) );
  GTECH_MUX2 U175 ( .A(n330), .B(n331), .S(n332), .Z(sum[15]) );
  GTECH_XNOR2 U176 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_XNOR2 U177 ( .A(n335), .B(n333), .Z(n330) );
  GTECH_XNOR2 U178 ( .A(a[15]), .B(b[15]), .Z(n333) );
  GTECH_ADD_ABC U179 ( .A(a[14]), .B(n336), .C(b[14]), .COUT(n335) );
  GTECH_MUX2 U180 ( .A(n337), .B(n338), .S(n332), .Z(sum[14]) );
  GTECH_XOR2 U181 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U182 ( .A(n336), .B(n340), .Z(n337) );
  GTECH_XOR2 U183 ( .A(a[14]), .B(b[14]), .Z(n340) );
  GTECH_OA21 U184 ( .A(n341), .B(n342), .C(n343), .Z(n336) );
  GTECH_MUX2 U185 ( .A(n344), .B(n345), .S(n332), .Z(sum[13]) );
  GTECH_XOR2 U186 ( .A(n346), .B(n347), .Z(n345) );
  GTECH_XOR2 U187 ( .A(n347), .B(n342), .Z(n344) );
  GTECH_AOI21 U188 ( .A(n348), .B(n349), .C(n341), .Z(n347) );
  GTECH_NAND2 U189 ( .A(n350), .B(n351), .Z(sum[12]) );
  GTECH_OAI21 U190 ( .A(n342), .B(n352), .C(n332), .Z(n350) );
  GTECH_MUX2 U191 ( .A(n353), .B(n354), .S(n272), .Z(sum[11]) );
  GTECH_XNOR2 U192 ( .A(n355), .B(n356), .Z(n354) );
  GTECH_XNOR2 U193 ( .A(n357), .B(n355), .Z(n353) );
  GTECH_XNOR2 U194 ( .A(a[11]), .B(b[11]), .Z(n355) );
  GTECH_ADD_ABC U195 ( .A(a[10]), .B(n358), .C(b[10]), .COUT(n357) );
  GTECH_MUX2 U196 ( .A(n359), .B(n360), .S(n272), .Z(sum[10]) );
  GTECH_XOR2 U197 ( .A(n361), .B(n362), .Z(n360) );
  GTECH_XOR2 U198 ( .A(n358), .B(n362), .Z(n359) );
  GTECH_XOR2 U199 ( .A(a[10]), .B(b[10]), .Z(n362) );
  GTECH_OA21 U200 ( .A(n363), .B(n275), .C(n364), .Z(n358) );
  GTECH_NOT U201 ( .A(n365), .Z(n275) );
  GTECH_XNOR2 U202 ( .A(n305), .B(n304), .Z(sum[0]) );
  GTECH_NOT U203 ( .A(n366), .Z(n304) );
  GTECH_OAI21 U204 ( .A(n367), .B(n368), .C(n351), .Z(cout) );
  GTECH_OR3 U205 ( .A(n352), .B(n342), .C(n332), .Z(n351) );
  GTECH_NOT U206 ( .A(n367), .Z(n332) );
  GTECH_AND2 U207 ( .A(a[12]), .B(b[12]), .Z(n342) );
  GTECH_NOT U208 ( .A(n346), .Z(n352) );
  GTECH_AOI21 U209 ( .A(n334), .B(a[15]), .C(n369), .Z(n368) );
  GTECH_OA21 U210 ( .A(a[15]), .B(n334), .C(b[15]), .Z(n369) );
  GTECH_ADD_ABC U211 ( .A(a[14]), .B(n339), .C(b[14]), .COUT(n334) );
  GTECH_OA21 U212 ( .A(n341), .B(n346), .C(n343), .Z(n339) );
  GTECH_OR_NOT U213 ( .A(a[13]), .B(n349), .Z(n343) );
  GTECH_NOT U214 ( .A(b[13]), .Z(n349) );
  GTECH_OR2 U215 ( .A(b[12]), .B(a[12]), .Z(n346) );
  GTECH_AND_NOT U216 ( .A(b[13]), .B(n348), .Z(n341) );
  GTECH_NOT U217 ( .A(a[13]), .Z(n348) );
  GTECH_AOI21 U218 ( .A(n272), .B(n370), .C(n280), .Z(n367) );
  GTECH_AND2 U219 ( .A(n277), .B(n278), .Z(n280) );
  GTECH_NOT U220 ( .A(n272), .Z(n278) );
  GTECH_AND2 U221 ( .A(n273), .B(n365), .Z(n277) );
  GTECH_NAND2 U222 ( .A(a[8]), .B(b[8]), .Z(n365) );
  GTECH_OA21 U223 ( .A(a[11]), .B(n356), .C(n371), .Z(n370) );
  GTECH_NOT U224 ( .A(n372), .Z(n371) );
  GTECH_AOI21 U225 ( .A(n356), .B(a[11]), .C(b[11]), .Z(n372) );
  GTECH_ADD_ABC U226 ( .A(n361), .B(a[10]), .C(b[10]), .COUT(n356) );
  GTECH_OA21 U227 ( .A(n363), .B(n273), .C(n364), .Z(n361) );
  GTECH_OR2 U228 ( .A(a[9]), .B(b[9]), .Z(n364) );
  GTECH_OR2 U229 ( .A(a[8]), .B(b[8]), .Z(n273) );
  GTECH_NOT U230 ( .A(n276), .Z(n363) );
  GTECH_NAND2 U231 ( .A(b[9]), .B(a[9]), .Z(n276) );
  GTECH_MUX2 U232 ( .A(n373), .B(n310), .S(n283), .Z(n272) );
  GTECH_MUX2 U233 ( .A(n374), .B(n366), .S(n305), .Z(n283) );
  GTECH_NOT U234 ( .A(cin), .Z(n305) );
  GTECH_OR_NOT U235 ( .A(n329), .B(n322), .Z(n366) );
  GTECH_NAND2 U236 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_OA21 U237 ( .A(n306), .B(n307), .C(n308), .Z(n374) );
  GTECH_OAI21 U238 ( .A(a[3]), .B(n375), .C(b[3]), .Z(n308) );
  GTECH_NOT U239 ( .A(n306), .Z(n375) );
  GTECH_NOT U240 ( .A(a[3]), .Z(n307) );
  GTECH_AOI21 U241 ( .A(n324), .B(a[2]), .C(n376), .Z(n306) );
  GTECH_OA21 U242 ( .A(a[2]), .B(n324), .C(b[2]), .Z(n376) );
  GTECH_OAI21 U243 ( .A(n329), .B(n321), .C(n323), .Z(n324) );
  GTECH_NAND2 U244 ( .A(a[1]), .B(b[1]), .Z(n323) );
  GTECH_NOR2 U245 ( .A(b[1]), .B(a[1]), .Z(n321) );
  GTECH_NOR2 U246 ( .A(a[0]), .B(b[0]), .Z(n329) );
  GTECH_XOR2 U247 ( .A(a[4]), .B(b[4]), .Z(n310) );
  GTECH_AOI21 U248 ( .A(n290), .B(n377), .C(n378), .Z(n373) );
  GTECH_AOI21 U249 ( .A(n289), .B(a[7]), .C(b[7]), .Z(n378) );
  GTECH_NOT U250 ( .A(n377), .Z(n289) );
  GTECH_AOI21 U251 ( .A(n297), .B(a[6]), .C(n379), .Z(n377) );
  GTECH_OA21 U252 ( .A(a[6]), .B(n297), .C(b[6]), .Z(n379) );
  GTECH_OAI21 U253 ( .A(n309), .B(n294), .C(n296), .Z(n297) );
  GTECH_NAND2 U254 ( .A(b[5]), .B(a[5]), .Z(n296) );
  GTECH_NOR2 U255 ( .A(b[5]), .B(a[5]), .Z(n294) );
  GTECH_NOR2 U256 ( .A(b[4]), .B(a[4]), .Z(n309) );
  GTECH_NOT U257 ( .A(a[7]), .Z(n290) );
endmodule
