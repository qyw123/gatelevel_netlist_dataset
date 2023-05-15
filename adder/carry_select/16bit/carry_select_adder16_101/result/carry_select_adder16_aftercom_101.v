
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
         n370, n371;

  GTECH_MUX2 U132 ( .A(n271), .B(n272), .S(n273), .Z(sum[9]) );
  GTECH_XOR2 U133 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XNOR2 U134 ( .A(n274), .B(n276), .Z(n271) );
  GTECH_NOT U135 ( .A(n277), .Z(n276) );
  GTECH_AND_NOT U136 ( .A(n278), .B(n279), .Z(n274) );
  GTECH_NAND2 U137 ( .A(n280), .B(n281), .Z(sum[8]) );
  GTECH_OAI21 U138 ( .A(n277), .B(n282), .C(n273), .Z(n280) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n285), .Z(sum[7]) );
  GTECH_XNOR2 U140 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XOR2 U141 ( .A(n286), .B(n288), .Z(n283) );
  GTECH_OA21 U142 ( .A(n289), .B(n290), .C(n291), .Z(n288) );
  GTECH_XNOR2 U143 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_MUX2 U144 ( .A(n292), .B(n293), .S(n285), .Z(sum[6]) );
  GTECH_XNOR2 U145 ( .A(n294), .B(n295), .Z(n293) );
  GTECH_XNOR2 U146 ( .A(n290), .B(n294), .Z(n292) );
  GTECH_AND_NOT U147 ( .A(n291), .B(n289), .Z(n294) );
  GTECH_AOI21 U148 ( .A(n296), .B(n297), .C(n298), .Z(n290) );
  GTECH_MUX2 U149 ( .A(n299), .B(n300), .S(n301), .Z(sum[5]) );
  GTECH_AND_NOT U150 ( .A(n296), .B(n298), .Z(n301) );
  GTECH_OAI21 U151 ( .A(n297), .B(n285), .C(n302), .Z(n300) );
  GTECH_AO21 U152 ( .A(n302), .B(n285), .C(n297), .Z(n299) );
  GTECH_XOR2 U153 ( .A(n303), .B(n304), .Z(sum[4]) );
  GTECH_MUX2 U154 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U155 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XOR2 U156 ( .A(n307), .B(n309), .Z(n305) );
  GTECH_OA21 U157 ( .A(n310), .B(n311), .C(n312), .Z(n309) );
  GTECH_XNOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n307) );
  GTECH_MUX2 U159 ( .A(n313), .B(n314), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U160 ( .A(n315), .B(n316), .Z(n314) );
  GTECH_XNOR2 U161 ( .A(n311), .B(n315), .Z(n313) );
  GTECH_AND_NOT U162 ( .A(n312), .B(n310), .Z(n315) );
  GTECH_AOI21 U163 ( .A(n317), .B(n318), .C(n319), .Z(n311) );
  GTECH_MUX2 U164 ( .A(n320), .B(n321), .S(n322), .Z(sum[1]) );
  GTECH_AND_NOT U165 ( .A(n317), .B(n319), .Z(n322) );
  GTECH_OAI21 U166 ( .A(cin), .B(n318), .C(n323), .Z(n321) );
  GTECH_AO21 U167 ( .A(n323), .B(cin), .C(n318), .Z(n320) );
  GTECH_AND_NOT U168 ( .A(b[0]), .B(n324), .Z(n318) );
  GTECH_MUX2 U169 ( .A(n325), .B(n326), .S(n327), .Z(sum[15]) );
  GTECH_XOR2 U170 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_XOR2 U171 ( .A(n330), .B(n329), .Z(n325) );
  GTECH_XOR2 U172 ( .A(a[15]), .B(b[15]), .Z(n329) );
  GTECH_OA21 U173 ( .A(n331), .B(n332), .C(n333), .Z(n330) );
  GTECH_MUX2 U174 ( .A(n334), .B(n335), .S(n327), .Z(sum[14]) );
  GTECH_XNOR2 U175 ( .A(n336), .B(n337), .Z(n335) );
  GTECH_XNOR2 U176 ( .A(n336), .B(n332), .Z(n334) );
  GTECH_OA21 U177 ( .A(n338), .B(n339), .C(n340), .Z(n332) );
  GTECH_OAI21 U178 ( .A(a[14]), .B(b[14]), .C(n341), .Z(n336) );
  GTECH_NOT U179 ( .A(n331), .Z(n341) );
  GTECH_MUX2 U180 ( .A(n342), .B(n343), .S(n327), .Z(sum[13]) );
  GTECH_XOR2 U181 ( .A(n344), .B(n345), .Z(n343) );
  GTECH_XNOR2 U182 ( .A(n345), .B(n339), .Z(n342) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n346), .Z(n345) );
  GTECH_OR_NOT U184 ( .A(n347), .B(n348), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n339), .B(n344), .C(n327), .Z(n348) );
  GTECH_MUX2 U186 ( .A(n349), .B(n350), .S(n273), .Z(sum[11]) );
  GTECH_XNOR2 U187 ( .A(n351), .B(n352), .Z(n350) );
  GTECH_XOR2 U188 ( .A(n351), .B(n353), .Z(n349) );
  GTECH_OA21 U189 ( .A(n354), .B(n355), .C(n356), .Z(n353) );
  GTECH_NOR2 U190 ( .A(b[10]), .B(a[10]), .Z(n354) );
  GTECH_XNOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n351) );
  GTECH_MUX2 U192 ( .A(n357), .B(n358), .S(n273), .Z(sum[10]) );
  GTECH_XNOR2 U193 ( .A(n359), .B(n360), .Z(n358) );
  GTECH_XOR2 U194 ( .A(n359), .B(n355), .Z(n357) );
  GTECH_AOI21 U195 ( .A(n278), .B(n277), .C(n279), .Z(n355) );
  GTECH_OAI21 U196 ( .A(b[10]), .B(a[10]), .C(n356), .Z(n359) );
  GTECH_XNOR2 U197 ( .A(cin), .B(n361), .Z(sum[0]) );
  GTECH_AO21 U198 ( .A(n362), .B(n327), .C(n347), .Z(cout) );
  GTECH_NOR3 U199 ( .A(n344), .B(n339), .C(n327), .Z(n347) );
  GTECH_ADD_AB U200 ( .A(b[12]), .B(a[12]), .COUT(n339) );
  GTECH_OAI21 U201 ( .A(n363), .B(n364), .C(n281), .Z(n327) );
  GTECH_OR3 U202 ( .A(n282), .B(n277), .C(n273), .Z(n281) );
  GTECH_NOT U203 ( .A(n364), .Z(n273) );
  GTECH_ADD_AB U204 ( .A(b[8]), .B(a[8]), .COUT(n277) );
  GTECH_MUX2 U205 ( .A(n303), .B(n365), .S(n285), .Z(n364) );
  GTECH_NOT U206 ( .A(n304), .Z(n285) );
  GTECH_MUX2 U207 ( .A(n361), .B(n366), .S(cin), .Z(n304) );
  GTECH_AOI21 U208 ( .A(n308), .B(a[3]), .C(n367), .Z(n366) );
  GTECH_OA21 U209 ( .A(a[3]), .B(n308), .C(b[3]), .Z(n367) );
  GTECH_OAI21 U210 ( .A(n316), .B(n310), .C(n312), .Z(n308) );
  GTECH_NAND2 U211 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_NOR2 U212 ( .A(a[2]), .B(b[2]), .Z(n310) );
  GTECH_AOI21 U213 ( .A(n323), .B(n317), .C(n319), .Z(n316) );
  GTECH_ADD_AB U214 ( .A(a[1]), .B(b[1]), .COUT(n319) );
  GTECH_OR2 U215 ( .A(b[1]), .B(a[1]), .Z(n317) );
  GTECH_OR_NOT U216 ( .A(b[0]), .B(n324), .Z(n323) );
  GTECH_NOT U217 ( .A(a[0]), .Z(n324) );
  GTECH_XNOR2 U218 ( .A(a[0]), .B(b[0]), .Z(n361) );
  GTECH_AOI21 U219 ( .A(n287), .B(a[7]), .C(n368), .Z(n365) );
  GTECH_OA21 U220 ( .A(a[7]), .B(n287), .C(b[7]), .Z(n368) );
  GTECH_OAI21 U221 ( .A(n295), .B(n289), .C(n291), .Z(n287) );
  GTECH_NAND2 U222 ( .A(b[6]), .B(a[6]), .Z(n291) );
  GTECH_NOR2 U223 ( .A(a[6]), .B(b[6]), .Z(n289) );
  GTECH_AOI21 U224 ( .A(n302), .B(n296), .C(n298), .Z(n295) );
  GTECH_ADD_AB U225 ( .A(b[5]), .B(a[5]), .COUT(n298) );
  GTECH_OR2 U226 ( .A(a[5]), .B(b[5]), .Z(n296) );
  GTECH_OR_NOT U227 ( .A(n297), .B(n302), .Z(n303) );
  GTECH_OR2 U228 ( .A(b[4]), .B(a[4]), .Z(n302) );
  GTECH_ADD_AB U229 ( .A(b[4]), .B(a[4]), .COUT(n297) );
  GTECH_AOI21 U230 ( .A(n352), .B(a[11]), .C(n369), .Z(n363) );
  GTECH_OA21 U231 ( .A(a[11]), .B(n352), .C(b[11]), .Z(n369) );
  GTECH_NAND2 U232 ( .A(n370), .B(n356), .Z(n352) );
  GTECH_NAND2 U233 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_OAI21 U234 ( .A(a[10]), .B(b[10]), .C(n360), .Z(n370) );
  GTECH_AO21 U235 ( .A(n275), .B(n278), .C(n279), .Z(n360) );
  GTECH_ADD_AB U236 ( .A(b[9]), .B(a[9]), .COUT(n279) );
  GTECH_OR2 U237 ( .A(a[9]), .B(b[9]), .Z(n278) );
  GTECH_NOT U238 ( .A(n282), .Z(n275) );
  GTECH_NOR2 U239 ( .A(b[8]), .B(a[8]), .Z(n282) );
  GTECH_ADD_ABC U240 ( .A(a[15]), .B(n328), .C(b[15]), .COUT(n362) );
  GTECH_OA21 U241 ( .A(n331), .B(n337), .C(n333), .Z(n328) );
  GTECH_OR2 U242 ( .A(b[14]), .B(a[14]), .Z(n333) );
  GTECH_AOI21 U243 ( .A(n346), .B(n344), .C(n371), .Z(n337) );
  GTECH_NOT U244 ( .A(n340), .Z(n371) );
  GTECH_OR2 U245 ( .A(b[13]), .B(a[13]), .Z(n340) );
  GTECH_NOR2 U246 ( .A(a[12]), .B(b[12]), .Z(n344) );
  GTECH_NOT U247 ( .A(n338), .Z(n346) );
  GTECH_ADD_AB U248 ( .A(a[13]), .B(b[13]), .COUT(n338) );
  GTECH_ADD_AB U249 ( .A(a[14]), .B(b[14]), .COUT(n331) );
endmodule

