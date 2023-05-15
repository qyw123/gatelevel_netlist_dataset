
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
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368;

  GTECH_MUX2 U132 ( .A(n271), .B(n272), .S(n273), .Z(sum[9]) );
  GTECH_XNOR2 U133 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XNOR2 U134 ( .A(n276), .B(n275), .Z(n271) );
  GTECH_OAI21 U135 ( .A(a[9]), .B(b[9]), .C(n277), .Z(n275) );
  GTECH_XNOR2 U136 ( .A(n273), .B(n278), .Z(sum[8]) );
  GTECH_MUX2 U137 ( .A(n279), .B(n280), .S(n281), .Z(sum[7]) );
  GTECH_XOR2 U138 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_OA21 U139 ( .A(a[6]), .B(n284), .C(n285), .Z(n282) );
  GTECH_AO21 U140 ( .A(n284), .B(a[6]), .C(b[6]), .Z(n285) );
  GTECH_XOR2 U141 ( .A(n283), .B(n286), .Z(n279) );
  GTECH_XOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n283) );
  GTECH_MUX2 U143 ( .A(n287), .B(n288), .S(n281), .Z(sum[6]) );
  GTECH_XNOR2 U144 ( .A(n289), .B(n284), .Z(n288) );
  GTECH_AO21 U145 ( .A(n290), .B(n291), .C(n292), .Z(n284) );
  GTECH_XOR2 U146 ( .A(n289), .B(n293), .Z(n287) );
  GTECH_XNOR2 U147 ( .A(n294), .B(n295), .Z(n289) );
  GTECH_XOR2 U148 ( .A(n296), .B(n297), .Z(sum[5]) );
  GTECH_AOI21 U149 ( .A(n298), .B(n299), .C(n291), .Z(n297) );
  GTECH_NOT U150 ( .A(n281), .Z(n299) );
  GTECH_OR_NOT U151 ( .A(n292), .B(n290), .Z(n296) );
  GTECH_XNOR2 U152 ( .A(n300), .B(n281), .Z(sum[4]) );
  GTECH_MUX2 U153 ( .A(n301), .B(n302), .S(n303), .Z(sum[3]) );
  GTECH_XOR2 U154 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_OA21 U155 ( .A(a[2]), .B(n306), .C(n307), .Z(n304) );
  GTECH_AO21 U156 ( .A(n306), .B(a[2]), .C(b[2]), .Z(n307) );
  GTECH_XOR2 U157 ( .A(n305), .B(n308), .Z(n301) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n305) );
  GTECH_MUX2 U159 ( .A(n309), .B(n310), .S(n303), .Z(sum[2]) );
  GTECH_XNOR2 U160 ( .A(n311), .B(n306), .Z(n310) );
  GTECH_OAI21 U161 ( .A(n312), .B(n313), .C(n314), .Z(n306) );
  GTECH_XOR2 U162 ( .A(n311), .B(n315), .Z(n309) );
  GTECH_XNOR2 U163 ( .A(n316), .B(n317), .Z(n311) );
  GTECH_MUX2 U164 ( .A(n318), .B(n319), .S(n320), .Z(sum[1]) );
  GTECH_AND_NOT U165 ( .A(n314), .B(n312), .Z(n320) );
  GTECH_AO21 U166 ( .A(n303), .B(n313), .C(n321), .Z(n319) );
  GTECH_OAI21 U167 ( .A(n321), .B(n303), .C(n313), .Z(n318) );
  GTECH_OR_NOT U168 ( .A(n322), .B(b[0]), .Z(n313) );
  GTECH_MUX2 U169 ( .A(n323), .B(n324), .S(n325), .Z(sum[15]) );
  GTECH_XOR2 U170 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_ADD_ABC U171 ( .A(a[14]), .B(n328), .C(b[14]), .COUT(n326) );
  GTECH_XOR2 U172 ( .A(n327), .B(n329), .Z(n323) );
  GTECH_XOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n327) );
  GTECH_MUX2 U174 ( .A(n330), .B(n331), .S(n325), .Z(sum[14]) );
  GTECH_XOR2 U175 ( .A(n328), .B(n332), .Z(n331) );
  GTECH_OA21 U176 ( .A(n333), .B(n334), .C(n335), .Z(n328) );
  GTECH_XOR2 U177 ( .A(n336), .B(n332), .Z(n330) );
  GTECH_XOR2 U178 ( .A(a[14]), .B(b[14]), .Z(n332) );
  GTECH_MUX2 U179 ( .A(n337), .B(n338), .S(n325), .Z(sum[13]) );
  GTECH_XNOR2 U180 ( .A(n339), .B(n334), .Z(n338) );
  GTECH_XNOR2 U181 ( .A(n340), .B(n339), .Z(n337) );
  GTECH_OAI21 U182 ( .A(a[13]), .B(b[13]), .C(n341), .Z(n339) );
  GTECH_NAND2 U183 ( .A(n342), .B(n343), .Z(sum[12]) );
  GTECH_AO21 U184 ( .A(n344), .B(n340), .C(n325), .Z(n342) );
  GTECH_MUX2 U185 ( .A(n345), .B(n346), .S(n273), .Z(sum[11]) );
  GTECH_XOR2 U186 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_XOR2 U187 ( .A(n349), .B(n347), .Z(n345) );
  GTECH_XOR2 U188 ( .A(a[11]), .B(b[11]), .Z(n347) );
  GTECH_ADD_ABC U189 ( .A(a[10]), .B(n350), .C(b[10]), .COUT(n349) );
  GTECH_MUX2 U190 ( .A(n351), .B(n352), .S(n273), .Z(sum[10]) );
  GTECH_XOR2 U191 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_XOR2 U192 ( .A(n350), .B(n354), .Z(n351) );
  GTECH_XOR2 U193 ( .A(a[10]), .B(b[10]), .Z(n354) );
  GTECH_OA21 U194 ( .A(n276), .B(n355), .C(n356), .Z(n350) );
  GTECH_XOR2 U195 ( .A(n303), .B(n357), .Z(sum[0]) );
  GTECH_OAI21 U196 ( .A(n358), .B(n325), .C(n343), .Z(cout) );
  GTECH_NAND3 U197 ( .A(n344), .B(n340), .C(n325), .Z(n343) );
  GTECH_NOT U198 ( .A(n334), .Z(n344) );
  GTECH_AND2 U199 ( .A(a[12]), .B(b[12]), .Z(n334) );
  GTECH_MUX2 U200 ( .A(n278), .B(n359), .S(n273), .Z(n325) );
  GTECH_MUX2 U201 ( .A(n360), .B(n300), .S(n281), .Z(n273) );
  GTECH_MUX2 U202 ( .A(n361), .B(n357), .S(n303), .Z(n281) );
  GTECH_NOT U203 ( .A(cin), .Z(n303) );
  GTECH_XOR2 U204 ( .A(a[0]), .B(n362), .Z(n357) );
  GTECH_OAI21 U205 ( .A(a[3]), .B(n308), .C(n363), .Z(n361) );
  GTECH_AO21 U206 ( .A(n308), .B(a[3]), .C(b[3]), .Z(n363) );
  GTECH_OAI21 U207 ( .A(n315), .B(n316), .C(n364), .Z(n308) );
  GTECH_AO21 U208 ( .A(n316), .B(n315), .C(n317), .Z(n364) );
  GTECH_NOT U209 ( .A(b[2]), .Z(n317) );
  GTECH_NOT U210 ( .A(a[2]), .Z(n316) );
  GTECH_OA21 U211 ( .A(n312), .B(n321), .C(n314), .Z(n315) );
  GTECH_NAND2 U212 ( .A(b[1]), .B(a[1]), .Z(n314) );
  GTECH_AND2 U213 ( .A(n362), .B(n322), .Z(n321) );
  GTECH_NOT U214 ( .A(a[0]), .Z(n322) );
  GTECH_NOT U215 ( .A(b[0]), .Z(n362) );
  GTECH_NOR2 U216 ( .A(b[1]), .B(a[1]), .Z(n312) );
  GTECH_AND_NOT U217 ( .A(n298), .B(n291), .Z(n300) );
  GTECH_AND2 U218 ( .A(a[4]), .B(b[4]), .Z(n291) );
  GTECH_OA21 U219 ( .A(a[7]), .B(n286), .C(n365), .Z(n360) );
  GTECH_AO21 U220 ( .A(n286), .B(a[7]), .C(b[7]), .Z(n365) );
  GTECH_OAI21 U221 ( .A(n293), .B(n294), .C(n366), .Z(n286) );
  GTECH_AO21 U222 ( .A(n294), .B(n293), .C(n295), .Z(n366) );
  GTECH_NOT U223 ( .A(b[6]), .Z(n295) );
  GTECH_NOT U224 ( .A(a[6]), .Z(n294) );
  GTECH_AOI21 U225 ( .A(n298), .B(n290), .C(n292), .Z(n293) );
  GTECH_AND2 U226 ( .A(b[5]), .B(a[5]), .Z(n292) );
  GTECH_OR2 U227 ( .A(b[5]), .B(a[5]), .Z(n290) );
  GTECH_OR2 U228 ( .A(a[4]), .B(b[4]), .Z(n298) );
  GTECH_AOI21 U229 ( .A(n348), .B(a[11]), .C(n367), .Z(n359) );
  GTECH_OA21 U230 ( .A(a[11]), .B(n348), .C(b[11]), .Z(n367) );
  GTECH_ADD_ABC U231 ( .A(n353), .B(a[10]), .C(b[10]), .COUT(n348) );
  GTECH_OA21 U232 ( .A(n355), .B(n274), .C(n356), .Z(n353) );
  GTECH_OR2 U233 ( .A(b[9]), .B(a[9]), .Z(n356) );
  GTECH_NOT U234 ( .A(n277), .Z(n355) );
  GTECH_NAND2 U235 ( .A(b[9]), .B(a[9]), .Z(n277) );
  GTECH_OR_NOT U236 ( .A(n276), .B(n274), .Z(n278) );
  GTECH_OR2 U237 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_AND2 U238 ( .A(a[8]), .B(b[8]), .Z(n276) );
  GTECH_AOI21 U239 ( .A(n329), .B(a[15]), .C(n368), .Z(n358) );
  GTECH_OA21 U240 ( .A(a[15]), .B(n329), .C(b[15]), .Z(n368) );
  GTECH_ADD_ABC U241 ( .A(a[14]), .B(n336), .C(b[14]), .COUT(n329) );
  GTECH_OA21 U242 ( .A(n333), .B(n340), .C(n335), .Z(n336) );
  GTECH_OR2 U243 ( .A(b[13]), .B(a[13]), .Z(n335) );
  GTECH_OR2 U244 ( .A(b[12]), .B(a[12]), .Z(n340) );
  GTECH_NOT U245 ( .A(n341), .Z(n333) );
  GTECH_NAND2 U246 ( .A(a[13]), .B(b[13]), .Z(n341) );
endmodule
