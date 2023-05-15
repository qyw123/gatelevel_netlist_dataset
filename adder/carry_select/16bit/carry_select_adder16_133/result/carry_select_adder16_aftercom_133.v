
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
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373;

  GTECH_MUX2 U124 ( .A(n263), .B(n264), .S(n265), .Z(sum[9]) );
  GTECH_XNOR2 U125 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_XNOR2 U126 ( .A(n266), .B(n268), .Z(n263) );
  GTECH_OR_NOT U127 ( .A(n269), .B(n270), .Z(n266) );
  GTECH_XNOR2 U128 ( .A(n271), .B(n272), .Z(sum[8]) );
  GTECH_MUX2 U129 ( .A(n273), .B(n274), .S(n275), .Z(sum[7]) );
  GTECH_XNOR2 U130 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_XNOR2 U131 ( .A(n278), .B(n276), .Z(n273) );
  GTECH_XNOR2 U132 ( .A(a[7]), .B(b[7]), .Z(n276) );
  GTECH_OA21 U133 ( .A(a[6]), .B(n279), .C(n280), .Z(n278) );
  GTECH_NOT U134 ( .A(n281), .Z(n280) );
  GTECH_AOI21 U135 ( .A(n279), .B(a[6]), .C(b[6]), .Z(n281) );
  GTECH_NOT U136 ( .A(n282), .Z(n279) );
  GTECH_MUX2 U137 ( .A(n283), .B(n284), .S(n275), .Z(sum[6]) );
  GTECH_XOR2 U138 ( .A(n285), .B(n286), .Z(n284) );
  GTECH_XNOR2 U139 ( .A(n285), .B(n282), .Z(n283) );
  GTECH_AOI21 U140 ( .A(n287), .B(n288), .C(n289), .Z(n282) );
  GTECH_XOR2 U141 ( .A(a[6]), .B(b[6]), .Z(n285) );
  GTECH_XOR2 U142 ( .A(n290), .B(n291), .Z(sum[5]) );
  GTECH_AND_NOT U143 ( .A(n287), .B(n289), .Z(n291) );
  GTECH_OA22 U144 ( .A(b[4]), .B(a[4]), .C(n288), .D(n275), .Z(n290) );
  GTECH_AND2 U145 ( .A(b[4]), .B(a[4]), .Z(n288) );
  GTECH_XNOR2 U146 ( .A(n275), .B(n292), .Z(sum[4]) );
  GTECH_MUX2 U147 ( .A(n293), .B(n294), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U148 ( .A(n295), .B(n296), .Z(n294) );
  GTECH_XNOR2 U149 ( .A(n297), .B(n295), .Z(n293) );
  GTECH_XOR2 U150 ( .A(n298), .B(b[3]), .Z(n295) );
  GTECH_AOI21 U151 ( .A(n299), .B(n300), .C(n301), .Z(n297) );
  GTECH_OA21 U152 ( .A(n300), .B(n299), .C(n302), .Z(n301) );
  GTECH_MUX2 U153 ( .A(n303), .B(n304), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U154 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_XNOR2 U155 ( .A(n305), .B(n300), .Z(n303) );
  GTECH_AOI21 U156 ( .A(n307), .B(n308), .C(n309), .Z(n300) );
  GTECH_XOR2 U157 ( .A(n299), .B(n302), .Z(n305) );
  GTECH_NOT U158 ( .A(b[2]), .Z(n302) );
  GTECH_NOT U159 ( .A(a[2]), .Z(n299) );
  GTECH_MUX2 U160 ( .A(n310), .B(n311), .S(n312), .Z(sum[1]) );
  GTECH_AND_NOT U161 ( .A(n307), .B(n309), .Z(n312) );
  GTECH_OAI21 U162 ( .A(cin), .B(n308), .C(n313), .Z(n311) );
  GTECH_NOT U163 ( .A(n314), .Z(n310) );
  GTECH_AOI21 U164 ( .A(n313), .B(cin), .C(n308), .Z(n314) );
  GTECH_MUX2 U165 ( .A(n315), .B(n316), .S(n317), .Z(sum[15]) );
  GTECH_XOR2 U166 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_AOI21 U167 ( .A(n320), .B(n321), .C(n322), .Z(n318) );
  GTECH_OA21 U168 ( .A(n321), .B(n320), .C(n323), .Z(n322) );
  GTECH_XOR2 U169 ( .A(n319), .B(n324), .Z(n315) );
  GTECH_XOR2 U170 ( .A(a[15]), .B(b[15]), .Z(n319) );
  GTECH_MUX2 U171 ( .A(n325), .B(n326), .S(n317), .Z(sum[14]) );
  GTECH_XNOR2 U172 ( .A(n327), .B(n321), .Z(n326) );
  GTECH_AOI2N2 U173 ( .A(a[13]), .B(b[13]), .C(n328), .D(n329), .Z(n321) );
  GTECH_XNOR2 U174 ( .A(n327), .B(n330), .Z(n325) );
  GTECH_XOR2 U175 ( .A(n320), .B(n323), .Z(n327) );
  GTECH_NOT U176 ( .A(b[14]), .Z(n323) );
  GTECH_MUX2 U177 ( .A(n331), .B(n332), .S(n317), .Z(sum[13]) );
  GTECH_XOR2 U178 ( .A(n333), .B(n334), .Z(n332) );
  GTECH_XNOR2 U179 ( .A(n334), .B(n335), .Z(n331) );
  GTECH_AOI21 U180 ( .A(a[13]), .B(b[13]), .C(n328), .Z(n334) );
  GTECH_NAND2 U181 ( .A(n336), .B(n337), .Z(sum[12]) );
  GTECH_OAI21 U182 ( .A(n333), .B(n335), .C(n338), .Z(n336) );
  GTECH_MUX2 U183 ( .A(n339), .B(n340), .S(n265), .Z(sum[11]) );
  GTECH_XNOR2 U184 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_XNOR2 U185 ( .A(n343), .B(n341), .Z(n339) );
  GTECH_XOR2 U186 ( .A(n344), .B(b[11]), .Z(n341) );
  GTECH_AOI21 U187 ( .A(n345), .B(n346), .C(n347), .Z(n343) );
  GTECH_OA21 U188 ( .A(n346), .B(n345), .C(n348), .Z(n347) );
  GTECH_MUX2 U189 ( .A(n349), .B(n350), .S(n272), .Z(sum[10]) );
  GTECH_XNOR2 U190 ( .A(n351), .B(n346), .Z(n350) );
  GTECH_AOI21 U191 ( .A(n270), .B(n268), .C(n269), .Z(n346) );
  GTECH_XNOR2 U192 ( .A(n351), .B(n352), .Z(n349) );
  GTECH_XOR2 U193 ( .A(n345), .B(n348), .Z(n351) );
  GTECH_NOT U194 ( .A(b[10]), .Z(n348) );
  GTECH_NOT U195 ( .A(a[10]), .Z(n345) );
  GTECH_XOR2 U196 ( .A(cin), .B(n353), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n354), .B(n317), .C(n337), .Z(cout) );
  GTECH_OR3 U198 ( .A(n333), .B(n335), .C(n338), .Z(n337) );
  GTECH_NOT U199 ( .A(n329), .Z(n333) );
  GTECH_NAND2 U200 ( .A(a[12]), .B(b[12]), .Z(n329) );
  GTECH_NOT U201 ( .A(n338), .Z(n317) );
  GTECH_MUX2 U202 ( .A(n271), .B(n355), .S(n265), .Z(n338) );
  GTECH_NOT U203 ( .A(n272), .Z(n265) );
  GTECH_MUX2 U204 ( .A(n292), .B(n356), .S(n275), .Z(n272) );
  GTECH_MUX2 U205 ( .A(n353), .B(n357), .S(cin), .Z(n275) );
  GTECH_OAI21 U206 ( .A(n358), .B(n298), .C(n359), .Z(n357) );
  GTECH_OAI21 U207 ( .A(a[3]), .B(n296), .C(b[3]), .Z(n359) );
  GTECH_NOT U208 ( .A(n358), .Z(n296) );
  GTECH_NOT U209 ( .A(a[3]), .Z(n298) );
  GTECH_AOI21 U210 ( .A(n360), .B(a[2]), .C(n361), .Z(n358) );
  GTECH_OA21 U211 ( .A(a[2]), .B(n360), .C(b[2]), .Z(n361) );
  GTECH_NOT U212 ( .A(n306), .Z(n360) );
  GTECH_AOI21 U213 ( .A(n307), .B(n313), .C(n309), .Z(n306) );
  GTECH_AND2 U214 ( .A(a[1]), .B(b[1]), .Z(n309) );
  GTECH_OR2 U215 ( .A(a[1]), .B(b[1]), .Z(n307) );
  GTECH_AND_NOT U216 ( .A(n313), .B(n308), .Z(n353) );
  GTECH_AND2 U217 ( .A(b[0]), .B(a[0]), .Z(n308) );
  GTECH_OR2 U218 ( .A(b[0]), .B(a[0]), .Z(n313) );
  GTECH_AOI21 U219 ( .A(n277), .B(a[7]), .C(n362), .Z(n356) );
  GTECH_NOT U220 ( .A(n363), .Z(n362) );
  GTECH_OAI21 U221 ( .A(a[7]), .B(n277), .C(b[7]), .Z(n363) );
  GTECH_NOT U222 ( .A(n364), .Z(n277) );
  GTECH_AOI21 U223 ( .A(n286), .B(a[6]), .C(n365), .Z(n364) );
  GTECH_OA21 U224 ( .A(a[6]), .B(n286), .C(b[6]), .Z(n365) );
  GTECH_OR2 U225 ( .A(n366), .B(n289), .Z(n286) );
  GTECH_AND2 U226 ( .A(b[5]), .B(a[5]), .Z(n289) );
  GTECH_OA21 U227 ( .A(a[4]), .B(b[4]), .C(n287), .Z(n366) );
  GTECH_OR2 U228 ( .A(a[5]), .B(b[5]), .Z(n287) );
  GTECH_XNOR2 U229 ( .A(a[4]), .B(b[4]), .Z(n292) );
  GTECH_AOI21 U230 ( .A(n344), .B(n367), .C(n368), .Z(n355) );
  GTECH_AOI21 U231 ( .A(n342), .B(a[11]), .C(b[11]), .Z(n368) );
  GTECH_NOT U232 ( .A(n367), .Z(n342) );
  GTECH_AOI21 U233 ( .A(n369), .B(a[10]), .C(n370), .Z(n367) );
  GTECH_OA21 U234 ( .A(a[10]), .B(n369), .C(b[10]), .Z(n370) );
  GTECH_NOT U235 ( .A(n352), .Z(n369) );
  GTECH_AOI21 U236 ( .A(n267), .B(n270), .C(n269), .Z(n352) );
  GTECH_AND2 U237 ( .A(b[9]), .B(a[9]), .Z(n269) );
  GTECH_OR2 U238 ( .A(a[9]), .B(b[9]), .Z(n270) );
  GTECH_NOT U239 ( .A(a[11]), .Z(n344) );
  GTECH_AND_NOT U240 ( .A(n267), .B(n268), .Z(n271) );
  GTECH_AND2 U241 ( .A(b[8]), .B(a[8]), .Z(n268) );
  GTECH_OR2 U242 ( .A(b[8]), .B(a[8]), .Z(n267) );
  GTECH_AOI21 U243 ( .A(n324), .B(a[15]), .C(n371), .Z(n354) );
  GTECH_OA21 U244 ( .A(a[15]), .B(n324), .C(b[15]), .Z(n371) );
  GTECH_OAI21 U245 ( .A(n330), .B(n320), .C(n372), .Z(n324) );
  GTECH_OAI21 U246 ( .A(a[14]), .B(n373), .C(b[14]), .Z(n372) );
  GTECH_NOT U247 ( .A(n330), .Z(n373) );
  GTECH_NOT U248 ( .A(a[14]), .Z(n320) );
  GTECH_AOI2N2 U249 ( .A(a[13]), .B(b[13]), .C(n328), .D(n335), .Z(n330) );
  GTECH_NOR2 U250 ( .A(b[12]), .B(a[12]), .Z(n335) );
  GTECH_NOR2 U251 ( .A(b[13]), .B(a[13]), .Z(n328) );
endmodule

