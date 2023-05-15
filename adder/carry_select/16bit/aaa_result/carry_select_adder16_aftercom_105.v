
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372;

  GTECH_MUX2 U134 ( .A(n273), .B(n274), .S(n275), .Z(sum[9]) );
  GTECH_XNOR2 U135 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_XNOR2 U136 ( .A(n277), .B(n278), .Z(n273) );
  GTECH_OAI21 U137 ( .A(a[9]), .B(b[9]), .C(n279), .Z(n277) );
  GTECH_NOT U138 ( .A(n280), .Z(n279) );
  GTECH_NAND2 U139 ( .A(n281), .B(n282), .Z(sum[8]) );
  GTECH_OAI21 U140 ( .A(n276), .B(n283), .C(n284), .Z(n281) );
  GTECH_MUX2 U141 ( .A(n285), .B(n286), .S(n287), .Z(sum[7]) );
  GTECH_XOR2 U142 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_OA21 U143 ( .A(n290), .B(n291), .C(n292), .Z(n289) );
  GTECH_XNOR2 U144 ( .A(n288), .B(n293), .Z(n285) );
  GTECH_XNOR2 U145 ( .A(a[7]), .B(b[7]), .Z(n288) );
  GTECH_MUX2 U146 ( .A(n294), .B(n295), .S(n287), .Z(sum[6]) );
  GTECH_XNOR2 U147 ( .A(n296), .B(n291), .Z(n295) );
  GTECH_OA21 U148 ( .A(n297), .B(n298), .C(n299), .Z(n291) );
  GTECH_XNOR2 U149 ( .A(n296), .B(n300), .Z(n294) );
  GTECH_AND_NOT U150 ( .A(n292), .B(n290), .Z(n296) );
  GTECH_XNOR2 U151 ( .A(n301), .B(n302), .Z(sum[5]) );
  GTECH_OA21 U152 ( .A(n303), .B(n287), .C(n298), .Z(n302) );
  GTECH_AND_NOT U153 ( .A(n299), .B(n297), .Z(n301) );
  GTECH_XNOR2 U154 ( .A(n304), .B(n287), .Z(sum[4]) );
  GTECH_MUX2 U155 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U156 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XOR2 U157 ( .A(n307), .B(n309), .Z(n305) );
  GTECH_AOI21 U158 ( .A(n310), .B(n311), .C(n312), .Z(n309) );
  GTECH_XNOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n307) );
  GTECH_MUX2 U160 ( .A(n313), .B(n314), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U161 ( .A(n315), .B(n316), .Z(n314) );
  GTECH_XOR2 U162 ( .A(n311), .B(n315), .Z(n313) );
  GTECH_AND_NOT U163 ( .A(n310), .B(n312), .Z(n315) );
  GTECH_OAI21 U164 ( .A(n317), .B(n318), .C(n319), .Z(n311) );
  GTECH_MUX2 U165 ( .A(n320), .B(n321), .S(n322), .Z(sum[1]) );
  GTECH_AND_NOT U166 ( .A(n319), .B(n317), .Z(n322) );
  GTECH_AO21 U167 ( .A(n323), .B(n318), .C(n324), .Z(n321) );
  GTECH_OAI21 U168 ( .A(n324), .B(n323), .C(n318), .Z(n320) );
  GTECH_NAND2 U169 ( .A(a[0]), .B(b[0]), .Z(n318) );
  GTECH_NOT U170 ( .A(cin), .Z(n323) );
  GTECH_MUX2 U171 ( .A(n325), .B(n326), .S(n327), .Z(sum[15]) );
  GTECH_XOR2 U172 ( .A(n328), .B(n329), .Z(n326) );
  GTECH_AOI21 U173 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_XNOR2 U174 ( .A(n328), .B(n333), .Z(n325) );
  GTECH_XNOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n328) );
  GTECH_MUX2 U176 ( .A(n334), .B(n335), .S(n327), .Z(sum[14]) );
  GTECH_XOR2 U177 ( .A(n336), .B(n331), .Z(n335) );
  GTECH_AOI21 U178 ( .A(n337), .B(n338), .C(n339), .Z(n331) );
  GTECH_XOR2 U179 ( .A(n336), .B(n340), .Z(n334) );
  GTECH_AND_NOT U180 ( .A(n330), .B(n332), .Z(n336) );
  GTECH_MUX2 U181 ( .A(n341), .B(n342), .S(n327), .Z(sum[13]) );
  GTECH_XNOR2 U182 ( .A(n343), .B(n344), .Z(n342) );
  GTECH_XOR2 U183 ( .A(n344), .B(n345), .Z(n341) );
  GTECH_OAI21 U184 ( .A(a[13]), .B(b[13]), .C(n337), .Z(n344) );
  GTECH_NAND2 U185 ( .A(n346), .B(n347), .Z(sum[12]) );
  GTECH_OAI21 U186 ( .A(n343), .B(n345), .C(n348), .Z(n346) );
  GTECH_MUX2 U187 ( .A(n349), .B(n350), .S(n275), .Z(sum[11]) );
  GTECH_XOR2 U188 ( .A(n351), .B(n352), .Z(n350) );
  GTECH_AOI21 U189 ( .A(n353), .B(n354), .C(n355), .Z(n352) );
  GTECH_XNOR2 U190 ( .A(n351), .B(n356), .Z(n349) );
  GTECH_XNOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n351) );
  GTECH_MUX2 U192 ( .A(n357), .B(n358), .S(n275), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n359), .B(n354), .Z(n358) );
  GTECH_OA21 U194 ( .A(n280), .B(n276), .C(n360), .Z(n354) );
  GTECH_XOR2 U195 ( .A(n359), .B(n361), .Z(n357) );
  GTECH_AND_NOT U196 ( .A(n353), .B(n355), .Z(n359) );
  GTECH_XNOR2 U197 ( .A(cin), .B(n362), .Z(sum[0]) );
  GTECH_OAI21 U198 ( .A(n327), .B(n363), .C(n347), .Z(cout) );
  GTECH_OR3 U199 ( .A(n345), .B(n343), .C(n348), .Z(n347) );
  GTECH_NOT U200 ( .A(n338), .Z(n343) );
  GTECH_NAND2 U201 ( .A(a[12]), .B(b[12]), .Z(n338) );
  GTECH_AOI21 U202 ( .A(n333), .B(a[15]), .C(n364), .Z(n363) );
  GTECH_OA21 U203 ( .A(a[15]), .B(n333), .C(b[15]), .Z(n364) );
  GTECH_AO21 U204 ( .A(n330), .B(n340), .C(n332), .Z(n333) );
  GTECH_AND2 U205 ( .A(a[14]), .B(b[14]), .Z(n332) );
  GTECH_AOI21 U206 ( .A(n337), .B(n345), .C(n339), .Z(n340) );
  GTECH_NOR2 U207 ( .A(b[13]), .B(a[13]), .Z(n339) );
  GTECH_NOR2 U208 ( .A(b[12]), .B(a[12]), .Z(n345) );
  GTECH_NAND2 U209 ( .A(a[13]), .B(b[13]), .Z(n337) );
  GTECH_OR2 U210 ( .A(a[14]), .B(b[14]), .Z(n330) );
  GTECH_NOT U211 ( .A(n348), .Z(n327) );
  GTECH_OAI21 U212 ( .A(n365), .B(n275), .C(n282), .Z(n348) );
  GTECH_OR3 U213 ( .A(n283), .B(n276), .C(n284), .Z(n282) );
  GTECH_AND2 U214 ( .A(a[8]), .B(b[8]), .Z(n276) );
  GTECH_NOT U215 ( .A(n284), .Z(n275) );
  GTECH_MUX2 U216 ( .A(n366), .B(n304), .S(n287), .Z(n284) );
  GTECH_MUX2 U217 ( .A(n362), .B(n367), .S(cin), .Z(n287) );
  GTECH_AOI21 U218 ( .A(n308), .B(a[3]), .C(n368), .Z(n367) );
  GTECH_OA21 U219 ( .A(a[3]), .B(n308), .C(b[3]), .Z(n368) );
  GTECH_AO21 U220 ( .A(n316), .B(n310), .C(n312), .Z(n308) );
  GTECH_AND2 U221 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_OR2 U222 ( .A(a[2]), .B(b[2]), .Z(n310) );
  GTECH_OAI21 U223 ( .A(n324), .B(n317), .C(n319), .Z(n316) );
  GTECH_NAND2 U224 ( .A(b[1]), .B(a[1]), .Z(n319) );
  GTECH_NOR2 U225 ( .A(b[1]), .B(a[1]), .Z(n317) );
  GTECH_AND_NOT U226 ( .A(n369), .B(a[0]), .Z(n324) );
  GTECH_XNOR2 U227 ( .A(n370), .B(n369), .Z(n362) );
  GTECH_NOT U228 ( .A(b[0]), .Z(n369) );
  GTECH_NOT U229 ( .A(a[0]), .Z(n370) );
  GTECH_AND_NOT U230 ( .A(n298), .B(n303), .Z(n304) );
  GTECH_NAND2 U231 ( .A(b[4]), .B(a[4]), .Z(n298) );
  GTECH_OA21 U232 ( .A(a[7]), .B(n293), .C(n371), .Z(n366) );
  GTECH_AO21 U233 ( .A(n293), .B(a[7]), .C(b[7]), .Z(n371) );
  GTECH_OAI21 U234 ( .A(n300), .B(n290), .C(n292), .Z(n293) );
  GTECH_NAND2 U235 ( .A(b[6]), .B(a[6]), .Z(n292) );
  GTECH_NOR2 U236 ( .A(a[6]), .B(b[6]), .Z(n290) );
  GTECH_OA21 U237 ( .A(n303), .B(n297), .C(n299), .Z(n300) );
  GTECH_NAND2 U238 ( .A(b[5]), .B(a[5]), .Z(n299) );
  GTECH_NOR2 U239 ( .A(b[5]), .B(a[5]), .Z(n297) );
  GTECH_NOR2 U240 ( .A(a[4]), .B(b[4]), .Z(n303) );
  GTECH_AOI21 U241 ( .A(n356), .B(a[11]), .C(n372), .Z(n365) );
  GTECH_OA21 U242 ( .A(a[11]), .B(n356), .C(b[11]), .Z(n372) );
  GTECH_AO21 U243 ( .A(n353), .B(n361), .C(n355), .Z(n356) );
  GTECH_AND2 U244 ( .A(a[10]), .B(b[10]), .Z(n355) );
  GTECH_OA21 U245 ( .A(n280), .B(n278), .C(n360), .Z(n361) );
  GTECH_OR2 U246 ( .A(b[9]), .B(a[9]), .Z(n360) );
  GTECH_NOT U247 ( .A(n283), .Z(n278) );
  GTECH_NOR2 U248 ( .A(b[8]), .B(a[8]), .Z(n283) );
  GTECH_AND2 U249 ( .A(b[9]), .B(a[9]), .Z(n280) );
  GTECH_OR2 U250 ( .A(a[10]), .B(b[10]), .Z(n353) );
endmodule

