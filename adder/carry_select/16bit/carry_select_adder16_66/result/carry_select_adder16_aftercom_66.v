
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
         n367, n368;

  GTECH_MUX2 U129 ( .A(n268), .B(n269), .S(n270), .Z(sum[9]) );
  GTECH_XNOR2 U130 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_XNOR2 U131 ( .A(n272), .B(n273), .Z(n268) );
  GTECH_AO21 U132 ( .A(a[9]), .B(b[9]), .C(n274), .Z(n272) );
  GTECH_XOR2 U133 ( .A(n270), .B(n275), .Z(sum[8]) );
  GTECH_MUX2 U134 ( .A(n276), .B(n277), .S(n278), .Z(sum[7]) );
  GTECH_XOR2 U135 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_XNOR2 U136 ( .A(n279), .B(n281), .Z(n276) );
  GTECH_AOI21 U137 ( .A(n282), .B(n283), .C(n284), .Z(n281) );
  GTECH_XOR2 U138 ( .A(a[7]), .B(b[7]), .Z(n279) );
  GTECH_MUX2 U139 ( .A(n285), .B(n286), .S(n278), .Z(sum[6]) );
  GTECH_XNOR2 U140 ( .A(n287), .B(n288), .Z(n286) );
  GTECH_XNOR2 U141 ( .A(n283), .B(n287), .Z(n285) );
  GTECH_OR_NOT U142 ( .A(n284), .B(n282), .Z(n287) );
  GTECH_AO21 U143 ( .A(n289), .B(n290), .C(n291), .Z(n283) );
  GTECH_MUX2 U144 ( .A(n292), .B(n293), .S(n294), .Z(sum[5]) );
  GTECH_AND_NOT U145 ( .A(n289), .B(n291), .Z(n294) );
  GTECH_OAI21 U146 ( .A(n290), .B(n278), .C(n295), .Z(n293) );
  GTECH_AO21 U147 ( .A(n295), .B(n278), .C(n290), .Z(n292) );
  GTECH_XOR2 U148 ( .A(n278), .B(n296), .Z(sum[4]) );
  GTECH_MUX2 U149 ( .A(n297), .B(n298), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U150 ( .A(n299), .B(n300), .Z(n298) );
  GTECH_XNOR2 U151 ( .A(n299), .B(n301), .Z(n297) );
  GTECH_AOI21 U152 ( .A(n302), .B(n303), .C(n304), .Z(n301) );
  GTECH_XOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n299) );
  GTECH_MUX2 U154 ( .A(n305), .B(n306), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U155 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XNOR2 U156 ( .A(n303), .B(n307), .Z(n305) );
  GTECH_OR_NOT U157 ( .A(n304), .B(n302), .Z(n307) );
  GTECH_OAI21 U158 ( .A(n309), .B(n310), .C(n311), .Z(n303) );
  GTECH_NOT U159 ( .A(n312), .Z(n310) );
  GTECH_MUX2 U160 ( .A(n313), .B(n314), .S(n315), .Z(sum[1]) );
  GTECH_AND_NOT U161 ( .A(n311), .B(n309), .Z(n315) );
  GTECH_OAI21 U162 ( .A(cin), .B(n312), .C(n316), .Z(n314) );
  GTECH_AO21 U163 ( .A(n316), .B(cin), .C(n312), .Z(n313) );
  GTECH_AND2 U164 ( .A(a[0]), .B(b[0]), .Z(n312) );
  GTECH_MUX2 U165 ( .A(n317), .B(n318), .S(n319), .Z(sum[15]) );
  GTECH_XNOR2 U166 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_XNOR2 U167 ( .A(n320), .B(n322), .Z(n317) );
  GTECH_OA21 U168 ( .A(n323), .B(n324), .C(n325), .Z(n322) );
  GTECH_XNOR2 U169 ( .A(a[15]), .B(n326), .Z(n320) );
  GTECH_MUX2 U170 ( .A(n327), .B(n328), .S(n319), .Z(sum[14]) );
  GTECH_XOR2 U171 ( .A(n329), .B(n330), .Z(n328) );
  GTECH_XOR2 U172 ( .A(n324), .B(n330), .Z(n327) );
  GTECH_OR_NOT U173 ( .A(n323), .B(n325), .Z(n330) );
  GTECH_AOI21 U174 ( .A(n331), .B(n332), .C(n333), .Z(n324) );
  GTECH_MUX2 U175 ( .A(n334), .B(n335), .S(n336), .Z(sum[13]) );
  GTECH_AOI21 U176 ( .A(n337), .B(n319), .C(n332), .Z(n336) );
  GTECH_XOR2 U177 ( .A(b[13]), .B(a[13]), .Z(n335) );
  GTECH_OR_NOT U178 ( .A(n333), .B(n331), .Z(n334) );
  GTECH_NAND2 U179 ( .A(n338), .B(n339), .Z(sum[12]) );
  GTECH_OAI21 U180 ( .A(n332), .B(n340), .C(n319), .Z(n338) );
  GTECH_MUX2 U181 ( .A(n341), .B(n342), .S(n270), .Z(sum[11]) );
  GTECH_XOR2 U182 ( .A(n343), .B(n344), .Z(n342) );
  GTECH_XNOR2 U183 ( .A(n343), .B(n345), .Z(n341) );
  GTECH_AOI21 U184 ( .A(n346), .B(n347), .C(n348), .Z(n345) );
  GTECH_XOR2 U185 ( .A(a[11]), .B(b[11]), .Z(n343) );
  GTECH_MUX2 U186 ( .A(n349), .B(n350), .S(n270), .Z(sum[10]) );
  GTECH_XNOR2 U187 ( .A(n351), .B(n352), .Z(n350) );
  GTECH_XNOR2 U188 ( .A(n347), .B(n352), .Z(n349) );
  GTECH_OR_NOT U189 ( .A(n348), .B(n346), .Z(n352) );
  GTECH_OAI2N2 U190 ( .A(n274), .B(n353), .C(a[9]), .D(b[9]), .Z(n347) );
  GTECH_NOT U191 ( .A(n354), .Z(n274) );
  GTECH_XOR2 U192 ( .A(cin), .B(n355), .Z(sum[0]) );
  GTECH_OAI21 U193 ( .A(n356), .B(n357), .C(n339), .Z(cout) );
  GTECH_OR3 U194 ( .A(n332), .B(n340), .C(n319), .Z(n339) );
  GTECH_NOT U195 ( .A(n337), .Z(n340) );
  GTECH_AND2 U196 ( .A(a[12]), .B(b[12]), .Z(n332) );
  GTECH_NOT U197 ( .A(n319), .Z(n357) );
  GTECH_MUX2 U198 ( .A(n275), .B(n358), .S(n270), .Z(n319) );
  GTECH_MUX2 U199 ( .A(n296), .B(n359), .S(n278), .Z(n270) );
  GTECH_MUX2 U200 ( .A(n355), .B(n360), .S(cin), .Z(n278) );
  GTECH_OA21 U201 ( .A(a[3]), .B(n300), .C(n361), .Z(n360) );
  GTECH_AO21 U202 ( .A(n300), .B(a[3]), .C(b[3]), .Z(n361) );
  GTECH_AO21 U203 ( .A(n308), .B(n302), .C(n304), .Z(n300) );
  GTECH_AND2 U204 ( .A(a[2]), .B(b[2]), .Z(n304) );
  GTECH_OR2 U205 ( .A(a[2]), .B(b[2]), .Z(n302) );
  GTECH_OAI21 U206 ( .A(n362), .B(n309), .C(n311), .Z(n308) );
  GTECH_OR_NOT U207 ( .A(n363), .B(a[1]), .Z(n311) );
  GTECH_AND_NOT U208 ( .A(n363), .B(a[1]), .Z(n309) );
  GTECH_NOT U209 ( .A(b[1]), .Z(n363) );
  GTECH_NOT U210 ( .A(n316), .Z(n362) );
  GTECH_OR2 U211 ( .A(b[0]), .B(a[0]), .Z(n316) );
  GTECH_XOR2 U212 ( .A(a[0]), .B(b[0]), .Z(n355) );
  GTECH_OA21 U213 ( .A(a[7]), .B(n280), .C(n364), .Z(n359) );
  GTECH_AO21 U214 ( .A(n280), .B(a[7]), .C(b[7]), .Z(n364) );
  GTECH_AO21 U215 ( .A(n288), .B(n282), .C(n284), .Z(n280) );
  GTECH_AND2 U216 ( .A(a[6]), .B(b[6]), .Z(n284) );
  GTECH_OR2 U217 ( .A(a[6]), .B(b[6]), .Z(n282) );
  GTECH_AO21 U218 ( .A(n295), .B(n289), .C(n291), .Z(n288) );
  GTECH_AND2 U219 ( .A(a[5]), .B(b[5]), .Z(n291) );
  GTECH_OR2 U220 ( .A(b[5]), .B(a[5]), .Z(n289) );
  GTECH_AND_NOT U221 ( .A(n295), .B(n290), .Z(n296) );
  GTECH_AND2 U222 ( .A(b[4]), .B(a[4]), .Z(n290) );
  GTECH_OR2 U223 ( .A(a[4]), .B(b[4]), .Z(n295) );
  GTECH_OA21 U224 ( .A(a[11]), .B(n344), .C(n365), .Z(n358) );
  GTECH_AO21 U225 ( .A(n344), .B(a[11]), .C(b[11]), .Z(n365) );
  GTECH_AO21 U226 ( .A(n351), .B(n346), .C(n348), .Z(n344) );
  GTECH_AND2 U227 ( .A(a[10]), .B(b[10]), .Z(n348) );
  GTECH_OR2 U228 ( .A(a[10]), .B(b[10]), .Z(n346) );
  GTECH_AO22 U229 ( .A(n354), .B(n271), .C(a[9]), .D(b[9]), .Z(n351) );
  GTECH_OR2 U230 ( .A(a[9]), .B(b[9]), .Z(n354) );
  GTECH_AND_NOT U231 ( .A(n271), .B(n273), .Z(n275) );
  GTECH_NOT U232 ( .A(n353), .Z(n273) );
  GTECH_NAND2 U233 ( .A(a[8]), .B(b[8]), .Z(n353) );
  GTECH_OR2 U234 ( .A(b[8]), .B(a[8]), .Z(n271) );
  GTECH_OA21 U235 ( .A(n321), .B(n366), .C(n367), .Z(n356) );
  GTECH_AO21 U236 ( .A(n366), .B(n321), .C(n326), .Z(n367) );
  GTECH_NOT U237 ( .A(b[15]), .Z(n326) );
  GTECH_NOT U238 ( .A(a[15]), .Z(n366) );
  GTECH_OA21 U239 ( .A(n323), .B(n329), .C(n325), .Z(n321) );
  GTECH_OR_NOT U240 ( .A(n368), .B(a[14]), .Z(n325) );
  GTECH_AOI21 U241 ( .A(n331), .B(n337), .C(n333), .Z(n329) );
  GTECH_AND2 U242 ( .A(a[13]), .B(b[13]), .Z(n333) );
  GTECH_OR2 U243 ( .A(b[12]), .B(a[12]), .Z(n337) );
  GTECH_OR2 U244 ( .A(a[13]), .B(b[13]), .Z(n331) );
  GTECH_AND_NOT U245 ( .A(n368), .B(a[14]), .Z(n323) );
  GTECH_NOT U246 ( .A(b[14]), .Z(n368) );
endmodule

