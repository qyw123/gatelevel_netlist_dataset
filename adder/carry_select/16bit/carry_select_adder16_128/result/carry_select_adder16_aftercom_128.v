
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360;

  GTECH_MUX2 U119 ( .A(n258), .B(n259), .S(n260), .Z(sum[9]) );
  GTECH_OA21 U120 ( .A(n261), .B(n262), .C(n263), .Z(n260) );
  GTECH_NOT U121 ( .A(n264), .Z(n262) );
  GTECH_XOR2 U122 ( .A(b[9]), .B(a[9]), .Z(n259) );
  GTECH_OR_NOT U123 ( .A(n265), .B(n266), .Z(n258) );
  GTECH_XNOR2 U124 ( .A(n264), .B(n267), .Z(sum[8]) );
  GTECH_MUX2 U125 ( .A(n268), .B(n269), .S(n270), .Z(sum[7]) );
  GTECH_XOR2 U126 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_XNOR2 U127 ( .A(n271), .B(n273), .Z(n268) );
  GTECH_AND2 U128 ( .A(n274), .B(n275), .Z(n273) );
  GTECH_OAI21 U129 ( .A(b[6]), .B(a[6]), .C(n276), .Z(n274) );
  GTECH_NOT U130 ( .A(n277), .Z(n276) );
  GTECH_XOR2 U131 ( .A(a[7]), .B(b[7]), .Z(n271) );
  GTECH_MUX2 U132 ( .A(n278), .B(n279), .S(n270), .Z(sum[6]) );
  GTECH_XOR2 U133 ( .A(n280), .B(n281), .Z(n279) );
  GTECH_XNOR2 U134 ( .A(n280), .B(n277), .Z(n278) );
  GTECH_AOI21 U135 ( .A(n282), .B(n283), .C(n284), .Z(n277) );
  GTECH_OA21 U136 ( .A(b[6]), .B(a[6]), .C(n275), .Z(n280) );
  GTECH_XOR2 U137 ( .A(n285), .B(n286), .Z(sum[5]) );
  GTECH_AND_NOT U138 ( .A(n282), .B(n284), .Z(n286) );
  GTECH_OA22 U139 ( .A(b[4]), .B(a[4]), .C(n283), .D(n270), .Z(n285) );
  GTECH_AND2 U140 ( .A(a[4]), .B(b[4]), .Z(n283) );
  GTECH_XOR2 U141 ( .A(n287), .B(n270), .Z(sum[4]) );
  GTECH_MUX2 U142 ( .A(n288), .B(n289), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U143 ( .A(n290), .B(n291), .Z(n289) );
  GTECH_XNOR2 U144 ( .A(n290), .B(n292), .Z(n288) );
  GTECH_AND2 U145 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_OAI21 U146 ( .A(b[2]), .B(a[2]), .C(n295), .Z(n293) );
  GTECH_XOR2 U147 ( .A(a[3]), .B(b[3]), .Z(n290) );
  GTECH_MUX2 U148 ( .A(n296), .B(n297), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U149 ( .A(n298), .B(n299), .Z(n297) );
  GTECH_XOR2 U150 ( .A(n298), .B(n295), .Z(n296) );
  GTECH_OAI21 U151 ( .A(n300), .B(n301), .C(n302), .Z(n295) );
  GTECH_OA21 U152 ( .A(b[2]), .B(a[2]), .C(n294), .Z(n298) );
  GTECH_MUX2 U153 ( .A(n303), .B(n304), .S(n305), .Z(sum[1]) );
  GTECH_AND_NOT U154 ( .A(n302), .B(n300), .Z(n305) );
  GTECH_NOT U155 ( .A(n306), .Z(n304) );
  GTECH_AOI21 U156 ( .A(n307), .B(n301), .C(n308), .Z(n306) );
  GTECH_OAI21 U157 ( .A(n308), .B(n307), .C(n301), .Z(n303) );
  GTECH_NOT U158 ( .A(cin), .Z(n307) );
  GTECH_MUX2 U159 ( .A(n309), .B(n310), .S(n311), .Z(sum[15]) );
  GTECH_XNOR2 U160 ( .A(n312), .B(n313), .Z(n310) );
  GTECH_AND2 U161 ( .A(n314), .B(n315), .Z(n313) );
  GTECH_OAI21 U162 ( .A(b[14]), .B(a[14]), .C(n316), .Z(n314) );
  GTECH_XOR2 U163 ( .A(n312), .B(n317), .Z(n309) );
  GTECH_XOR2 U164 ( .A(a[15]), .B(b[15]), .Z(n312) );
  GTECH_MUX2 U165 ( .A(n318), .B(n319), .S(n311), .Z(sum[14]) );
  GTECH_XNOR2 U166 ( .A(n316), .B(n320), .Z(n319) );
  GTECH_AOI21 U167 ( .A(n321), .B(n322), .C(n323), .Z(n316) );
  GTECH_XNOR2 U168 ( .A(n324), .B(n320), .Z(n318) );
  GTECH_OAI21 U169 ( .A(b[14]), .B(a[14]), .C(n315), .Z(n320) );
  GTECH_MUX2 U170 ( .A(n325), .B(n326), .S(n311), .Z(sum[13]) );
  GTECH_XOR2 U171 ( .A(n327), .B(n322), .Z(n326) );
  GTECH_XOR2 U172 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_OAI21 U173 ( .A(a[13]), .B(b[13]), .C(n321), .Z(n327) );
  GTECH_OR_NOT U174 ( .A(n329), .B(n330), .Z(sum[12]) );
  GTECH_AOI21 U175 ( .A(n322), .B(n331), .C(n311), .Z(n329) );
  GTECH_MUX2 U176 ( .A(n332), .B(n333), .S(n264), .Z(sum[11]) );
  GTECH_XNOR2 U177 ( .A(n334), .B(n335), .Z(n333) );
  GTECH_XOR2 U178 ( .A(n334), .B(n336), .Z(n332) );
  GTECH_AND2 U179 ( .A(n337), .B(n338), .Z(n336) );
  GTECH_OAI21 U180 ( .A(b[10]), .B(a[10]), .C(n339), .Z(n337) );
  GTECH_XNOR2 U181 ( .A(a[11]), .B(b[11]), .Z(n334) );
  GTECH_MUX2 U182 ( .A(n340), .B(n341), .S(n264), .Z(sum[10]) );
  GTECH_XOR2 U183 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_XOR2 U184 ( .A(n342), .B(n339), .Z(n340) );
  GTECH_OAI21 U185 ( .A(n265), .B(n263), .C(n266), .Z(n339) );
  GTECH_OA21 U186 ( .A(b[10]), .B(a[10]), .C(n338), .Z(n342) );
  GTECH_XOR2 U187 ( .A(cin), .B(n344), .Z(sum[0]) );
  GTECH_OAI21 U188 ( .A(n345), .B(n311), .C(n330), .Z(cout) );
  GTECH_NAND3 U189 ( .A(n322), .B(n331), .C(n311), .Z(n330) );
  GTECH_NOT U190 ( .A(n328), .Z(n331) );
  GTECH_NAND2 U191 ( .A(a[12]), .B(b[12]), .Z(n322) );
  GTECH_MUX2 U192 ( .A(n267), .B(n346), .S(n264), .Z(n311) );
  GTECH_MUX2 U193 ( .A(n287), .B(n347), .S(n270), .Z(n264) );
  GTECH_MUX2 U194 ( .A(n344), .B(n348), .S(cin), .Z(n270) );
  GTECH_OA21 U195 ( .A(a[3]), .B(n291), .C(n349), .Z(n348) );
  GTECH_NOT U196 ( .A(n350), .Z(n349) );
  GTECH_AOI21 U197 ( .A(n291), .B(a[3]), .C(b[3]), .Z(n350) );
  GTECH_NAND2 U198 ( .A(n351), .B(n294), .Z(n291) );
  GTECH_NAND2 U199 ( .A(a[2]), .B(b[2]), .Z(n294) );
  GTECH_OAI21 U200 ( .A(a[2]), .B(b[2]), .C(n299), .Z(n351) );
  GTECH_OAI21 U201 ( .A(n300), .B(n308), .C(n302), .Z(n299) );
  GTECH_NAND2 U202 ( .A(a[1]), .B(b[1]), .Z(n302) );
  GTECH_NOR2 U203 ( .A(b[1]), .B(a[1]), .Z(n300) );
  GTECH_AND_NOT U204 ( .A(n301), .B(n308), .Z(n344) );
  GTECH_NOR2 U205 ( .A(a[0]), .B(b[0]), .Z(n308) );
  GTECH_NAND2 U206 ( .A(b[0]), .B(a[0]), .Z(n301) );
  GTECH_OA21 U207 ( .A(a[7]), .B(n272), .C(n352), .Z(n347) );
  GTECH_NOT U208 ( .A(n353), .Z(n352) );
  GTECH_AOI21 U209 ( .A(n272), .B(a[7]), .C(b[7]), .Z(n353) );
  GTECH_NAND2 U210 ( .A(n354), .B(n275), .Z(n272) );
  GTECH_NAND2 U211 ( .A(a[6]), .B(b[6]), .Z(n275) );
  GTECH_OAI21 U212 ( .A(a[6]), .B(b[6]), .C(n281), .Z(n354) );
  GTECH_OR_NOT U213 ( .A(n284), .B(n355), .Z(n281) );
  GTECH_OAI21 U214 ( .A(b[4]), .B(a[4]), .C(n282), .Z(n355) );
  GTECH_NOT U215 ( .A(n356), .Z(n282) );
  GTECH_NOR2 U216 ( .A(b[5]), .B(a[5]), .Z(n356) );
  GTECH_AND2 U217 ( .A(b[5]), .B(a[5]), .Z(n284) );
  GTECH_XOR2 U218 ( .A(a[4]), .B(b[4]), .Z(n287) );
  GTECH_AOI21 U219 ( .A(n335), .B(a[11]), .C(n357), .Z(n346) );
  GTECH_OA21 U220 ( .A(a[11]), .B(n335), .C(b[11]), .Z(n357) );
  GTECH_NAND2 U221 ( .A(n358), .B(n338), .Z(n335) );
  GTECH_NAND2 U222 ( .A(a[10]), .B(b[10]), .Z(n338) );
  GTECH_OAI21 U223 ( .A(a[10]), .B(b[10]), .C(n343), .Z(n358) );
  GTECH_OAI21 U224 ( .A(n261), .B(n265), .C(n266), .Z(n343) );
  GTECH_NAND2 U225 ( .A(b[9]), .B(a[9]), .Z(n266) );
  GTECH_NOR2 U226 ( .A(b[9]), .B(a[9]), .Z(n265) );
  GTECH_OR_NOT U227 ( .A(n261), .B(n263), .Z(n267) );
  GTECH_NAND2 U228 ( .A(b[8]), .B(a[8]), .Z(n263) );
  GTECH_NOR2 U229 ( .A(a[8]), .B(b[8]), .Z(n261) );
  GTECH_AOI21 U230 ( .A(n317), .B(a[15]), .C(n359), .Z(n345) );
  GTECH_OA21 U231 ( .A(a[15]), .B(n317), .C(b[15]), .Z(n359) );
  GTECH_NAND2 U232 ( .A(n360), .B(n315), .Z(n317) );
  GTECH_NAND2 U233 ( .A(a[14]), .B(b[14]), .Z(n315) );
  GTECH_OAI21 U234 ( .A(a[14]), .B(b[14]), .C(n324), .Z(n360) );
  GTECH_AOI21 U235 ( .A(n321), .B(n328), .C(n323), .Z(n324) );
  GTECH_NOR2 U236 ( .A(b[13]), .B(a[13]), .Z(n323) );
  GTECH_NOR2 U237 ( .A(b[12]), .B(a[12]), .Z(n328) );
  GTECH_NAND2 U238 ( .A(b[13]), .B(a[13]), .Z(n321) );
endmodule

