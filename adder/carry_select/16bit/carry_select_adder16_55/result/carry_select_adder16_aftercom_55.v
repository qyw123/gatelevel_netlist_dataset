
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370;

  GTECH_MUX2 U132 ( .A(n271), .B(n272), .S(n273), .Z(sum[9]) );
  GTECH_XOR2 U133 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XOR2 U134 ( .A(n274), .B(n276), .Z(n271) );
  GTECH_AND_NOT U135 ( .A(n277), .B(n278), .Z(n274) );
  GTECH_NAND2 U136 ( .A(n279), .B(n280), .Z(sum[8]) );
  GTECH_AO21 U137 ( .A(n281), .B(n276), .C(n273), .Z(n279) );
  GTECH_MUX2 U138 ( .A(n282), .B(n283), .S(n284), .Z(sum[7]) );
  GTECH_XOR2 U139 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_OA21 U140 ( .A(n287), .B(n288), .C(n289), .Z(n286) );
  GTECH_XNOR2 U141 ( .A(n285), .B(n290), .Z(n282) );
  GTECH_XNOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n285) );
  GTECH_MUX2 U143 ( .A(n291), .B(n292), .S(n284), .Z(sum[6]) );
  GTECH_XNOR2 U144 ( .A(n288), .B(n293), .Z(n292) );
  GTECH_AOI21 U145 ( .A(n294), .B(n295), .C(n296), .Z(n288) );
  GTECH_XNOR2 U146 ( .A(n293), .B(n297), .Z(n291) );
  GTECH_AND_NOT U147 ( .A(n289), .B(n287), .Z(n293) );
  GTECH_MUX2 U148 ( .A(n298), .B(n299), .S(n300), .Z(sum[5]) );
  GTECH_AND_NOT U149 ( .A(n294), .B(n296), .Z(n300) );
  GTECH_OAI21 U150 ( .A(n295), .B(n301), .C(n302), .Z(n299) );
  GTECH_AO21 U151 ( .A(n302), .B(n301), .C(n295), .Z(n298) );
  GTECH_XNOR2 U152 ( .A(n303), .B(n301), .Z(sum[4]) );
  GTECH_NOT U153 ( .A(n284), .Z(n301) );
  GTECH_MUX2 U154 ( .A(n304), .B(n305), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U155 ( .A(n306), .B(n307), .Z(n305) );
  GTECH_XOR2 U156 ( .A(n306), .B(n308), .Z(n304) );
  GTECH_OA21 U157 ( .A(n309), .B(n310), .C(n311), .Z(n308) );
  GTECH_XNOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n306) );
  GTECH_MUX2 U159 ( .A(n312), .B(n313), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U160 ( .A(n314), .B(n315), .Z(n313) );
  GTECH_XNOR2 U161 ( .A(n310), .B(n314), .Z(n312) );
  GTECH_AND_NOT U162 ( .A(n311), .B(n309), .Z(n314) );
  GTECH_AOI21 U163 ( .A(n316), .B(n317), .C(n318), .Z(n310) );
  GTECH_MUX2 U164 ( .A(n319), .B(n320), .S(n321), .Z(sum[1]) );
  GTECH_AND_NOT U165 ( .A(n316), .B(n318), .Z(n321) );
  GTECH_OAI21 U166 ( .A(cin), .B(n317), .C(n322), .Z(n320) );
  GTECH_AO21 U167 ( .A(n322), .B(cin), .C(n317), .Z(n319) );
  GTECH_ADD_AB U168 ( .A(b[0]), .B(a[0]), .COUT(n317) );
  GTECH_MUX2 U169 ( .A(n323), .B(n324), .S(n325), .Z(sum[15]) );
  GTECH_XOR2 U170 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_XOR2 U171 ( .A(n328), .B(n327), .Z(n323) );
  GTECH_XOR2 U172 ( .A(a[15]), .B(b[15]), .Z(n327) );
  GTECH_OA21 U173 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_MUX2 U174 ( .A(n332), .B(n333), .S(n325), .Z(sum[14]) );
  GTECH_XNOR2 U175 ( .A(n334), .B(n335), .Z(n333) );
  GTECH_XNOR2 U176 ( .A(n334), .B(n330), .Z(n332) );
  GTECH_AOI21 U177 ( .A(n336), .B(n337), .C(n338), .Z(n330) );
  GTECH_OAI21 U178 ( .A(a[14]), .B(b[14]), .C(n339), .Z(n334) );
  GTECH_MUX2 U179 ( .A(n340), .B(n341), .S(n325), .Z(sum[13]) );
  GTECH_XOR2 U180 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_XOR2 U181 ( .A(n343), .B(n337), .Z(n340) );
  GTECH_NOT U182 ( .A(n344), .Z(n337) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n336), .Z(n343) );
  GTECH_NAND2 U184 ( .A(n345), .B(n346), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n344), .B(n342), .C(n325), .Z(n345) );
  GTECH_MUX2 U186 ( .A(n347), .B(n348), .S(n273), .Z(sum[11]) );
  GTECH_XOR2 U187 ( .A(n349), .B(n350), .Z(n348) );
  GTECH_OA21 U188 ( .A(n351), .B(n352), .C(n353), .Z(n350) );
  GTECH_NOR2 U189 ( .A(b[10]), .B(a[10]), .Z(n351) );
  GTECH_XNOR2 U190 ( .A(n349), .B(n354), .Z(n347) );
  GTECH_XNOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n349) );
  GTECH_MUX2 U192 ( .A(n355), .B(n356), .S(n273), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n357), .B(n352), .Z(n356) );
  GTECH_AOI21 U194 ( .A(n277), .B(n275), .C(n278), .Z(n352) );
  GTECH_XNOR2 U195 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_OAI21 U196 ( .A(b[10]), .B(a[10]), .C(n353), .Z(n357) );
  GTECH_XNOR2 U197 ( .A(cin), .B(n359), .Z(sum[0]) );
  GTECH_OAI21 U198 ( .A(n360), .B(n361), .C(n346), .Z(cout) );
  GTECH_OR3 U199 ( .A(n344), .B(n342), .C(n325), .Z(n346) );
  GTECH_NOT U200 ( .A(n360), .Z(n325) );
  GTECH_ADD_AB U201 ( .A(b[12]), .B(a[12]), .COUT(n344) );
  GTECH_AOI21 U202 ( .A(a[15]), .B(n326), .C(n362), .Z(n361) );
  GTECH_OA21 U203 ( .A(n326), .B(a[15]), .C(b[15]), .Z(n362) );
  GTECH_OA21 U204 ( .A(n329), .B(n335), .C(n331), .Z(n326) );
  GTECH_OR2 U205 ( .A(b[14]), .B(a[14]), .Z(n331) );
  GTECH_AOI21 U206 ( .A(n336), .B(n342), .C(n338), .Z(n335) );
  GTECH_NOR2 U207 ( .A(b[13]), .B(a[13]), .Z(n338) );
  GTECH_NOR2 U208 ( .A(a[12]), .B(b[12]), .Z(n342) );
  GTECH_NAND2 U209 ( .A(a[13]), .B(b[13]), .Z(n336) );
  GTECH_NOT U210 ( .A(n339), .Z(n329) );
  GTECH_NAND2 U211 ( .A(a[14]), .B(b[14]), .Z(n339) );
  GTECH_OA21 U212 ( .A(n363), .B(n273), .C(n280), .Z(n360) );
  GTECH_NAND3 U213 ( .A(n281), .B(n276), .C(n273), .Z(n280) );
  GTECH_NOT U214 ( .A(n275), .Z(n281) );
  GTECH_ADD_AB U215 ( .A(b[8]), .B(a[8]), .COUT(n275) );
  GTECH_MUX2 U216 ( .A(n364), .B(n303), .S(n284), .Z(n273) );
  GTECH_MUX2 U217 ( .A(n359), .B(n365), .S(cin), .Z(n284) );
  GTECH_AOI21 U218 ( .A(n307), .B(a[3]), .C(n366), .Z(n365) );
  GTECH_OA21 U219 ( .A(a[3]), .B(n307), .C(b[3]), .Z(n366) );
  GTECH_OAI21 U220 ( .A(n315), .B(n309), .C(n311), .Z(n307) );
  GTECH_NAND2 U221 ( .A(b[2]), .B(a[2]), .Z(n311) );
  GTECH_NOR2 U222 ( .A(a[2]), .B(b[2]), .Z(n309) );
  GTECH_AOI21 U223 ( .A(n322), .B(n316), .C(n318), .Z(n315) );
  GTECH_ADD_AB U224 ( .A(a[1]), .B(b[1]), .COUT(n318) );
  GTECH_OR2 U225 ( .A(b[1]), .B(a[1]), .Z(n316) );
  GTECH_OR2 U226 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_XOR2 U227 ( .A(n367), .B(b[0]), .Z(n359) );
  GTECH_NOT U228 ( .A(a[0]), .Z(n367) );
  GTECH_OR_NOT U229 ( .A(n295), .B(n302), .Z(n303) );
  GTECH_ADD_AB U230 ( .A(b[4]), .B(a[4]), .COUT(n295) );
  GTECH_AOI21 U231 ( .A(n290), .B(a[7]), .C(n368), .Z(n364) );
  GTECH_OA21 U232 ( .A(a[7]), .B(n290), .C(b[7]), .Z(n368) );
  GTECH_OAI21 U233 ( .A(n297), .B(n287), .C(n289), .Z(n290) );
  GTECH_NAND2 U234 ( .A(b[6]), .B(a[6]), .Z(n289) );
  GTECH_NOR2 U235 ( .A(a[6]), .B(b[6]), .Z(n287) );
  GTECH_AOI21 U236 ( .A(n302), .B(n294), .C(n296), .Z(n297) );
  GTECH_ADD_AB U237 ( .A(b[5]), .B(a[5]), .COUT(n296) );
  GTECH_OR2 U238 ( .A(a[5]), .B(b[5]), .Z(n294) );
  GTECH_OR2 U239 ( .A(b[4]), .B(a[4]), .Z(n302) );
  GTECH_AOI21 U240 ( .A(n354), .B(a[11]), .C(n369), .Z(n363) );
  GTECH_OA21 U241 ( .A(a[11]), .B(n354), .C(b[11]), .Z(n369) );
  GTECH_NAND2 U242 ( .A(n370), .B(n353), .Z(n354) );
  GTECH_NAND2 U243 ( .A(b[10]), .B(a[10]), .Z(n353) );
  GTECH_OAI21 U244 ( .A(a[10]), .B(b[10]), .C(n358), .Z(n370) );
  GTECH_AO21 U245 ( .A(n276), .B(n277), .C(n278), .Z(n358) );
  GTECH_ADD_AB U246 ( .A(b[9]), .B(a[9]), .COUT(n278) );
  GTECH_OR2 U247 ( .A(a[9]), .B(b[9]), .Z(n277) );
  GTECH_OR2 U248 ( .A(a[8]), .B(b[8]), .Z(n276) );
endmodule

