
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361;

  GTECH_MUX2 U122 ( .A(n261), .B(n262), .S(n263), .Z(sum[9]) );
  GTECH_XOR2 U123 ( .A(n264), .B(n265), .Z(n262) );
  GTECH_XOR2 U124 ( .A(n266), .B(n265), .Z(n261) );
  GTECH_AO21 U125 ( .A(b[9]), .B(a[9]), .C(n267), .Z(n265) );
  GTECH_XOR2 U126 ( .A(n263), .B(n268), .Z(sum[8]) );
  GTECH_MUX2 U127 ( .A(n269), .B(n270), .S(n271), .Z(sum[7]) );
  GTECH_XOR2 U128 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_XNOR2 U129 ( .A(n272), .B(n274), .Z(n269) );
  GTECH_AOI2N2 U130 ( .A(n275), .B(n276), .C(n277), .D(n278), .Z(n274) );
  GTECH_XOR2 U131 ( .A(a[7]), .B(b[7]), .Z(n272) );
  GTECH_MUX2 U132 ( .A(n279), .B(n280), .S(n271), .Z(sum[6]) );
  GTECH_XOR2 U133 ( .A(n281), .B(n282), .Z(n280) );
  GTECH_XOR2 U134 ( .A(n276), .B(n282), .Z(n279) );
  GTECH_OA21 U135 ( .A(n278), .B(n277), .C(n275), .Z(n282) );
  GTECH_OAI2N2 U136 ( .A(n283), .B(n284), .C(a[5]), .D(b[5]), .Z(n276) );
  GTECH_MUX2 U137 ( .A(n285), .B(n286), .S(n271), .Z(sum[5]) );
  GTECH_XOR2 U138 ( .A(n287), .B(n288), .Z(n286) );
  GTECH_XOR2 U139 ( .A(n284), .B(n288), .Z(n285) );
  GTECH_AO21 U140 ( .A(b[5]), .B(a[5]), .C(n283), .Z(n288) );
  GTECH_XNOR2 U141 ( .A(n271), .B(n289), .Z(sum[4]) );
  GTECH_MUX2 U142 ( .A(n290), .B(n291), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U143 ( .A(n292), .B(n293), .Z(n291) );
  GTECH_XOR2 U144 ( .A(n294), .B(n293), .Z(n290) );
  GTECH_XOR2 U145 ( .A(a[3]), .B(b[3]), .Z(n293) );
  GTECH_OA21 U146 ( .A(n295), .B(n296), .C(n297), .Z(n294) );
  GTECH_NOT U147 ( .A(n298), .Z(n296) );
  GTECH_MUX2 U148 ( .A(n299), .B(n300), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U149 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_XNOR2 U150 ( .A(n301), .B(n298), .Z(n299) );
  GTECH_AO21 U151 ( .A(n303), .B(n304), .C(n305), .Z(n298) );
  GTECH_OA21 U152 ( .A(b[2]), .B(a[2]), .C(n306), .Z(n301) );
  GTECH_NOT U153 ( .A(n295), .Z(n306) );
  GTECH_MUX2 U154 ( .A(n307), .B(n308), .S(n309), .Z(sum[1]) );
  GTECH_OA21 U155 ( .A(a[1]), .B(b[1]), .C(n304), .Z(n309) );
  GTECH_AO21 U156 ( .A(n303), .B(n310), .C(n311), .Z(n308) );
  GTECH_NOT U157 ( .A(n312), .Z(n307) );
  GTECH_OA21 U158 ( .A(n310), .B(n311), .C(n303), .Z(n312) );
  GTECH_NAND2 U159 ( .A(b[0]), .B(a[0]), .Z(n303) );
  GTECH_MUX2 U160 ( .A(n313), .B(n314), .S(n315), .Z(sum[15]) );
  GTECH_XNOR2 U161 ( .A(n316), .B(n317), .Z(n314) );
  GTECH_OA21 U162 ( .A(n318), .B(n319), .C(n320), .Z(n316) );
  GTECH_XNOR2 U163 ( .A(n321), .B(n317), .Z(n313) );
  GTECH_XNOR2 U164 ( .A(a[15]), .B(b[15]), .Z(n317) );
  GTECH_MUX2 U165 ( .A(n322), .B(n323), .S(n315), .Z(sum[14]) );
  GTECH_XOR2 U166 ( .A(n324), .B(n319), .Z(n323) );
  GTECH_NOT U167 ( .A(n325), .Z(n319) );
  GTECH_AO21 U168 ( .A(n326), .B(n327), .C(n328), .Z(n325) );
  GTECH_XNOR2 U169 ( .A(n324), .B(n329), .Z(n322) );
  GTECH_OA21 U170 ( .A(b[14]), .B(a[14]), .C(n330), .Z(n324) );
  GTECH_MUX2 U171 ( .A(n331), .B(n332), .S(n315), .Z(sum[13]) );
  GTECH_XNOR2 U172 ( .A(n327), .B(n333), .Z(n332) );
  GTECH_NOT U173 ( .A(n334), .Z(n327) );
  GTECH_XNOR2 U174 ( .A(n333), .B(n335), .Z(n331) );
  GTECH_OA21 U175 ( .A(b[13]), .B(a[13]), .C(n326), .Z(n333) );
  GTECH_OR2 U176 ( .A(n336), .B(n337), .Z(sum[12]) );
  GTECH_OA21 U177 ( .A(n335), .B(n334), .C(n338), .Z(n336) );
  GTECH_MUX2 U178 ( .A(n339), .B(n340), .S(n263), .Z(sum[11]) );
  GTECH_XOR2 U179 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_AOI2N2 U180 ( .A(a[10]), .B(b[10]), .C(n343), .D(n344), .Z(n342) );
  GTECH_XOR2 U181 ( .A(n341), .B(n345), .Z(n339) );
  GTECH_XOR2 U182 ( .A(n346), .B(b[11]), .Z(n341) );
  GTECH_MUX2 U183 ( .A(n347), .B(n348), .S(n263), .Z(sum[10]) );
  GTECH_XOR2 U184 ( .A(n344), .B(n349), .Z(n348) );
  GTECH_AOI2N2 U185 ( .A(a[9]), .B(b[9]), .C(n267), .D(n264), .Z(n344) );
  GTECH_XOR2 U186 ( .A(n350), .B(n349), .Z(n347) );
  GTECH_AO21 U187 ( .A(b[10]), .B(a[10]), .C(n343), .Z(n349) );
  GTECH_XNOR2 U188 ( .A(n310), .B(n351), .Z(sum[0]) );
  GTECH_NOT U189 ( .A(cin), .Z(n310) );
  GTECH_AO21 U190 ( .A(n338), .B(n352), .C(n337), .Z(cout) );
  GTECH_NOR3 U191 ( .A(n334), .B(n335), .C(n338), .Z(n337) );
  GTECH_AND2 U192 ( .A(b[12]), .B(a[12]), .Z(n334) );
  GTECH_ADD_ABC U193 ( .A(a[15]), .B(n321), .C(b[15]), .COUT(n352) );
  GTECH_OA21 U194 ( .A(n318), .B(n353), .C(n320), .Z(n321) );
  GTECH_OR2 U195 ( .A(b[14]), .B(a[14]), .Z(n320) );
  GTECH_NOT U196 ( .A(n329), .Z(n353) );
  GTECH_AO21 U197 ( .A(n335), .B(n326), .C(n328), .Z(n329) );
  GTECH_NOR2 U198 ( .A(a[13]), .B(b[13]), .Z(n328) );
  GTECH_NAND2 U199 ( .A(b[13]), .B(a[13]), .Z(n326) );
  GTECH_NOR2 U200 ( .A(a[12]), .B(b[12]), .Z(n335) );
  GTECH_NOT U201 ( .A(n330), .Z(n318) );
  GTECH_NAND2 U202 ( .A(b[14]), .B(a[14]), .Z(n330) );
  GTECH_NOT U203 ( .A(n315), .Z(n338) );
  GTECH_MUX2 U204 ( .A(n354), .B(n268), .S(n263), .Z(n315) );
  GTECH_MUX2 U205 ( .A(n289), .B(n355), .S(n271), .Z(n263) );
  GTECH_MUX2 U206 ( .A(n351), .B(n356), .S(cin), .Z(n271) );
  GTECH_ADD_ABC U207 ( .A(a[3]), .B(n292), .C(b[3]), .COUT(n356) );
  GTECH_OA21 U208 ( .A(n295), .B(n302), .C(n297), .Z(n292) );
  GTECH_OR2 U209 ( .A(a[2]), .B(b[2]), .Z(n297) );
  GTECH_NOT U210 ( .A(n357), .Z(n302) );
  GTECH_AO21 U211 ( .A(n311), .B(n304), .C(n305), .Z(n357) );
  GTECH_NOR2 U212 ( .A(a[1]), .B(b[1]), .Z(n305) );
  GTECH_NAND2 U213 ( .A(b[1]), .B(a[1]), .Z(n304) );
  GTECH_NOR2 U214 ( .A(a[0]), .B(b[0]), .Z(n311) );
  GTECH_AND2 U215 ( .A(a[2]), .B(b[2]), .Z(n295) );
  GTECH_XOR2 U216 ( .A(a[0]), .B(b[0]), .Z(n351) );
  GTECH_NOT U217 ( .A(n358), .Z(n355) );
  GTECH_OA21 U218 ( .A(a[7]), .B(n273), .C(n359), .Z(n358) );
  GTECH_AO21 U219 ( .A(a[7]), .B(n273), .C(b[7]), .Z(n359) );
  GTECH_AO22 U220 ( .A(a[6]), .B(b[6]), .C(n281), .D(n275), .Z(n273) );
  GTECH_NAND2 U221 ( .A(n278), .B(n277), .Z(n275) );
  GTECH_NOT U222 ( .A(a[6]), .Z(n277) );
  GTECH_NOT U223 ( .A(b[6]), .Z(n278) );
  GTECH_OAI2N2 U224 ( .A(n287), .B(n283), .C(a[5]), .D(b[5]), .Z(n281) );
  GTECH_NOR2 U225 ( .A(a[5]), .B(b[5]), .Z(n283) );
  GTECH_OR_NOT U226 ( .A(n287), .B(n284), .Z(n289) );
  GTECH_NAND2 U227 ( .A(b[4]), .B(a[4]), .Z(n284) );
  GTECH_NOR2 U228 ( .A(a[4]), .B(b[4]), .Z(n287) );
  GTECH_OR_NOT U229 ( .A(n266), .B(n264), .Z(n268) );
  GTECH_NAND2 U230 ( .A(b[8]), .B(a[8]), .Z(n264) );
  GTECH_AO21 U231 ( .A(n346), .B(n345), .C(n360), .Z(n354) );
  GTECH_OA21 U232 ( .A(n346), .B(n345), .C(n361), .Z(n360) );
  GTECH_NOT U233 ( .A(b[11]), .Z(n361) );
  GTECH_AOI2N2 U234 ( .A(a[10]), .B(b[10]), .C(n350), .D(n343), .Z(n345) );
  GTECH_NOR2 U235 ( .A(b[10]), .B(a[10]), .Z(n343) );
  GTECH_AOI2N2 U236 ( .A(a[9]), .B(b[9]), .C(n267), .D(n266), .Z(n350) );
  GTECH_NOR2 U237 ( .A(a[8]), .B(b[8]), .Z(n266) );
  GTECH_NOR2 U238 ( .A(b[9]), .B(a[9]), .Z(n267) );
  GTECH_NOT U239 ( .A(a[11]), .Z(n346) );
endmodule

