
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
         n369, n370, n371;

  GTECH_MUX2 U131 ( .A(n270), .B(n271), .S(n272), .Z(sum[9]) );
  GTECH_XNOR2 U132 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_XNOR2 U133 ( .A(n273), .B(n275), .Z(n270) );
  GTECH_AND_NOT U134 ( .A(n276), .B(n277), .Z(n273) );
  GTECH_XOR2 U135 ( .A(n272), .B(n278), .Z(sum[8]) );
  GTECH_MUX2 U136 ( .A(n279), .B(n280), .S(n281), .Z(sum[7]) );
  GTECH_XOR2 U137 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_XOR2 U138 ( .A(n284), .B(n282), .Z(n279) );
  GTECH_XOR2 U139 ( .A(a[7]), .B(b[7]), .Z(n282) );
  GTECH_OA21 U140 ( .A(a[6]), .B(n285), .C(n286), .Z(n284) );
  GTECH_AO21 U141 ( .A(n285), .B(a[6]), .C(b[6]), .Z(n286) );
  GTECH_MUX2 U142 ( .A(n287), .B(n288), .S(n281), .Z(sum[6]) );
  GTECH_XOR2 U143 ( .A(n289), .B(n290), .Z(n288) );
  GTECH_XOR2 U144 ( .A(n289), .B(n285), .Z(n287) );
  GTECH_AO21 U145 ( .A(n291), .B(n292), .C(n293), .Z(n285) );
  GTECH_XOR2 U146 ( .A(a[6]), .B(b[6]), .Z(n289) );
  GTECH_MUX2 U147 ( .A(n294), .B(n295), .S(n296), .Z(sum[5]) );
  GTECH_AND_NOT U148 ( .A(n291), .B(n293), .Z(n296) );
  GTECH_OAI21 U149 ( .A(n292), .B(n281), .C(n297), .Z(n295) );
  GTECH_OAI21 U150 ( .A(n298), .B(n299), .C(n300), .Z(n294) );
  GTECH_NOT U151 ( .A(n281), .Z(n299) );
  GTECH_XOR2 U152 ( .A(n281), .B(n301), .Z(sum[4]) );
  GTECH_MUX2 U153 ( .A(n302), .B(n303), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U154 ( .A(n304), .B(n305), .Z(n303) );
  GTECH_XNOR2 U155 ( .A(n304), .B(n306), .Z(n302) );
  GTECH_AOI21 U156 ( .A(n307), .B(n308), .C(n309), .Z(n306) );
  GTECH_XOR2 U157 ( .A(a[3]), .B(b[3]), .Z(n304) );
  GTECH_MUX2 U158 ( .A(n310), .B(n311), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U159 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_XNOR2 U160 ( .A(n308), .B(n313), .Z(n310) );
  GTECH_OR_NOT U161 ( .A(n309), .B(n307), .Z(n313) );
  GTECH_AO21 U162 ( .A(n314), .B(n315), .C(n316), .Z(n308) );
  GTECH_MUX2 U163 ( .A(n317), .B(n318), .S(n319), .Z(sum[1]) );
  GTECH_AND_NOT U164 ( .A(n314), .B(n316), .Z(n319) );
  GTECH_OAI21 U165 ( .A(cin), .B(n315), .C(n320), .Z(n318) );
  GTECH_AO21 U166 ( .A(n320), .B(cin), .C(n315), .Z(n317) );
  GTECH_AND2 U167 ( .A(a[0]), .B(b[0]), .Z(n315) );
  GTECH_MUX2 U168 ( .A(n321), .B(n322), .S(n323), .Z(sum[15]) );
  GTECH_XNOR2 U169 ( .A(n324), .B(n325), .Z(n322) );
  GTECH_XOR2 U170 ( .A(n326), .B(n324), .Z(n321) );
  GTECH_XNOR2 U171 ( .A(a[15]), .B(n327), .Z(n324) );
  GTECH_OA21 U172 ( .A(a[14]), .B(n328), .C(n329), .Z(n326) );
  GTECH_AO21 U173 ( .A(n328), .B(a[14]), .C(b[14]), .Z(n329) );
  GTECH_MUX2 U174 ( .A(n330), .B(n331), .S(n323), .Z(sum[14]) );
  GTECH_XOR2 U175 ( .A(n332), .B(n333), .Z(n331) );
  GTECH_XOR2 U176 ( .A(n332), .B(n328), .Z(n330) );
  GTECH_AO22 U177 ( .A(n334), .B(n335), .C(a[13]), .D(b[13]), .Z(n328) );
  GTECH_NOT U178 ( .A(n336), .Z(n334) );
  GTECH_XOR2 U179 ( .A(a[14]), .B(b[14]), .Z(n332) );
  GTECH_MUX2 U180 ( .A(n337), .B(n338), .S(n323), .Z(sum[13]) );
  GTECH_XNOR2 U181 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U182 ( .A(n335), .B(n339), .Z(n337) );
  GTECH_AOI21 U183 ( .A(a[13]), .B(b[13]), .C(n336), .Z(n339) );
  GTECH_NAND2 U184 ( .A(n341), .B(n342), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n335), .B(n340), .C(n323), .Z(n341) );
  GTECH_MUX2 U186 ( .A(n343), .B(n344), .S(n272), .Z(sum[11]) );
  GTECH_XOR2 U187 ( .A(n345), .B(n346), .Z(n344) );
  GTECH_XNOR2 U188 ( .A(n345), .B(n347), .Z(n343) );
  GTECH_OA21 U189 ( .A(n348), .B(n349), .C(n350), .Z(n347) );
  GTECH_XOR2 U190 ( .A(a[11]), .B(b[11]), .Z(n345) );
  GTECH_MUX2 U191 ( .A(n351), .B(n352), .S(n272), .Z(sum[10]) );
  GTECH_XOR2 U192 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_XOR2 U193 ( .A(n349), .B(n354), .Z(n351) );
  GTECH_OR_NOT U194 ( .A(n348), .B(n350), .Z(n354) );
  GTECH_OA21 U195 ( .A(n277), .B(n275), .C(n276), .Z(n349) );
  GTECH_XOR2 U196 ( .A(cin), .B(n355), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n356), .B(n357), .C(n342), .Z(cout) );
  GTECH_OR3 U198 ( .A(n340), .B(n335), .C(n323), .Z(n342) );
  GTECH_AND2 U199 ( .A(a[12]), .B(b[12]), .Z(n335) );
  GTECH_NOT U200 ( .A(n323), .Z(n357) );
  GTECH_MUX2 U201 ( .A(n278), .B(n358), .S(n272), .Z(n323) );
  GTECH_MUX2 U202 ( .A(n301), .B(n359), .S(n281), .Z(n272) );
  GTECH_MUX2 U203 ( .A(n355), .B(n360), .S(cin), .Z(n281) );
  GTECH_OA21 U204 ( .A(a[3]), .B(n305), .C(n361), .Z(n360) );
  GTECH_AO21 U205 ( .A(n305), .B(a[3]), .C(b[3]), .Z(n361) );
  GTECH_AO21 U206 ( .A(n312), .B(n307), .C(n309), .Z(n305) );
  GTECH_AND2 U207 ( .A(b[2]), .B(a[2]), .Z(n309) );
  GTECH_OR_NOT U208 ( .A(b[2]), .B(n362), .Z(n307) );
  GTECH_NOT U209 ( .A(a[2]), .Z(n362) );
  GTECH_AO21 U210 ( .A(n314), .B(n320), .C(n316), .Z(n312) );
  GTECH_AND_NOT U211 ( .A(b[1]), .B(n363), .Z(n316) );
  GTECH_NOT U212 ( .A(n364), .Z(n320) );
  GTECH_NOR2 U213 ( .A(a[0]), .B(b[0]), .Z(n364) );
  GTECH_OR_NOT U214 ( .A(b[1]), .B(n363), .Z(n314) );
  GTECH_NOT U215 ( .A(a[1]), .Z(n363) );
  GTECH_XOR2 U216 ( .A(a[0]), .B(b[0]), .Z(n355) );
  GTECH_OA21 U217 ( .A(a[7]), .B(n283), .C(n365), .Z(n359) );
  GTECH_AO21 U218 ( .A(n283), .B(a[7]), .C(b[7]), .Z(n365) );
  GTECH_AO21 U219 ( .A(n290), .B(a[6]), .C(n366), .Z(n283) );
  GTECH_OA21 U220 ( .A(a[6]), .B(n290), .C(b[6]), .Z(n366) );
  GTECH_AO21 U221 ( .A(n297), .B(n291), .C(n293), .Z(n290) );
  GTECH_AND_NOT U222 ( .A(b[5]), .B(n367), .Z(n293) );
  GTECH_OR_NOT U223 ( .A(b[5]), .B(n367), .Z(n291) );
  GTECH_NOT U224 ( .A(a[5]), .Z(n367) );
  GTECH_AND_NOT U225 ( .A(n297), .B(n292), .Z(n301) );
  GTECH_NOT U226 ( .A(n300), .Z(n292) );
  GTECH_NAND2 U227 ( .A(b[4]), .B(a[4]), .Z(n300) );
  GTECH_NOT U228 ( .A(n298), .Z(n297) );
  GTECH_NOR2 U229 ( .A(a[4]), .B(b[4]), .Z(n298) );
  GTECH_OA21 U230 ( .A(a[11]), .B(n346), .C(n368), .Z(n358) );
  GTECH_AO21 U231 ( .A(n346), .B(a[11]), .C(b[11]), .Z(n368) );
  GTECH_OAI21 U232 ( .A(n353), .B(n348), .C(n350), .Z(n346) );
  GTECH_NAND2 U233 ( .A(b[10]), .B(a[10]), .Z(n350) );
  GTECH_NOR2 U234 ( .A(a[10]), .B(b[10]), .Z(n348) );
  GTECH_OA21 U235 ( .A(n274), .B(n277), .C(n276), .Z(n353) );
  GTECH_NAND2 U236 ( .A(b[9]), .B(a[9]), .Z(n276) );
  GTECH_NOR2 U237 ( .A(a[9]), .B(b[9]), .Z(n277) );
  GTECH_AND_NOT U238 ( .A(n275), .B(n274), .Z(n278) );
  GTECH_NOR2 U239 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_NAND2 U240 ( .A(a[8]), .B(b[8]), .Z(n275) );
  GTECH_OA21 U241 ( .A(n325), .B(n369), .C(n370), .Z(n356) );
  GTECH_AO21 U242 ( .A(n369), .B(n325), .C(n327), .Z(n370) );
  GTECH_NOT U243 ( .A(b[15]), .Z(n327) );
  GTECH_NOT U244 ( .A(a[15]), .Z(n369) );
  GTECH_AOI21 U245 ( .A(n333), .B(a[14]), .C(n371), .Z(n325) );
  GTECH_OA21 U246 ( .A(a[14]), .B(n333), .C(b[14]), .Z(n371) );
  GTECH_OAI2N2 U247 ( .A(n340), .B(n336), .C(a[13]), .D(b[13]), .Z(n333) );
  GTECH_NOR2 U248 ( .A(a[13]), .B(b[13]), .Z(n336) );
  GTECH_NOR2 U249 ( .A(b[12]), .B(a[12]), .Z(n340) );
endmodule

