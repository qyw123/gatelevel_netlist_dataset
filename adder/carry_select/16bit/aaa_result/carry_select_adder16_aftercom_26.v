
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
         n370, n371, n372;

  GTECH_OAI22 U132 ( .A(n271), .B(n272), .C(n273), .D(n274), .Z(sum[9]) );
  GTECH_XOR2 U133 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_XNOR2 U134 ( .A(n277), .B(n276), .Z(n272) );
  GTECH_AND_NOT U135 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NAND2 U136 ( .A(n280), .B(n281), .Z(sum[8]) );
  GTECH_AO21 U137 ( .A(n282), .B(n283), .C(n274), .Z(n280) );
  GTECH_NOT U138 ( .A(n275), .Z(n283) );
  GTECH_OAI22 U139 ( .A(n284), .B(n285), .C(n286), .D(n287), .Z(sum[7]) );
  GTECH_XNOR2 U140 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_XOR2 U141 ( .A(n290), .B(n289), .Z(n284) );
  GTECH_XOR2 U142 ( .A(a[7]), .B(b[7]), .Z(n289) );
  GTECH_OA21 U143 ( .A(n291), .B(n292), .C(n293), .Z(n290) );
  GTECH_OAI22 U144 ( .A(n294), .B(n285), .C(n295), .D(n287), .Z(sum[6]) );
  GTECH_XOR2 U145 ( .A(n296), .B(n297), .Z(n295) );
  GTECH_XOR2 U146 ( .A(n297), .B(n292), .Z(n294) );
  GTECH_AOI21 U147 ( .A(n298), .B(n299), .C(n300), .Z(n292) );
  GTECH_AND_NOT U148 ( .A(n293), .B(n291), .Z(n297) );
  GTECH_OAI2N2 U149 ( .A(n301), .B(n302), .C(n303), .D(n301), .Z(sum[5]) );
  GTECH_OAI21 U150 ( .A(n299), .B(n285), .C(n304), .Z(n303) );
  GTECH_AOI21 U151 ( .A(n304), .B(n285), .C(n299), .Z(n302) );
  GTECH_AND_NOT U152 ( .A(n298), .B(n300), .Z(n301) );
  GTECH_XOR2 U153 ( .A(n285), .B(n305), .Z(sum[4]) );
  GTECH_OAI22 U154 ( .A(n306), .B(n307), .C(cin), .D(n308), .Z(sum[3]) );
  GTECH_XOR2 U155 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_OA21 U156 ( .A(n311), .B(n312), .C(n313), .Z(n309) );
  GTECH_XNOR2 U157 ( .A(n314), .B(n310), .Z(n307) );
  GTECH_XOR2 U158 ( .A(a[3]), .B(b[3]), .Z(n310) );
  GTECH_OAI22 U159 ( .A(n306), .B(n315), .C(cin), .D(n316), .Z(sum[2]) );
  GTECH_XOR2 U160 ( .A(n317), .B(n312), .Z(n316) );
  GTECH_AOI21 U161 ( .A(n318), .B(n319), .C(n320), .Z(n312) );
  GTECH_XOR2 U162 ( .A(n321), .B(n317), .Z(n315) );
  GTECH_AND_NOT U163 ( .A(n313), .B(n311), .Z(n317) );
  GTECH_OAI2N2 U164 ( .A(n322), .B(n323), .C(n324), .D(n322), .Z(sum[1]) );
  GTECH_OAI21 U165 ( .A(cin), .B(n319), .C(n325), .Z(n324) );
  GTECH_AOI21 U166 ( .A(n325), .B(cin), .C(n319), .Z(n323) );
  GTECH_ADD_AB U167 ( .A(b[0]), .B(a[0]), .COUT(n319) );
  GTECH_AND_NOT U168 ( .A(n318), .B(n320), .Z(n322) );
  GTECH_OAI22 U169 ( .A(n326), .B(n327), .C(n328), .D(n329), .Z(sum[15]) );
  GTECH_XOR2 U170 ( .A(n330), .B(n331), .Z(n329) );
  GTECH_XOR2 U171 ( .A(n330), .B(n332), .Z(n327) );
  GTECH_AOI21 U172 ( .A(n333), .B(n334), .C(n335), .Z(n332) );
  GTECH_XNOR2 U173 ( .A(a[15]), .B(b[15]), .Z(n330) );
  GTECH_OAI22 U174 ( .A(n326), .B(n336), .C(n328), .D(n337), .Z(sum[14]) );
  GTECH_XNOR2 U175 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_XNOR2 U176 ( .A(n334), .B(n339), .Z(n336) );
  GTECH_OAI21 U177 ( .A(a[14]), .B(b[14]), .C(n333), .Z(n339) );
  GTECH_OAI21 U178 ( .A(n340), .B(n341), .C(n342), .Z(n334) );
  GTECH_NOT U179 ( .A(n343), .Z(n341) );
  GTECH_OAI22 U180 ( .A(n326), .B(n344), .C(n328), .D(n345), .Z(sum[13]) );
  GTECH_XOR2 U181 ( .A(n346), .B(n347), .Z(n345) );
  GTECH_XNOR2 U182 ( .A(n343), .B(n346), .Z(n344) );
  GTECH_OAI21 U183 ( .A(a[13]), .B(b[13]), .C(n348), .Z(n346) );
  GTECH_OR_NOT U184 ( .A(n349), .B(n350), .Z(sum[12]) );
  GTECH_AO21 U185 ( .A(n343), .B(n347), .C(n328), .Z(n350) );
  GTECH_OAI22 U186 ( .A(n351), .B(n271), .C(n352), .D(n274), .Z(sum[11]) );
  GTECH_XNOR2 U187 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_XOR2 U188 ( .A(n355), .B(n354), .Z(n351) );
  GTECH_XOR2 U189 ( .A(a[11]), .B(b[11]), .Z(n354) );
  GTECH_OA21 U190 ( .A(n356), .B(n357), .C(n358), .Z(n355) );
  GTECH_NOR2 U191 ( .A(b[10]), .B(a[10]), .Z(n356) );
  GTECH_OAI22 U192 ( .A(n359), .B(n271), .C(n360), .D(n274), .Z(sum[10]) );
  GTECH_XOR2 U193 ( .A(n361), .B(n362), .Z(n360) );
  GTECH_XNOR2 U194 ( .A(n357), .B(n362), .Z(n359) );
  GTECH_OAI21 U195 ( .A(b[10]), .B(a[10]), .C(n358), .Z(n362) );
  GTECH_OA21 U196 ( .A(n279), .B(n282), .C(n278), .Z(n357) );
  GTECH_XOR2 U197 ( .A(cin), .B(n363), .Z(sum[0]) );
  GTECH_AO21 U198 ( .A(n364), .B(n326), .C(n349), .Z(cout) );
  GTECH_AND3 U199 ( .A(n343), .B(n347), .C(n328), .Z(n349) );
  GTECH_NAND2 U200 ( .A(b[12]), .B(a[12]), .Z(n343) );
  GTECH_NOT U201 ( .A(n328), .Z(n326) );
  GTECH_OA21 U202 ( .A(n365), .B(n274), .C(n281), .Z(n328) );
  GTECH_OR3 U203 ( .A(n277), .B(n275), .C(n271), .Z(n281) );
  GTECH_NOT U204 ( .A(n282), .Z(n277) );
  GTECH_NAND2 U205 ( .A(b[8]), .B(a[8]), .Z(n282) );
  GTECH_NOT U206 ( .A(n271), .Z(n274) );
  GTECH_OAI2N2 U207 ( .A(n366), .B(n287), .C(n287), .D(n305), .Z(n271) );
  GTECH_AND_NOT U208 ( .A(n304), .B(n299), .Z(n305) );
  GTECH_ADD_AB U209 ( .A(a[4]), .B(b[4]), .COUT(n299) );
  GTECH_NOT U210 ( .A(n285), .Z(n287) );
  GTECH_OAI2N2 U211 ( .A(n367), .B(n306), .C(n306), .D(n363), .Z(n285) );
  GTECH_XOR2 U212 ( .A(a[0]), .B(b[0]), .Z(n363) );
  GTECH_NOT U213 ( .A(cin), .Z(n306) );
  GTECH_AOI21 U214 ( .A(n314), .B(a[3]), .C(n368), .Z(n367) );
  GTECH_OA21 U215 ( .A(a[3]), .B(n314), .C(b[3]), .Z(n368) );
  GTECH_OAI21 U216 ( .A(n321), .B(n311), .C(n313), .Z(n314) );
  GTECH_NAND2 U217 ( .A(b[2]), .B(a[2]), .Z(n313) );
  GTECH_NOR2 U218 ( .A(a[2]), .B(b[2]), .Z(n311) );
  GTECH_AOI21 U219 ( .A(n325), .B(n318), .C(n320), .Z(n321) );
  GTECH_ADD_AB U220 ( .A(a[1]), .B(b[1]), .COUT(n320) );
  GTECH_OR2 U221 ( .A(b[1]), .B(a[1]), .Z(n318) );
  GTECH_OR_NOT U222 ( .A(b[0]), .B(n369), .Z(n325) );
  GTECH_NOT U223 ( .A(a[0]), .Z(n369) );
  GTECH_AOI21 U224 ( .A(n288), .B(a[7]), .C(n370), .Z(n366) );
  GTECH_OA21 U225 ( .A(a[7]), .B(n288), .C(b[7]), .Z(n370) );
  GTECH_OAI21 U226 ( .A(n296), .B(n291), .C(n293), .Z(n288) );
  GTECH_NAND2 U227 ( .A(b[6]), .B(a[6]), .Z(n293) );
  GTECH_NOR2 U228 ( .A(a[6]), .B(b[6]), .Z(n291) );
  GTECH_AOI21 U229 ( .A(n304), .B(n298), .C(n300), .Z(n296) );
  GTECH_ADD_AB U230 ( .A(b[5]), .B(a[5]), .COUT(n300) );
  GTECH_OR2 U231 ( .A(a[5]), .B(b[5]), .Z(n298) );
  GTECH_OR2 U232 ( .A(b[4]), .B(a[4]), .Z(n304) );
  GTECH_AOI21 U233 ( .A(n353), .B(a[11]), .C(n371), .Z(n365) );
  GTECH_OA21 U234 ( .A(a[11]), .B(n353), .C(b[11]), .Z(n371) );
  GTECH_NAND2 U235 ( .A(n372), .B(n358), .Z(n353) );
  GTECH_NAND2 U236 ( .A(a[10]), .B(b[10]), .Z(n358) );
  GTECH_OAI21 U237 ( .A(a[10]), .B(b[10]), .C(n361), .Z(n372) );
  GTECH_OAI21 U238 ( .A(n275), .B(n279), .C(n278), .Z(n361) );
  GTECH_NAND2 U239 ( .A(b[9]), .B(a[9]), .Z(n278) );
  GTECH_NOR2 U240 ( .A(a[9]), .B(b[9]), .Z(n279) );
  GTECH_NOR2 U241 ( .A(b[8]), .B(a[8]), .Z(n275) );
  GTECH_ADD_ABC U242 ( .A(a[15]), .B(n331), .C(b[15]), .COUT(n364) );
  GTECH_AOI21 U243 ( .A(n333), .B(n338), .C(n335), .Z(n331) );
  GTECH_NOR2 U244 ( .A(b[14]), .B(a[14]), .Z(n335) );
  GTECH_OAI21 U245 ( .A(n340), .B(n347), .C(n342), .Z(n338) );
  GTECH_OR2 U246 ( .A(b[13]), .B(a[13]), .Z(n342) );
  GTECH_OR2 U247 ( .A(a[12]), .B(b[12]), .Z(n347) );
  GTECH_NOT U248 ( .A(n348), .Z(n340) );
  GTECH_NAND2 U249 ( .A(a[13]), .B(b[13]), .Z(n348) );
  GTECH_NAND2 U250 ( .A(a[14]), .B(b[14]), .Z(n333) );
endmodule

