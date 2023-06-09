
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370;

  GTECH_MUX2 U133 ( .A(n272), .B(n273), .S(n274), .Z(sum[9]) );
  GTECH_XOR2 U134 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_XOR2 U135 ( .A(n277), .B(n275), .Z(n272) );
  GTECH_OA21 U136 ( .A(a[9]), .B(b[9]), .C(n278), .Z(n275) );
  GTECH_OAI21 U137 ( .A(n279), .B(n274), .C(n280), .Z(sum[8]) );
  GTECH_MUX2 U138 ( .A(n281), .B(n282), .S(n283), .Z(sum[7]) );
  GTECH_XNOR2 U139 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_XOR2 U140 ( .A(n284), .B(n286), .Z(n281) );
  GTECH_OA21 U141 ( .A(n287), .B(n288), .C(n289), .Z(n286) );
  GTECH_XNOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n284) );
  GTECH_MUX2 U143 ( .A(n290), .B(n291), .S(n292), .Z(sum[6]) );
  GTECH_NOT U144 ( .A(n283), .Z(n292) );
  GTECH_XNOR2 U145 ( .A(n293), .B(n288), .Z(n291) );
  GTECH_AOI21 U146 ( .A(n294), .B(n295), .C(n296), .Z(n288) );
  GTECH_XNOR2 U147 ( .A(n293), .B(n297), .Z(n290) );
  GTECH_AND_NOT U148 ( .A(n289), .B(n287), .Z(n293) );
  GTECH_XNOR2 U149 ( .A(n298), .B(n299), .Z(sum[5]) );
  GTECH_AOI21 U150 ( .A(n300), .B(n283), .C(n295), .Z(n299) );
  GTECH_AND_NOT U151 ( .A(n294), .B(n296), .Z(n298) );
  GTECH_XNOR2 U152 ( .A(n283), .B(n301), .Z(sum[4]) );
  GTECH_MUX2 U153 ( .A(n302), .B(n303), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U154 ( .A(n304), .B(n305), .Z(n303) );
  GTECH_XOR2 U155 ( .A(n304), .B(n306), .Z(n302) );
  GTECH_AOI21 U156 ( .A(n307), .B(n308), .C(n309), .Z(n306) );
  GTECH_XNOR2 U157 ( .A(a[3]), .B(b[3]), .Z(n304) );
  GTECH_MUX2 U158 ( .A(n310), .B(n311), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U159 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_XOR2 U160 ( .A(n308), .B(n312), .Z(n310) );
  GTECH_AND_NOT U161 ( .A(n307), .B(n309), .Z(n312) );
  GTECH_OAI21 U162 ( .A(n314), .B(n315), .C(n316), .Z(n308) );
  GTECH_MUX2 U163 ( .A(n317), .B(n318), .S(n319), .Z(sum[1]) );
  GTECH_AND_NOT U164 ( .A(n316), .B(n314), .Z(n319) );
  GTECH_OAI21 U165 ( .A(cin), .B(n320), .C(n321), .Z(n318) );
  GTECH_AO21 U166 ( .A(n321), .B(cin), .C(n320), .Z(n317) );
  GTECH_NOT U167 ( .A(n315), .Z(n320) );
  GTECH_NAND2 U168 ( .A(a[0]), .B(b[0]), .Z(n315) );
  GTECH_MUX2 U169 ( .A(n322), .B(n323), .S(n324), .Z(sum[15]) );
  GTECH_XNOR2 U170 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_XOR2 U171 ( .A(n325), .B(n327), .Z(n322) );
  GTECH_AOI21 U172 ( .A(n328), .B(n329), .C(n330), .Z(n327) );
  GTECH_XNOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n325) );
  GTECH_MUX2 U174 ( .A(n331), .B(n332), .S(n324), .Z(sum[14]) );
  GTECH_XOR2 U175 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_XOR2 U176 ( .A(n333), .B(n329), .Z(n331) );
  GTECH_AOI21 U177 ( .A(n335), .B(n336), .C(n337), .Z(n329) );
  GTECH_AND_NOT U178 ( .A(n328), .B(n330), .Z(n333) );
  GTECH_MUX2 U179 ( .A(n338), .B(n339), .S(n324), .Z(sum[13]) );
  GTECH_XOR2 U180 ( .A(n340), .B(n341), .Z(n339) );
  GTECH_XOR2 U181 ( .A(n341), .B(n336), .Z(n338) );
  GTECH_NOT U182 ( .A(n342), .Z(n336) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n335), .Z(n341) );
  GTECH_NAND2 U184 ( .A(n343), .B(n344), .Z(sum[12]) );
  GTECH_OAI21 U185 ( .A(n342), .B(n340), .C(n324), .Z(n343) );
  GTECH_MUX2 U186 ( .A(n345), .B(n346), .S(n274), .Z(sum[11]) );
  GTECH_XOR2 U187 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_AOI21 U188 ( .A(n349), .B(n350), .C(n351), .Z(n348) );
  GTECH_XNOR2 U189 ( .A(n347), .B(n352), .Z(n345) );
  GTECH_XNOR2 U190 ( .A(a[11]), .B(b[11]), .Z(n347) );
  GTECH_MUX2 U191 ( .A(n353), .B(n354), .S(n274), .Z(sum[10]) );
  GTECH_XOR2 U192 ( .A(n355), .B(n350), .Z(n354) );
  GTECH_OA21 U193 ( .A(n356), .B(n276), .C(n357), .Z(n350) );
  GTECH_XOR2 U194 ( .A(n355), .B(n358), .Z(n353) );
  GTECH_AND_NOT U195 ( .A(n349), .B(n351), .Z(n355) );
  GTECH_XOR2 U196 ( .A(cin), .B(n359), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n360), .B(n361), .C(n344), .Z(cout) );
  GTECH_OR3 U198 ( .A(n340), .B(n342), .C(n324), .Z(n344) );
  GTECH_NOT U199 ( .A(n360), .Z(n324) );
  GTECH_ADD_AB U200 ( .A(b[12]), .B(a[12]), .COUT(n342) );
  GTECH_AOI21 U201 ( .A(n326), .B(a[15]), .C(n362), .Z(n361) );
  GTECH_OA21 U202 ( .A(a[15]), .B(n326), .C(b[15]), .Z(n362) );
  GTECH_AO21 U203 ( .A(n328), .B(n334), .C(n330), .Z(n326) );
  GTECH_ADD_AB U204 ( .A(a[14]), .B(b[14]), .COUT(n330) );
  GTECH_AOI21 U205 ( .A(n335), .B(n340), .C(n337), .Z(n334) );
  GTECH_NOR2 U206 ( .A(b[13]), .B(a[13]), .Z(n337) );
  GTECH_NOR2 U207 ( .A(a[12]), .B(b[12]), .Z(n340) );
  GTECH_NAND2 U208 ( .A(a[13]), .B(b[13]), .Z(n335) );
  GTECH_OR2 U209 ( .A(a[14]), .B(b[14]), .Z(n328) );
  GTECH_OA21 U210 ( .A(n274), .B(n363), .C(n280), .Z(n360) );
  GTECH_NAND2 U211 ( .A(n274), .B(n279), .Z(n280) );
  GTECH_AND_NOT U212 ( .A(n277), .B(n276), .Z(n279) );
  GTECH_ADD_AB U213 ( .A(a[8]), .B(b[8]), .COUT(n276) );
  GTECH_OAI21 U214 ( .A(a[11]), .B(n352), .C(n364), .Z(n363) );
  GTECH_AO21 U215 ( .A(n352), .B(a[11]), .C(b[11]), .Z(n364) );
  GTECH_AO21 U216 ( .A(n349), .B(n358), .C(n351), .Z(n352) );
  GTECH_ADD_AB U217 ( .A(a[10]), .B(b[10]), .COUT(n351) );
  GTECH_OA21 U218 ( .A(n356), .B(n277), .C(n357), .Z(n358) );
  GTECH_OR2 U219 ( .A(b[9]), .B(a[9]), .Z(n357) );
  GTECH_OR2 U220 ( .A(b[8]), .B(a[8]), .Z(n277) );
  GTECH_NOT U221 ( .A(n278), .Z(n356) );
  GTECH_NAND2 U222 ( .A(b[9]), .B(a[9]), .Z(n278) );
  GTECH_OR2 U223 ( .A(a[10]), .B(b[10]), .Z(n349) );
  GTECH_MUX2 U224 ( .A(n301), .B(n365), .S(n283), .Z(n274) );
  GTECH_MUX2 U225 ( .A(n359), .B(n366), .S(cin), .Z(n283) );
  GTECH_OA21 U226 ( .A(a[3]), .B(n305), .C(n367), .Z(n366) );
  GTECH_AO21 U227 ( .A(n305), .B(a[3]), .C(b[3]), .Z(n367) );
  GTECH_AO21 U228 ( .A(n313), .B(n307), .C(n309), .Z(n305) );
  GTECH_ADD_AB U229 ( .A(b[2]), .B(a[2]), .COUT(n309) );
  GTECH_OR2 U230 ( .A(a[2]), .B(b[2]), .Z(n307) );
  GTECH_OAI21 U231 ( .A(n368), .B(n314), .C(n316), .Z(n313) );
  GTECH_NAND2 U232 ( .A(b[1]), .B(a[1]), .Z(n316) );
  GTECH_NOR2 U233 ( .A(b[1]), .B(a[1]), .Z(n314) );
  GTECH_NOT U234 ( .A(n321), .Z(n368) );
  GTECH_OR2 U235 ( .A(b[0]), .B(a[0]), .Z(n321) );
  GTECH_XOR2 U236 ( .A(a[0]), .B(b[0]), .Z(n359) );
  GTECH_AOI21 U237 ( .A(n285), .B(a[7]), .C(n369), .Z(n365) );
  GTECH_OA21 U238 ( .A(a[7]), .B(n285), .C(b[7]), .Z(n369) );
  GTECH_OAI21 U239 ( .A(n297), .B(n287), .C(n289), .Z(n285) );
  GTECH_NAND2 U240 ( .A(b[6]), .B(a[6]), .Z(n289) );
  GTECH_NOR2 U241 ( .A(a[6]), .B(b[6]), .Z(n287) );
  GTECH_AOI21 U242 ( .A(n300), .B(n294), .C(n296), .Z(n297) );
  GTECH_ADD_AB U243 ( .A(b[5]), .B(a[5]), .COUT(n296) );
  GTECH_OR2 U244 ( .A(b[5]), .B(a[5]), .Z(n294) );
  GTECH_NAND2 U245 ( .A(n300), .B(n370), .Z(n301) );
  GTECH_NOT U246 ( .A(n295), .Z(n370) );
  GTECH_ADD_AB U247 ( .A(b[4]), .B(a[4]), .COUT(n295) );
  GTECH_OR2 U248 ( .A(a[4]), .B(b[4]), .Z(n300) );
endmodule

