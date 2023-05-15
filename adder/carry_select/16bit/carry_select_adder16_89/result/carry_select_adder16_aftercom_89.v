
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
         n362, n363, n364, n365, n366, n367, n368;

  GTECH_MUX2 U124 ( .A(n263), .B(n264), .S(n265), .Z(sum[9]) );
  GTECH_ADD_ABC U125 ( .A(n266), .B(a[8]), .C(b[8]), .COUT(n265) );
  GTECH_MUX2 U126 ( .A(n267), .B(n268), .S(n269), .Z(n266) );
  GTECH_OR2 U127 ( .A(n270), .B(n271), .Z(n264) );
  GTECH_XNOR2 U128 ( .A(b[9]), .B(n272), .Z(n263) );
  GTECH_XOR2 U129 ( .A(n273), .B(n274), .Z(sum[8]) );
  GTECH_MUX2 U130 ( .A(n275), .B(n276), .S(n277), .Z(sum[7]) );
  GTECH_XNOR2 U131 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_XOR2 U132 ( .A(n278), .B(n280), .Z(n275) );
  GTECH_OA21 U133 ( .A(n281), .B(n282), .C(n283), .Z(n280) );
  GTECH_XNOR2 U134 ( .A(a[7]), .B(b[7]), .Z(n278) );
  GTECH_MUX2 U135 ( .A(n284), .B(n285), .S(n277), .Z(sum[6]) );
  GTECH_XOR2 U136 ( .A(n286), .B(n287), .Z(n285) );
  GTECH_XOR2 U137 ( .A(n286), .B(n282), .Z(n284) );
  GTECH_OA21 U138 ( .A(n288), .B(n289), .C(n290), .Z(n282) );
  GTECH_OR_NOT U139 ( .A(n281), .B(n283), .Z(n286) );
  GTECH_MUX2 U140 ( .A(n291), .B(n292), .S(n293), .Z(sum[5]) );
  GTECH_AND_NOT U141 ( .A(n290), .B(n288), .Z(n293) );
  GTECH_AO21 U142 ( .A(n289), .B(n269), .C(n294), .Z(n292) );
  GTECH_OAI21 U143 ( .A(n294), .B(n269), .C(n289), .Z(n291) );
  GTECH_XNOR2 U144 ( .A(n269), .B(n268), .Z(sum[4]) );
  GTECH_NOT U145 ( .A(n277), .Z(n269) );
  GTECH_MUX2 U146 ( .A(n295), .B(n296), .S(n297), .Z(sum[3]) );
  GTECH_XOR2 U147 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_OA21 U148 ( .A(n300), .B(n301), .C(n302), .Z(n299) );
  GTECH_XNOR2 U149 ( .A(n298), .B(n303), .Z(n295) );
  GTECH_XNOR2 U150 ( .A(a[3]), .B(b[3]), .Z(n298) );
  GTECH_MUX2 U151 ( .A(n304), .B(n305), .S(n297), .Z(sum[2]) );
  GTECH_XOR2 U152 ( .A(n306), .B(n301), .Z(n305) );
  GTECH_OA21 U153 ( .A(n307), .B(n308), .C(n309), .Z(n301) );
  GTECH_XOR2 U154 ( .A(n306), .B(n310), .Z(n304) );
  GTECH_OR_NOT U155 ( .A(n300), .B(n302), .Z(n306) );
  GTECH_MUX2 U156 ( .A(n311), .B(n312), .S(n313), .Z(sum[1]) );
  GTECH_AND_NOT U157 ( .A(n309), .B(n307), .Z(n313) );
  GTECH_AO21 U158 ( .A(n297), .B(n308), .C(n314), .Z(n312) );
  GTECH_OAI21 U159 ( .A(n314), .B(n297), .C(n308), .Z(n311) );
  GTECH_MUX2 U160 ( .A(n315), .B(n316), .S(n317), .Z(sum[15]) );
  GTECH_XNOR2 U161 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_XNOR2 U162 ( .A(n318), .B(n320), .Z(n315) );
  GTECH_AND2 U163 ( .A(n321), .B(n322), .Z(n320) );
  GTECH_OAI21 U164 ( .A(b[14]), .B(a[14]), .C(n323), .Z(n322) );
  GTECH_XOR2 U165 ( .A(a[15]), .B(b[15]), .Z(n318) );
  GTECH_MUX2 U166 ( .A(n324), .B(n325), .S(n317), .Z(sum[14]) );
  GTECH_XNOR2 U167 ( .A(n326), .B(n327), .Z(n325) );
  GTECH_XNOR2 U168 ( .A(n323), .B(n327), .Z(n324) );
  GTECH_OAI21 U169 ( .A(b[14]), .B(a[14]), .C(n321), .Z(n327) );
  GTECH_OA21 U170 ( .A(n328), .B(n329), .C(n330), .Z(n323) );
  GTECH_MUX2 U171 ( .A(n331), .B(n332), .S(n317), .Z(sum[13]) );
  GTECH_XNOR2 U172 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_XOR2 U173 ( .A(n333), .B(n329), .Z(n331) );
  GTECH_OA21 U174 ( .A(a[13]), .B(b[13]), .C(n335), .Z(n333) );
  GTECH_NAND2 U175 ( .A(n336), .B(n337), .Z(sum[12]) );
  GTECH_OAI21 U176 ( .A(n329), .B(n334), .C(n317), .Z(n336) );
  GTECH_MUX2 U177 ( .A(n338), .B(n339), .S(n273), .Z(sum[11]) );
  GTECH_XNOR2 U178 ( .A(n340), .B(n341), .Z(n339) );
  GTECH_XOR2 U179 ( .A(n340), .B(n342), .Z(n338) );
  GTECH_AND2 U180 ( .A(n343), .B(n344), .Z(n342) );
  GTECH_OAI21 U181 ( .A(b[10]), .B(a[10]), .C(n345), .Z(n344) );
  GTECH_XNOR2 U182 ( .A(a[11]), .B(b[11]), .Z(n340) );
  GTECH_MUX2 U183 ( .A(n346), .B(n347), .S(n273), .Z(sum[10]) );
  GTECH_XOR2 U184 ( .A(n348), .B(n349), .Z(n347) );
  GTECH_XOR2 U185 ( .A(n348), .B(n345), .Z(n346) );
  GTECH_OR_NOT U186 ( .A(n271), .B(n350), .Z(n345) );
  GTECH_OR3 U187 ( .A(n270), .B(n351), .C(n352), .Z(n350) );
  GTECH_OA21 U188 ( .A(b[10]), .B(a[10]), .C(n343), .Z(n348) );
  GTECH_XOR2 U189 ( .A(cin), .B(n353), .Z(sum[0]) );
  GTECH_OAI21 U190 ( .A(n354), .B(n355), .C(n337), .Z(cout) );
  GTECH_OR3 U191 ( .A(n334), .B(n329), .C(n317), .Z(n337) );
  GTECH_AND2 U192 ( .A(a[12]), .B(b[12]), .Z(n329) );
  GTECH_NOT U193 ( .A(n356), .Z(n334) );
  GTECH_NOT U194 ( .A(n317), .Z(n355) );
  GTECH_MUX2 U195 ( .A(n357), .B(n274), .S(n358), .Z(n317) );
  GTECH_NOT U196 ( .A(n273), .Z(n358) );
  GTECH_MUX2 U197 ( .A(n268), .B(n267), .S(n277), .Z(n273) );
  GTECH_MUX2 U198 ( .A(n359), .B(n353), .S(n297), .Z(n277) );
  GTECH_NOT U199 ( .A(cin), .Z(n297) );
  GTECH_AND_NOT U200 ( .A(n308), .B(n314), .Z(n353) );
  GTECH_NAND2 U201 ( .A(b[0]), .B(a[0]), .Z(n308) );
  GTECH_OA21 U202 ( .A(a[3]), .B(n303), .C(n360), .Z(n359) );
  GTECH_AO21 U203 ( .A(n303), .B(a[3]), .C(b[3]), .Z(n360) );
  GTECH_OAI21 U204 ( .A(n300), .B(n310), .C(n302), .Z(n303) );
  GTECH_NAND2 U205 ( .A(b[2]), .B(a[2]), .Z(n302) );
  GTECH_OA21 U206 ( .A(n314), .B(n307), .C(n309), .Z(n310) );
  GTECH_NAND2 U207 ( .A(b[1]), .B(a[1]), .Z(n309) );
  GTECH_NOR2 U208 ( .A(a[1]), .B(b[1]), .Z(n307) );
  GTECH_NOR2 U209 ( .A(a[0]), .B(b[0]), .Z(n314) );
  GTECH_NOR2 U210 ( .A(b[2]), .B(a[2]), .Z(n300) );
  GTECH_AO21 U211 ( .A(n279), .B(a[7]), .C(n361), .Z(n267) );
  GTECH_OA21 U212 ( .A(a[7]), .B(n279), .C(b[7]), .Z(n361) );
  GTECH_OAI21 U213 ( .A(n287), .B(n281), .C(n283), .Z(n279) );
  GTECH_NAND2 U214 ( .A(b[6]), .B(a[6]), .Z(n283) );
  GTECH_NOR2 U215 ( .A(a[6]), .B(b[6]), .Z(n281) );
  GTECH_OA21 U216 ( .A(n294), .B(n288), .C(n290), .Z(n287) );
  GTECH_NAND2 U217 ( .A(b[5]), .B(a[5]), .Z(n290) );
  GTECH_NOR2 U218 ( .A(a[5]), .B(b[5]), .Z(n288) );
  GTECH_AND_NOT U219 ( .A(n289), .B(n294), .Z(n268) );
  GTECH_NOR2 U220 ( .A(a[4]), .B(b[4]), .Z(n294) );
  GTECH_NAND2 U221 ( .A(b[4]), .B(a[4]), .Z(n289) );
  GTECH_XOR2 U222 ( .A(a[8]), .B(b[8]), .Z(n274) );
  GTECH_OA21 U223 ( .A(a[11]), .B(n341), .C(n362), .Z(n357) );
  GTECH_AO21 U224 ( .A(n341), .B(a[11]), .C(b[11]), .Z(n362) );
  GTECH_NAND2 U225 ( .A(n363), .B(n343), .Z(n341) );
  GTECH_NAND2 U226 ( .A(b[10]), .B(a[10]), .Z(n343) );
  GTECH_OAI21 U227 ( .A(a[10]), .B(b[10]), .C(n349), .Z(n363) );
  GTECH_OR_NOT U228 ( .A(n271), .B(n364), .Z(n349) );
  GTECH_AO21 U229 ( .A(n351), .B(n352), .C(n270), .Z(n364) );
  GTECH_AND_NOT U230 ( .A(n272), .B(b[9]), .Z(n270) );
  GTECH_NOT U231 ( .A(a[9]), .Z(n272) );
  GTECH_NOT U232 ( .A(a[8]), .Z(n352) );
  GTECH_NOT U233 ( .A(b[8]), .Z(n351) );
  GTECH_AND2 U234 ( .A(b[9]), .B(a[9]), .Z(n271) );
  GTECH_OA21 U235 ( .A(n319), .B(n365), .C(n366), .Z(n354) );
  GTECH_OAI21 U236 ( .A(a[15]), .B(n367), .C(b[15]), .Z(n366) );
  GTECH_NOT U237 ( .A(a[15]), .Z(n365) );
  GTECH_NOT U238 ( .A(n367), .Z(n319) );
  GTECH_NAND2 U239 ( .A(n368), .B(n321), .Z(n367) );
  GTECH_NAND2 U240 ( .A(b[14]), .B(a[14]), .Z(n321) );
  GTECH_OAI21 U241 ( .A(a[14]), .B(b[14]), .C(n326), .Z(n368) );
  GTECH_OA21 U242 ( .A(n328), .B(n356), .C(n330), .Z(n326) );
  GTECH_OR2 U243 ( .A(a[13]), .B(b[13]), .Z(n330) );
  GTECH_OR2 U244 ( .A(b[12]), .B(a[12]), .Z(n356) );
  GTECH_NOT U245 ( .A(n335), .Z(n328) );
  GTECH_NAND2 U246 ( .A(b[13]), .B(a[13]), .Z(n335) );
endmodule

