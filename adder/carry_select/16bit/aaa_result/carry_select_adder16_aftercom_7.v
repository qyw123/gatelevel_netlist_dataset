
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361;

  GTECH_MUX2 U123 ( .A(n262), .B(n263), .S(n264), .Z(sum[9]) );
  GTECH_ADD_ABC U124 ( .A(n265), .B(a[8]), .C(b[8]), .COUT(n264) );
  GTECH_MUX2 U125 ( .A(n266), .B(n267), .S(n268), .Z(n265) );
  GTECH_NAND2 U126 ( .A(n269), .B(n270), .Z(n263) );
  GTECH_XOR2 U127 ( .A(b[9]), .B(a[9]), .Z(n262) );
  GTECH_XOR2 U128 ( .A(n271), .B(n272), .Z(sum[8]) );
  GTECH_MUX2 U129 ( .A(n273), .B(n274), .S(n275), .Z(sum[7]) );
  GTECH_XOR2 U130 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_OA21 U131 ( .A(n278), .B(n279), .C(n280), .Z(n277) );
  GTECH_XNOR2 U132 ( .A(n276), .B(n281), .Z(n273) );
  GTECH_XNOR2 U133 ( .A(a[7]), .B(b[7]), .Z(n276) );
  GTECH_MUX2 U134 ( .A(n282), .B(n283), .S(n275), .Z(sum[6]) );
  GTECH_XOR2 U135 ( .A(n284), .B(n279), .Z(n283) );
  GTECH_OA21 U136 ( .A(n285), .B(n286), .C(n287), .Z(n279) );
  GTECH_XOR2 U137 ( .A(n284), .B(n288), .Z(n282) );
  GTECH_OR_NOT U138 ( .A(n278), .B(n280), .Z(n284) );
  GTECH_MUX2 U139 ( .A(n289), .B(n290), .S(n291), .Z(sum[5]) );
  GTECH_AND_NOT U140 ( .A(n287), .B(n285), .Z(n291) );
  GTECH_AO21 U141 ( .A(n286), .B(n275), .C(n292), .Z(n290) );
  GTECH_OAI21 U142 ( .A(n292), .B(n275), .C(n286), .Z(n289) );
  GTECH_XOR2 U143 ( .A(n268), .B(n266), .Z(sum[4]) );
  GTECH_MUX2 U144 ( .A(n293), .B(n294), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U145 ( .A(n295), .B(n296), .Z(n294) );
  GTECH_XOR2 U146 ( .A(n295), .B(n297), .Z(n293) );
  GTECH_OA21 U147 ( .A(n298), .B(n299), .C(n300), .Z(n297) );
  GTECH_XNOR2 U148 ( .A(a[3]), .B(b[3]), .Z(n295) );
  GTECH_MUX2 U149 ( .A(n301), .B(n302), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U150 ( .A(n303), .B(n304), .Z(n302) );
  GTECH_XOR2 U151 ( .A(n303), .B(n299), .Z(n301) );
  GTECH_OA21 U152 ( .A(n305), .B(n306), .C(n307), .Z(n299) );
  GTECH_OR_NOT U153 ( .A(n298), .B(n300), .Z(n303) );
  GTECH_MUX2 U154 ( .A(n308), .B(n309), .S(n310), .Z(sum[1]) );
  GTECH_AND_NOT U155 ( .A(n307), .B(n305), .Z(n310) );
  GTECH_AO21 U156 ( .A(n311), .B(n306), .C(n312), .Z(n309) );
  GTECH_OAI21 U157 ( .A(n312), .B(n311), .C(n306), .Z(n308) );
  GTECH_MUX2 U158 ( .A(n313), .B(n314), .S(n315), .Z(sum[15]) );
  GTECH_XNOR2 U159 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_AND2 U160 ( .A(n318), .B(n319), .Z(n317) );
  GTECH_OAI21 U161 ( .A(b[14]), .B(a[14]), .C(n320), .Z(n319) );
  GTECH_XOR2 U162 ( .A(n316), .B(n321), .Z(n313) );
  GTECH_XNOR2 U163 ( .A(n322), .B(b[15]), .Z(n316) );
  GTECH_MUX2 U164 ( .A(n323), .B(n324), .S(n315), .Z(sum[14]) );
  GTECH_XOR2 U165 ( .A(n325), .B(n320), .Z(n324) );
  GTECH_AO22 U166 ( .A(n326), .B(n327), .C(a[13]), .D(b[13]), .Z(n320) );
  GTECH_NOT U167 ( .A(n328), .Z(n326) );
  GTECH_XOR2 U168 ( .A(n325), .B(n329), .Z(n323) );
  GTECH_OA21 U169 ( .A(b[14]), .B(a[14]), .C(n318), .Z(n325) );
  GTECH_MUX2 U170 ( .A(n330), .B(n331), .S(n315), .Z(sum[13]) );
  GTECH_XNOR2 U171 ( .A(n327), .B(n332), .Z(n331) );
  GTECH_XOR2 U172 ( .A(n333), .B(n332), .Z(n330) );
  GTECH_AO21 U173 ( .A(a[13]), .B(b[13]), .C(n328), .Z(n332) );
  GTECH_NAND2 U174 ( .A(n334), .B(n335), .Z(sum[12]) );
  GTECH_OAI21 U175 ( .A(n327), .B(n333), .C(n336), .Z(n334) );
  GTECH_MUX2 U176 ( .A(n337), .B(n338), .S(n271), .Z(sum[11]) );
  GTECH_XNOR2 U177 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U178 ( .A(n339), .B(n341), .Z(n337) );
  GTECH_AND2 U179 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_OAI21 U180 ( .A(b[10]), .B(a[10]), .C(n344), .Z(n343) );
  GTECH_XNOR2 U181 ( .A(a[11]), .B(b[11]), .Z(n339) );
  GTECH_MUX2 U182 ( .A(n345), .B(n346), .S(n271), .Z(sum[10]) );
  GTECH_XOR2 U183 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_XOR2 U184 ( .A(n347), .B(n344), .Z(n345) );
  GTECH_NAND2 U185 ( .A(n269), .B(n349), .Z(n344) );
  GTECH_NAND3 U186 ( .A(b[8]), .B(n270), .C(a[8]), .Z(n349) );
  GTECH_OA21 U187 ( .A(b[10]), .B(a[10]), .C(n342), .Z(n347) );
  GTECH_XNOR2 U188 ( .A(n311), .B(n350), .Z(sum[0]) );
  GTECH_NOT U189 ( .A(cin), .Z(n311) );
  GTECH_OAI21 U190 ( .A(n351), .B(n315), .C(n335), .Z(cout) );
  GTECH_OR3 U191 ( .A(n333), .B(n327), .C(n336), .Z(n335) );
  GTECH_AND2 U192 ( .A(b[12]), .B(a[12]), .Z(n327) );
  GTECH_NOT U193 ( .A(n336), .Z(n315) );
  GTECH_MUX2 U194 ( .A(n272), .B(n352), .S(n271), .Z(n336) );
  GTECH_MUX2 U195 ( .A(n267), .B(n266), .S(n275), .Z(n271) );
  GTECH_NOT U196 ( .A(n268), .Z(n275) );
  GTECH_MUX2 U197 ( .A(n350), .B(n353), .S(cin), .Z(n268) );
  GTECH_OA21 U198 ( .A(a[3]), .B(n296), .C(n354), .Z(n353) );
  GTECH_AO21 U199 ( .A(n296), .B(a[3]), .C(b[3]), .Z(n354) );
  GTECH_OAI21 U200 ( .A(n298), .B(n304), .C(n300), .Z(n296) );
  GTECH_NAND2 U201 ( .A(b[2]), .B(a[2]), .Z(n300) );
  GTECH_OA21 U202 ( .A(n312), .B(n305), .C(n307), .Z(n304) );
  GTECH_NAND2 U203 ( .A(b[1]), .B(a[1]), .Z(n307) );
  GTECH_NOR2 U204 ( .A(a[1]), .B(b[1]), .Z(n305) );
  GTECH_NOR2 U205 ( .A(b[2]), .B(a[2]), .Z(n298) );
  GTECH_AND_NOT U206 ( .A(n306), .B(n312), .Z(n350) );
  GTECH_NOR2 U207 ( .A(a[0]), .B(b[0]), .Z(n312) );
  GTECH_NAND2 U208 ( .A(b[0]), .B(a[0]), .Z(n306) );
  GTECH_AND_NOT U209 ( .A(n286), .B(n292), .Z(n266) );
  GTECH_NAND2 U210 ( .A(b[4]), .B(a[4]), .Z(n286) );
  GTECH_AO21 U211 ( .A(n281), .B(a[7]), .C(n355), .Z(n267) );
  GTECH_OA21 U212 ( .A(a[7]), .B(n281), .C(b[7]), .Z(n355) );
  GTECH_OAI21 U213 ( .A(n288), .B(n278), .C(n280), .Z(n281) );
  GTECH_NAND2 U214 ( .A(b[6]), .B(a[6]), .Z(n280) );
  GTECH_NOR2 U215 ( .A(a[6]), .B(b[6]), .Z(n278) );
  GTECH_OA21 U216 ( .A(n292), .B(n285), .C(n287), .Z(n288) );
  GTECH_NAND2 U217 ( .A(b[5]), .B(a[5]), .Z(n287) );
  GTECH_NOR2 U218 ( .A(a[5]), .B(b[5]), .Z(n285) );
  GTECH_NOR2 U219 ( .A(a[4]), .B(b[4]), .Z(n292) );
  GTECH_OA21 U220 ( .A(a[11]), .B(n340), .C(n356), .Z(n352) );
  GTECH_AO21 U221 ( .A(n340), .B(a[11]), .C(b[11]), .Z(n356) );
  GTECH_NAND2 U222 ( .A(n357), .B(n342), .Z(n340) );
  GTECH_NAND2 U223 ( .A(b[10]), .B(a[10]), .Z(n342) );
  GTECH_OAI21 U224 ( .A(a[10]), .B(b[10]), .C(n348), .Z(n357) );
  GTECH_NAND2 U225 ( .A(n358), .B(n269), .Z(n348) );
  GTECH_NAND2 U226 ( .A(a[9]), .B(b[9]), .Z(n269) );
  GTECH_OAI21 U227 ( .A(b[8]), .B(a[8]), .C(n270), .Z(n358) );
  GTECH_OR2 U228 ( .A(b[9]), .B(a[9]), .Z(n270) );
  GTECH_XOR2 U229 ( .A(a[8]), .B(b[8]), .Z(n272) );
  GTECH_OA21 U230 ( .A(n359), .B(n322), .C(n360), .Z(n351) );
  GTECH_OAI21 U231 ( .A(a[15]), .B(n321), .C(b[15]), .Z(n360) );
  GTECH_NOT U232 ( .A(n359), .Z(n321) );
  GTECH_NOT U233 ( .A(a[15]), .Z(n322) );
  GTECH_AND2 U234 ( .A(n361), .B(n318), .Z(n359) );
  GTECH_NAND2 U235 ( .A(b[14]), .B(a[14]), .Z(n318) );
  GTECH_OAI21 U236 ( .A(a[14]), .B(b[14]), .C(n329), .Z(n361) );
  GTECH_OAI2N2 U237 ( .A(n328), .B(n333), .C(a[13]), .D(b[13]), .Z(n329) );
  GTECH_NOR2 U238 ( .A(a[12]), .B(b[12]), .Z(n333) );
  GTECH_NOR2 U239 ( .A(a[13]), .B(b[13]), .Z(n328) );
endmodule

