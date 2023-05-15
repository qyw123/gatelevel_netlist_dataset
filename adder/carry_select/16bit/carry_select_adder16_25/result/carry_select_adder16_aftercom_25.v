
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
         n370, n371, n372, n373, n374, n375, n376;

  GTECH_OAI22 U132 ( .A(n271), .B(n272), .C(n273), .D(n274), .Z(sum[9]) );
  GTECH_XNOR2 U133 ( .A(n275), .B(n276), .Z(n274) );
  GTECH_NOT U134 ( .A(n277), .Z(n276) );
  GTECH_XOR2 U135 ( .A(n275), .B(n278), .Z(n272) );
  GTECH_OA21 U136 ( .A(b[9]), .B(a[9]), .C(n279), .Z(n275) );
  GTECH_XOR2 U137 ( .A(n280), .B(n273), .Z(sum[8]) );
  GTECH_OAI22 U138 ( .A(n281), .B(n282), .C(n283), .D(n284), .Z(sum[7]) );
  GTECH_XOR2 U139 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_XOR2 U140 ( .A(n287), .B(n286), .Z(n281) );
  GTECH_XOR2 U141 ( .A(a[7]), .B(b[7]), .Z(n286) );
  GTECH_OA21 U142 ( .A(n288), .B(n289), .C(n290), .Z(n287) );
  GTECH_OAI22 U143 ( .A(n284), .B(n291), .C(n282), .D(n292), .Z(sum[6]) );
  GTECH_XOR2 U144 ( .A(n289), .B(n293), .Z(n292) );
  GTECH_AO21 U145 ( .A(n294), .B(n295), .C(n296), .Z(n289) );
  GTECH_XOR2 U146 ( .A(n297), .B(n293), .Z(n291) );
  GTECH_AND_NOT U147 ( .A(n290), .B(n288), .Z(n293) );
  GTECH_OAI22 U148 ( .A(n282), .B(n298), .C(n299), .D(n284), .Z(sum[5]) );
  GTECH_XOR2 U149 ( .A(n300), .B(n301), .Z(n299) );
  GTECH_XOR2 U150 ( .A(n300), .B(n294), .Z(n298) );
  GTECH_OA21 U151 ( .A(b[5]), .B(a[5]), .C(n295), .Z(n300) );
  GTECH_OR_NOT U152 ( .A(n302), .B(n303), .Z(sum[4]) );
  GTECH_AO21 U153 ( .A(n304), .B(n294), .C(n284), .Z(n303) );
  GTECH_OAI22 U154 ( .A(n305), .B(n306), .C(cin), .D(n307), .Z(sum[3]) );
  GTECH_XOR2 U155 ( .A(n308), .B(n309), .Z(n307) );
  GTECH_OA21 U156 ( .A(n310), .B(n311), .C(n312), .Z(n308) );
  GTECH_NOT U157 ( .A(n313), .Z(n310) );
  GTECH_XNOR2 U158 ( .A(n314), .B(n309), .Z(n306) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n309) );
  GTECH_OAI22 U160 ( .A(n305), .B(n315), .C(cin), .D(n316), .Z(sum[2]) );
  GTECH_XOR2 U161 ( .A(n311), .B(n317), .Z(n316) );
  GTECH_AO21 U162 ( .A(n318), .B(n319), .C(n320), .Z(n311) );
  GTECH_XNOR2 U163 ( .A(n321), .B(n317), .Z(n315) );
  GTECH_AND2 U164 ( .A(n312), .B(n313), .Z(n317) );
  GTECH_OAI2N2 U165 ( .A(n322), .B(n323), .C(n324), .D(n322), .Z(sum[1]) );
  GTECH_AO21 U166 ( .A(n305), .B(n318), .C(n325), .Z(n324) );
  GTECH_OA21 U167 ( .A(n325), .B(n305), .C(n318), .Z(n323) );
  GTECH_NAND2 U168 ( .A(a[0]), .B(b[0]), .Z(n318) );
  GTECH_OA21 U169 ( .A(b[1]), .B(a[1]), .C(n319), .Z(n322) );
  GTECH_OAI22 U170 ( .A(n326), .B(n327), .C(n328), .D(n329), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_OA21 U172 ( .A(n332), .B(n333), .C(n334), .Z(n330) );
  GTECH_NOT U173 ( .A(n335), .Z(n332) );
  GTECH_XNOR2 U174 ( .A(n336), .B(n331), .Z(n326) );
  GTECH_XOR2 U175 ( .A(a[15]), .B(b[15]), .Z(n331) );
  GTECH_OAI22 U176 ( .A(n329), .B(n337), .C(n327), .D(n338), .Z(sum[14]) );
  GTECH_XNOR2 U177 ( .A(n339), .B(n340), .Z(n338) );
  GTECH_XOR2 U178 ( .A(n333), .B(n340), .Z(n337) );
  GTECH_AND2 U179 ( .A(n334), .B(n335), .Z(n340) );
  GTECH_AO21 U180 ( .A(n341), .B(n342), .C(n343), .Z(n333) );
  GTECH_OAI22 U181 ( .A(n344), .B(n327), .C(n329), .D(n345), .Z(sum[13]) );
  GTECH_XOR2 U182 ( .A(n341), .B(n346), .Z(n345) );
  GTECH_XNOR2 U183 ( .A(n347), .B(n346), .Z(n344) );
  GTECH_OA21 U184 ( .A(b[13]), .B(a[13]), .C(n342), .Z(n346) );
  GTECH_OR_NOT U185 ( .A(n348), .B(n349), .Z(sum[12]) );
  GTECH_AO21 U186 ( .A(n347), .B(n341), .C(n327), .Z(n349) );
  GTECH_OAI22 U187 ( .A(n350), .B(n271), .C(n273), .D(n351), .Z(sum[11]) );
  GTECH_XOR2 U188 ( .A(n352), .B(n353), .Z(n351) );
  GTECH_XOR2 U189 ( .A(n354), .B(n353), .Z(n350) );
  GTECH_XOR2 U190 ( .A(a[11]), .B(b[11]), .Z(n353) );
  GTECH_OA21 U191 ( .A(n355), .B(n356), .C(n357), .Z(n354) );
  GTECH_OAI22 U192 ( .A(n271), .B(n358), .C(n273), .D(n359), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n360), .B(n361), .Z(n359) );
  GTECH_XOR2 U194 ( .A(n356), .B(n361), .Z(n358) );
  GTECH_AND_NOT U195 ( .A(n357), .B(n355), .Z(n361) );
  GTECH_AO21 U196 ( .A(n278), .B(n279), .C(n362), .Z(n356) );
  GTECH_NOT U197 ( .A(n273), .Z(n271) );
  GTECH_XOR2 U198 ( .A(cin), .B(n363), .Z(sum[0]) );
  GTECH_AO21 U199 ( .A(n329), .B(n364), .C(n348), .Z(cout) );
  GTECH_AND3 U200 ( .A(n341), .B(n347), .C(n327), .Z(n348) );
  GTECH_NOT U201 ( .A(n329), .Z(n327) );
  GTECH_NOT U202 ( .A(n365), .Z(n347) );
  GTECH_NAND2 U203 ( .A(a[12]), .B(b[12]), .Z(n341) );
  GTECH_AO22 U204 ( .A(n366), .B(b[15]), .C(n336), .D(a[15]), .Z(n364) );
  GTECH_OR2 U205 ( .A(n336), .B(a[15]), .Z(n366) );
  GTECH_AO21 U206 ( .A(n339), .B(n335), .C(n367), .Z(n336) );
  GTECH_NOT U207 ( .A(n334), .Z(n367) );
  GTECH_NAND2 U208 ( .A(b[14]), .B(a[14]), .Z(n334) );
  GTECH_OR2 U209 ( .A(a[14]), .B(b[14]), .Z(n335) );
  GTECH_AOI21 U210 ( .A(n365), .B(n342), .C(n343), .Z(n339) );
  GTECH_NOR2 U211 ( .A(b[13]), .B(a[13]), .Z(n343) );
  GTECH_NAND2 U212 ( .A(a[13]), .B(b[13]), .Z(n342) );
  GTECH_NOR2 U213 ( .A(a[12]), .B(b[12]), .Z(n365) );
  GTECH_AOI2N2 U214 ( .A(n280), .B(n273), .C(n273), .D(n368), .Z(n329) );
  GTECH_OA21 U215 ( .A(a[11]), .B(n369), .C(n370), .Z(n368) );
  GTECH_AO21 U216 ( .A(a[11]), .B(n369), .C(b[11]), .Z(n370) );
  GTECH_NOT U217 ( .A(n352), .Z(n369) );
  GTECH_OA21 U218 ( .A(n360), .B(n355), .C(n357), .Z(n352) );
  GTECH_NAND2 U219 ( .A(b[10]), .B(a[10]), .Z(n357) );
  GTECH_NOR2 U220 ( .A(a[10]), .B(b[10]), .Z(n355) );
  GTECH_AO21 U221 ( .A(n277), .B(n279), .C(n362), .Z(n360) );
  GTECH_NOR2 U222 ( .A(b[9]), .B(a[9]), .Z(n362) );
  GTECH_NAND2 U223 ( .A(a[9]), .B(b[9]), .Z(n279) );
  GTECH_AOI21 U224 ( .A(n282), .B(n371), .C(n302), .Z(n273) );
  GTECH_AND3 U225 ( .A(n304), .B(n294), .C(n284), .Z(n302) );
  GTECH_NOT U226 ( .A(n282), .Z(n284) );
  GTECH_NAND2 U227 ( .A(b[4]), .B(a[4]), .Z(n294) );
  GTECH_NOT U228 ( .A(n301), .Z(n304) );
  GTECH_OAI2N2 U229 ( .A(n285), .B(n372), .C(n373), .D(b[7]), .Z(n371) );
  GTECH_OR_NOT U230 ( .A(a[7]), .B(n285), .Z(n373) );
  GTECH_NOT U231 ( .A(a[7]), .Z(n372) );
  GTECH_OA21 U232 ( .A(n297), .B(n288), .C(n290), .Z(n285) );
  GTECH_NAND2 U233 ( .A(b[6]), .B(a[6]), .Z(n290) );
  GTECH_NOR2 U234 ( .A(a[6]), .B(b[6]), .Z(n288) );
  GTECH_AO21 U235 ( .A(n301), .B(n295), .C(n296), .Z(n297) );
  GTECH_NOR2 U236 ( .A(a[5]), .B(b[5]), .Z(n296) );
  GTECH_NAND2 U237 ( .A(b[5]), .B(a[5]), .Z(n295) );
  GTECH_NOR2 U238 ( .A(a[4]), .B(b[4]), .Z(n301) );
  GTECH_OAI2N2 U239 ( .A(n374), .B(n305), .C(n305), .D(n363), .Z(n282) );
  GTECH_XOR2 U240 ( .A(a[0]), .B(b[0]), .Z(n363) );
  GTECH_NOT U241 ( .A(cin), .Z(n305) );
  GTECH_AOI21 U242 ( .A(n314), .B(a[3]), .C(n375), .Z(n374) );
  GTECH_OA21 U243 ( .A(n314), .B(a[3]), .C(b[3]), .Z(n375) );
  GTECH_AO21 U244 ( .A(n321), .B(n313), .C(n376), .Z(n314) );
  GTECH_NOT U245 ( .A(n312), .Z(n376) );
  GTECH_NAND2 U246 ( .A(b[2]), .B(a[2]), .Z(n312) );
  GTECH_OR2 U247 ( .A(a[2]), .B(b[2]), .Z(n313) );
  GTECH_AOI21 U248 ( .A(n325), .B(n319), .C(n320), .Z(n321) );
  GTECH_NOR2 U249 ( .A(a[1]), .B(b[1]), .Z(n320) );
  GTECH_NAND2 U250 ( .A(b[1]), .B(a[1]), .Z(n319) );
  GTECH_NOR2 U251 ( .A(b[0]), .B(a[0]), .Z(n325) );
  GTECH_OR_NOT U252 ( .A(n277), .B(n278), .Z(n280) );
  GTECH_NAND2 U253 ( .A(b[8]), .B(a[8]), .Z(n278) );
  GTECH_NOR2 U254 ( .A(b[8]), .B(a[8]), .Z(n277) );
endmodule

