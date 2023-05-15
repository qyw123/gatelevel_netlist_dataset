
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
  GTECH_NOT U134 ( .A(n276), .Z(n275) );
  GTECH_XOR2 U135 ( .A(n277), .B(n276), .Z(n271) );
  GTECH_AOI21 U136 ( .A(n278), .B(n279), .C(n280), .Z(n276) );
  GTECH_OR_NOT U137 ( .A(n281), .B(n282), .Z(sum[8]) );
  GTECH_OAI21 U138 ( .A(n277), .B(n274), .C(n273), .Z(n282) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n285), .Z(sum[7]) );
  GTECH_XOR2 U140 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XOR2 U141 ( .A(n288), .B(n286), .Z(n283) );
  GTECH_XOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_AOI2N2 U143 ( .A(n289), .B(n290), .C(b[6]), .D(n291), .Z(n288) );
  GTECH_AND_NOT U144 ( .A(a[6]), .B(n290), .Z(n291) );
  GTECH_MUX2 U145 ( .A(n292), .B(n293), .S(n285), .Z(sum[6]) );
  GTECH_XNOR2 U146 ( .A(n294), .B(n295), .Z(n293) );
  GTECH_XNOR2 U147 ( .A(n294), .B(n290), .Z(n292) );
  GTECH_AOI21 U148 ( .A(n296), .B(n297), .C(n298), .Z(n290) );
  GTECH_XOR2 U149 ( .A(a[6]), .B(b[6]), .Z(n294) );
  GTECH_MUX2 U150 ( .A(n299), .B(n300), .S(n301), .Z(sum[5]) );
  GTECH_AND_NOT U151 ( .A(n296), .B(n298), .Z(n301) );
  GTECH_OAI21 U152 ( .A(n297), .B(n285), .C(n302), .Z(n300) );
  GTECH_AO21 U153 ( .A(n302), .B(n285), .C(n297), .Z(n299) );
  GTECH_AND_NOT U154 ( .A(a[4]), .B(n303), .Z(n297) );
  GTECH_XOR2 U155 ( .A(n304), .B(n285), .Z(sum[4]) );
  GTECH_MUX2 U156 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U157 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XNOR2 U158 ( .A(n309), .B(n308), .Z(n305) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n308) );
  GTECH_AO21 U160 ( .A(n310), .B(n311), .C(n312), .Z(n309) );
  GTECH_MUX2 U161 ( .A(n313), .B(n314), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U162 ( .A(n315), .B(n316), .Z(n314) );
  GTECH_XOR2 U163 ( .A(n310), .B(n315), .Z(n313) );
  GTECH_OAI21 U164 ( .A(a[2]), .B(b[2]), .C(n311), .Z(n315) );
  GTECH_AOI21 U165 ( .A(n317), .B(n318), .C(n319), .Z(n310) );
  GTECH_MUX2 U166 ( .A(n320), .B(n321), .S(n322), .Z(sum[1]) );
  GTECH_AND_NOT U167 ( .A(n317), .B(n319), .Z(n322) );
  GTECH_OAI21 U168 ( .A(cin), .B(n318), .C(n323), .Z(n321) );
  GTECH_AO21 U169 ( .A(n323), .B(cin), .C(n318), .Z(n320) );
  GTECH_MUX2 U170 ( .A(n324), .B(n325), .S(n326), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_XNOR2 U172 ( .A(n327), .B(n329), .Z(n324) );
  GTECH_AOI21 U173 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_XNOR2 U174 ( .A(a[15]), .B(n333), .Z(n327) );
  GTECH_MUX2 U175 ( .A(n334), .B(n335), .S(n326), .Z(sum[14]) );
  GTECH_XOR2 U176 ( .A(n336), .B(n337), .Z(n335) );
  GTECH_XOR2 U177 ( .A(n330), .B(n336), .Z(n334) );
  GTECH_AND_NOT U178 ( .A(n331), .B(n332), .Z(n336) );
  GTECH_AO21 U179 ( .A(n338), .B(n339), .C(n340), .Z(n330) );
  GTECH_MUX2 U180 ( .A(n341), .B(n342), .S(n326), .Z(sum[13]) );
  GTECH_XOR2 U181 ( .A(n343), .B(n344), .Z(n342) );
  GTECH_XNOR2 U182 ( .A(n339), .B(n343), .Z(n341) );
  GTECH_OR_NOT U183 ( .A(n340), .B(n338), .Z(n343) );
  GTECH_OR_NOT U184 ( .A(n345), .B(n346), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n339), .B(n344), .C(n326), .Z(n346) );
  GTECH_MUX2 U186 ( .A(n347), .B(n348), .S(n273), .Z(sum[11]) );
  GTECH_XOR2 U187 ( .A(n349), .B(n350), .Z(n348) );
  GTECH_XOR2 U188 ( .A(n351), .B(n350), .Z(n347) );
  GTECH_XOR2 U189 ( .A(a[11]), .B(b[11]), .Z(n350) );
  GTECH_AOI21 U190 ( .A(n352), .B(n353), .C(n354), .Z(n351) );
  GTECH_MUX2 U191 ( .A(n355), .B(n356), .S(n273), .Z(sum[10]) );
  GTECH_XOR2 U192 ( .A(n357), .B(n358), .Z(n356) );
  GTECH_XOR2 U193 ( .A(n352), .B(n357), .Z(n355) );
  GTECH_OAI21 U194 ( .A(a[10]), .B(b[10]), .C(n353), .Z(n357) );
  GTECH_AND_NOT U195 ( .A(n359), .B(n280), .Z(n352) );
  GTECH_OAI21 U196 ( .A(a[9]), .B(b[9]), .C(n277), .Z(n359) );
  GTECH_XOR2 U197 ( .A(cin), .B(n360), .Z(sum[0]) );
  GTECH_AO21 U198 ( .A(n326), .B(n361), .C(n345), .Z(cout) );
  GTECH_NOR3 U199 ( .A(n339), .B(n344), .C(n326), .Z(n345) );
  GTECH_NOT U200 ( .A(n362), .Z(n344) );
  GTECH_AND2 U201 ( .A(b[12]), .B(a[12]), .Z(n339) );
  GTECH_OAI2N2 U202 ( .A(n363), .B(n333), .C(n328), .D(a[15]), .Z(n361) );
  GTECH_NOT U203 ( .A(b[15]), .Z(n333) );
  GTECH_NOR2 U204 ( .A(n328), .B(a[15]), .Z(n363) );
  GTECH_AO21 U205 ( .A(n337), .B(n331), .C(n332), .Z(n328) );
  GTECH_AND2 U206 ( .A(a[14]), .B(b[14]), .Z(n332) );
  GTECH_OR2 U207 ( .A(b[14]), .B(a[14]), .Z(n331) );
  GTECH_AO21 U208 ( .A(n338), .B(n362), .C(n340), .Z(n337) );
  GTECH_AND2 U209 ( .A(b[13]), .B(a[13]), .Z(n340) );
  GTECH_OR2 U210 ( .A(a[12]), .B(b[12]), .Z(n362) );
  GTECH_OR2 U211 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_AO21 U212 ( .A(n273), .B(n364), .C(n281), .Z(n326) );
  GTECH_NOR3 U213 ( .A(n274), .B(n277), .C(n273), .Z(n281) );
  GTECH_AND2 U214 ( .A(a[8]), .B(b[8]), .Z(n277) );
  GTECH_ADD_ABC U215 ( .A(n349), .B(a[11]), .C(b[11]), .COUT(n364) );
  GTECH_AOI21 U216 ( .A(n353), .B(n358), .C(n354), .Z(n349) );
  GTECH_NOR2 U217 ( .A(b[10]), .B(a[10]), .Z(n354) );
  GTECH_AND_NOT U218 ( .A(n365), .B(n280), .Z(n358) );
  GTECH_AND2 U219 ( .A(b[9]), .B(a[9]), .Z(n280) );
  GTECH_AO21 U220 ( .A(n278), .B(n279), .C(n274), .Z(n365) );
  GTECH_NOR2 U221 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_NOT U222 ( .A(a[9]), .Z(n279) );
  GTECH_NOT U223 ( .A(b[9]), .Z(n278) );
  GTECH_NAND2 U224 ( .A(a[10]), .B(b[10]), .Z(n353) );
  GTECH_MUX2 U225 ( .A(n304), .B(n366), .S(n285), .Z(n273) );
  GTECH_MUX2 U226 ( .A(n360), .B(n367), .S(cin), .Z(n285) );
  GTECH_ADD_ABC U227 ( .A(a[3]), .B(n307), .C(b[3]), .COUT(n367) );
  GTECH_AOI21 U228 ( .A(n311), .B(n316), .C(n312), .Z(n307) );
  GTECH_NOR2 U229 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_AOI21 U230 ( .A(n323), .B(n317), .C(n319), .Z(n316) );
  GTECH_AND2 U231 ( .A(b[1]), .B(a[1]), .Z(n319) );
  GTECH_OR2 U232 ( .A(a[1]), .B(b[1]), .Z(n317) );
  GTECH_NAND2 U233 ( .A(a[2]), .B(b[2]), .Z(n311) );
  GTECH_AND_NOT U234 ( .A(n323), .B(n318), .Z(n360) );
  GTECH_AND2 U235 ( .A(b[0]), .B(a[0]), .Z(n318) );
  GTECH_OR2 U236 ( .A(b[0]), .B(a[0]), .Z(n323) );
  GTECH_OA22 U237 ( .A(b[7]), .B(n368), .C(a[7]), .D(n287), .Z(n366) );
  GTECH_AND2 U238 ( .A(n287), .B(a[7]), .Z(n368) );
  GTECH_OAI21 U239 ( .A(n295), .B(n289), .C(n369), .Z(n287) );
  GTECH_OAI21 U240 ( .A(a[6]), .B(n370), .C(b[6]), .Z(n369) );
  GTECH_NOT U241 ( .A(a[6]), .Z(n289) );
  GTECH_NOT U242 ( .A(n370), .Z(n295) );
  GTECH_AO21 U243 ( .A(n302), .B(n296), .C(n298), .Z(n370) );
  GTECH_AND2 U244 ( .A(b[5]), .B(a[5]), .Z(n298) );
  GTECH_OR2 U245 ( .A(a[5]), .B(b[5]), .Z(n296) );
  GTECH_OR_NOT U246 ( .A(a[4]), .B(n303), .Z(n302) );
  GTECH_NOT U247 ( .A(b[4]), .Z(n303) );
  GTECH_XOR2 U248 ( .A(a[4]), .B(b[4]), .Z(n304) );
endmodule

