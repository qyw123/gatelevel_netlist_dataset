
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365;

  GTECH_MUX2 U127 ( .A(n266), .B(n267), .S(n268), .Z(sum[9]) );
  GTECH_XOR2 U128 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_XNOR2 U129 ( .A(n269), .B(n271), .Z(n266) );
  GTECH_AO21 U130 ( .A(a[9]), .B(b[9]), .C(n272), .Z(n269) );
  GTECH_NAND2 U131 ( .A(n273), .B(n274), .Z(sum[8]) );
  GTECH_AO21 U132 ( .A(n270), .B(n271), .C(n268), .Z(n273) );
  GTECH_MUX2 U133 ( .A(n275), .B(n276), .S(n277), .Z(sum[7]) );
  GTECH_XOR2 U134 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_XOR2 U135 ( .A(n280), .B(n278), .Z(n275) );
  GTECH_XOR2 U136 ( .A(a[7]), .B(b[7]), .Z(n278) );
  GTECH_OA21 U137 ( .A(a[6]), .B(n281), .C(n282), .Z(n280) );
  GTECH_AO21 U138 ( .A(n281), .B(a[6]), .C(b[6]), .Z(n282) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n277), .Z(sum[6]) );
  GTECH_XNOR2 U140 ( .A(n285), .B(n286), .Z(n284) );
  GTECH_XNOR2 U141 ( .A(n285), .B(n281), .Z(n283) );
  GTECH_AO21 U142 ( .A(n287), .B(n288), .C(n289), .Z(n281) );
  GTECH_XNOR2 U143 ( .A(a[6]), .B(b[6]), .Z(n285) );
  GTECH_MUX2 U144 ( .A(n290), .B(n291), .S(n292), .Z(sum[5]) );
  GTECH_AND_NOT U145 ( .A(n287), .B(n289), .Z(n292) );
  GTECH_OAI21 U146 ( .A(n288), .B(n277), .C(n293), .Z(n291) );
  GTECH_AO21 U147 ( .A(n293), .B(n277), .C(n288), .Z(n290) );
  GTECH_XNOR2 U148 ( .A(n294), .B(n277), .Z(sum[4]) );
  GTECH_MUX2 U149 ( .A(n295), .B(n296), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U150 ( .A(n297), .B(n298), .Z(n296) );
  GTECH_XOR2 U151 ( .A(n299), .B(n297), .Z(n295) );
  GTECH_XOR2 U152 ( .A(a[3]), .B(b[3]), .Z(n297) );
  GTECH_OA21 U153 ( .A(a[2]), .B(n300), .C(n301), .Z(n299) );
  GTECH_AO21 U154 ( .A(n300), .B(a[2]), .C(b[2]), .Z(n301) );
  GTECH_MUX2 U155 ( .A(n302), .B(n303), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U156 ( .A(n304), .B(n305), .Z(n303) );
  GTECH_XNOR2 U157 ( .A(n304), .B(n300), .Z(n302) );
  GTECH_OAI21 U158 ( .A(n306), .B(n307), .C(n308), .Z(n300) );
  GTECH_XOR2 U159 ( .A(a[2]), .B(n309), .Z(n304) );
  GTECH_MUX2 U160 ( .A(n310), .B(n311), .S(n312), .Z(sum[1]) );
  GTECH_AND_NOT U161 ( .A(n308), .B(n306), .Z(n312) );
  GTECH_AO21 U162 ( .A(n313), .B(n307), .C(n314), .Z(n311) );
  GTECH_OAI21 U163 ( .A(n314), .B(n313), .C(n307), .Z(n310) );
  GTECH_NAND2 U164 ( .A(a[0]), .B(b[0]), .Z(n307) );
  GTECH_NOT U165 ( .A(cin), .Z(n313) );
  GTECH_MUX2 U166 ( .A(n315), .B(n316), .S(n317), .Z(sum[15]) );
  GTECH_XOR2 U167 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_OA21 U168 ( .A(a[14]), .B(n320), .C(n321), .Z(n318) );
  GTECH_AO21 U169 ( .A(n320), .B(a[14]), .C(b[14]), .Z(n321) );
  GTECH_XOR2 U170 ( .A(n319), .B(n322), .Z(n315) );
  GTECH_XOR2 U171 ( .A(a[15]), .B(b[15]), .Z(n319) );
  GTECH_MUX2 U172 ( .A(n323), .B(n324), .S(n317), .Z(sum[14]) );
  GTECH_XNOR2 U173 ( .A(n320), .B(n325), .Z(n324) );
  GTECH_AOI21 U174 ( .A(n326), .B(n327), .C(n328), .Z(n320) );
  GTECH_XNOR2 U175 ( .A(n329), .B(n325), .Z(n323) );
  GTECH_XNOR2 U176 ( .A(a[14]), .B(b[14]), .Z(n325) );
  GTECH_MUX2 U177 ( .A(n330), .B(n331), .S(n317), .Z(sum[13]) );
  GTECH_XOR2 U178 ( .A(n332), .B(n327), .Z(n331) );
  GTECH_XNOR2 U179 ( .A(n333), .B(n332), .Z(n330) );
  GTECH_OAI21 U180 ( .A(a[13]), .B(b[13]), .C(n326), .Z(n332) );
  GTECH_NAND2 U181 ( .A(n334), .B(n335), .Z(sum[12]) );
  GTECH_AO21 U182 ( .A(n327), .B(n333), .C(n317), .Z(n334) );
  GTECH_MUX2 U183 ( .A(n336), .B(n337), .S(n268), .Z(sum[11]) );
  GTECH_XOR2 U184 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_OA21 U185 ( .A(a[10]), .B(n340), .C(n341), .Z(n338) );
  GTECH_AO21 U186 ( .A(n340), .B(a[10]), .C(b[10]), .Z(n341) );
  GTECH_XOR2 U187 ( .A(n339), .B(n342), .Z(n336) );
  GTECH_XOR2 U188 ( .A(a[11]), .B(b[11]), .Z(n339) );
  GTECH_MUX2 U189 ( .A(n343), .B(n344), .S(n268), .Z(sum[10]) );
  GTECH_XNOR2 U190 ( .A(n345), .B(n340), .Z(n344) );
  GTECH_OAI2N2 U191 ( .A(n272), .B(n270), .C(a[9]), .D(b[9]), .Z(n340) );
  GTECH_XNOR2 U192 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_XNOR2 U193 ( .A(a[10]), .B(b[10]), .Z(n345) );
  GTECH_XNOR2 U194 ( .A(cin), .B(n347), .Z(sum[0]) );
  GTECH_OAI21 U195 ( .A(n317), .B(n348), .C(n335), .Z(cout) );
  GTECH_NAND3 U196 ( .A(n327), .B(n333), .C(n317), .Z(n335) );
  GTECH_NOT U197 ( .A(n349), .Z(n333) );
  GTECH_NAND2 U198 ( .A(b[12]), .B(a[12]), .Z(n327) );
  GTECH_AOI21 U199 ( .A(n322), .B(a[15]), .C(n350), .Z(n348) );
  GTECH_OA21 U200 ( .A(a[15]), .B(n322), .C(b[15]), .Z(n350) );
  GTECH_AO21 U201 ( .A(a[14]), .B(n329), .C(n351), .Z(n322) );
  GTECH_OA21 U202 ( .A(n329), .B(a[14]), .C(b[14]), .Z(n351) );
  GTECH_AOI21 U203 ( .A(n326), .B(n349), .C(n328), .Z(n329) );
  GTECH_NOR2 U204 ( .A(b[13]), .B(a[13]), .Z(n328) );
  GTECH_NOR2 U205 ( .A(a[12]), .B(b[12]), .Z(n349) );
  GTECH_NAND2 U206 ( .A(a[13]), .B(b[13]), .Z(n326) );
  GTECH_OA21 U207 ( .A(n352), .B(n268), .C(n274), .Z(n317) );
  GTECH_NAND3 U208 ( .A(n270), .B(n271), .C(n268), .Z(n274) );
  GTECH_NAND2 U209 ( .A(b[8]), .B(a[8]), .Z(n270) );
  GTECH_MUX2 U210 ( .A(n294), .B(n353), .S(n277), .Z(n268) );
  GTECH_NOT U211 ( .A(n354), .Z(n277) );
  GTECH_MUX2 U212 ( .A(n347), .B(n355), .S(cin), .Z(n354) );
  GTECH_AOI21 U213 ( .A(n298), .B(a[3]), .C(n356), .Z(n355) );
  GTECH_OA21 U214 ( .A(a[3]), .B(n298), .C(b[3]), .Z(n356) );
  GTECH_OAI21 U215 ( .A(n305), .B(n357), .C(n358), .Z(n298) );
  GTECH_AO21 U216 ( .A(n357), .B(n305), .C(n309), .Z(n358) );
  GTECH_NOT U217 ( .A(b[2]), .Z(n309) );
  GTECH_NOT U218 ( .A(a[2]), .Z(n357) );
  GTECH_OA21 U219 ( .A(n306), .B(n314), .C(n308), .Z(n305) );
  GTECH_NAND2 U220 ( .A(b[1]), .B(a[1]), .Z(n308) );
  GTECH_AND_NOT U221 ( .A(n359), .B(a[0]), .Z(n314) );
  GTECH_NOR2 U222 ( .A(a[1]), .B(b[1]), .Z(n306) );
  GTECH_XNOR2 U223 ( .A(n360), .B(n359), .Z(n347) );
  GTECH_NOT U224 ( .A(b[0]), .Z(n359) );
  GTECH_NOT U225 ( .A(a[0]), .Z(n360) );
  GTECH_AOI21 U226 ( .A(n279), .B(a[7]), .C(n361), .Z(n353) );
  GTECH_OA21 U227 ( .A(a[7]), .B(n279), .C(b[7]), .Z(n361) );
  GTECH_AO21 U228 ( .A(n286), .B(a[6]), .C(n362), .Z(n279) );
  GTECH_OA21 U229 ( .A(a[6]), .B(n286), .C(b[6]), .Z(n362) );
  GTECH_AO21 U230 ( .A(n293), .B(n287), .C(n289), .Z(n286) );
  GTECH_AND2 U231 ( .A(b[5]), .B(a[5]), .Z(n289) );
  GTECH_OR2 U232 ( .A(a[5]), .B(b[5]), .Z(n287) );
  GTECH_OR_NOT U233 ( .A(n288), .B(n293), .Z(n294) );
  GTECH_OR2 U234 ( .A(a[4]), .B(b[4]), .Z(n293) );
  GTECH_AND2 U235 ( .A(b[4]), .B(a[4]), .Z(n288) );
  GTECH_AOI21 U236 ( .A(n342), .B(a[11]), .C(n363), .Z(n352) );
  GTECH_OA21 U237 ( .A(a[11]), .B(n342), .C(b[11]), .Z(n363) );
  GTECH_AO21 U238 ( .A(n346), .B(a[10]), .C(n364), .Z(n342) );
  GTECH_OA21 U239 ( .A(a[10]), .B(n346), .C(b[10]), .Z(n364) );
  GTECH_OAI2N2 U240 ( .A(n365), .B(n272), .C(a[9]), .D(b[9]), .Z(n346) );
  GTECH_NOR2 U241 ( .A(b[9]), .B(a[9]), .Z(n272) );
  GTECH_NOT U242 ( .A(n271), .Z(n365) );
  GTECH_OR2 U243 ( .A(a[8]), .B(b[8]), .Z(n271) );
endmodule

