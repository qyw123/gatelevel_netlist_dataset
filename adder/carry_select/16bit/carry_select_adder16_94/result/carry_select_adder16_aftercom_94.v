
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
         n362, n363;

  GTECH_MUX2 U124 ( .A(n263), .B(n264), .S(n265), .Z(sum[9]) );
  GTECH_OA21 U125 ( .A(n266), .B(n267), .C(n268), .Z(n265) );
  GTECH_XOR2 U126 ( .A(b[9]), .B(a[9]), .Z(n264) );
  GTECH_OR_NOT U127 ( .A(n269), .B(n270), .Z(n263) );
  GTECH_OR_NOT U128 ( .A(n271), .B(n272), .Z(sum[8]) );
  GTECH_AO21 U129 ( .A(n268), .B(n273), .C(n267), .Z(n272) );
  GTECH_MUX2 U130 ( .A(n274), .B(n275), .S(n276), .Z(sum[7]) );
  GTECH_XNOR2 U131 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_XOR2 U132 ( .A(n277), .B(n279), .Z(n274) );
  GTECH_OA21 U133 ( .A(n280), .B(n281), .C(n282), .Z(n279) );
  GTECH_XNOR2 U134 ( .A(a[7]), .B(b[7]), .Z(n277) );
  GTECH_MUX2 U135 ( .A(n283), .B(n284), .S(n276), .Z(sum[6]) );
  GTECH_XOR2 U136 ( .A(n285), .B(n286), .Z(n284) );
  GTECH_XOR2 U137 ( .A(n285), .B(n281), .Z(n283) );
  GTECH_OA21 U138 ( .A(n287), .B(n288), .C(n289), .Z(n281) );
  GTECH_NOT U139 ( .A(n290), .Z(n288) );
  GTECH_OR_NOT U140 ( .A(n280), .B(n282), .Z(n285) );
  GTECH_MUX2 U141 ( .A(n291), .B(n292), .S(n293), .Z(sum[5]) );
  GTECH_AND_NOT U142 ( .A(n289), .B(n287), .Z(n293) );
  GTECH_OAI2N2 U143 ( .A(n290), .B(n276), .C(n294), .D(n295), .Z(n292) );
  GTECH_AND_NOT U144 ( .A(a[4]), .B(n294), .Z(n290) );
  GTECH_ADD_ABC U145 ( .A(n276), .B(a[4]), .C(b[4]), .COUT(n291) );
  GTECH_XNOR2 U146 ( .A(n276), .B(n296), .Z(sum[4]) );
  GTECH_MUX2 U147 ( .A(n297), .B(n298), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U148 ( .A(n299), .B(n300), .Z(n298) );
  GTECH_XNOR2 U149 ( .A(n299), .B(n301), .Z(n297) );
  GTECH_AO21 U150 ( .A(n302), .B(n303), .C(n304), .Z(n301) );
  GTECH_XNOR2 U151 ( .A(a[3]), .B(b[3]), .Z(n299) );
  GTECH_MUX2 U152 ( .A(n305), .B(n306), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U153 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XOR2 U154 ( .A(n303), .B(n307), .Z(n305) );
  GTECH_AND_NOT U155 ( .A(n302), .B(n304), .Z(n307) );
  GTECH_OAI21 U156 ( .A(n309), .B(n310), .C(n311), .Z(n303) );
  GTECH_MUX2 U157 ( .A(n312), .B(n313), .S(n314), .Z(sum[1]) );
  GTECH_AND_NOT U158 ( .A(n311), .B(n309), .Z(n314) );
  GTECH_AO21 U159 ( .A(n315), .B(n310), .C(n316), .Z(n313) );
  GTECH_OAI21 U160 ( .A(n316), .B(n315), .C(n310), .Z(n312) );
  GTECH_MUX2 U161 ( .A(n317), .B(n318), .S(n319), .Z(sum[15]) );
  GTECH_XOR2 U162 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_XOR2 U163 ( .A(n322), .B(n320), .Z(n317) );
  GTECH_XOR2 U164 ( .A(a[15]), .B(b[15]), .Z(n320) );
  GTECH_ADD_ABC U165 ( .A(a[14]), .B(n323), .C(b[14]), .COUT(n322) );
  GTECH_MUX2 U166 ( .A(n324), .B(n325), .S(n319), .Z(sum[14]) );
  GTECH_XOR2 U167 ( .A(n326), .B(n327), .Z(n325) );
  GTECH_XOR2 U168 ( .A(n323), .B(n327), .Z(n324) );
  GTECH_XOR2 U169 ( .A(a[14]), .B(b[14]), .Z(n327) );
  GTECH_OA21 U170 ( .A(n328), .B(n329), .C(n330), .Z(n323) );
  GTECH_MUX2 U171 ( .A(n331), .B(n332), .S(n319), .Z(sum[13]) );
  GTECH_XOR2 U172 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_XOR2 U173 ( .A(n333), .B(n329), .Z(n331) );
  GTECH_OA21 U174 ( .A(a[13]), .B(b[13]), .C(n335), .Z(n333) );
  GTECH_OR_NOT U175 ( .A(n336), .B(n337), .Z(sum[12]) );
  GTECH_OAI21 U176 ( .A(n329), .B(n338), .C(n319), .Z(n337) );
  GTECH_MUX2 U177 ( .A(n339), .B(n340), .S(n267), .Z(sum[11]) );
  GTECH_XNOR2 U178 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_OA21 U179 ( .A(n343), .B(n344), .C(n345), .Z(n342) );
  GTECH_XOR2 U180 ( .A(n341), .B(n346), .Z(n339) );
  GTECH_XOR2 U181 ( .A(a[11]), .B(b[11]), .Z(n341) );
  GTECH_MUX2 U182 ( .A(n347), .B(n348), .S(n267), .Z(sum[10]) );
  GTECH_XOR2 U183 ( .A(n349), .B(n344), .Z(n348) );
  GTECH_OA21 U184 ( .A(n269), .B(n268), .C(n270), .Z(n344) );
  GTECH_XOR2 U185 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_OR_NOT U186 ( .A(n343), .B(n345), .Z(n349) );
  GTECH_XNOR2 U187 ( .A(n315), .B(n351), .Z(sum[0]) );
  GTECH_NOT U188 ( .A(cin), .Z(n315) );
  GTECH_AO21 U189 ( .A(n319), .B(n352), .C(n336), .Z(cout) );
  GTECH_NOR3 U190 ( .A(n329), .B(n338), .C(n319), .Z(n336) );
  GTECH_AND2 U191 ( .A(a[12]), .B(b[12]), .Z(n329) );
  GTECH_AO21 U192 ( .A(n321), .B(a[15]), .C(n353), .Z(n352) );
  GTECH_OA21 U193 ( .A(a[15]), .B(n321), .C(b[15]), .Z(n353) );
  GTECH_ADD_ABC U194 ( .A(a[14]), .B(n326), .C(b[14]), .COUT(n321) );
  GTECH_OA21 U195 ( .A(n328), .B(n334), .C(n330), .Z(n326) );
  GTECH_OR_NOT U196 ( .A(b[13]), .B(n354), .Z(n330) );
  GTECH_NOT U197 ( .A(a[13]), .Z(n354) );
  GTECH_NOT U198 ( .A(n338), .Z(n334) );
  GTECH_NOR2 U199 ( .A(b[12]), .B(a[12]), .Z(n338) );
  GTECH_NOT U200 ( .A(n335), .Z(n328) );
  GTECH_NAND2 U201 ( .A(b[13]), .B(a[13]), .Z(n335) );
  GTECH_AO21 U202 ( .A(n355), .B(n356), .C(n271), .Z(n319) );
  GTECH_AND3 U203 ( .A(n268), .B(n273), .C(n267), .Z(n271) );
  GTECH_NOT U204 ( .A(n266), .Z(n273) );
  GTECH_NAND2 U205 ( .A(b[8]), .B(a[8]), .Z(n268) );
  GTECH_NOT U206 ( .A(n267), .Z(n356) );
  GTECH_MUX2 U207 ( .A(n296), .B(n357), .S(n276), .Z(n267) );
  GTECH_MUX2 U208 ( .A(n351), .B(n358), .S(cin), .Z(n276) );
  GTECH_AO21 U209 ( .A(n300), .B(a[3]), .C(n359), .Z(n358) );
  GTECH_OA21 U210 ( .A(a[3]), .B(n300), .C(b[3]), .Z(n359) );
  GTECH_AO21 U211 ( .A(n308), .B(n302), .C(n304), .Z(n300) );
  GTECH_AND2 U212 ( .A(a[2]), .B(b[2]), .Z(n304) );
  GTECH_NOT U213 ( .A(n360), .Z(n302) );
  GTECH_NOR2 U214 ( .A(a[2]), .B(b[2]), .Z(n360) );
  GTECH_OAI21 U215 ( .A(n316), .B(n309), .C(n311), .Z(n308) );
  GTECH_NAND2 U216 ( .A(b[1]), .B(a[1]), .Z(n311) );
  GTECH_NOR2 U217 ( .A(b[1]), .B(a[1]), .Z(n309) );
  GTECH_AND_NOT U218 ( .A(n310), .B(n316), .Z(n351) );
  GTECH_NOR2 U219 ( .A(b[0]), .B(a[0]), .Z(n316) );
  GTECH_NAND2 U220 ( .A(b[0]), .B(a[0]), .Z(n310) );
  GTECH_OAI21 U221 ( .A(a[7]), .B(n278), .C(n361), .Z(n357) );
  GTECH_AO21 U222 ( .A(n278), .B(a[7]), .C(b[7]), .Z(n361) );
  GTECH_OAI21 U223 ( .A(n286), .B(n280), .C(n282), .Z(n278) );
  GTECH_NAND2 U224 ( .A(a[6]), .B(b[6]), .Z(n282) );
  GTECH_NOR2 U225 ( .A(a[6]), .B(b[6]), .Z(n280) );
  GTECH_AND2 U226 ( .A(n362), .B(n289), .Z(n286) );
  GTECH_NAND2 U227 ( .A(b[5]), .B(a[5]), .Z(n289) );
  GTECH_AO21 U228 ( .A(n294), .B(n295), .C(n287), .Z(n362) );
  GTECH_NOR2 U229 ( .A(b[5]), .B(a[5]), .Z(n287) );
  GTECH_NOT U230 ( .A(a[4]), .Z(n295) );
  GTECH_XOR2 U231 ( .A(a[4]), .B(n294), .Z(n296) );
  GTECH_NOT U232 ( .A(b[4]), .Z(n294) );
  GTECH_AO21 U233 ( .A(n346), .B(a[11]), .C(n363), .Z(n355) );
  GTECH_OA21 U234 ( .A(a[11]), .B(n346), .C(b[11]), .Z(n363) );
  GTECH_OAI21 U235 ( .A(n350), .B(n343), .C(n345), .Z(n346) );
  GTECH_NAND2 U236 ( .A(a[10]), .B(b[10]), .Z(n345) );
  GTECH_NOR2 U237 ( .A(a[10]), .B(b[10]), .Z(n343) );
  GTECH_OA21 U238 ( .A(n269), .B(n266), .C(n270), .Z(n350) );
  GTECH_NAND2 U239 ( .A(b[9]), .B(a[9]), .Z(n270) );
  GTECH_NOR2 U240 ( .A(b[8]), .B(a[8]), .Z(n266) );
  GTECH_NOR2 U241 ( .A(a[9]), .B(b[9]), .Z(n269) );
endmodule

