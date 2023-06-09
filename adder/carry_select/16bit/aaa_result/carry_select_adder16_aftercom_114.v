
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
         n370, n371, n372, n373, n374;

  GTECH_MUX2 U132 ( .A(n271), .B(n272), .S(n273), .Z(sum[9]) );
  GTECH_XNOR2 U133 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_XNOR2 U134 ( .A(n276), .B(n275), .Z(n271) );
  GTECH_OA21 U135 ( .A(b[9]), .B(a[9]), .C(n277), .Z(n275) );
  GTECH_XNOR2 U136 ( .A(n278), .B(n273), .Z(sum[8]) );
  GTECH_MUX2 U137 ( .A(n279), .B(n280), .S(n281), .Z(sum[7]) );
  GTECH_XOR2 U138 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_OA21 U139 ( .A(n284), .B(n285), .C(n286), .Z(n283) );
  GTECH_XNOR2 U140 ( .A(n282), .B(n287), .Z(n279) );
  GTECH_XNOR2 U141 ( .A(a[7]), .B(b[7]), .Z(n282) );
  GTECH_MUX2 U142 ( .A(n288), .B(n289), .S(n281), .Z(sum[6]) );
  GTECH_XNOR2 U143 ( .A(n290), .B(n285), .Z(n289) );
  GTECH_AO21 U144 ( .A(n291), .B(n292), .C(n293), .Z(n285) );
  GTECH_XOR2 U145 ( .A(n290), .B(n294), .Z(n288) );
  GTECH_AND_NOT U146 ( .A(n286), .B(n284), .Z(n290) );
  GTECH_NOT U147 ( .A(n295), .Z(n286) );
  GTECH_MUX2 U148 ( .A(n296), .B(n297), .S(n281), .Z(sum[5]) );
  GTECH_XNOR2 U149 ( .A(n291), .B(n298), .Z(n297) );
  GTECH_XNOR2 U150 ( .A(n299), .B(n298), .Z(n296) );
  GTECH_OA21 U151 ( .A(b[5]), .B(a[5]), .C(n292), .Z(n298) );
  GTECH_NAND2 U152 ( .A(n300), .B(n301), .Z(sum[4]) );
  GTECH_AO21 U153 ( .A(n302), .B(n291), .C(n281), .Z(n300) );
  GTECH_MUX2 U154 ( .A(n303), .B(n304), .S(cin), .Z(sum[3]) );
  GTECH_XNOR2 U155 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_XOR2 U156 ( .A(n305), .B(n307), .Z(n303) );
  GTECH_AOI21 U157 ( .A(n308), .B(n309), .C(n310), .Z(n307) );
  GTECH_XNOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n305) );
  GTECH_MUX2 U159 ( .A(n311), .B(n312), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U160 ( .A(n313), .B(n314), .Z(n312) );
  GTECH_XOR2 U161 ( .A(n313), .B(n309), .Z(n311) );
  GTECH_OA21 U162 ( .A(n315), .B(n316), .C(n317), .Z(n309) );
  GTECH_AND_NOT U163 ( .A(n308), .B(n310), .Z(n313) );
  GTECH_MUX2 U164 ( .A(n318), .B(n319), .S(n320), .Z(sum[1]) );
  GTECH_OA21 U165 ( .A(a[1]), .B(b[1]), .C(n321), .Z(n320) );
  GTECH_NOT U166 ( .A(n322), .Z(n319) );
  GTECH_OA21 U167 ( .A(n315), .B(cin), .C(n323), .Z(n322) );
  GTECH_AO21 U168 ( .A(cin), .B(n323), .C(n315), .Z(n318) );
  GTECH_AND2 U169 ( .A(b[0]), .B(a[0]), .Z(n315) );
  GTECH_MUX2 U170 ( .A(n324), .B(n325), .S(n326), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n327), .B(n328), .Z(n325) );
  GTECH_OA21 U172 ( .A(n329), .B(n330), .C(n331), .Z(n327) );
  GTECH_XOR2 U173 ( .A(n332), .B(n328), .Z(n324) );
  GTECH_XOR2 U174 ( .A(a[15]), .B(b[15]), .Z(n328) );
  GTECH_MUX2 U175 ( .A(n333), .B(n334), .S(n326), .Z(sum[14]) );
  GTECH_XOR2 U176 ( .A(n335), .B(n330), .Z(n334) );
  GTECH_OA21 U177 ( .A(n336), .B(n337), .C(n338), .Z(n330) );
  GTECH_NOT U178 ( .A(n339), .Z(n336) );
  GTECH_XOR2 U179 ( .A(n335), .B(n340), .Z(n333) );
  GTECH_OA21 U180 ( .A(b[14]), .B(a[14]), .C(n341), .Z(n335) );
  GTECH_MUX2 U181 ( .A(n342), .B(n343), .S(n326), .Z(sum[13]) );
  GTECH_XNOR2 U182 ( .A(n344), .B(n339), .Z(n343) );
  GTECH_XOR2 U183 ( .A(n344), .B(n345), .Z(n342) );
  GTECH_OA21 U184 ( .A(b[13]), .B(a[13]), .C(n346), .Z(n344) );
  GTECH_NOT U185 ( .A(n337), .Z(n346) );
  GTECH_NAND2 U186 ( .A(n347), .B(n348), .Z(sum[12]) );
  GTECH_NOT U187 ( .A(n349), .Z(n348) );
  GTECH_AO21 U188 ( .A(n345), .B(n339), .C(n326), .Z(n347) );
  GTECH_MUX2 U189 ( .A(n350), .B(n351), .S(n273), .Z(sum[11]) );
  GTECH_XOR2 U190 ( .A(n352), .B(n353), .Z(n351) );
  GTECH_OA21 U191 ( .A(n354), .B(n355), .C(n356), .Z(n353) );
  GTECH_XNOR2 U192 ( .A(n352), .B(n357), .Z(n350) );
  GTECH_XNOR2 U193 ( .A(a[11]), .B(b[11]), .Z(n352) );
  GTECH_MUX2 U194 ( .A(n358), .B(n359), .S(n273), .Z(sum[10]) );
  GTECH_XNOR2 U195 ( .A(n360), .B(n355), .Z(n359) );
  GTECH_AO21 U196 ( .A(n274), .B(n277), .C(n361), .Z(n355) );
  GTECH_XNOR2 U197 ( .A(n360), .B(n362), .Z(n358) );
  GTECH_AND_NOT U198 ( .A(n356), .B(n354), .Z(n360) );
  GTECH_XNOR2 U199 ( .A(cin), .B(n363), .Z(sum[0]) );
  GTECH_AO21 U200 ( .A(n364), .B(n365), .C(n349), .Z(cout) );
  GTECH_AND3 U201 ( .A(n339), .B(n345), .C(n326), .Z(n349) );
  GTECH_NOT U202 ( .A(n364), .Z(n326) );
  GTECH_NAND2 U203 ( .A(a[12]), .B(b[12]), .Z(n339) );
  GTECH_ADD_ABC U204 ( .A(a[15]), .B(n332), .C(b[15]), .COUT(n365) );
  GTECH_OA21 U205 ( .A(n329), .B(n340), .C(n331), .Z(n332) );
  GTECH_OR2 U206 ( .A(a[14]), .B(b[14]), .Z(n331) );
  GTECH_OA21 U207 ( .A(n345), .B(n337), .C(n338), .Z(n340) );
  GTECH_OR2 U208 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_AND2 U209 ( .A(a[13]), .B(b[13]), .Z(n337) );
  GTECH_OR2 U210 ( .A(b[12]), .B(a[12]), .Z(n345) );
  GTECH_NOT U211 ( .A(n341), .Z(n329) );
  GTECH_NAND2 U212 ( .A(b[14]), .B(a[14]), .Z(n341) );
  GTECH_MUX2 U213 ( .A(n366), .B(n278), .S(n273), .Z(n364) );
  GTECH_OA21 U214 ( .A(n281), .B(n367), .C(n301), .Z(n273) );
  GTECH_NAND3 U215 ( .A(n302), .B(n291), .C(n281), .Z(n301) );
  GTECH_NAND2 U216 ( .A(b[4]), .B(a[4]), .Z(n291) );
  GTECH_AOI2N2 U217 ( .A(n287), .B(a[7]), .C(n368), .D(n369), .Z(n367) );
  GTECH_NOT U218 ( .A(b[7]), .Z(n369) );
  GTECH_NOR2 U219 ( .A(n287), .B(a[7]), .Z(n368) );
  GTECH_AO21 U220 ( .A(n294), .B(n370), .C(n295), .Z(n287) );
  GTECH_AND2 U221 ( .A(b[6]), .B(a[6]), .Z(n295) );
  GTECH_NOT U222 ( .A(n284), .Z(n370) );
  GTECH_NOR2 U223 ( .A(a[6]), .B(b[6]), .Z(n284) );
  GTECH_AOI21 U224 ( .A(n299), .B(n292), .C(n293), .Z(n294) );
  GTECH_NOR2 U225 ( .A(a[5]), .B(b[5]), .Z(n293) );
  GTECH_NAND2 U226 ( .A(a[5]), .B(b[5]), .Z(n292) );
  GTECH_NOT U227 ( .A(n302), .Z(n299) );
  GTECH_OR2 U228 ( .A(a[4]), .B(b[4]), .Z(n302) );
  GTECH_MUX2 U229 ( .A(n363), .B(n371), .S(cin), .Z(n281) );
  GTECH_AOI21 U230 ( .A(n306), .B(a[3]), .C(n372), .Z(n371) );
  GTECH_OA21 U231 ( .A(n306), .B(a[3]), .C(b[3]), .Z(n372) );
  GTECH_AO21 U232 ( .A(n314), .B(n308), .C(n310), .Z(n306) );
  GTECH_AND2 U233 ( .A(b[2]), .B(a[2]), .Z(n310) );
  GTECH_OR2 U234 ( .A(a[2]), .B(b[2]), .Z(n308) );
  GTECH_OA21 U235 ( .A(n323), .B(n316), .C(n317), .Z(n314) );
  GTECH_OR2 U236 ( .A(b[1]), .B(a[1]), .Z(n317) );
  GTECH_NOT U237 ( .A(n321), .Z(n316) );
  GTECH_NAND2 U238 ( .A(b[1]), .B(a[1]), .Z(n321) );
  GTECH_OR2 U239 ( .A(b[0]), .B(a[0]), .Z(n323) );
  GTECH_XNOR2 U240 ( .A(a[0]), .B(b[0]), .Z(n363) );
  GTECH_AND_NOT U241 ( .A(n274), .B(n276), .Z(n278) );
  GTECH_NAND2 U242 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_OA21 U243 ( .A(a[11]), .B(n357), .C(n373), .Z(n366) );
  GTECH_AO21 U244 ( .A(a[11]), .B(n357), .C(b[11]), .Z(n373) );
  GTECH_NOT U245 ( .A(n374), .Z(n357) );
  GTECH_OA21 U246 ( .A(n362), .B(n354), .C(n356), .Z(n374) );
  GTECH_NAND2 U247 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_NOR2 U248 ( .A(a[10]), .B(b[10]), .Z(n354) );
  GTECH_AO21 U249 ( .A(n276), .B(n277), .C(n361), .Z(n362) );
  GTECH_NOR2 U250 ( .A(a[9]), .B(b[9]), .Z(n361) );
  GTECH_NAND2 U251 ( .A(a[9]), .B(b[9]), .Z(n277) );
  GTECH_NOR2 U252 ( .A(a[8]), .B(b[8]), .Z(n276) );
endmodule

