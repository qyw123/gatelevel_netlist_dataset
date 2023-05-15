
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363;

  GTECH_MUX2 U121 ( .A(n260), .B(n261), .S(n262), .Z(sum[9]) );
  GTECH_OA21 U122 ( .A(n263), .B(n264), .C(n265), .Z(n262) );
  GTECH_XOR2 U123 ( .A(b[9]), .B(a[9]), .Z(n261) );
  GTECH_NAND2 U124 ( .A(n266), .B(n267), .Z(n260) );
  GTECH_XOR2 U125 ( .A(n268), .B(n269), .Z(sum[8]) );
  GTECH_MUX2 U126 ( .A(n270), .B(n271), .S(n272), .Z(sum[7]) );
  GTECH_XNOR2 U127 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_AO21 U128 ( .A(n275), .B(n276), .C(n277), .Z(n274) );
  GTECH_XNOR2 U129 ( .A(n273), .B(n278), .Z(n270) );
  GTECH_XNOR2 U130 ( .A(a[7]), .B(b[7]), .Z(n273) );
  GTECH_MUX2 U131 ( .A(n279), .B(n280), .S(n272), .Z(sum[6]) );
  GTECH_XOR2 U132 ( .A(n276), .B(n281), .Z(n280) );
  GTECH_AO21 U133 ( .A(n282), .B(n283), .C(n284), .Z(n276) );
  GTECH_XOR2 U134 ( .A(n281), .B(n285), .Z(n279) );
  GTECH_AND_NOT U135 ( .A(n275), .B(n277), .Z(n281) );
  GTECH_XOR2 U136 ( .A(n286), .B(n287), .Z(sum[5]) );
  GTECH_AND_NOT U137 ( .A(n282), .B(n284), .Z(n287) );
  GTECH_OA21 U138 ( .A(n283), .B(n288), .C(n289), .Z(n286) );
  GTECH_XNOR2 U139 ( .A(n290), .B(n272), .Z(sum[4]) );
  GTECH_MUX2 U140 ( .A(n291), .B(n292), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U141 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_XOR2 U142 ( .A(n293), .B(n295), .Z(n291) );
  GTECH_AOI2N2 U143 ( .A(n296), .B(n297), .C(n298), .D(n299), .Z(n295) );
  GTECH_XNOR2 U144 ( .A(a[3]), .B(b[3]), .Z(n293) );
  GTECH_MUX2 U145 ( .A(n300), .B(n301), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U146 ( .A(n302), .B(n303), .Z(n301) );
  GTECH_XNOR2 U147 ( .A(n297), .B(n303), .Z(n300) );
  GTECH_OAI21 U148 ( .A(n298), .B(n299), .C(n296), .Z(n303) );
  GTECH_NOT U149 ( .A(b[2]), .Z(n299) );
  GTECH_NOT U150 ( .A(a[2]), .Z(n298) );
  GTECH_AO21 U151 ( .A(n304), .B(n305), .C(n306), .Z(n297) );
  GTECH_MUX2 U152 ( .A(n307), .B(n308), .S(n309), .Z(sum[1]) );
  GTECH_AND_NOT U153 ( .A(n304), .B(n306), .Z(n309) );
  GTECH_OAI21 U154 ( .A(cin), .B(n305), .C(n310), .Z(n308) );
  GTECH_AO21 U155 ( .A(n310), .B(cin), .C(n305), .Z(n307) );
  GTECH_MUX2 U156 ( .A(n311), .B(n312), .S(n313), .Z(sum[15]) );
  GTECH_XNOR2 U157 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_XOR2 U158 ( .A(n314), .B(n316), .Z(n311) );
  GTECH_AOI2N2 U159 ( .A(n317), .B(n318), .C(n319), .D(n320), .Z(n316) );
  GTECH_XNOR2 U160 ( .A(a[15]), .B(b[15]), .Z(n314) );
  GTECH_MUX2 U161 ( .A(n321), .B(n322), .S(n313), .Z(sum[14]) );
  GTECH_XNOR2 U162 ( .A(n323), .B(n324), .Z(n322) );
  GTECH_XNOR2 U163 ( .A(n318), .B(n324), .Z(n321) );
  GTECH_OAI21 U164 ( .A(n319), .B(n320), .C(n317), .Z(n324) );
  GTECH_NOT U165 ( .A(b[14]), .Z(n320) );
  GTECH_NOT U166 ( .A(a[14]), .Z(n319) );
  GTECH_OAI2N2 U167 ( .A(n325), .B(n326), .C(a[13]), .D(b[13]), .Z(n318) );
  GTECH_MUX2 U168 ( .A(n327), .B(n328), .S(n313), .Z(sum[13]) );
  GTECH_XNOR2 U169 ( .A(n329), .B(n330), .Z(n328) );
  GTECH_XNOR2 U170 ( .A(n331), .B(n330), .Z(n327) );
  GTECH_AO21 U171 ( .A(a[13]), .B(b[13]), .C(n325), .Z(n330) );
  GTECH_NAND2 U172 ( .A(n332), .B(n333), .Z(sum[12]) );
  GTECH_OAI21 U173 ( .A(n331), .B(n334), .C(n313), .Z(n332) );
  GTECH_NOT U174 ( .A(n329), .Z(n334) );
  GTECH_NOT U175 ( .A(n326), .Z(n331) );
  GTECH_MUX2 U176 ( .A(n335), .B(n336), .S(n264), .Z(sum[11]) );
  GTECH_XNOR2 U177 ( .A(n337), .B(n338), .Z(n336) );
  GTECH_OA21 U178 ( .A(n339), .B(n340), .C(n341), .Z(n338) );
  GTECH_XOR2 U179 ( .A(n337), .B(n342), .Z(n335) );
  GTECH_XOR2 U180 ( .A(a[11]), .B(b[11]), .Z(n337) );
  GTECH_MUX2 U181 ( .A(n343), .B(n344), .S(n264), .Z(sum[10]) );
  GTECH_XNOR2 U182 ( .A(n345), .B(n340), .Z(n344) );
  GTECH_OA21 U183 ( .A(n346), .B(n265), .C(n266), .Z(n340) );
  GTECH_XNOR2 U184 ( .A(n345), .B(n347), .Z(n343) );
  GTECH_AND_NOT U185 ( .A(n341), .B(n339), .Z(n345) );
  GTECH_XOR2 U186 ( .A(cin), .B(n348), .Z(sum[0]) );
  GTECH_OAI21 U187 ( .A(n349), .B(n350), .C(n333), .Z(cout) );
  GTECH_NAND3 U188 ( .A(n329), .B(n326), .C(n350), .Z(n333) );
  GTECH_NAND2 U189 ( .A(b[12]), .B(a[12]), .Z(n326) );
  GTECH_NOT U190 ( .A(n313), .Z(n350) );
  GTECH_MUX2 U191 ( .A(n351), .B(n268), .S(n264), .Z(n313) );
  GTECH_NOT U192 ( .A(n269), .Z(n264) );
  GTECH_MUX2 U193 ( .A(n290), .B(n352), .S(n288), .Z(n269) );
  GTECH_NOT U194 ( .A(n272), .Z(n288) );
  GTECH_MUX2 U195 ( .A(n353), .B(n354), .S(cin), .Z(n272) );
  GTECH_OA21 U196 ( .A(n355), .B(n356), .C(n357), .Z(n354) );
  GTECH_OAI21 U197 ( .A(a[3]), .B(n294), .C(b[3]), .Z(n357) );
  GTECH_NOT U198 ( .A(n355), .Z(n294) );
  GTECH_NOT U199 ( .A(a[3]), .Z(n356) );
  GTECH_AOI22 U200 ( .A(n302), .B(n296), .C(a[2]), .D(b[2]), .Z(n355) );
  GTECH_OR2 U201 ( .A(a[2]), .B(b[2]), .Z(n296) );
  GTECH_AO21 U202 ( .A(n310), .B(n304), .C(n306), .Z(n302) );
  GTECH_AND2 U203 ( .A(a[1]), .B(b[1]), .Z(n306) );
  GTECH_OR2 U204 ( .A(b[1]), .B(a[1]), .Z(n304) );
  GTECH_NOT U205 ( .A(n348), .Z(n353) );
  GTECH_AND_NOT U206 ( .A(n310), .B(n305), .Z(n348) );
  GTECH_AND2 U207 ( .A(b[0]), .B(a[0]), .Z(n305) );
  GTECH_OR2 U208 ( .A(a[0]), .B(b[0]), .Z(n310) );
  GTECH_AO21 U209 ( .A(n278), .B(a[7]), .C(n358), .Z(n352) );
  GTECH_OA21 U210 ( .A(a[7]), .B(n278), .C(b[7]), .Z(n358) );
  GTECH_AO21 U211 ( .A(n285), .B(n275), .C(n277), .Z(n278) );
  GTECH_AND2 U212 ( .A(b[6]), .B(a[6]), .Z(n277) );
  GTECH_OR2 U213 ( .A(a[6]), .B(b[6]), .Z(n275) );
  GTECH_AO21 U214 ( .A(n289), .B(n282), .C(n284), .Z(n285) );
  GTECH_AND2 U215 ( .A(b[5]), .B(a[5]), .Z(n284) );
  GTECH_OR2 U216 ( .A(a[5]), .B(b[5]), .Z(n282) );
  GTECH_AND_NOT U217 ( .A(n289), .B(n283), .Z(n290) );
  GTECH_AND2 U218 ( .A(b[4]), .B(a[4]), .Z(n283) );
  GTECH_OR2 U219 ( .A(b[4]), .B(a[4]), .Z(n289) );
  GTECH_AND_NOT U220 ( .A(n265), .B(n263), .Z(n268) );
  GTECH_NAND2 U221 ( .A(b[8]), .B(a[8]), .Z(n265) );
  GTECH_OA21 U222 ( .A(a[11]), .B(n342), .C(n359), .Z(n351) );
  GTECH_AO21 U223 ( .A(n342), .B(a[11]), .C(b[11]), .Z(n359) );
  GTECH_OAI21 U224 ( .A(n347), .B(n339), .C(n341), .Z(n342) );
  GTECH_NAND2 U225 ( .A(b[10]), .B(a[10]), .Z(n341) );
  GTECH_NOR2 U226 ( .A(a[10]), .B(b[10]), .Z(n339) );
  GTECH_OA21 U227 ( .A(n263), .B(n346), .C(n266), .Z(n347) );
  GTECH_NAND2 U228 ( .A(b[9]), .B(a[9]), .Z(n266) );
  GTECH_NOT U229 ( .A(n267), .Z(n346) );
  GTECH_OR2 U230 ( .A(b[9]), .B(a[9]), .Z(n267) );
  GTECH_NOR2 U231 ( .A(a[8]), .B(b[8]), .Z(n263) );
  GTECH_OA21 U232 ( .A(n360), .B(n361), .C(n362), .Z(n349) );
  GTECH_OAI21 U233 ( .A(a[15]), .B(n315), .C(b[15]), .Z(n362) );
  GTECH_NOT U234 ( .A(n360), .Z(n315) );
  GTECH_NOT U235 ( .A(a[15]), .Z(n361) );
  GTECH_AOI22 U236 ( .A(n317), .B(n323), .C(a[14]), .D(b[14]), .Z(n360) );
  GTECH_AO22 U237 ( .A(n363), .B(n329), .C(a[13]), .D(b[13]), .Z(n323) );
  GTECH_OR2 U238 ( .A(a[12]), .B(b[12]), .Z(n329) );
  GTECH_NOT U239 ( .A(n325), .Z(n363) );
  GTECH_NOR2 U240 ( .A(a[13]), .B(b[13]), .Z(n325) );
  GTECH_OR2 U241 ( .A(a[14]), .B(b[14]), .Z(n317) );
endmodule
