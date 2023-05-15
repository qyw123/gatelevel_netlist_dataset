
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365;

  GTECH_MUX2 U125 ( .A(n264), .B(n265), .S(n266), .Z(sum[9]) );
  GTECH_XNOR2 U126 ( .A(n267), .B(n268), .Z(n265) );
  GTECH_XOR2 U127 ( .A(n269), .B(n267), .Z(n264) );
  GTECH_AND_NOT U128 ( .A(n270), .B(n271), .Z(n267) );
  GTECH_OR_NOT U129 ( .A(n272), .B(n273), .Z(sum[8]) );
  GTECH_OAI21 U130 ( .A(n269), .B(n268), .C(n266), .Z(n273) );
  GTECH_MUX2 U131 ( .A(n274), .B(n275), .S(n276), .Z(sum[7]) );
  GTECH_XOR2 U132 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_AOI21 U133 ( .A(n279), .B(n280), .C(n281), .Z(n278) );
  GTECH_NOT U134 ( .A(n282), .Z(n281) );
  GTECH_XNOR2 U135 ( .A(n277), .B(n283), .Z(n274) );
  GTECH_XNOR2 U136 ( .A(a[7]), .B(b[7]), .Z(n277) );
  GTECH_MUX2 U137 ( .A(n284), .B(n285), .S(n276), .Z(sum[6]) );
  GTECH_XOR2 U138 ( .A(n279), .B(n286), .Z(n285) );
  GTECH_OR_NOT U139 ( .A(n287), .B(n288), .Z(n279) );
  GTECH_NAND3 U140 ( .A(b[4]), .B(n289), .C(a[4]), .Z(n288) );
  GTECH_XNOR2 U141 ( .A(n286), .B(n290), .Z(n284) );
  GTECH_AND2 U142 ( .A(n280), .B(n282), .Z(n286) );
  GTECH_MUX2 U143 ( .A(n291), .B(n292), .S(n293), .Z(sum[5]) );
  GTECH_AND_NOT U144 ( .A(n289), .B(n287), .Z(n293) );
  GTECH_OAI21 U145 ( .A(b[4]), .B(n294), .C(n295), .Z(n292) );
  GTECH_NOT U146 ( .A(n296), .Z(n291) );
  GTECH_AOI21 U147 ( .A(n295), .B(b[4]), .C(n294), .Z(n296) );
  GTECH_AND2 U148 ( .A(a[4]), .B(n297), .Z(n294) );
  GTECH_OR2 U149 ( .A(a[4]), .B(n297), .Z(n295) );
  GTECH_XNOR2 U150 ( .A(n276), .B(n298), .Z(sum[4]) );
  GTECH_MUX2 U151 ( .A(n299), .B(n300), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U152 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_XOR2 U153 ( .A(n303), .B(n302), .Z(n299) );
  GTECH_XOR2 U154 ( .A(a[3]), .B(b[3]), .Z(n302) );
  GTECH_AOI21 U155 ( .A(n304), .B(n305), .C(n306), .Z(n303) );
  GTECH_MUX2 U156 ( .A(n307), .B(n308), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U157 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_XOR2 U158 ( .A(n304), .B(n310), .Z(n307) );
  GTECH_OAI21 U159 ( .A(a[2]), .B(b[2]), .C(n305), .Z(n310) );
  GTECH_AOI21 U160 ( .A(n311), .B(n312), .C(n313), .Z(n304) );
  GTECH_MUX2 U161 ( .A(n314), .B(n315), .S(n316), .Z(sum[1]) );
  GTECH_AND_NOT U162 ( .A(n311), .B(n313), .Z(n316) );
  GTECH_OAI21 U163 ( .A(cin), .B(n312), .C(n317), .Z(n315) );
  GTECH_NOT U164 ( .A(n318), .Z(n314) );
  GTECH_AOI21 U165 ( .A(n317), .B(cin), .C(n312), .Z(n318) );
  GTECH_MUX2 U166 ( .A(n319), .B(n320), .S(n321), .Z(sum[15]) );
  GTECH_XOR2 U167 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_XOR2 U168 ( .A(n324), .B(n323), .Z(n319) );
  GTECH_XOR2 U169 ( .A(a[15]), .B(b[15]), .Z(n323) );
  GTECH_AOI21 U170 ( .A(n325), .B(n326), .C(n327), .Z(n324) );
  GTECH_MUX2 U171 ( .A(n328), .B(n329), .S(n321), .Z(sum[14]) );
  GTECH_XOR2 U172 ( .A(n330), .B(n331), .Z(n329) );
  GTECH_XOR2 U173 ( .A(n325), .B(n331), .Z(n328) );
  GTECH_OAI21 U174 ( .A(a[14]), .B(b[14]), .C(n326), .Z(n331) );
  GTECH_AOI2N2 U175 ( .A(n332), .B(n333), .C(n334), .D(n335), .Z(n325) );
  GTECH_MUX2 U176 ( .A(n336), .B(n337), .S(n321), .Z(sum[13]) );
  GTECH_XOR2 U177 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_XNOR2 U178 ( .A(n333), .B(n338), .Z(n336) );
  GTECH_OAI21 U179 ( .A(n334), .B(n335), .C(n332), .Z(n338) );
  GTECH_NOT U180 ( .A(n340), .Z(n332) );
  GTECH_OR_NOT U181 ( .A(n341), .B(n342), .Z(sum[12]) );
  GTECH_OAI21 U182 ( .A(n333), .B(n339), .C(n321), .Z(n342) );
  GTECH_MUX2 U183 ( .A(n343), .B(n344), .S(n266), .Z(sum[11]) );
  GTECH_XOR2 U184 ( .A(n345), .B(n346), .Z(n344) );
  GTECH_XOR2 U185 ( .A(n347), .B(n346), .Z(n343) );
  GTECH_XOR2 U186 ( .A(a[11]), .B(b[11]), .Z(n346) );
  GTECH_AOI21 U187 ( .A(n348), .B(n349), .C(n350), .Z(n347) );
  GTECH_MUX2 U188 ( .A(n351), .B(n352), .S(n266), .Z(sum[10]) );
  GTECH_XOR2 U189 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_XOR2 U190 ( .A(n348), .B(n354), .Z(n351) );
  GTECH_OAI21 U191 ( .A(a[10]), .B(b[10]), .C(n349), .Z(n354) );
  GTECH_AOI21 U192 ( .A(n270), .B(n269), .C(n271), .Z(n348) );
  GTECH_XOR2 U193 ( .A(cin), .B(n355), .Z(sum[0]) );
  GTECH_NOT U194 ( .A(n356), .Z(cout) );
  GTECH_AOI21 U195 ( .A(n357), .B(n321), .C(n341), .Z(n356) );
  GTECH_NOR3 U196 ( .A(n333), .B(n339), .C(n321), .Z(n341) );
  GTECH_AND2 U197 ( .A(a[12]), .B(b[12]), .Z(n333) );
  GTECH_NOT U198 ( .A(n358), .Z(n321) );
  GTECH_AOI21 U199 ( .A(n266), .B(n359), .C(n272), .Z(n358) );
  GTECH_NOR3 U200 ( .A(n269), .B(n268), .C(n266), .Z(n272) );
  GTECH_NOT U201 ( .A(n360), .Z(n268) );
  GTECH_AND2 U202 ( .A(a[8]), .B(b[8]), .Z(n269) );
  GTECH_ADD_ABC U203 ( .A(n345), .B(a[11]), .C(b[11]), .COUT(n359) );
  GTECH_AOI21 U204 ( .A(n349), .B(n353), .C(n350), .Z(n345) );
  GTECH_NOR2 U205 ( .A(a[10]), .B(b[10]), .Z(n350) );
  GTECH_AOI21 U206 ( .A(n360), .B(n270), .C(n271), .Z(n353) );
  GTECH_AND2 U207 ( .A(b[9]), .B(a[9]), .Z(n271) );
  GTECH_OR2 U208 ( .A(a[9]), .B(b[9]), .Z(n270) );
  GTECH_OR2 U209 ( .A(b[8]), .B(a[8]), .Z(n360) );
  GTECH_NAND2 U210 ( .A(b[10]), .B(a[10]), .Z(n349) );
  GTECH_MUX2 U211 ( .A(n361), .B(n298), .S(n276), .Z(n266) );
  GTECH_NOT U212 ( .A(n297), .Z(n276) );
  GTECH_MUX2 U213 ( .A(n355), .B(n362), .S(cin), .Z(n297) );
  GTECH_ADD_ABC U214 ( .A(n301), .B(a[3]), .C(b[3]), .COUT(n362) );
  GTECH_AOI21 U215 ( .A(n305), .B(n309), .C(n306), .Z(n301) );
  GTECH_NOR2 U216 ( .A(a[2]), .B(b[2]), .Z(n306) );
  GTECH_AOI21 U217 ( .A(n317), .B(n311), .C(n313), .Z(n309) );
  GTECH_AND2 U218 ( .A(b[1]), .B(a[1]), .Z(n313) );
  GTECH_OR2 U219 ( .A(a[1]), .B(b[1]), .Z(n311) );
  GTECH_NAND2 U220 ( .A(b[2]), .B(a[2]), .Z(n305) );
  GTECH_AND_NOT U221 ( .A(n317), .B(n312), .Z(n355) );
  GTECH_AND2 U222 ( .A(b[0]), .B(a[0]), .Z(n312) );
  GTECH_OR2 U223 ( .A(b[0]), .B(a[0]), .Z(n317) );
  GTECH_XOR2 U224 ( .A(a[4]), .B(b[4]), .Z(n298) );
  GTECH_OA22 U225 ( .A(b[7]), .B(n363), .C(a[7]), .D(n283), .Z(n361) );
  GTECH_AND2 U226 ( .A(a[7]), .B(n283), .Z(n363) );
  GTECH_OAI21 U227 ( .A(n290), .B(n364), .C(n282), .Z(n283) );
  GTECH_NAND2 U228 ( .A(b[6]), .B(a[6]), .Z(n282) );
  GTECH_NOT U229 ( .A(n280), .Z(n364) );
  GTECH_OR2 U230 ( .A(a[6]), .B(b[6]), .Z(n280) );
  GTECH_AND_NOT U231 ( .A(n365), .B(n287), .Z(n290) );
  GTECH_AND2 U232 ( .A(b[5]), .B(a[5]), .Z(n287) );
  GTECH_OAI21 U233 ( .A(b[4]), .B(a[4]), .C(n289), .Z(n365) );
  GTECH_OR2 U234 ( .A(b[5]), .B(a[5]), .Z(n289) );
  GTECH_ADD_ABC U235 ( .A(a[15]), .B(n322), .C(b[15]), .COUT(n357) );
  GTECH_AOI21 U236 ( .A(n330), .B(n326), .C(n327), .Z(n322) );
  GTECH_NOR2 U237 ( .A(a[14]), .B(b[14]), .Z(n327) );
  GTECH_NAND2 U238 ( .A(b[14]), .B(a[14]), .Z(n326) );
  GTECH_OA22 U239 ( .A(n334), .B(n335), .C(n340), .D(n339), .Z(n330) );
  GTECH_NOR2 U240 ( .A(b[12]), .B(a[12]), .Z(n339) );
  GTECH_NOR2 U241 ( .A(b[13]), .B(a[13]), .Z(n340) );
  GTECH_NOT U242 ( .A(b[13]), .Z(n335) );
  GTECH_NOT U243 ( .A(a[13]), .Z(n334) );
endmodule

