
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372;

  GTECH_MUX2 U129 ( .A(n268), .B(n269), .S(n270), .Z(sum[9]) );
  GTECH_XOR2 U130 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_XNOR2 U131 ( .A(n272), .B(n273), .Z(n268) );
  GTECH_OR_NOT U132 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_OR_NOT U133 ( .A(n276), .B(n277), .Z(sum[8]) );
  GTECH_OAI21 U134 ( .A(n278), .B(n279), .C(n280), .Z(n277) );
  GTECH_MUX2 U135 ( .A(n281), .B(n282), .S(n283), .Z(sum[7]) );
  GTECH_XNOR2 U136 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_XNOR2 U137 ( .A(n286), .B(n285), .Z(n281) );
  GTECH_XNOR2 U138 ( .A(n287), .B(b[7]), .Z(n285) );
  GTECH_OAI21 U139 ( .A(n288), .B(n289), .C(n290), .Z(n286) );
  GTECH_MUX2 U140 ( .A(n291), .B(n292), .S(n283), .Z(sum[6]) );
  GTECH_XNOR2 U141 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_XNOR2 U142 ( .A(n293), .B(n288), .Z(n291) );
  GTECH_AO21 U143 ( .A(n295), .B(n296), .C(n297), .Z(n288) );
  GTECH_OR_NOT U144 ( .A(n289), .B(n290), .Z(n293) );
  GTECH_MUX2 U145 ( .A(n298), .B(n299), .S(n300), .Z(sum[5]) );
  GTECH_OR_NOT U146 ( .A(n297), .B(n295), .Z(n300) );
  GTECH_AO21 U147 ( .A(n301), .B(n283), .C(n296), .Z(n299) );
  GTECH_OAI21 U148 ( .A(n296), .B(n283), .C(n301), .Z(n298) );
  GTECH_XNOR2 U149 ( .A(n283), .B(n302), .Z(sum[4]) );
  GTECH_MUX2 U150 ( .A(n303), .B(n304), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U151 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_XNOR2 U152 ( .A(n307), .B(n305), .Z(n303) );
  GTECH_XNOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n305) );
  GTECH_OA22 U154 ( .A(b[2]), .B(n308), .C(a[2]), .D(n309), .Z(n307) );
  GTECH_AND2 U155 ( .A(n309), .B(a[2]), .Z(n308) );
  GTECH_MUX2 U156 ( .A(n310), .B(n311), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U157 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_XNOR2 U158 ( .A(n312), .B(n309), .Z(n310) );
  GTECH_AO21 U159 ( .A(n314), .B(n315), .C(n316), .Z(n309) );
  GTECH_XNOR2 U160 ( .A(a[2]), .B(b[2]), .Z(n312) );
  GTECH_MUX2 U161 ( .A(n317), .B(n318), .S(n319), .Z(sum[1]) );
  GTECH_OR_NOT U162 ( .A(n316), .B(n314), .Z(n319) );
  GTECH_OAI21 U163 ( .A(n320), .B(n321), .C(n322), .Z(n318) );
  GTECH_NOT U164 ( .A(n315), .Z(n322) );
  GTECH_OAI21 U165 ( .A(cin), .B(n315), .C(n323), .Z(n317) );
  GTECH_MUX2 U166 ( .A(n324), .B(n325), .S(n326), .Z(sum[15]) );
  GTECH_XOR2 U167 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_AOI21 U168 ( .A(n329), .B(n330), .C(n331), .Z(n327) );
  GTECH_XOR2 U169 ( .A(n332), .B(n328), .Z(n324) );
  GTECH_XOR2 U170 ( .A(a[15]), .B(b[15]), .Z(n328) );
  GTECH_MUX2 U171 ( .A(n333), .B(n334), .S(n326), .Z(sum[14]) );
  GTECH_XOR2 U172 ( .A(n335), .B(n329), .Z(n334) );
  GTECH_AOI21 U173 ( .A(n336), .B(n337), .C(n338), .Z(n329) );
  GTECH_XOR2 U174 ( .A(n335), .B(n339), .Z(n333) );
  GTECH_OR_NOT U175 ( .A(n331), .B(n330), .Z(n335) );
  GTECH_MUX2 U176 ( .A(n340), .B(n341), .S(n326), .Z(sum[13]) );
  GTECH_XOR2 U177 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_XNOR2 U178 ( .A(n343), .B(n344), .Z(n340) );
  GTECH_OR_NOT U179 ( .A(n338), .B(n336), .Z(n343) );
  GTECH_OR_NOT U180 ( .A(n345), .B(n346), .Z(sum[12]) );
  GTECH_OAI21 U181 ( .A(n337), .B(n347), .C(n348), .Z(n346) );
  GTECH_MUX2 U182 ( .A(n349), .B(n350), .S(n270), .Z(sum[11]) );
  GTECH_XNOR2 U183 ( .A(n351), .B(n352), .Z(n350) );
  GTECH_OAI21 U184 ( .A(n353), .B(n354), .C(n355), .Z(n351) );
  GTECH_XNOR2 U185 ( .A(n356), .B(n352), .Z(n349) );
  GTECH_XOR2 U186 ( .A(a[11]), .B(b[11]), .Z(n352) );
  GTECH_MUX2 U187 ( .A(n357), .B(n358), .S(n270), .Z(sum[10]) );
  GTECH_XNOR2 U188 ( .A(n359), .B(n353), .Z(n358) );
  GTECH_AO21 U189 ( .A(n275), .B(n279), .C(n274), .Z(n353) );
  GTECH_XNOR2 U190 ( .A(n359), .B(n360), .Z(n357) );
  GTECH_OR_NOT U191 ( .A(n354), .B(n355), .Z(n359) );
  GTECH_XNOR2 U192 ( .A(n321), .B(n361), .Z(sum[0]) );
  GTECH_NOT U193 ( .A(cin), .Z(n321) );
  GTECH_AO21 U194 ( .A(n362), .B(n348), .C(n345), .Z(cout) );
  GTECH_AND3 U195 ( .A(n342), .B(n344), .C(n326), .Z(n345) );
  GTECH_NOT U196 ( .A(n348), .Z(n326) );
  GTECH_NOT U197 ( .A(n337), .Z(n342) );
  GTECH_AND2 U198 ( .A(b[12]), .B(a[12]), .Z(n337) );
  GTECH_AO21 U199 ( .A(n280), .B(n363), .C(n276), .Z(n348) );
  GTECH_AND3 U200 ( .A(n273), .B(n271), .C(n270), .Z(n276) );
  GTECH_NOT U201 ( .A(n279), .Z(n271) );
  GTECH_AND2 U202 ( .A(b[8]), .B(a[8]), .Z(n279) );
  GTECH_ADD_ABC U203 ( .A(n364), .B(a[11]), .C(b[11]), .COUT(n363) );
  GTECH_NOT U204 ( .A(n356), .Z(n364) );
  GTECH_OAI21 U205 ( .A(n354), .B(n360), .C(n355), .Z(n356) );
  GTECH_OR2 U206 ( .A(a[10]), .B(b[10]), .Z(n355) );
  GTECH_AO21 U207 ( .A(n273), .B(n275), .C(n274), .Z(n360) );
  GTECH_AND2 U208 ( .A(a[9]), .B(b[9]), .Z(n274) );
  GTECH_OR2 U209 ( .A(b[9]), .B(a[9]), .Z(n275) );
  GTECH_NOT U210 ( .A(n278), .Z(n273) );
  GTECH_NOR2 U211 ( .A(a[8]), .B(b[8]), .Z(n278) );
  GTECH_AND2 U212 ( .A(b[10]), .B(a[10]), .Z(n354) );
  GTECH_NOT U213 ( .A(n270), .Z(n280) );
  GTECH_MUX2 U214 ( .A(n302), .B(n365), .S(n283), .Z(n270) );
  GTECH_MUX2 U215 ( .A(n361), .B(n366), .S(cin), .Z(n283) );
  GTECH_AOI2N2 U216 ( .A(n367), .B(n368), .C(b[3]), .D(n369), .Z(n366) );
  GTECH_AND2 U217 ( .A(n306), .B(a[3]), .Z(n369) );
  GTECH_NOT U218 ( .A(n368), .Z(n306) );
  GTECH_AOI21 U219 ( .A(n313), .B(a[2]), .C(n370), .Z(n368) );
  GTECH_NOT U220 ( .A(n371), .Z(n370) );
  GTECH_OAI21 U221 ( .A(a[2]), .B(n313), .C(b[2]), .Z(n371) );
  GTECH_AO21 U222 ( .A(n323), .B(n314), .C(n316), .Z(n313) );
  GTECH_AND2 U223 ( .A(a[1]), .B(b[1]), .Z(n316) );
  GTECH_OR2 U224 ( .A(b[1]), .B(a[1]), .Z(n314) );
  GTECH_NOT U225 ( .A(a[3]), .Z(n367) );
  GTECH_NOR2 U226 ( .A(n315), .B(n320), .Z(n361) );
  GTECH_NOT U227 ( .A(n323), .Z(n320) );
  GTECH_OR2 U228 ( .A(a[0]), .B(b[0]), .Z(n323) );
  GTECH_AND2 U229 ( .A(b[0]), .B(a[0]), .Z(n315) );
  GTECH_ADD_ABC U230 ( .A(n287), .B(n284), .C(n372), .COUT(n365) );
  GTECH_NOT U231 ( .A(b[7]), .Z(n372) );
  GTECH_OAI21 U232 ( .A(n289), .B(n294), .C(n290), .Z(n284) );
  GTECH_OR2 U233 ( .A(a[6]), .B(b[6]), .Z(n290) );
  GTECH_AO21 U234 ( .A(n301), .B(n295), .C(n297), .Z(n294) );
  GTECH_AND2 U235 ( .A(a[5]), .B(b[5]), .Z(n297) );
  GTECH_OR2 U236 ( .A(b[5]), .B(a[5]), .Z(n295) );
  GTECH_AND2 U237 ( .A(b[6]), .B(a[6]), .Z(n289) );
  GTECH_NOT U238 ( .A(a[7]), .Z(n287) );
  GTECH_OR_NOT U239 ( .A(n296), .B(n301), .Z(n302) );
  GTECH_OR2 U240 ( .A(b[4]), .B(a[4]), .Z(n301) );
  GTECH_AND2 U241 ( .A(b[4]), .B(a[4]), .Z(n296) );
  GTECH_ADD_ABC U242 ( .A(a[15]), .B(n332), .C(b[15]), .COUT(n362) );
  GTECH_AOI21 U243 ( .A(n339), .B(n330), .C(n331), .Z(n332) );
  GTECH_NOR2 U244 ( .A(a[14]), .B(b[14]), .Z(n331) );
  GTECH_NAND2 U245 ( .A(b[14]), .B(a[14]), .Z(n330) );
  GTECH_AOI21 U246 ( .A(n344), .B(n336), .C(n338), .Z(n339) );
  GTECH_AND2 U247 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_OR2 U248 ( .A(b[13]), .B(a[13]), .Z(n336) );
  GTECH_NOT U249 ( .A(n347), .Z(n344) );
  GTECH_NOR2 U250 ( .A(a[12]), .B(b[12]), .Z(n347) );
endmodule

