
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375;

  GTECH_MUX2 U127 ( .A(n266), .B(n267), .S(n268), .Z(sum[9]) );
  GTECH_XOR2 U128 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_XNOR2 U129 ( .A(n271), .B(n269), .Z(n266) );
  GTECH_XNOR2 U130 ( .A(a[9]), .B(b[9]), .Z(n269) );
  GTECH_NAND2 U131 ( .A(n272), .B(n273), .Z(sum[8]) );
  GTECH_OAI21 U132 ( .A(n271), .B(n270), .C(n268), .Z(n273) );
  GTECH_MUX2 U133 ( .A(n274), .B(n275), .S(n276), .Z(sum[7]) );
  GTECH_XOR2 U134 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_XOR2 U135 ( .A(n277), .B(n279), .Z(n274) );
  GTECH_OA21 U136 ( .A(n280), .B(n281), .C(n282), .Z(n279) );
  GTECH_XOR2 U137 ( .A(n283), .B(b[7]), .Z(n277) );
  GTECH_MUX2 U138 ( .A(n284), .B(n285), .S(n276), .Z(sum[6]) );
  GTECH_XOR2 U139 ( .A(n286), .B(n287), .Z(n285) );
  GTECH_XOR2 U140 ( .A(n287), .B(n281), .Z(n284) );
  GTECH_NOT U141 ( .A(n288), .Z(n281) );
  GTECH_ADD_ABC U142 ( .A(b[5]), .B(a[5]), .C(n289), .COUT(n288) );
  GTECH_OR_NOT U143 ( .A(n280), .B(n282), .Z(n287) );
  GTECH_MUX2 U144 ( .A(n290), .B(n291), .S(n292), .Z(sum[5]) );
  GTECH_XNOR2 U145 ( .A(b[5]), .B(n293), .Z(n292) );
  GTECH_OAI21 U146 ( .A(n289), .B(n276), .C(n294), .Z(n291) );
  GTECH_AO21 U147 ( .A(n294), .B(n276), .C(n289), .Z(n290) );
  GTECH_XNOR2 U148 ( .A(n295), .B(n276), .Z(sum[4]) );
  GTECH_MUX2 U149 ( .A(n296), .B(n297), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U150 ( .A(n298), .B(n299), .Z(n297) );
  GTECH_XOR2 U151 ( .A(n298), .B(n300), .Z(n296) );
  GTECH_OA21 U152 ( .A(n301), .B(n302), .C(n303), .Z(n300) );
  GTECH_XOR2 U153 ( .A(n304), .B(b[3]), .Z(n298) );
  GTECH_MUX2 U154 ( .A(n305), .B(n306), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U155 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_XOR2 U156 ( .A(n302), .B(n308), .Z(n305) );
  GTECH_OR_NOT U157 ( .A(n301), .B(n303), .Z(n308) );
  GTECH_OA21 U158 ( .A(n309), .B(n310), .C(n311), .Z(n302) );
  GTECH_MUX2 U159 ( .A(n312), .B(n313), .S(n314), .Z(sum[1]) );
  GTECH_OR_NOT U160 ( .A(n309), .B(n311), .Z(n314) );
  GTECH_OAI21 U161 ( .A(n315), .B(n316), .C(n310), .Z(n313) );
  GTECH_AO21 U162 ( .A(n316), .B(n310), .C(n315), .Z(n312) );
  GTECH_NOT U163 ( .A(cin), .Z(n316) );
  GTECH_MUX2 U164 ( .A(n317), .B(n318), .S(n319), .Z(sum[15]) );
  GTECH_XNOR2 U165 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_OA21 U166 ( .A(a[14]), .B(n322), .C(n323), .Z(n320) );
  GTECH_AO21 U167 ( .A(n322), .B(a[14]), .C(b[14]), .Z(n323) );
  GTECH_XNOR2 U168 ( .A(n321), .B(n324), .Z(n317) );
  GTECH_XOR2 U169 ( .A(n325), .B(b[15]), .Z(n321) );
  GTECH_MUX2 U170 ( .A(n326), .B(n327), .S(n319), .Z(sum[14]) );
  GTECH_XOR2 U171 ( .A(n328), .B(n322), .Z(n327) );
  GTECH_AO21 U172 ( .A(n329), .B(n330), .C(n331), .Z(n322) );
  GTECH_XOR2 U173 ( .A(n328), .B(n332), .Z(n326) );
  GTECH_XOR2 U174 ( .A(a[14]), .B(b[14]), .Z(n328) );
  GTECH_MUX2 U175 ( .A(n333), .B(n334), .S(n319), .Z(sum[13]) );
  GTECH_XNOR2 U176 ( .A(n330), .B(n335), .Z(n334) );
  GTECH_XNOR2 U177 ( .A(n335), .B(n336), .Z(n333) );
  GTECH_OR_NOT U178 ( .A(n331), .B(n329), .Z(n335) );
  GTECH_NAND2 U179 ( .A(n337), .B(n338), .Z(sum[12]) );
  GTECH_OAI21 U180 ( .A(n330), .B(n339), .C(n340), .Z(n338) );
  GTECH_MUX2 U181 ( .A(n341), .B(n342), .S(n268), .Z(sum[11]) );
  GTECH_XOR2 U182 ( .A(n343), .B(n344), .Z(n342) );
  GTECH_XOR2 U183 ( .A(n343), .B(n345), .Z(n341) );
  GTECH_OA21 U184 ( .A(n346), .B(n347), .C(n348), .Z(n345) );
  GTECH_NOT U185 ( .A(n349), .Z(n347) );
  GTECH_XOR2 U186 ( .A(n350), .B(b[11]), .Z(n343) );
  GTECH_MUX2 U187 ( .A(n351), .B(n352), .S(n268), .Z(sum[10]) );
  GTECH_XOR2 U188 ( .A(n353), .B(n354), .Z(n352) );
  GTECH_XNOR2 U189 ( .A(n354), .B(n349), .Z(n351) );
  GTECH_ADD_ABC U190 ( .A(a[9]), .B(n271), .C(b[9]), .COUT(n349) );
  GTECH_OR_NOT U191 ( .A(n346), .B(n348), .Z(n354) );
  GTECH_XNOR2 U192 ( .A(cin), .B(n355), .Z(sum[0]) );
  GTECH_OAI21 U193 ( .A(n319), .B(n356), .C(n337), .Z(cout) );
  GTECH_OR3 U194 ( .A(n330), .B(n339), .C(n340), .Z(n337) );
  GTECH_AND2 U195 ( .A(b[12]), .B(a[12]), .Z(n330) );
  GTECH_OA21 U196 ( .A(n357), .B(n325), .C(n358), .Z(n356) );
  GTECH_OAI21 U197 ( .A(a[15]), .B(n324), .C(b[15]), .Z(n358) );
  GTECH_NOT U198 ( .A(a[15]), .Z(n325) );
  GTECH_NOT U199 ( .A(n324), .Z(n357) );
  GTECH_AO21 U200 ( .A(n332), .B(a[14]), .C(n359), .Z(n324) );
  GTECH_OA21 U201 ( .A(a[14]), .B(n332), .C(b[14]), .Z(n359) );
  GTECH_AO21 U202 ( .A(n336), .B(n329), .C(n331), .Z(n332) );
  GTECH_AND2 U203 ( .A(b[13]), .B(a[13]), .Z(n331) );
  GTECH_OR2 U204 ( .A(b[13]), .B(a[13]), .Z(n329) );
  GTECH_NOT U205 ( .A(n339), .Z(n336) );
  GTECH_NOR2 U206 ( .A(a[12]), .B(b[12]), .Z(n339) );
  GTECH_NOT U207 ( .A(n340), .Z(n319) );
  GTECH_OAI21 U208 ( .A(n360), .B(n361), .C(n272), .Z(n340) );
  GTECH_OR3 U209 ( .A(n271), .B(n270), .C(n268), .Z(n272) );
  GTECH_NOT U210 ( .A(n361), .Z(n268) );
  GTECH_AND2 U211 ( .A(a[8]), .B(b[8]), .Z(n271) );
  GTECH_MUX2 U212 ( .A(n295), .B(n362), .S(n276), .Z(n361) );
  GTECH_NOT U213 ( .A(n363), .Z(n276) );
  GTECH_MUX2 U214 ( .A(n355), .B(n364), .S(cin), .Z(n363) );
  GTECH_OA21 U215 ( .A(n299), .B(n304), .C(n365), .Z(n364) );
  GTECH_AO21 U216 ( .A(n304), .B(n299), .C(n366), .Z(n365) );
  GTECH_NOT U217 ( .A(b[3]), .Z(n366) );
  GTECH_NOT U218 ( .A(a[3]), .Z(n304) );
  GTECH_OA21 U219 ( .A(n307), .B(n301), .C(n303), .Z(n299) );
  GTECH_NAND2 U220 ( .A(b[2]), .B(a[2]), .Z(n303) );
  GTECH_NOR2 U221 ( .A(b[2]), .B(a[2]), .Z(n301) );
  GTECH_OA21 U222 ( .A(n315), .B(n309), .C(n311), .Z(n307) );
  GTECH_NAND2 U223 ( .A(b[1]), .B(a[1]), .Z(n311) );
  GTECH_NOR2 U224 ( .A(b[1]), .B(a[1]), .Z(n309) );
  GTECH_OR_NOT U225 ( .A(n315), .B(n310), .Z(n355) );
  GTECH_NAND2 U226 ( .A(b[0]), .B(a[0]), .Z(n310) );
  GTECH_NOR2 U227 ( .A(a[0]), .B(b[0]), .Z(n315) );
  GTECH_OA21 U228 ( .A(n278), .B(n283), .C(n367), .Z(n362) );
  GTECH_AO21 U229 ( .A(n283), .B(n278), .C(n368), .Z(n367) );
  GTECH_NOT U230 ( .A(b[7]), .Z(n368) );
  GTECH_NOT U231 ( .A(a[7]), .Z(n283) );
  GTECH_OA21 U232 ( .A(n286), .B(n280), .C(n282), .Z(n278) );
  GTECH_NAND2 U233 ( .A(b[6]), .B(a[6]), .Z(n282) );
  GTECH_NOR2 U234 ( .A(b[6]), .B(a[6]), .Z(n280) );
  GTECH_OA21 U235 ( .A(n369), .B(n293), .C(n370), .Z(n286) );
  GTECH_OAI21 U236 ( .A(a[5]), .B(n294), .C(b[5]), .Z(n370) );
  GTECH_NOT U237 ( .A(n369), .Z(n294) );
  GTECH_NOT U238 ( .A(a[5]), .Z(n293) );
  GTECH_OR2 U239 ( .A(n289), .B(n369), .Z(n295) );
  GTECH_NOR2 U240 ( .A(a[4]), .B(b[4]), .Z(n369) );
  GTECH_AND2 U241 ( .A(b[4]), .B(a[4]), .Z(n289) );
  GTECH_OA21 U242 ( .A(n344), .B(n350), .C(n371), .Z(n360) );
  GTECH_AO21 U243 ( .A(n350), .B(n344), .C(n372), .Z(n371) );
  GTECH_NOT U244 ( .A(b[11]), .Z(n372) );
  GTECH_NOT U245 ( .A(a[11]), .Z(n350) );
  GTECH_OA21 U246 ( .A(n353), .B(n346), .C(n348), .Z(n344) );
  GTECH_NAND2 U247 ( .A(b[10]), .B(a[10]), .Z(n348) );
  GTECH_NOR2 U248 ( .A(b[10]), .B(a[10]), .Z(n346) );
  GTECH_OA21 U249 ( .A(n270), .B(n373), .C(n374), .Z(n353) );
  GTECH_OAI21 U250 ( .A(a[9]), .B(n375), .C(b[9]), .Z(n374) );
  GTECH_NOT U251 ( .A(n270), .Z(n375) );
  GTECH_NOT U252 ( .A(a[9]), .Z(n373) );
  GTECH_NOR2 U253 ( .A(a[8]), .B(b[8]), .Z(n270) );
endmodule

