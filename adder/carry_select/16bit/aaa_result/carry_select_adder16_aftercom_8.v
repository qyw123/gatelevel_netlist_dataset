
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
         n365, n366, n367;

  GTECH_MUX2 U127 ( .A(n266), .B(n267), .S(n268), .Z(sum[9]) );
  GTECH_XNOR2 U128 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_NOT U129 ( .A(n271), .Z(n270) );
  GTECH_XOR2 U130 ( .A(n269), .B(n272), .Z(n266) );
  GTECH_AO21 U131 ( .A(a[9]), .B(b[9]), .C(n273), .Z(n269) );
  GTECH_NAND2 U132 ( .A(n274), .B(n275), .Z(sum[8]) );
  GTECH_OAI21 U133 ( .A(n276), .B(n271), .C(n268), .Z(n274) );
  GTECH_MUX2 U134 ( .A(n277), .B(n278), .S(n279), .Z(sum[7]) );
  GTECH_XOR2 U135 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_XOR2 U136 ( .A(n282), .B(n280), .Z(n277) );
  GTECH_XOR2 U137 ( .A(a[7]), .B(b[7]), .Z(n280) );
  GTECH_OA21 U138 ( .A(a[6]), .B(n283), .C(n284), .Z(n282) );
  GTECH_AO21 U139 ( .A(n283), .B(a[6]), .C(b[6]), .Z(n284) );
  GTECH_MUX2 U140 ( .A(n285), .B(n286), .S(n279), .Z(sum[6]) );
  GTECH_XNOR2 U141 ( .A(n287), .B(n288), .Z(n286) );
  GTECH_XNOR2 U142 ( .A(n287), .B(n283), .Z(n285) );
  GTECH_AO21 U143 ( .A(n289), .B(n290), .C(n291), .Z(n283) );
  GTECH_XNOR2 U144 ( .A(a[6]), .B(b[6]), .Z(n287) );
  GTECH_MUX2 U145 ( .A(n292), .B(n293), .S(n294), .Z(sum[5]) );
  GTECH_AND_NOT U146 ( .A(n289), .B(n291), .Z(n294) );
  GTECH_OAI21 U147 ( .A(n290), .B(n279), .C(n295), .Z(n293) );
  GTECH_AO21 U148 ( .A(n295), .B(n279), .C(n290), .Z(n292) );
  GTECH_XNOR2 U149 ( .A(n296), .B(n279), .Z(sum[4]) );
  GTECH_MUX2 U150 ( .A(n297), .B(n298), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U151 ( .A(n299), .B(n300), .Z(n298) );
  GTECH_XOR2 U152 ( .A(n301), .B(n299), .Z(n297) );
  GTECH_XOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n299) );
  GTECH_OA21 U154 ( .A(a[2]), .B(n302), .C(n303), .Z(n301) );
  GTECH_AO21 U155 ( .A(n302), .B(a[2]), .C(b[2]), .Z(n303) );
  GTECH_MUX2 U156 ( .A(n304), .B(n305), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U157 ( .A(n306), .B(n307), .Z(n305) );
  GTECH_XNOR2 U158 ( .A(n306), .B(n302), .Z(n304) );
  GTECH_OAI21 U159 ( .A(n308), .B(n309), .C(n310), .Z(n302) );
  GTECH_XOR2 U160 ( .A(a[2]), .B(n311), .Z(n306) );
  GTECH_MUX2 U161 ( .A(n312), .B(n313), .S(n314), .Z(sum[1]) );
  GTECH_AND_NOT U162 ( .A(n310), .B(n308), .Z(n314) );
  GTECH_AO21 U163 ( .A(n315), .B(n309), .C(n316), .Z(n313) );
  GTECH_OAI21 U164 ( .A(n316), .B(n315), .C(n309), .Z(n312) );
  GTECH_NAND2 U165 ( .A(a[0]), .B(b[0]), .Z(n309) );
  GTECH_NOT U166 ( .A(cin), .Z(n315) );
  GTECH_MUX2 U167 ( .A(n317), .B(n318), .S(n319), .Z(sum[15]) );
  GTECH_XOR2 U168 ( .A(n320), .B(n321), .Z(n318) );
  GTECH_ADD_ABC U169 ( .A(a[14]), .B(n322), .C(b[14]), .COUT(n320) );
  GTECH_XOR2 U170 ( .A(n321), .B(n323), .Z(n317) );
  GTECH_XOR2 U171 ( .A(a[15]), .B(b[15]), .Z(n321) );
  GTECH_MUX2 U172 ( .A(n324), .B(n325), .S(n319), .Z(sum[14]) );
  GTECH_XOR2 U173 ( .A(n322), .B(n326), .Z(n325) );
  GTECH_OA21 U174 ( .A(n327), .B(n328), .C(n329), .Z(n322) );
  GTECH_XOR2 U175 ( .A(n330), .B(n326), .Z(n324) );
  GTECH_XOR2 U176 ( .A(a[14]), .B(b[14]), .Z(n326) );
  GTECH_MUX2 U177 ( .A(n331), .B(n332), .S(n319), .Z(sum[13]) );
  GTECH_XNOR2 U178 ( .A(n333), .B(n328), .Z(n332) );
  GTECH_XNOR2 U179 ( .A(n334), .B(n333), .Z(n331) );
  GTECH_OAI21 U180 ( .A(a[13]), .B(b[13]), .C(n335), .Z(n333) );
  GTECH_NOT U181 ( .A(n327), .Z(n335) );
  GTECH_NAND2 U182 ( .A(n336), .B(n337), .Z(sum[12]) );
  GTECH_OAI21 U183 ( .A(n328), .B(n338), .C(n339), .Z(n336) );
  GTECH_MUX2 U184 ( .A(n340), .B(n341), .S(n268), .Z(sum[11]) );
  GTECH_XOR2 U185 ( .A(n342), .B(n343), .Z(n341) );
  GTECH_XOR2 U186 ( .A(n344), .B(n342), .Z(n340) );
  GTECH_XOR2 U187 ( .A(a[11]), .B(b[11]), .Z(n342) );
  GTECH_OA21 U188 ( .A(a[10]), .B(n345), .C(n346), .Z(n344) );
  GTECH_AO21 U189 ( .A(n345), .B(a[10]), .C(b[10]), .Z(n346) );
  GTECH_MUX2 U190 ( .A(n347), .B(n348), .S(n268), .Z(sum[10]) );
  GTECH_XNOR2 U191 ( .A(n349), .B(n350), .Z(n348) );
  GTECH_XNOR2 U192 ( .A(n349), .B(n345), .Z(n347) );
  GTECH_OAI2N2 U193 ( .A(n273), .B(n272), .C(a[9]), .D(b[9]), .Z(n345) );
  GTECH_NOT U194 ( .A(n276), .Z(n272) );
  GTECH_XNOR2 U195 ( .A(a[10]), .B(b[10]), .Z(n349) );
  GTECH_XNOR2 U196 ( .A(cin), .B(n351), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n319), .B(n352), .C(n337), .Z(cout) );
  GTECH_OR3 U198 ( .A(n338), .B(n328), .C(n339), .Z(n337) );
  GTECH_AND2 U199 ( .A(b[12]), .B(a[12]), .Z(n328) );
  GTECH_AOI21 U200 ( .A(n323), .B(a[15]), .C(n353), .Z(n352) );
  GTECH_OA21 U201 ( .A(a[15]), .B(n323), .C(b[15]), .Z(n353) );
  GTECH_ADD_ABC U202 ( .A(a[14]), .B(n330), .C(b[14]), .COUT(n323) );
  GTECH_OA21 U203 ( .A(n327), .B(n334), .C(n329), .Z(n330) );
  GTECH_OR2 U204 ( .A(b[13]), .B(a[13]), .Z(n329) );
  GTECH_NOT U205 ( .A(n338), .Z(n334) );
  GTECH_NOR2 U206 ( .A(a[12]), .B(b[12]), .Z(n338) );
  GTECH_AND2 U207 ( .A(a[13]), .B(b[13]), .Z(n327) );
  GTECH_NOT U208 ( .A(n339), .Z(n319) );
  GTECH_OAI21 U209 ( .A(n354), .B(n355), .C(n275), .Z(n339) );
  GTECH_OR3 U210 ( .A(n271), .B(n276), .C(n268), .Z(n275) );
  GTECH_NOT U211 ( .A(n355), .Z(n268) );
  GTECH_AND2 U212 ( .A(b[8]), .B(a[8]), .Z(n276) );
  GTECH_MUX2 U213 ( .A(n296), .B(n356), .S(n279), .Z(n355) );
  GTECH_NOT U214 ( .A(n357), .Z(n279) );
  GTECH_MUX2 U215 ( .A(n351), .B(n358), .S(cin), .Z(n357) );
  GTECH_AOI21 U216 ( .A(n300), .B(a[3]), .C(n359), .Z(n358) );
  GTECH_OA21 U217 ( .A(a[3]), .B(n300), .C(b[3]), .Z(n359) );
  GTECH_OAI21 U218 ( .A(n307), .B(n360), .C(n361), .Z(n300) );
  GTECH_AO21 U219 ( .A(n360), .B(n307), .C(n311), .Z(n361) );
  GTECH_NOT U220 ( .A(b[2]), .Z(n311) );
  GTECH_NOT U221 ( .A(a[2]), .Z(n360) );
  GTECH_OA21 U222 ( .A(n308), .B(n316), .C(n310), .Z(n307) );
  GTECH_NAND2 U223 ( .A(b[1]), .B(a[1]), .Z(n310) );
  GTECH_AND_NOT U224 ( .A(n362), .B(a[0]), .Z(n316) );
  GTECH_NOR2 U225 ( .A(a[1]), .B(b[1]), .Z(n308) );
  GTECH_XNOR2 U226 ( .A(n363), .B(n362), .Z(n351) );
  GTECH_NOT U227 ( .A(b[0]), .Z(n362) );
  GTECH_NOT U228 ( .A(a[0]), .Z(n363) );
  GTECH_AOI21 U229 ( .A(n281), .B(a[7]), .C(n364), .Z(n356) );
  GTECH_OA21 U230 ( .A(a[7]), .B(n281), .C(b[7]), .Z(n364) );
  GTECH_AO21 U231 ( .A(n288), .B(a[6]), .C(n365), .Z(n281) );
  GTECH_OA21 U232 ( .A(a[6]), .B(n288), .C(b[6]), .Z(n365) );
  GTECH_AO21 U233 ( .A(n295), .B(n289), .C(n291), .Z(n288) );
  GTECH_AND2 U234 ( .A(b[5]), .B(a[5]), .Z(n291) );
  GTECH_OR2 U235 ( .A(a[5]), .B(b[5]), .Z(n289) );
  GTECH_OR_NOT U236 ( .A(n290), .B(n295), .Z(n296) );
  GTECH_OR2 U237 ( .A(a[4]), .B(b[4]), .Z(n295) );
  GTECH_AND2 U238 ( .A(b[4]), .B(a[4]), .Z(n290) );
  GTECH_AOI21 U239 ( .A(n343), .B(a[11]), .C(n366), .Z(n354) );
  GTECH_OA21 U240 ( .A(a[11]), .B(n343), .C(b[11]), .Z(n366) );
  GTECH_AO21 U241 ( .A(n350), .B(a[10]), .C(n367), .Z(n343) );
  GTECH_OA21 U242 ( .A(a[10]), .B(n350), .C(b[10]), .Z(n367) );
  GTECH_OAI2N2 U243 ( .A(n271), .B(n273), .C(a[9]), .D(b[9]), .Z(n350) );
  GTECH_NOR2 U244 ( .A(b[9]), .B(a[9]), .Z(n273) );
  GTECH_NOR2 U245 ( .A(b[8]), .B(a[8]), .Z(n271) );
endmodule

