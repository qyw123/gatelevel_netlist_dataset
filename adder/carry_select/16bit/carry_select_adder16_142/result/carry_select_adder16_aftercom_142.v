
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377;

  GTECH_MUX2 U131 ( .A(n270), .B(n271), .S(n272), .Z(sum[9]) );
  GTECH_XOR2 U132 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_XOR2 U133 ( .A(n273), .B(n275), .Z(n270) );
  GTECH_AND_NOT U134 ( .A(n276), .B(n277), .Z(n273) );
  GTECH_XNOR2 U135 ( .A(n278), .B(n279), .Z(sum[8]) );
  GTECH_MUX2 U136 ( .A(n280), .B(n281), .S(n282), .Z(sum[7]) );
  GTECH_XNOR2 U137 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_OAI21 U138 ( .A(n285), .B(n286), .C(n287), .Z(n284) );
  GTECH_XNOR2 U139 ( .A(n283), .B(n288), .Z(n280) );
  GTECH_XOR2 U140 ( .A(n289), .B(b[7]), .Z(n283) );
  GTECH_MUX2 U141 ( .A(n290), .B(n291), .S(n282), .Z(sum[6]) );
  GTECH_XNOR2 U142 ( .A(n292), .B(n285), .Z(n291) );
  GTECH_AND_NOT U143 ( .A(n293), .B(n294), .Z(n285) );
  GTECH_OR3 U144 ( .A(n295), .B(n296), .C(n297), .Z(n293) );
  GTECH_XNOR2 U145 ( .A(n292), .B(n298), .Z(n290) );
  GTECH_AND_NOT U146 ( .A(n287), .B(n286), .Z(n292) );
  GTECH_MUX2 U147 ( .A(n299), .B(n300), .S(n301), .Z(sum[5]) );
  GTECH_NOR2 U148 ( .A(n296), .B(n294), .Z(n301) );
  GTECH_OR_NOT U149 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_OAI21 U150 ( .A(n295), .B(n297), .C(n282), .Z(n303) );
  GTECH_OAI22 U151 ( .A(n302), .B(n282), .C(n295), .D(n297), .Z(n299) );
  GTECH_XOR2 U152 ( .A(n282), .B(n304), .Z(sum[4]) );
  GTECH_MUX2 U153 ( .A(n305), .B(n306), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U154 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XNOR2 U155 ( .A(n307), .B(n309), .Z(n305) );
  GTECH_OAI21 U156 ( .A(n310), .B(n311), .C(n312), .Z(n309) );
  GTECH_XOR2 U157 ( .A(n313), .B(b[3]), .Z(n307) );
  GTECH_MUX2 U158 ( .A(n314), .B(n315), .S(cin), .Z(sum[2]) );
  GTECH_XNOR2 U159 ( .A(n316), .B(n317), .Z(n315) );
  GTECH_XNOR2 U160 ( .A(n316), .B(n310), .Z(n314) );
  GTECH_AOI21 U161 ( .A(n318), .B(n319), .C(n320), .Z(n310) );
  GTECH_AND_NOT U162 ( .A(n312), .B(n311), .Z(n316) );
  GTECH_MUX2 U163 ( .A(n321), .B(n322), .S(n323), .Z(sum[1]) );
  GTECH_NOR2 U164 ( .A(n324), .B(n320), .Z(n323) );
  GTECH_OAI21 U165 ( .A(cin), .B(n319), .C(n325), .Z(n322) );
  GTECH_AO21 U166 ( .A(n325), .B(cin), .C(n319), .Z(n321) );
  GTECH_MUX2 U167 ( .A(n326), .B(n327), .S(n328), .Z(sum[15]) );
  GTECH_XNOR2 U168 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_XNOR2 U169 ( .A(n329), .B(n331), .Z(n326) );
  GTECH_AOI21 U170 ( .A(n332), .B(n333), .C(n334), .Z(n331) );
  GTECH_XOR2 U171 ( .A(n335), .B(n336), .Z(n329) );
  GTECH_MUX2 U172 ( .A(n337), .B(n338), .S(n328), .Z(sum[14]) );
  GTECH_XOR2 U173 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U174 ( .A(n339), .B(n332), .Z(n337) );
  GTECH_AO22 U175 ( .A(n341), .B(n342), .C(a[13]), .D(b[13]), .Z(n332) );
  GTECH_NOT U176 ( .A(n343), .Z(n341) );
  GTECH_NOR2 U177 ( .A(n344), .B(n334), .Z(n339) );
  GTECH_MUX2 U178 ( .A(n345), .B(n346), .S(n328), .Z(sum[13]) );
  GTECH_XNOR2 U179 ( .A(n347), .B(n348), .Z(n346) );
  GTECH_XOR2 U180 ( .A(n342), .B(n347), .Z(n345) );
  GTECH_AOI21 U181 ( .A(a[13]), .B(b[13]), .C(n343), .Z(n347) );
  GTECH_OR_NOT U182 ( .A(n349), .B(n350), .Z(sum[12]) );
  GTECH_OAI21 U183 ( .A(n342), .B(n348), .C(n328), .Z(n350) );
  GTECH_MUX2 U184 ( .A(n351), .B(n352), .S(n279), .Z(sum[11]) );
  GTECH_XOR2 U185 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_AND2 U186 ( .A(n355), .B(n356), .Z(n354) );
  GTECH_OAI21 U187 ( .A(b[10]), .B(a[10]), .C(n357), .Z(n355) );
  GTECH_XNOR2 U188 ( .A(n353), .B(n358), .Z(n351) );
  GTECH_XNOR2 U189 ( .A(a[11]), .B(b[11]), .Z(n353) );
  GTECH_MUX2 U190 ( .A(n359), .B(n360), .S(n279), .Z(sum[10]) );
  GTECH_XNOR2 U191 ( .A(n361), .B(n357), .Z(n360) );
  GTECH_AO21 U192 ( .A(n276), .B(n275), .C(n277), .Z(n357) );
  GTECH_XNOR2 U193 ( .A(n361), .B(n362), .Z(n359) );
  GTECH_OAI21 U194 ( .A(b[10]), .B(a[10]), .C(n356), .Z(n361) );
  GTECH_XNOR2 U195 ( .A(cin), .B(n363), .Z(sum[0]) );
  GTECH_AO21 U196 ( .A(n364), .B(n328), .C(n349), .Z(cout) );
  GTECH_NOR3 U197 ( .A(n342), .B(n348), .C(n328), .Z(n349) );
  GTECH_AND2 U198 ( .A(b[12]), .B(a[12]), .Z(n342) );
  GTECH_MUX2 U199 ( .A(n278), .B(n365), .S(n272), .Z(n328) );
  GTECH_NOT U200 ( .A(n279), .Z(n272) );
  GTECH_MUX2 U201 ( .A(n366), .B(n304), .S(n282), .Z(n279) );
  GTECH_MUX2 U202 ( .A(n363), .B(n367), .S(cin), .Z(n282) );
  GTECH_AOI22 U203 ( .A(n308), .B(a[3]), .C(n368), .D(b[3]), .Z(n367) );
  GTECH_OR_NOT U204 ( .A(n308), .B(n313), .Z(n368) );
  GTECH_NOT U205 ( .A(a[3]), .Z(n313) );
  GTECH_OAI21 U206 ( .A(n311), .B(n317), .C(n312), .Z(n308) );
  GTECH_NAND2 U207 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_AOI21 U208 ( .A(n325), .B(n318), .C(n320), .Z(n317) );
  GTECH_AND2 U209 ( .A(a[1]), .B(b[1]), .Z(n320) );
  GTECH_NOT U210 ( .A(n324), .Z(n318) );
  GTECH_NOR2 U211 ( .A(a[1]), .B(b[1]), .Z(n324) );
  GTECH_NOR2 U212 ( .A(b[2]), .B(a[2]), .Z(n311) );
  GTECH_OR_NOT U213 ( .A(n319), .B(n325), .Z(n363) );
  GTECH_OR_NOT U214 ( .A(b[0]), .B(n369), .Z(n325) );
  GTECH_AND_NOT U215 ( .A(b[0]), .B(n369), .Z(n319) );
  GTECH_NOT U216 ( .A(a[0]), .Z(n369) );
  GTECH_XOR2 U217 ( .A(a[4]), .B(n295), .Z(n304) );
  GTECH_NOT U218 ( .A(b[4]), .Z(n295) );
  GTECH_AOI22 U219 ( .A(n288), .B(a[7]), .C(n370), .D(b[7]), .Z(n366) );
  GTECH_OR_NOT U220 ( .A(n288), .B(n289), .Z(n370) );
  GTECH_NOT U221 ( .A(a[7]), .Z(n289) );
  GTECH_OAI21 U222 ( .A(n286), .B(n298), .C(n287), .Z(n288) );
  GTECH_NAND2 U223 ( .A(b[6]), .B(a[6]), .Z(n287) );
  GTECH_AOI21 U224 ( .A(n371), .B(n372), .C(n294), .Z(n298) );
  GTECH_AND2 U225 ( .A(a[5]), .B(b[5]), .Z(n294) );
  GTECH_NOT U226 ( .A(n296), .Z(n372) );
  GTECH_NOR2 U227 ( .A(a[5]), .B(b[5]), .Z(n296) );
  GTECH_NOT U228 ( .A(n302), .Z(n371) );
  GTECH_AND_NOT U229 ( .A(n297), .B(b[4]), .Z(n302) );
  GTECH_NOT U230 ( .A(a[4]), .Z(n297) );
  GTECH_NOR2 U231 ( .A(b[6]), .B(a[6]), .Z(n286) );
  GTECH_OA22 U232 ( .A(a[11]), .B(n358), .C(b[11]), .D(n373), .Z(n365) );
  GTECH_AND2 U233 ( .A(n358), .B(a[11]), .Z(n373) );
  GTECH_NAND2 U234 ( .A(n356), .B(n374), .Z(n358) );
  GTECH_OAI21 U235 ( .A(a[10]), .B(b[10]), .C(n362), .Z(n374) );
  GTECH_AO21 U236 ( .A(n274), .B(n276), .C(n277), .Z(n362) );
  GTECH_AND2 U237 ( .A(b[9]), .B(a[9]), .Z(n277) );
  GTECH_OR_NOT U238 ( .A(b[9]), .B(n375), .Z(n276) );
  GTECH_NOT U239 ( .A(a[9]), .Z(n375) );
  GTECH_NOT U240 ( .A(n376), .Z(n274) );
  GTECH_NAND2 U241 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_NOR2 U242 ( .A(n376), .B(n275), .Z(n278) );
  GTECH_AND2 U243 ( .A(b[8]), .B(a[8]), .Z(n275) );
  GTECH_NOR2 U244 ( .A(b[8]), .B(a[8]), .Z(n376) );
  GTECH_OAI22 U245 ( .A(n330), .B(n335), .C(n377), .D(n336), .Z(n364) );
  GTECH_NOT U246 ( .A(b[15]), .Z(n336) );
  GTECH_AND_NOT U247 ( .A(n330), .B(a[15]), .Z(n377) );
  GTECH_NOT U248 ( .A(a[15]), .Z(n335) );
  GTECH_AOI21 U249 ( .A(n333), .B(n340), .C(n334), .Z(n330) );
  GTECH_AND2 U250 ( .A(b[14]), .B(a[14]), .Z(n334) );
  GTECH_OAI2N2 U251 ( .A(n348), .B(n343), .C(a[13]), .D(b[13]), .Z(n340) );
  GTECH_NOR2 U252 ( .A(a[13]), .B(b[13]), .Z(n343) );
  GTECH_NOR2 U253 ( .A(b[12]), .B(a[12]), .Z(n348) );
  GTECH_NOT U254 ( .A(n344), .Z(n333) );
  GTECH_NOR2 U255 ( .A(b[14]), .B(a[14]), .Z(n344) );
endmodule

