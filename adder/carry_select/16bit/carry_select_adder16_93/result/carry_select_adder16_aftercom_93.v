
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
         n361, n362;

  GTECH_MUX2 U123 ( .A(n262), .B(n263), .S(n264), .Z(sum[9]) );
  GTECH_XNOR2 U124 ( .A(n265), .B(n266), .Z(n263) );
  GTECH_XOR2 U125 ( .A(n267), .B(n266), .Z(n262) );
  GTECH_AO21 U126 ( .A(a[9]), .B(b[9]), .C(n268), .Z(n266) );
  GTECH_OAI21 U127 ( .A(n269), .B(n264), .C(n270), .Z(sum[8]) );
  GTECH_NOR2 U128 ( .A(n265), .B(n267), .Z(n269) );
  GTECH_MUX2 U129 ( .A(n271), .B(n272), .S(n273), .Z(sum[7]) );
  GTECH_XOR2 U130 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XNOR2 U131 ( .A(n274), .B(n276), .Z(n271) );
  GTECH_AOI22 U132 ( .A(n277), .B(n278), .C(a[6]), .D(b[6]), .Z(n276) );
  GTECH_XOR2 U133 ( .A(a[7]), .B(b[7]), .Z(n274) );
  GTECH_MUX2 U134 ( .A(n279), .B(n280), .S(n273), .Z(sum[6]) );
  GTECH_XNOR2 U135 ( .A(n281), .B(n282), .Z(n280) );
  GTECH_XNOR2 U136 ( .A(n278), .B(n282), .Z(n279) );
  GTECH_AO21 U137 ( .A(a[6]), .B(b[6]), .C(n283), .Z(n282) );
  GTECH_NOT U138 ( .A(n277), .Z(n283) );
  GTECH_AO21 U139 ( .A(n284), .B(n285), .C(n286), .Z(n278) );
  GTECH_MUX2 U140 ( .A(n287), .B(n288), .S(n289), .Z(sum[5]) );
  GTECH_AND_NOT U141 ( .A(n284), .B(n286), .Z(n289) );
  GTECH_OAI21 U142 ( .A(n285), .B(n273), .C(n290), .Z(n288) );
  GTECH_AO21 U143 ( .A(n290), .B(n273), .C(n285), .Z(n287) );
  GTECH_AND2 U144 ( .A(a[4]), .B(b[4]), .Z(n285) );
  GTECH_XOR2 U145 ( .A(n291), .B(n273), .Z(sum[4]) );
  GTECH_MUX2 U146 ( .A(n292), .B(n293), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U147 ( .A(n294), .B(n295), .Z(n293) );
  GTECH_XNOR2 U148 ( .A(n294), .B(n296), .Z(n292) );
  GTECH_AOI22 U149 ( .A(n297), .B(n298), .C(a[2]), .D(b[2]), .Z(n296) );
  GTECH_XOR2 U150 ( .A(a[3]), .B(b[3]), .Z(n294) );
  GTECH_MUX2 U151 ( .A(n299), .B(n300), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U152 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_XNOR2 U153 ( .A(n298), .B(n302), .Z(n299) );
  GTECH_AO21 U154 ( .A(a[2]), .B(b[2]), .C(n303), .Z(n302) );
  GTECH_NOT U155 ( .A(n297), .Z(n303) );
  GTECH_AO21 U156 ( .A(n304), .B(n305), .C(n306), .Z(n298) );
  GTECH_MUX2 U157 ( .A(n307), .B(n308), .S(n309), .Z(sum[1]) );
  GTECH_AND_NOT U158 ( .A(n304), .B(n306), .Z(n309) );
  GTECH_OAI21 U159 ( .A(cin), .B(n305), .C(n310), .Z(n308) );
  GTECH_AO21 U160 ( .A(n310), .B(cin), .C(n305), .Z(n307) );
  GTECH_MUX2 U161 ( .A(n311), .B(n312), .S(n313), .Z(sum[15]) );
  GTECH_XOR2 U162 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_AOI22 U163 ( .A(n316), .B(n317), .C(a[14]), .D(b[14]), .Z(n315) );
  GTECH_XOR2 U164 ( .A(n314), .B(n318), .Z(n311) );
  GTECH_XOR2 U165 ( .A(n319), .B(b[15]), .Z(n314) );
  GTECH_MUX2 U166 ( .A(n320), .B(n321), .S(n313), .Z(sum[14]) );
  GTECH_XNOR2 U167 ( .A(n317), .B(n322), .Z(n321) );
  GTECH_AO22 U168 ( .A(a[13]), .B(b[13]), .C(n323), .D(n324), .Z(n317) );
  GTECH_XNOR2 U169 ( .A(n325), .B(n322), .Z(n320) );
  GTECH_AO21 U170 ( .A(a[14]), .B(b[14]), .C(n326), .Z(n322) );
  GTECH_NOT U171 ( .A(n316), .Z(n326) );
  GTECH_MUX2 U172 ( .A(n327), .B(n328), .S(n313), .Z(sum[13]) );
  GTECH_XNOR2 U173 ( .A(n324), .B(n329), .Z(n328) );
  GTECH_XNOR2 U174 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_OAI21 U175 ( .A(n331), .B(n332), .C(n323), .Z(n329) );
  GTECH_OAI21 U176 ( .A(n313), .B(n333), .C(n334), .Z(sum[12]) );
  GTECH_AND_NOT U177 ( .A(n330), .B(n324), .Z(n333) );
  GTECH_MUX2 U178 ( .A(n335), .B(n336), .S(n264), .Z(sum[11]) );
  GTECH_XOR2 U179 ( .A(n337), .B(n338), .Z(n336) );
  GTECH_AOI22 U180 ( .A(n339), .B(n340), .C(a[10]), .D(b[10]), .Z(n338) );
  GTECH_XOR2 U181 ( .A(n337), .B(n341), .Z(n335) );
  GTECH_XOR2 U182 ( .A(n342), .B(b[11]), .Z(n337) );
  GTECH_MUX2 U183 ( .A(n343), .B(n344), .S(n264), .Z(sum[10]) );
  GTECH_XNOR2 U184 ( .A(n340), .B(n345), .Z(n344) );
  GTECH_AO22 U185 ( .A(n346), .B(n265), .C(a[9]), .D(b[9]), .Z(n340) );
  GTECH_XNOR2 U186 ( .A(n347), .B(n345), .Z(n343) );
  GTECH_OAI21 U187 ( .A(n348), .B(n349), .C(n339), .Z(n345) );
  GTECH_XOR2 U188 ( .A(cin), .B(n350), .Z(sum[0]) );
  GTECH_OAI21 U189 ( .A(n313), .B(n351), .C(n334), .Z(cout) );
  GTECH_NAND3 U190 ( .A(n352), .B(n330), .C(n313), .Z(n334) );
  GTECH_NOT U191 ( .A(n324), .Z(n352) );
  GTECH_AND2 U192 ( .A(b[12]), .B(a[12]), .Z(n324) );
  GTECH_OA21 U193 ( .A(n318), .B(n319), .C(n353), .Z(n351) );
  GTECH_OAI21 U194 ( .A(a[15]), .B(n354), .C(b[15]), .Z(n353) );
  GTECH_NOT U195 ( .A(n318), .Z(n354) );
  GTECH_NOT U196 ( .A(a[15]), .Z(n319) );
  GTECH_AOI22 U197 ( .A(a[14]), .B(b[14]), .C(n325), .D(n316), .Z(n318) );
  GTECH_OR2 U198 ( .A(a[14]), .B(b[14]), .Z(n316) );
  GTECH_OAI2N2 U199 ( .A(n331), .B(n332), .C(n330), .D(n323), .Z(n325) );
  GTECH_OR_NOT U200 ( .A(b[13]), .B(n331), .Z(n323) );
  GTECH_OR2 U201 ( .A(a[12]), .B(b[12]), .Z(n330) );
  GTECH_NOT U202 ( .A(b[13]), .Z(n332) );
  GTECH_NOT U203 ( .A(a[13]), .Z(n331) );
  GTECH_OA21 U204 ( .A(n355), .B(n264), .C(n270), .Z(n313) );
  GTECH_OR3 U205 ( .A(n267), .B(n265), .C(n356), .Z(n270) );
  GTECH_AND2 U206 ( .A(b[8]), .B(a[8]), .Z(n265) );
  GTECH_NOT U207 ( .A(n356), .Z(n264) );
  GTECH_MUX2 U208 ( .A(n291), .B(n357), .S(n273), .Z(n356) );
  GTECH_MUX2 U209 ( .A(n350), .B(n358), .S(cin), .Z(n273) );
  GTECH_OA21 U210 ( .A(a[3]), .B(n295), .C(n359), .Z(n358) );
  GTECH_AO21 U211 ( .A(n295), .B(a[3]), .C(b[3]), .Z(n359) );
  GTECH_AO22 U212 ( .A(a[2]), .B(b[2]), .C(n301), .D(n297), .Z(n295) );
  GTECH_OR2 U213 ( .A(b[2]), .B(a[2]), .Z(n297) );
  GTECH_AO21 U214 ( .A(n310), .B(n304), .C(n306), .Z(n301) );
  GTECH_AND2 U215 ( .A(a[1]), .B(b[1]), .Z(n306) );
  GTECH_OR2 U216 ( .A(a[1]), .B(b[1]), .Z(n304) );
  GTECH_AND_NOT U217 ( .A(n310), .B(n305), .Z(n350) );
  GTECH_AND2 U218 ( .A(b[0]), .B(a[0]), .Z(n305) );
  GTECH_OR2 U219 ( .A(a[0]), .B(b[0]), .Z(n310) );
  GTECH_OA21 U220 ( .A(a[7]), .B(n275), .C(n360), .Z(n357) );
  GTECH_AO21 U221 ( .A(n275), .B(a[7]), .C(b[7]), .Z(n360) );
  GTECH_AO22 U222 ( .A(a[6]), .B(b[6]), .C(n281), .D(n277), .Z(n275) );
  GTECH_OR2 U223 ( .A(b[6]), .B(a[6]), .Z(n277) );
  GTECH_AO21 U224 ( .A(n290), .B(n284), .C(n286), .Z(n281) );
  GTECH_AND2 U225 ( .A(a[5]), .B(b[5]), .Z(n286) );
  GTECH_OR2 U226 ( .A(a[5]), .B(b[5]), .Z(n284) );
  GTECH_OR2 U227 ( .A(a[4]), .B(b[4]), .Z(n290) );
  GTECH_XOR2 U228 ( .A(a[4]), .B(b[4]), .Z(n291) );
  GTECH_OA21 U229 ( .A(n341), .B(n342), .C(n361), .Z(n355) );
  GTECH_AO21 U230 ( .A(n342), .B(n341), .C(n362), .Z(n361) );
  GTECH_NOT U231 ( .A(b[11]), .Z(n362) );
  GTECH_NOT U232 ( .A(a[11]), .Z(n342) );
  GTECH_AOI2N2 U233 ( .A(n347), .B(n339), .C(n348), .D(n349), .Z(n341) );
  GTECH_NOT U234 ( .A(a[10]), .Z(n348) );
  GTECH_OR_NOT U235 ( .A(a[10]), .B(n349), .Z(n339) );
  GTECH_NOT U236 ( .A(b[10]), .Z(n349) );
  GTECH_OAI2N2 U237 ( .A(n268), .B(n267), .C(a[9]), .D(b[9]), .Z(n347) );
  GTECH_NOR2 U238 ( .A(a[8]), .B(b[8]), .Z(n267) );
  GTECH_NOT U239 ( .A(n346), .Z(n268) );
  GTECH_OR2 U240 ( .A(b[9]), .B(a[9]), .Z(n346) );
endmodule

