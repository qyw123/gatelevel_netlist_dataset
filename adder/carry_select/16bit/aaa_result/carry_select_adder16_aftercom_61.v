
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375;

  GTECH_MUX2 U132 ( .A(n271), .B(n272), .S(n273), .Z(sum[9]) );
  GTECH_XNOR2 U133 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XOR2 U134 ( .A(n276), .B(n274), .Z(n271) );
  GTECH_AOI21 U135 ( .A(a[9]), .B(b[9]), .C(n277), .Z(n274) );
  GTECH_NAND2 U136 ( .A(n278), .B(n279), .Z(sum[8]) );
  GTECH_OAI21 U137 ( .A(n276), .B(n275), .C(n273), .Z(n278) );
  GTECH_MUX2 U138 ( .A(n280), .B(n281), .S(n282), .Z(sum[7]) );
  GTECH_XNOR2 U139 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_XNOR2 U140 ( .A(n285), .B(n283), .Z(n280) );
  GTECH_XNOR2 U141 ( .A(a[7]), .B(b[7]), .Z(n283) );
  GTECH_AOI2N2 U142 ( .A(n286), .B(n287), .C(b[6]), .D(n288), .Z(n285) );
  GTECH_AND_NOT U143 ( .A(a[6]), .B(n287), .Z(n288) );
  GTECH_MUX2 U144 ( .A(n289), .B(n290), .S(n282), .Z(sum[6]) );
  GTECH_XOR2 U145 ( .A(n291), .B(n292), .Z(n290) );
  GTECH_XNOR2 U146 ( .A(n291), .B(n287), .Z(n289) );
  GTECH_AOI21 U147 ( .A(n293), .B(n294), .C(n295), .Z(n287) );
  GTECH_XNOR2 U148 ( .A(n286), .B(b[6]), .Z(n291) );
  GTECH_MUX2 U149 ( .A(n296), .B(n297), .S(n298), .Z(sum[5]) );
  GTECH_AND_NOT U150 ( .A(n293), .B(n295), .Z(n298) );
  GTECH_OAI21 U151 ( .A(n294), .B(n282), .C(n299), .Z(n297) );
  GTECH_OAI21 U152 ( .A(n300), .B(n301), .C(n302), .Z(n296) );
  GTECH_OAI21 U153 ( .A(a[4]), .B(n282), .C(b[4]), .Z(n302) );
  GTECH_XNOR2 U154 ( .A(n303), .B(n282), .Z(sum[4]) );
  GTECH_MUX2 U155 ( .A(n304), .B(n305), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U156 ( .A(n306), .B(n307), .Z(n305) );
  GTECH_XNOR2 U157 ( .A(n308), .B(n306), .Z(n304) );
  GTECH_XNOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n306) );
  GTECH_AOI2N2 U159 ( .A(n309), .B(n310), .C(b[2]), .D(n311), .Z(n308) );
  GTECH_NOR2 U160 ( .A(n309), .B(n310), .Z(n311) );
  GTECH_MUX2 U161 ( .A(n312), .B(n313), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U162 ( .A(n314), .B(n315), .Z(n313) );
  GTECH_XNOR2 U163 ( .A(n314), .B(n310), .Z(n312) );
  GTECH_AOI21 U164 ( .A(n316), .B(n317), .C(n318), .Z(n310) );
  GTECH_XNOR2 U165 ( .A(n309), .B(b[2]), .Z(n314) );
  GTECH_MUX2 U166 ( .A(n319), .B(n320), .S(n321), .Z(sum[1]) );
  GTECH_AND_NOT U167 ( .A(n316), .B(n318), .Z(n321) );
  GTECH_OAI21 U168 ( .A(cin), .B(n317), .C(n322), .Z(n320) );
  GTECH_AO21 U169 ( .A(n322), .B(cin), .C(n317), .Z(n319) );
  GTECH_MUX2 U170 ( .A(n323), .B(n324), .S(n325), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_XNOR2 U172 ( .A(n326), .B(n328), .Z(n323) );
  GTECH_AOI21 U173 ( .A(n329), .B(n330), .C(n331), .Z(n328) );
  GTECH_XOR2 U174 ( .A(a[15]), .B(b[15]), .Z(n326) );
  GTECH_MUX2 U175 ( .A(n332), .B(n333), .S(n325), .Z(sum[14]) );
  GTECH_XOR2 U176 ( .A(n334), .B(n335), .Z(n333) );
  GTECH_XOR2 U177 ( .A(n334), .B(n329), .Z(n332) );
  GTECH_OAI21 U178 ( .A(n336), .B(n337), .C(n338), .Z(n329) );
  GTECH_AND_NOT U179 ( .A(n330), .B(n331), .Z(n334) );
  GTECH_MUX2 U180 ( .A(n339), .B(n340), .S(n325), .Z(sum[13]) );
  GTECH_XOR2 U181 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_XOR2 U182 ( .A(n337), .B(n341), .Z(n339) );
  GTECH_OR_NOT U183 ( .A(n336), .B(n338), .Z(n341) );
  GTECH_NOT U184 ( .A(n343), .Z(n337) );
  GTECH_OR_NOT U185 ( .A(n344), .B(n345), .Z(sum[12]) );
  GTECH_OAI21 U186 ( .A(n343), .B(n342), .C(n325), .Z(n345) );
  GTECH_MUX2 U187 ( .A(n346), .B(n347), .S(n273), .Z(sum[11]) );
  GTECH_XNOR2 U188 ( .A(n348), .B(n349), .Z(n347) );
  GTECH_XNOR2 U189 ( .A(n350), .B(n348), .Z(n346) );
  GTECH_XNOR2 U190 ( .A(a[11]), .B(b[11]), .Z(n348) );
  GTECH_OA22 U191 ( .A(a[10]), .B(n351), .C(b[10]), .D(n352), .Z(n350) );
  GTECH_AND_NOT U192 ( .A(a[10]), .B(n353), .Z(n352) );
  GTECH_MUX2 U193 ( .A(n354), .B(n355), .S(n273), .Z(sum[10]) );
  GTECH_XNOR2 U194 ( .A(n356), .B(n357), .Z(n355) );
  GTECH_XOR2 U195 ( .A(n356), .B(n353), .Z(n354) );
  GTECH_NOT U196 ( .A(n351), .Z(n353) );
  GTECH_AO22 U197 ( .A(a[9]), .B(b[9]), .C(n358), .D(n276), .Z(n351) );
  GTECH_XOR2 U198 ( .A(n359), .B(b[10]), .Z(n356) );
  GTECH_XNOR2 U199 ( .A(cin), .B(n360), .Z(sum[0]) );
  GTECH_AO21 U200 ( .A(n325), .B(n361), .C(n344), .Z(cout) );
  GTECH_NOR3 U201 ( .A(n342), .B(n343), .C(n325), .Z(n344) );
  GTECH_AND2 U202 ( .A(a[12]), .B(b[12]), .Z(n343) );
  GTECH_AO22 U203 ( .A(n362), .B(b[15]), .C(n327), .D(a[15]), .Z(n361) );
  GTECH_OR2 U204 ( .A(n327), .B(a[15]), .Z(n362) );
  GTECH_AO21 U205 ( .A(n330), .B(n335), .C(n331), .Z(n327) );
  GTECH_AND2 U206 ( .A(b[14]), .B(a[14]), .Z(n331) );
  GTECH_OAI21 U207 ( .A(n336), .B(n342), .C(n338), .Z(n335) );
  GTECH_NAND2 U208 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_NOR2 U209 ( .A(b[12]), .B(a[12]), .Z(n342) );
  GTECH_NOR2 U210 ( .A(b[13]), .B(a[13]), .Z(n336) );
  GTECH_OR2 U211 ( .A(b[14]), .B(a[14]), .Z(n330) );
  GTECH_OAI21 U212 ( .A(n363), .B(n364), .C(n279), .Z(n325) );
  GTECH_OR3 U213 ( .A(n276), .B(n275), .C(n273), .Z(n279) );
  GTECH_NOT U214 ( .A(n364), .Z(n273) );
  GTECH_AND2 U215 ( .A(b[8]), .B(a[8]), .Z(n276) );
  GTECH_MUX2 U216 ( .A(n303), .B(n365), .S(n282), .Z(n364) );
  GTECH_NOT U217 ( .A(n300), .Z(n282) );
  GTECH_MUX2 U218 ( .A(n360), .B(n366), .S(cin), .Z(n300) );
  GTECH_AOI22 U219 ( .A(n307), .B(a[3]), .C(n367), .D(b[3]), .Z(n366) );
  GTECH_OR2 U220 ( .A(a[3]), .B(n307), .Z(n367) );
  GTECH_OAI21 U221 ( .A(n315), .B(n309), .C(n368), .Z(n307) );
  GTECH_AO21 U222 ( .A(n309), .B(n315), .C(n369), .Z(n368) );
  GTECH_NOT U223 ( .A(b[2]), .Z(n369) );
  GTECH_NOT U224 ( .A(a[2]), .Z(n309) );
  GTECH_AOI21 U225 ( .A(n316), .B(n322), .C(n318), .Z(n315) );
  GTECH_AND2 U226 ( .A(a[1]), .B(b[1]), .Z(n318) );
  GTECH_OR2 U227 ( .A(b[1]), .B(a[1]), .Z(n316) );
  GTECH_OR_NOT U228 ( .A(n317), .B(n322), .Z(n360) );
  GTECH_OR2 U229 ( .A(b[0]), .B(a[0]), .Z(n322) );
  GTECH_AND2 U230 ( .A(a[0]), .B(b[0]), .Z(n317) );
  GTECH_AOI22 U231 ( .A(n284), .B(a[7]), .C(n370), .D(b[7]), .Z(n365) );
  GTECH_OR2 U232 ( .A(a[7]), .B(n284), .Z(n370) );
  GTECH_OAI21 U233 ( .A(n371), .B(n286), .C(n372), .Z(n284) );
  GTECH_OAI21 U234 ( .A(a[6]), .B(n292), .C(b[6]), .Z(n372) );
  GTECH_NOT U235 ( .A(a[6]), .Z(n286) );
  GTECH_NOT U236 ( .A(n292), .Z(n371) );
  GTECH_AO21 U237 ( .A(n293), .B(n299), .C(n295), .Z(n292) );
  GTECH_AND2 U238 ( .A(b[5]), .B(a[5]), .Z(n295) );
  GTECH_OR2 U239 ( .A(b[5]), .B(a[5]), .Z(n293) );
  GTECH_OR_NOT U240 ( .A(n294), .B(n299), .Z(n303) );
  GTECH_OR_NOT U241 ( .A(b[4]), .B(n301), .Z(n299) );
  GTECH_AND_NOT U242 ( .A(b[4]), .B(n301), .Z(n294) );
  GTECH_NOT U243 ( .A(a[4]), .Z(n301) );
  GTECH_AOI22 U244 ( .A(n349), .B(a[11]), .C(n373), .D(b[11]), .Z(n363) );
  GTECH_OR2 U245 ( .A(a[11]), .B(n349), .Z(n373) );
  GTECH_OAI21 U246 ( .A(n374), .B(n359), .C(n375), .Z(n349) );
  GTECH_OAI21 U247 ( .A(a[10]), .B(n357), .C(b[10]), .Z(n375) );
  GTECH_NOT U248 ( .A(n374), .Z(n357) );
  GTECH_NOT U249 ( .A(a[10]), .Z(n359) );
  GTECH_AOI2N2 U250 ( .A(a[9]), .B(b[9]), .C(n275), .D(n277), .Z(n374) );
  GTECH_NOT U251 ( .A(n358), .Z(n277) );
  GTECH_OR2 U252 ( .A(b[9]), .B(a[9]), .Z(n358) );
  GTECH_NOR2 U253 ( .A(a[8]), .B(b[8]), .Z(n275) );
endmodule

