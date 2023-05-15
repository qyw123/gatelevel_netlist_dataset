
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
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372;

  GTECH_MUX2 U133 ( .A(n272), .B(n273), .S(n274), .Z(sum[9]) );
  GTECH_XOR2 U134 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_XOR2 U135 ( .A(n277), .B(n276), .Z(n272) );
  GTECH_AND_NOT U136 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NAND2 U137 ( .A(n280), .B(n281), .Z(sum[8]) );
  GTECH_OAI21 U138 ( .A(n277), .B(n282), .C(n274), .Z(n280) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n285), .Z(sum[7]) );
  GTECH_XOR2 U140 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XOR2 U141 ( .A(n288), .B(n286), .Z(n283) );
  GTECH_XOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_OA22 U143 ( .A(b[6]), .B(n289), .C(a[6]), .D(n290), .Z(n288) );
  GTECH_AND2 U144 ( .A(a[6]), .B(n290), .Z(n289) );
  GTECH_MUX2 U145 ( .A(n291), .B(n292), .S(n285), .Z(sum[6]) );
  GTECH_XNOR2 U146 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_XNOR2 U147 ( .A(n293), .B(n290), .Z(n291) );
  GTECH_NAND2 U148 ( .A(n295), .B(n296), .Z(n290) );
  GTECH_NAND3 U149 ( .A(b[4]), .B(n297), .C(a[4]), .Z(n295) );
  GTECH_XNOR2 U150 ( .A(a[6]), .B(b[6]), .Z(n293) );
  GTECH_MUX2 U151 ( .A(n298), .B(n299), .S(n300), .Z(sum[5]) );
  GTECH_AND_NOT U152 ( .A(n297), .B(n301), .Z(n300) );
  GTECH_NAND2 U153 ( .A(n302), .B(n303), .Z(n299) );
  GTECH_AO21 U154 ( .A(b[4]), .B(a[4]), .C(n285), .Z(n302) );
  GTECH_AO22 U155 ( .A(b[4]), .B(a[4]), .C(n303), .D(n285), .Z(n298) );
  GTECH_XOR2 U156 ( .A(n304), .B(n285), .Z(sum[4]) );
  GTECH_MUX2 U157 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U158 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_AO21 U159 ( .A(n309), .B(n310), .C(n311), .Z(n307) );
  GTECH_XOR2 U160 ( .A(n312), .B(n308), .Z(n305) );
  GTECH_XOR2 U161 ( .A(a[3]), .B(b[3]), .Z(n308) );
  GTECH_AOI21 U162 ( .A(n313), .B(n309), .C(n311), .Z(n312) );
  GTECH_MUX2 U163 ( .A(n314), .B(n315), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U164 ( .A(n316), .B(n310), .Z(n315) );
  GTECH_XOR2 U165 ( .A(n313), .B(n316), .Z(n314) );
  GTECH_OAI21 U166 ( .A(a[2]), .B(b[2]), .C(n309), .Z(n316) );
  GTECH_AOI21 U167 ( .A(n317), .B(n318), .C(n319), .Z(n313) );
  GTECH_MUX2 U168 ( .A(n320), .B(n321), .S(n322), .Z(sum[1]) );
  GTECH_AND_NOT U169 ( .A(n317), .B(n319), .Z(n322) );
  GTECH_OAI21 U170 ( .A(cin), .B(n318), .C(n323), .Z(n321) );
  GTECH_AO21 U171 ( .A(n323), .B(cin), .C(n318), .Z(n320) );
  GTECH_MUX2 U172 ( .A(n324), .B(n325), .S(n326), .Z(sum[15]) );
  GTECH_XOR2 U173 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_XOR2 U174 ( .A(n329), .B(n328), .Z(n324) );
  GTECH_XOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n328) );
  GTECH_AOI21 U176 ( .A(n330), .B(n331), .C(n332), .Z(n329) );
  GTECH_MUX2 U177 ( .A(n333), .B(n334), .S(n326), .Z(sum[14]) );
  GTECH_XOR2 U178 ( .A(n335), .B(n336), .Z(n334) );
  GTECH_XOR2 U179 ( .A(n330), .B(n335), .Z(n333) );
  GTECH_OAI21 U180 ( .A(a[14]), .B(b[14]), .C(n331), .Z(n335) );
  GTECH_AOI21 U181 ( .A(n337), .B(n338), .C(n339), .Z(n330) );
  GTECH_MUX2 U182 ( .A(n340), .B(n341), .S(n326), .Z(sum[13]) );
  GTECH_XOR2 U183 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_XOR2 U184 ( .A(n338), .B(n342), .Z(n340) );
  GTECH_AND_NOT U185 ( .A(n337), .B(n339), .Z(n342) );
  GTECH_NAND2 U186 ( .A(n344), .B(n345), .Z(sum[12]) );
  GTECH_AO21 U187 ( .A(n346), .B(n343), .C(n347), .Z(n344) );
  GTECH_MUX2 U188 ( .A(n348), .B(n349), .S(n274), .Z(sum[11]) );
  GTECH_XNOR2 U189 ( .A(n350), .B(n351), .Z(n349) );
  GTECH_XOR2 U190 ( .A(n350), .B(n352), .Z(n348) );
  GTECH_AOI21 U191 ( .A(n353), .B(n354), .C(n355), .Z(n352) );
  GTECH_XNOR2 U192 ( .A(a[11]), .B(b[11]), .Z(n350) );
  GTECH_MUX2 U193 ( .A(n356), .B(n357), .S(n274), .Z(sum[10]) );
  GTECH_XOR2 U194 ( .A(n358), .B(n359), .Z(n357) );
  GTECH_XOR2 U195 ( .A(n353), .B(n358), .Z(n356) );
  GTECH_AND_NOT U196 ( .A(n354), .B(n355), .Z(n358) );
  GTECH_AO21 U197 ( .A(n278), .B(n277), .C(n279), .Z(n353) );
  GTECH_XOR2 U198 ( .A(cin), .B(n360), .Z(sum[0]) );
  GTECH_AO21 U199 ( .A(n361), .B(n326), .C(n362), .Z(cout) );
  GTECH_NOT U200 ( .A(n345), .Z(n362) );
  GTECH_NAND3 U201 ( .A(n346), .B(n343), .C(n347), .Z(n345) );
  GTECH_NOT U202 ( .A(n326), .Z(n347) );
  GTECH_NOT U203 ( .A(n338), .Z(n346) );
  GTECH_AND2 U204 ( .A(b[12]), .B(a[12]), .Z(n338) );
  GTECH_OAI21 U205 ( .A(n363), .B(n364), .C(n281), .Z(n326) );
  GTECH_OR3 U206 ( .A(n282), .B(n277), .C(n274), .Z(n281) );
  GTECH_AND2 U207 ( .A(b[8]), .B(a[8]), .Z(n277) );
  GTECH_NOT U208 ( .A(n275), .Z(n282) );
  GTECH_NOT U209 ( .A(n274), .Z(n364) );
  GTECH_MUX2 U210 ( .A(n304), .B(n365), .S(n285), .Z(n274) );
  GTECH_MUX2 U211 ( .A(n360), .B(n366), .S(cin), .Z(n285) );
  GTECH_ADD_ABC U212 ( .A(a[3]), .B(n367), .C(b[3]), .COUT(n366) );
  GTECH_AOI21 U213 ( .A(n310), .B(n309), .C(n311), .Z(n367) );
  GTECH_NOR2 U214 ( .A(a[2]), .B(b[2]), .Z(n311) );
  GTECH_NAND2 U215 ( .A(b[2]), .B(a[2]), .Z(n309) );
  GTECH_AOI21 U216 ( .A(n323), .B(n317), .C(n319), .Z(n310) );
  GTECH_AND2 U217 ( .A(b[1]), .B(a[1]), .Z(n319) );
  GTECH_OR2 U218 ( .A(a[1]), .B(b[1]), .Z(n317) );
  GTECH_AND_NOT U219 ( .A(n323), .B(n318), .Z(n360) );
  GTECH_AND2 U220 ( .A(b[0]), .B(a[0]), .Z(n318) );
  GTECH_OR2 U221 ( .A(b[0]), .B(a[0]), .Z(n323) );
  GTECH_OA22 U222 ( .A(a[7]), .B(n287), .C(b[7]), .D(n368), .Z(n365) );
  GTECH_AND_NOT U223 ( .A(a[7]), .B(n369), .Z(n368) );
  GTECH_NOT U224 ( .A(n287), .Z(n369) );
  GTECH_AO21 U225 ( .A(n294), .B(a[6]), .C(n370), .Z(n287) );
  GTECH_NOT U226 ( .A(n371), .Z(n370) );
  GTECH_OAI21 U227 ( .A(a[6]), .B(n294), .C(b[6]), .Z(n371) );
  GTECH_AO21 U228 ( .A(n303), .B(n297), .C(n301), .Z(n294) );
  GTECH_NOT U229 ( .A(n296), .Z(n301) );
  GTECH_NAND2 U230 ( .A(b[5]), .B(a[5]), .Z(n296) );
  GTECH_OR2 U231 ( .A(a[5]), .B(b[5]), .Z(n297) );
  GTECH_OR2 U232 ( .A(b[4]), .B(a[4]), .Z(n303) );
  GTECH_XOR2 U233 ( .A(a[4]), .B(b[4]), .Z(n304) );
  GTECH_AOI22 U234 ( .A(n351), .B(a[11]), .C(n372), .D(b[11]), .Z(n363) );
  GTECH_OR2 U235 ( .A(n351), .B(a[11]), .Z(n372) );
  GTECH_AO21 U236 ( .A(n359), .B(n354), .C(n355), .Z(n351) );
  GTECH_AND2 U237 ( .A(b[10]), .B(a[10]), .Z(n355) );
  GTECH_OR2 U238 ( .A(a[10]), .B(b[10]), .Z(n354) );
  GTECH_AO21 U239 ( .A(n278), .B(n275), .C(n279), .Z(n359) );
  GTECH_AND2 U240 ( .A(b[9]), .B(a[9]), .Z(n279) );
  GTECH_OR2 U241 ( .A(a[8]), .B(b[8]), .Z(n275) );
  GTECH_OR2 U242 ( .A(a[9]), .B(b[9]), .Z(n278) );
  GTECH_ADD_ABC U243 ( .A(a[15]), .B(n327), .C(b[15]), .COUT(n361) );
  GTECH_AOI21 U244 ( .A(n336), .B(n331), .C(n332), .Z(n327) );
  GTECH_NOR2 U245 ( .A(a[14]), .B(b[14]), .Z(n332) );
  GTECH_NAND2 U246 ( .A(b[14]), .B(a[14]), .Z(n331) );
  GTECH_AOI21 U247 ( .A(n337), .B(n343), .C(n339), .Z(n336) );
  GTECH_AND2 U248 ( .A(b[13]), .B(a[13]), .Z(n339) );
  GTECH_OR2 U249 ( .A(b[12]), .B(a[12]), .Z(n343) );
  GTECH_OR2 U250 ( .A(a[13]), .B(b[13]), .Z(n337) );
endmodule

