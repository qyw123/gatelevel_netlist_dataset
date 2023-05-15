
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385;

  GTECH_OAI22 U143 ( .A(n282), .B(n283), .C(n284), .D(n285), .Z(sum[9]) );
  GTECH_XNOR2 U144 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_XNOR2 U145 ( .A(n288), .B(n287), .Z(n283) );
  GTECH_AO21 U146 ( .A(a[9]), .B(b[9]), .C(n289), .Z(n287) );
  GTECH_NAND2 U147 ( .A(n290), .B(n291), .Z(sum[8]) );
  GTECH_OAI21 U148 ( .A(n292), .B(n286), .C(n282), .Z(n290) );
  GTECH_OAI22 U149 ( .A(n293), .B(n294), .C(n295), .D(n296), .Z(sum[7]) );
  GTECH_XNOR2 U150 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_AND_NOT U151 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_OAI21 U152 ( .A(b[6]), .B(a[6]), .C(n301), .Z(n299) );
  GTECH_ADD_AB U153 ( .A(n302), .B(n298), .S(n293) );
  GTECH_XNOR2 U154 ( .A(b[7]), .B(a[7]), .Z(n298) );
  GTECH_NOT U155 ( .A(n303), .Z(sum[6]) );
  GTECH_AOI222 U156 ( .A(n300), .B(n304), .C(n305), .D(b[6]), .E(n306), .F(
        n307), .Z(n303) );
  GTECH_ADD_AB U157 ( .A(a[6]), .B(n304), .S(n306) );
  GTECH_NOR2 U158 ( .A(a[6]), .B(n304), .Z(n305) );
  GTECH_AO21 U159 ( .A(n308), .B(n296), .C(n301), .Z(n304) );
  GTECH_AOI21 U160 ( .A(n309), .B(n310), .C(n311), .Z(n301) );
  GTECH_OAI2N2 U161 ( .A(n312), .B(n313), .C(n313), .D(n314), .Z(sum[5]) );
  GTECH_OAI21 U162 ( .A(n315), .B(n294), .C(n310), .Z(n314) );
  GTECH_OR_NOT U163 ( .A(n311), .B(n309), .Z(n313) );
  GTECH_ADD_ABC U164 ( .A(a[4]), .B(n296), .C(b[4]), .COUT(n312) );
  GTECH_ADD_AB U165 ( .A(n316), .B(n296), .S(sum[4]) );
  GTECH_OAI22 U166 ( .A(n317), .B(n318), .C(cin), .D(n319), .Z(sum[3]) );
  GTECH_XNOR2 U167 ( .A(n320), .B(n321), .Z(n319) );
  GTECH_ADD_ABC U168 ( .A(a[2]), .B(n322), .C(b[2]), .COUT(n320) );
  GTECH_XNOR2 U169 ( .A(n323), .B(n321), .Z(n318) );
  GTECH_ADD_AB U170 ( .A(b[3]), .B(a[3]), .S(n321) );
  GTECH_OAI22 U171 ( .A(n317), .B(n324), .C(cin), .D(n325), .Z(sum[2]) );
  GTECH_XNOR2 U172 ( .A(n322), .B(n326), .Z(n325) );
  GTECH_OA21 U173 ( .A(n327), .B(n328), .C(n329), .Z(n322) );
  GTECH_XNOR2 U174 ( .A(n330), .B(n326), .Z(n324) );
  GTECH_ADD_AB U175 ( .A(b[2]), .B(a[2]), .S(n326) );
  GTECH_OAI2N2 U176 ( .A(n331), .B(n332), .C(n333), .D(n331), .Z(sum[1]) );
  GTECH_OAI21 U177 ( .A(cin), .B(n328), .C(n334), .Z(n333) );
  GTECH_AOI21 U178 ( .A(n334), .B(cin), .C(n328), .Z(n332) );
  GTECH_AND_NOT U179 ( .A(n329), .B(n327), .Z(n331) );
  GTECH_OAI2N2 U180 ( .A(n335), .B(n336), .C(n335), .D(n337), .Z(sum[15]) );
  GTECH_ADD_AB U181 ( .A(n338), .B(n339), .S(n337) );
  GTECH_OA21 U182 ( .A(n340), .B(n341), .C(n342), .Z(n338) );
  GTECH_ADD_AB U183 ( .A(n343), .B(n339), .S(n336) );
  GTECH_XNOR2 U184 ( .A(b[15]), .B(a[15]), .Z(n339) );
  GTECH_OAI21 U185 ( .A(n344), .B(n345), .C(n346), .Z(sum[14]) );
  GTECH_OAI21 U186 ( .A(n340), .B(n347), .C(n344), .Z(n346) );
  GTECH_XNOR2 U187 ( .A(b[14]), .B(a[14]), .Z(n345) );
  GTECH_OAI21 U188 ( .A(n348), .B(n335), .C(n341), .Z(n344) );
  GTECH_OA21 U189 ( .A(n349), .B(n350), .C(n351), .Z(n341) );
  GTECH_OAI21 U190 ( .A(n352), .B(n353), .C(n354), .Z(sum[13]) );
  GTECH_OAI21 U191 ( .A(n349), .B(n355), .C(n352), .Z(n354) );
  GTECH_NOT U192 ( .A(n351), .Z(n355) );
  GTECH_XNOR2 U193 ( .A(b[13]), .B(a[13]), .Z(n353) );
  GTECH_OAI21 U194 ( .A(n356), .B(n335), .C(n350), .Z(n352) );
  GTECH_NAND2 U195 ( .A(n357), .B(n358), .Z(sum[12]) );
  GTECH_AO21 U196 ( .A(n350), .B(n359), .C(n335), .Z(n357) );
  GTECH_OAI22 U197 ( .A(n360), .B(n282), .C(n361), .D(n285), .Z(sum[11]) );
  GTECH_ADD_AB U198 ( .A(n362), .B(n363), .S(n361) );
  GTECH_XNOR2 U199 ( .A(n364), .B(n363), .Z(n360) );
  GTECH_XNOR2 U200 ( .A(b[11]), .B(a[11]), .Z(n363) );
  GTECH_AND_NOT U201 ( .A(n365), .B(n366), .Z(n364) );
  GTECH_OAI21 U202 ( .A(b[10]), .B(a[10]), .C(n367), .Z(n365) );
  GTECH_NOT U203 ( .A(n368), .Z(sum[10]) );
  GTECH_AOI222 U204 ( .A(n366), .B(n369), .C(n370), .D(b[10]), .E(n371), .F(
        n372), .Z(n368) );
  GTECH_ADD_AB U205 ( .A(a[10]), .B(n369), .S(n371) );
  GTECH_NOR2 U206 ( .A(a[10]), .B(n369), .Z(n370) );
  GTECH_AO21 U207 ( .A(n373), .B(n282), .C(n367), .Z(n369) );
  GTECH_OAI2N2 U208 ( .A(n289), .B(n288), .C(a[9]), .D(b[9]), .Z(n367) );
  GTECH_NOT U209 ( .A(n292), .Z(n288) );
  GTECH_XNOR2 U210 ( .A(n317), .B(n374), .Z(sum[0]) );
  GTECH_NOT U211 ( .A(cin), .Z(n317) );
  GTECH_OAI21 U212 ( .A(n335), .B(n375), .C(n358), .Z(cout) );
  GTECH_NAND3 U213 ( .A(n350), .B(n359), .C(n335), .Z(n358) );
  GTECH_NAND2 U214 ( .A(b[12]), .B(a[12]), .Z(n350) );
  GTECH_AOI21 U215 ( .A(n343), .B(a[15]), .C(n376), .Z(n375) );
  GTECH_OA21 U216 ( .A(a[15]), .B(n343), .C(b[15]), .Z(n376) );
  GTECH_OR_NOT U217 ( .A(n347), .B(n377), .Z(n343) );
  GTECH_AO21 U218 ( .A(n348), .B(n351), .C(n340), .Z(n377) );
  GTECH_NOR2 U219 ( .A(b[14]), .B(a[14]), .Z(n340) );
  GTECH_NAND2 U220 ( .A(a[13]), .B(b[13]), .Z(n351) );
  GTECH_OR2 U221 ( .A(n349), .B(n356), .Z(n348) );
  GTECH_NOT U222 ( .A(n359), .Z(n356) );
  GTECH_OR2 U223 ( .A(b[12]), .B(a[12]), .Z(n359) );
  GTECH_NOR2 U224 ( .A(b[13]), .B(a[13]), .Z(n349) );
  GTECH_NOT U225 ( .A(n342), .Z(n347) );
  GTECH_NAND2 U226 ( .A(a[14]), .B(b[14]), .Z(n342) );
  GTECH_OA21 U227 ( .A(n378), .B(n285), .C(n291), .Z(n335) );
  GTECH_OR3 U228 ( .A(n292), .B(n286), .C(n282), .Z(n291) );
  GTECH_AND2 U229 ( .A(b[8]), .B(a[8]), .Z(n292) );
  GTECH_NOT U230 ( .A(n282), .Z(n285) );
  GTECH_OAI2N2 U231 ( .A(n379), .B(n294), .C(n294), .D(n316), .Z(n282) );
  GTECH_AND_NOT U232 ( .A(n310), .B(n315), .Z(n316) );
  GTECH_NAND2 U233 ( .A(b[4]), .B(a[4]), .Z(n310) );
  GTECH_NOT U234 ( .A(n296), .Z(n294) );
  GTECH_AOI2N2 U235 ( .A(n380), .B(cin), .C(cin), .D(n374), .Z(n296) );
  GTECH_AND_NOT U236 ( .A(n334), .B(n328), .Z(n374) );
  GTECH_AND2 U237 ( .A(b[0]), .B(a[0]), .Z(n328) );
  GTECH_OAI21 U238 ( .A(a[3]), .B(n323), .C(n381), .Z(n380) );
  GTECH_AO21 U239 ( .A(n323), .B(a[3]), .C(b[3]), .Z(n381) );
  GTECH_ADD_ABC U240 ( .A(n330), .B(a[2]), .C(b[2]), .COUT(n323) );
  GTECH_OA21 U241 ( .A(n327), .B(n334), .C(n329), .Z(n330) );
  GTECH_OR2 U242 ( .A(b[1]), .B(a[1]), .Z(n329) );
  GTECH_OR2 U243 ( .A(b[0]), .B(a[0]), .Z(n334) );
  GTECH_AND2 U244 ( .A(b[1]), .B(a[1]), .Z(n327) );
  GTECH_AOI21 U245 ( .A(n302), .B(a[7]), .C(n382), .Z(n379) );
  GTECH_OA21 U246 ( .A(a[7]), .B(n302), .C(b[7]), .Z(n382) );
  GTECH_OR_NOT U247 ( .A(n300), .B(n383), .Z(n302) );
  GTECH_OAI21 U248 ( .A(a[6]), .B(b[6]), .C(n308), .Z(n383) );
  GTECH_AOI21 U249 ( .A(n309), .B(n315), .C(n311), .Z(n308) );
  GTECH_NOR2 U250 ( .A(b[5]), .B(a[5]), .Z(n311) );
  GTECH_NOR2 U251 ( .A(a[4]), .B(b[4]), .Z(n315) );
  GTECH_NAND2 U252 ( .A(b[5]), .B(a[5]), .Z(n309) );
  GTECH_AND_NOT U253 ( .A(a[6]), .B(n307), .Z(n300) );
  GTECH_NOT U254 ( .A(b[6]), .Z(n307) );
  GTECH_AOI21 U255 ( .A(n362), .B(a[11]), .C(n384), .Z(n378) );
  GTECH_OA21 U256 ( .A(a[11]), .B(n362), .C(b[11]), .Z(n384) );
  GTECH_OR_NOT U257 ( .A(n366), .B(n385), .Z(n362) );
  GTECH_OAI21 U258 ( .A(a[10]), .B(b[10]), .C(n373), .Z(n385) );
  GTECH_OAI2N2 U259 ( .A(n286), .B(n289), .C(a[9]), .D(b[9]), .Z(n373) );
  GTECH_NOR2 U260 ( .A(a[9]), .B(b[9]), .Z(n289) );
  GTECH_NOR2 U261 ( .A(b[8]), .B(a[8]), .Z(n286) );
  GTECH_AND_NOT U262 ( .A(a[10]), .B(n372), .Z(n366) );
  GTECH_NOT U263 ( .A(b[10]), .Z(n372) );
endmodule

