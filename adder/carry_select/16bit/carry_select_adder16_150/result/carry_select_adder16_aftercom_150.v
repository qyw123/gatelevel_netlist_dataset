
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365;

  GTECH_MUX2 U124 ( .A(n263), .B(n264), .S(n265), .Z(sum[9]) );
  GTECH_XOR2 U125 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_XOR2 U126 ( .A(n268), .B(n266), .Z(n263) );
  GTECH_XOR2 U127 ( .A(a[9]), .B(b[9]), .Z(n266) );
  GTECH_XOR2 U128 ( .A(n269), .B(n265), .Z(sum[8]) );
  GTECH_MUX2 U129 ( .A(n270), .B(n271), .S(n272), .Z(sum[7]) );
  GTECH_XOR2 U130 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_NOT U131 ( .A(n275), .Z(n270) );
  GTECH_XOR2 U132 ( .A(n273), .B(n276), .Z(n275) );
  GTECH_AOI21 U133 ( .A(n277), .B(n278), .C(n279), .Z(n276) );
  GTECH_XOR2 U134 ( .A(a[7]), .B(b[7]), .Z(n273) );
  GTECH_MUX2 U135 ( .A(n280), .B(n281), .S(n272), .Z(sum[6]) );
  GTECH_XOR2 U136 ( .A(n282), .B(n283), .Z(n281) );
  GTECH_XOR2 U137 ( .A(n282), .B(n278), .Z(n280) );
  GTECH_OR2 U138 ( .A(n284), .B(n285), .Z(n278) );
  GTECH_AND3 U139 ( .A(b[4]), .B(n286), .C(a[4]), .Z(n285) );
  GTECH_AND2 U140 ( .A(n287), .B(n277), .Z(n282) );
  GTECH_XOR2 U141 ( .A(n288), .B(n289), .Z(sum[5]) );
  GTECH_OAI21 U142 ( .A(a[4]), .B(n272), .C(n290), .Z(n289) );
  GTECH_AO21 U143 ( .A(n272), .B(a[4]), .C(b[4]), .Z(n290) );
  GTECH_OR_NOT U144 ( .A(n284), .B(n286), .Z(n288) );
  GTECH_XOR2 U145 ( .A(n291), .B(n272), .Z(sum[4]) );
  GTECH_MUX2 U146 ( .A(n292), .B(n293), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U147 ( .A(n294), .B(n295), .Z(n293) );
  GTECH_XOR2 U148 ( .A(n296), .B(n294), .Z(n292) );
  GTECH_XOR2 U149 ( .A(a[3]), .B(b[3]), .Z(n294) );
  GTECH_OA21 U150 ( .A(a[2]), .B(n297), .C(n298), .Z(n296) );
  GTECH_AO21 U151 ( .A(n297), .B(a[2]), .C(b[2]), .Z(n298) );
  GTECH_MUX2 U152 ( .A(n299), .B(n300), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U153 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_XOR2 U154 ( .A(n301), .B(n297), .Z(n299) );
  GTECH_AO21 U155 ( .A(n303), .B(n304), .C(n305), .Z(n297) );
  GTECH_XOR2 U156 ( .A(a[2]), .B(b[2]), .Z(n301) );
  GTECH_OAI21 U157 ( .A(n306), .B(n307), .C(n308), .Z(sum[1]) );
  GTECH_OAI22 U158 ( .A(n304), .B(n309), .C(n305), .D(n310), .Z(n308) );
  GTECH_OA21 U159 ( .A(b[0]), .B(a[0]), .C(cin), .Z(n309) );
  GTECH_NOT U160 ( .A(n311), .Z(n307) );
  GTECH_XOR2 U161 ( .A(a[1]), .B(b[1]), .Z(n311) );
  GTECH_AOI2N2 U162 ( .A(n312), .B(n313), .C(cin), .D(n304), .Z(n306) );
  GTECH_AND2 U163 ( .A(a[0]), .B(b[0]), .Z(n304) );
  GTECH_MUX2 U164 ( .A(n314), .B(n315), .S(n316), .Z(sum[15]) );
  GTECH_XOR2 U165 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_OAI21 U166 ( .A(a[14]), .B(n319), .C(n320), .Z(n317) );
  GTECH_AO21 U167 ( .A(n319), .B(a[14]), .C(b[14]), .Z(n320) );
  GTECH_XOR2 U168 ( .A(n318), .B(n321), .Z(n314) );
  GTECH_XOR2 U169 ( .A(n322), .B(b[15]), .Z(n318) );
  GTECH_MUX2 U170 ( .A(n323), .B(n324), .S(n316), .Z(sum[14]) );
  GTECH_XOR2 U171 ( .A(n325), .B(n319), .Z(n324) );
  GTECH_OAI21 U172 ( .A(n326), .B(n327), .C(n328), .Z(n319) );
  GTECH_XOR2 U173 ( .A(n325), .B(n329), .Z(n323) );
  GTECH_XOR2 U174 ( .A(a[14]), .B(b[14]), .Z(n325) );
  GTECH_MUX2 U175 ( .A(n330), .B(n331), .S(n316), .Z(sum[13]) );
  GTECH_XOR2 U176 ( .A(n327), .B(n332), .Z(n331) );
  GTECH_NOT U177 ( .A(n333), .Z(n327) );
  GTECH_XOR2 U178 ( .A(n332), .B(n334), .Z(n330) );
  GTECH_OR_NOT U179 ( .A(n326), .B(n328), .Z(n332) );
  GTECH_NAND2 U180 ( .A(n335), .B(n336), .Z(sum[12]) );
  GTECH_OAI21 U181 ( .A(n333), .B(n334), .C(n337), .Z(n336) );
  GTECH_MUX2 U182 ( .A(n338), .B(n339), .S(n265), .Z(sum[11]) );
  GTECH_XOR2 U183 ( .A(n340), .B(n341), .Z(n339) );
  GTECH_XOR2 U184 ( .A(n342), .B(n340), .Z(n338) );
  GTECH_XOR2 U185 ( .A(a[11]), .B(b[11]), .Z(n340) );
  GTECH_OA21 U186 ( .A(a[10]), .B(n343), .C(n344), .Z(n342) );
  GTECH_AO21 U187 ( .A(n343), .B(a[10]), .C(b[10]), .Z(n344) );
  GTECH_MUX2 U188 ( .A(n345), .B(n346), .S(n265), .Z(sum[10]) );
  GTECH_XOR2 U189 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_XOR2 U190 ( .A(n347), .B(n343), .Z(n345) );
  GTECH_AO22 U191 ( .A(n349), .B(n268), .C(b[9]), .D(a[9]), .Z(n343) );
  GTECH_XOR2 U192 ( .A(a[10]), .B(b[10]), .Z(n347) );
  GTECH_XOR2 U193 ( .A(cin), .B(n350), .Z(sum[0]) );
  GTECH_OAI21 U194 ( .A(n351), .B(n316), .C(n335), .Z(cout) );
  GTECH_OR3 U195 ( .A(n334), .B(n333), .C(n337), .Z(n335) );
  GTECH_AND2 U196 ( .A(b[12]), .B(a[12]), .Z(n333) );
  GTECH_NOT U197 ( .A(n337), .Z(n316) );
  GTECH_MUX2 U198 ( .A(n269), .B(n352), .S(n265), .Z(n337) );
  GTECH_MUX2 U199 ( .A(n291), .B(n353), .S(n272), .Z(n265) );
  GTECH_MUX2 U200 ( .A(n350), .B(n354), .S(cin), .Z(n272) );
  GTECH_OA21 U201 ( .A(a[3]), .B(n295), .C(n355), .Z(n354) );
  GTECH_AO21 U202 ( .A(n295), .B(a[3]), .C(b[3]), .Z(n355) );
  GTECH_AO21 U203 ( .A(n302), .B(a[2]), .C(n356), .Z(n295) );
  GTECH_OA21 U204 ( .A(a[2]), .B(n302), .C(b[2]), .Z(n356) );
  GTECH_OR_NOT U205 ( .A(n305), .B(n357), .Z(n302) );
  GTECH_AO21 U206 ( .A(n313), .B(n312), .C(n310), .Z(n357) );
  GTECH_NOT U207 ( .A(n303), .Z(n310) );
  GTECH_OR2 U208 ( .A(a[1]), .B(b[1]), .Z(n303) );
  GTECH_NOT U209 ( .A(b[0]), .Z(n312) );
  GTECH_NOT U210 ( .A(a[0]), .Z(n313) );
  GTECH_AND2 U211 ( .A(b[1]), .B(a[1]), .Z(n305) );
  GTECH_XOR2 U212 ( .A(a[0]), .B(b[0]), .Z(n350) );
  GTECH_AO21 U213 ( .A(n274), .B(a[7]), .C(n358), .Z(n353) );
  GTECH_OA21 U214 ( .A(a[7]), .B(n274), .C(b[7]), .Z(n358) );
  GTECH_AO21 U215 ( .A(n283), .B(n277), .C(n279), .Z(n274) );
  GTECH_NOT U216 ( .A(n287), .Z(n279) );
  GTECH_NAND2 U217 ( .A(b[6]), .B(a[6]), .Z(n287) );
  GTECH_OR2 U218 ( .A(b[6]), .B(a[6]), .Z(n277) );
  GTECH_OR_NOT U219 ( .A(n284), .B(n359), .Z(n283) );
  GTECH_OAI21 U220 ( .A(a[4]), .B(b[4]), .C(n286), .Z(n359) );
  GTECH_OR2 U221 ( .A(a[5]), .B(b[5]), .Z(n286) );
  GTECH_AND2 U222 ( .A(b[5]), .B(a[5]), .Z(n284) );
  GTECH_XOR2 U223 ( .A(a[4]), .B(b[4]), .Z(n291) );
  GTECH_OA21 U224 ( .A(a[11]), .B(n341), .C(n360), .Z(n352) );
  GTECH_AO21 U225 ( .A(n341), .B(a[11]), .C(b[11]), .Z(n360) );
  GTECH_AO21 U226 ( .A(n348), .B(a[10]), .C(n361), .Z(n341) );
  GTECH_OA21 U227 ( .A(a[10]), .B(n348), .C(b[10]), .Z(n361) );
  GTECH_AO22 U228 ( .A(b[9]), .B(a[9]), .C(n267), .D(n349), .Z(n348) );
  GTECH_OR2 U229 ( .A(a[9]), .B(b[9]), .Z(n349) );
  GTECH_NOT U230 ( .A(n362), .Z(n269) );
  GTECH_OR_NOT U231 ( .A(n268), .B(n267), .Z(n362) );
  GTECH_OR2 U232 ( .A(a[8]), .B(b[8]), .Z(n267) );
  GTECH_AND2 U233 ( .A(b[8]), .B(a[8]), .Z(n268) );
  GTECH_OA21 U234 ( .A(n321), .B(n322), .C(n363), .Z(n351) );
  GTECH_OAI21 U235 ( .A(a[15]), .B(n364), .C(b[15]), .Z(n363) );
  GTECH_NOT U236 ( .A(n321), .Z(n364) );
  GTECH_NOT U237 ( .A(a[15]), .Z(n322) );
  GTECH_AOI21 U238 ( .A(n329), .B(a[14]), .C(n365), .Z(n321) );
  GTECH_OA21 U239 ( .A(a[14]), .B(n329), .C(b[14]), .Z(n365) );
  GTECH_OAI21 U240 ( .A(n326), .B(n334), .C(n328), .Z(n329) );
  GTECH_NAND2 U241 ( .A(b[13]), .B(a[13]), .Z(n328) );
  GTECH_NOR2 U242 ( .A(b[12]), .B(a[12]), .Z(n334) );
  GTECH_NOR2 U243 ( .A(b[13]), .B(a[13]), .Z(n326) );
endmodule

