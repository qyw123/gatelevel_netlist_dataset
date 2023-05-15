
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372;

  GTECH_OAI22 U134 ( .A(n273), .B(n274), .C(n275), .D(n276), .Z(sum[9]) );
  GTECH_XOR2 U135 ( .A(n277), .B(n278), .Z(n276) );
  GTECH_XNOR2 U136 ( .A(n277), .B(n279), .Z(n273) );
  GTECH_NOT U137 ( .A(n280), .Z(n279) );
  GTECH_OAI21 U138 ( .A(a[9]), .B(b[9]), .C(n281), .Z(n277) );
  GTECH_NAND2 U139 ( .A(n282), .B(n283), .Z(sum[8]) );
  GTECH_AO21 U140 ( .A(n284), .B(n280), .C(n274), .Z(n282) );
  GTECH_OAI22 U141 ( .A(n285), .B(n286), .C(n287), .D(n288), .Z(sum[7]) );
  GTECH_XNOR2 U142 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_XOR2 U143 ( .A(n291), .B(n290), .Z(n285) );
  GTECH_XOR2 U144 ( .A(a[7]), .B(b[7]), .Z(n290) );
  GTECH_OA21 U145 ( .A(n292), .B(n293), .C(n294), .Z(n291) );
  GTECH_OAI22 U146 ( .A(n295), .B(n286), .C(n296), .D(n288), .Z(sum[6]) );
  GTECH_XOR2 U147 ( .A(n297), .B(n298), .Z(n296) );
  GTECH_XOR2 U148 ( .A(n293), .B(n298), .Z(n295) );
  GTECH_AND_NOT U149 ( .A(n294), .B(n292), .Z(n298) );
  GTECH_OA21 U150 ( .A(n299), .B(n300), .C(n301), .Z(n293) );
  GTECH_XNOR2 U151 ( .A(n302), .B(n303), .Z(sum[5]) );
  GTECH_OA21 U152 ( .A(n304), .B(n288), .C(n300), .Z(n303) );
  GTECH_AND_NOT U153 ( .A(n301), .B(n299), .Z(n302) );
  GTECH_XNOR2 U154 ( .A(n288), .B(n305), .Z(sum[4]) );
  GTECH_OAI22 U155 ( .A(n306), .B(n307), .C(cin), .D(n308), .Z(sum[3]) );
  GTECH_XOR2 U156 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_OA21 U157 ( .A(n311), .B(n312), .C(n313), .Z(n309) );
  GTECH_XNOR2 U158 ( .A(n314), .B(n310), .Z(n307) );
  GTECH_XOR2 U159 ( .A(a[3]), .B(b[3]), .Z(n310) );
  GTECH_OAI22 U160 ( .A(n306), .B(n315), .C(cin), .D(n316), .Z(sum[2]) );
  GTECH_XOR2 U161 ( .A(n317), .B(n312), .Z(n316) );
  GTECH_AOI21 U162 ( .A(n318), .B(n319), .C(n320), .Z(n312) );
  GTECH_XOR2 U163 ( .A(n321), .B(n317), .Z(n315) );
  GTECH_AND_NOT U164 ( .A(n313), .B(n311), .Z(n317) );
  GTECH_OAI2N2 U165 ( .A(n322), .B(n323), .C(n324), .D(n323), .Z(sum[1]) );
  GTECH_OAI21 U166 ( .A(cin), .B(n319), .C(n325), .Z(n324) );
  GTECH_AND_NOT U167 ( .A(n318), .B(n320), .Z(n323) );
  GTECH_AOI21 U168 ( .A(n325), .B(cin), .C(n319), .Z(n322) );
  GTECH_AND2 U169 ( .A(a[0]), .B(b[0]), .Z(n319) );
  GTECH_OAI22 U170 ( .A(n326), .B(n327), .C(n328), .D(n329), .Z(sum[15]) );
  GTECH_XNOR2 U171 ( .A(n330), .B(n331), .Z(n329) );
  GTECH_XOR2 U172 ( .A(n332), .B(n331), .Z(n327) );
  GTECH_XOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n331) );
  GTECH_AOI21 U174 ( .A(n333), .B(n334), .C(n335), .Z(n332) );
  GTECH_OAI22 U175 ( .A(n326), .B(n336), .C(n328), .D(n337), .Z(sum[14]) );
  GTECH_XNOR2 U176 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_XNOR2 U177 ( .A(n334), .B(n339), .Z(n336) );
  GTECH_AND_NOT U178 ( .A(n333), .B(n335), .Z(n339) );
  GTECH_AOI21 U179 ( .A(n340), .B(n341), .C(n342), .Z(n334) );
  GTECH_OAI22 U180 ( .A(n326), .B(n343), .C(n328), .D(n344), .Z(sum[13]) );
  GTECH_XNOR2 U181 ( .A(n345), .B(n346), .Z(n344) );
  GTECH_XNOR2 U182 ( .A(n346), .B(n341), .Z(n343) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n340), .Z(n346) );
  GTECH_NOT U184 ( .A(n328), .Z(n326) );
  GTECH_NAND2 U185 ( .A(n347), .B(n348), .Z(sum[12]) );
  GTECH_AO21 U186 ( .A(n341), .B(n349), .C(n328), .Z(n347) );
  GTECH_OAI22 U187 ( .A(n350), .B(n274), .C(n351), .D(n275), .Z(sum[11]) );
  GTECH_XOR2 U188 ( .A(n352), .B(n353), .Z(n351) );
  GTECH_OA21 U189 ( .A(n354), .B(n355), .C(n356), .Z(n352) );
  GTECH_XNOR2 U190 ( .A(n357), .B(n353), .Z(n350) );
  GTECH_XOR2 U191 ( .A(a[11]), .B(b[11]), .Z(n353) );
  GTECH_OAI22 U192 ( .A(n275), .B(n358), .C(n274), .D(n359), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n360), .B(n361), .Z(n359) );
  GTECH_XOR2 U194 ( .A(n355), .B(n361), .Z(n358) );
  GTECH_AND_NOT U195 ( .A(n356), .B(n354), .Z(n361) );
  GTECH_OAI21 U196 ( .A(n362), .B(n278), .C(n363), .Z(n355) );
  GTECH_NOT U197 ( .A(n284), .Z(n278) );
  GTECH_XOR2 U198 ( .A(cin), .B(n364), .Z(sum[0]) );
  GTECH_OAI21 U199 ( .A(n328), .B(n365), .C(n348), .Z(cout) );
  GTECH_NAND3 U200 ( .A(n341), .B(n349), .C(n328), .Z(n348) );
  GTECH_NAND2 U201 ( .A(b[12]), .B(a[12]), .Z(n341) );
  GTECH_AOI21 U202 ( .A(n330), .B(a[15]), .C(n366), .Z(n365) );
  GTECH_OA21 U203 ( .A(a[15]), .B(n330), .C(b[15]), .Z(n366) );
  GTECH_AO21 U204 ( .A(n333), .B(n338), .C(n335), .Z(n330) );
  GTECH_AND2 U205 ( .A(b[14]), .B(a[14]), .Z(n335) );
  GTECH_AOI21 U206 ( .A(n340), .B(n345), .C(n342), .Z(n338) );
  GTECH_NOR2 U207 ( .A(b[13]), .B(a[13]), .Z(n342) );
  GTECH_NOT U208 ( .A(n349), .Z(n345) );
  GTECH_OR2 U209 ( .A(b[12]), .B(a[12]), .Z(n349) );
  GTECH_NAND2 U210 ( .A(a[13]), .B(b[13]), .Z(n340) );
  GTECH_OR2 U211 ( .A(a[14]), .B(b[14]), .Z(n333) );
  GTECH_OA21 U212 ( .A(n367), .B(n274), .C(n283), .Z(n328) );
  GTECH_NAND3 U213 ( .A(n280), .B(n284), .C(n274), .Z(n283) );
  GTECH_NAND2 U214 ( .A(b[8]), .B(a[8]), .Z(n284) );
  GTECH_NOT U215 ( .A(n275), .Z(n274) );
  GTECH_OA22 U216 ( .A(n368), .B(n288), .C(n305), .D(n286), .Z(n275) );
  GTECH_AND_NOT U217 ( .A(n300), .B(n304), .Z(n305) );
  GTECH_NAND2 U218 ( .A(b[4]), .B(a[4]), .Z(n300) );
  GTECH_NOT U219 ( .A(n286), .Z(n288) );
  GTECH_OAI2N2 U220 ( .A(n369), .B(n306), .C(n306), .D(n364), .Z(n286) );
  GTECH_XOR2 U221 ( .A(a[0]), .B(b[0]), .Z(n364) );
  GTECH_NOT U222 ( .A(cin), .Z(n306) );
  GTECH_AOI21 U223 ( .A(n314), .B(a[3]), .C(n370), .Z(n369) );
  GTECH_OA21 U224 ( .A(a[3]), .B(n314), .C(b[3]), .Z(n370) );
  GTECH_OAI21 U225 ( .A(n321), .B(n311), .C(n313), .Z(n314) );
  GTECH_NAND2 U226 ( .A(b[2]), .B(a[2]), .Z(n313) );
  GTECH_NOR2 U227 ( .A(a[2]), .B(b[2]), .Z(n311) );
  GTECH_AOI21 U228 ( .A(n325), .B(n318), .C(n320), .Z(n321) );
  GTECH_AND2 U229 ( .A(b[1]), .B(a[1]), .Z(n320) );
  GTECH_OR2 U230 ( .A(b[1]), .B(a[1]), .Z(n318) );
  GTECH_OR2 U231 ( .A(b[0]), .B(a[0]), .Z(n325) );
  GTECH_OA21 U232 ( .A(a[7]), .B(n289), .C(n371), .Z(n368) );
  GTECH_AO21 U233 ( .A(n289), .B(a[7]), .C(b[7]), .Z(n371) );
  GTECH_OAI21 U234 ( .A(n297), .B(n292), .C(n294), .Z(n289) );
  GTECH_NAND2 U235 ( .A(b[6]), .B(a[6]), .Z(n294) );
  GTECH_NOR2 U236 ( .A(a[6]), .B(b[6]), .Z(n292) );
  GTECH_OA21 U237 ( .A(n304), .B(n299), .C(n301), .Z(n297) );
  GTECH_NAND2 U238 ( .A(b[5]), .B(a[5]), .Z(n301) );
  GTECH_NOR2 U239 ( .A(b[5]), .B(a[5]), .Z(n299) );
  GTECH_NOR2 U240 ( .A(a[4]), .B(b[4]), .Z(n304) );
  GTECH_AOI21 U241 ( .A(n357), .B(a[11]), .C(n372), .Z(n367) );
  GTECH_OA21 U242 ( .A(a[11]), .B(n357), .C(b[11]), .Z(n372) );
  GTECH_OAI21 U243 ( .A(n354), .B(n360), .C(n356), .Z(n357) );
  GTECH_NAND2 U244 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_OAI21 U245 ( .A(n362), .B(n280), .C(n363), .Z(n360) );
  GTECH_OR2 U246 ( .A(b[9]), .B(a[9]), .Z(n363) );
  GTECH_OR2 U247 ( .A(a[8]), .B(b[8]), .Z(n280) );
  GTECH_NOT U248 ( .A(n281), .Z(n362) );
  GTECH_NAND2 U249 ( .A(b[9]), .B(a[9]), .Z(n281) );
  GTECH_NOR2 U250 ( .A(a[10]), .B(b[10]), .Z(n354) );
endmodule

