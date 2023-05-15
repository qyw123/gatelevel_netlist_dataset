
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
         n365, n366;

  GTECH_MUX2 U127 ( .A(n266), .B(n267), .S(n268), .Z(sum[9]) );
  GTECH_XOR2 U128 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_XNOR2 U129 ( .A(n269), .B(n271), .Z(n266) );
  GTECH_AO21 U130 ( .A(a[9]), .B(b[9]), .C(n272), .Z(n269) );
  GTECH_NAND2 U131 ( .A(n273), .B(n274), .Z(sum[8]) );
  GTECH_AO21 U132 ( .A(n270), .B(n271), .C(n268), .Z(n273) );
  GTECH_MUX2 U133 ( .A(n275), .B(n276), .S(n277), .Z(sum[7]) );
  GTECH_XOR2 U134 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_OA21 U135 ( .A(a[6]), .B(n280), .C(n281), .Z(n278) );
  GTECH_AO21 U136 ( .A(n280), .B(a[6]), .C(b[6]), .Z(n281) );
  GTECH_XOR2 U137 ( .A(n279), .B(n282), .Z(n275) );
  GTECH_XOR2 U138 ( .A(a[7]), .B(b[7]), .Z(n279) );
  GTECH_MUX2 U139 ( .A(n283), .B(n284), .S(n277), .Z(sum[6]) );
  GTECH_XNOR2 U140 ( .A(n285), .B(n280), .Z(n284) );
  GTECH_AO21 U141 ( .A(n286), .B(n287), .C(n288), .Z(n280) );
  GTECH_XNOR2 U142 ( .A(n285), .B(n289), .Z(n283) );
  GTECH_XNOR2 U143 ( .A(a[6]), .B(b[6]), .Z(n285) );
  GTECH_MUX2 U144 ( .A(n290), .B(n291), .S(n292), .Z(sum[5]) );
  GTECH_AND_NOT U145 ( .A(n286), .B(n288), .Z(n292) );
  GTECH_OAI21 U146 ( .A(n287), .B(n293), .C(n294), .Z(n291) );
  GTECH_AO21 U147 ( .A(n294), .B(n293), .C(n287), .Z(n290) );
  GTECH_NOT U148 ( .A(n277), .Z(n293) );
  GTECH_XOR2 U149 ( .A(n295), .B(n277), .Z(sum[4]) );
  GTECH_MUX2 U150 ( .A(n296), .B(n297), .S(n298), .Z(sum[3]) );
  GTECH_XOR2 U151 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_OA21 U152 ( .A(a[2]), .B(n301), .C(n302), .Z(n299) );
  GTECH_AO21 U153 ( .A(n301), .B(a[2]), .C(b[2]), .Z(n302) );
  GTECH_XOR2 U154 ( .A(n300), .B(n303), .Z(n296) );
  GTECH_XOR2 U155 ( .A(a[3]), .B(b[3]), .Z(n300) );
  GTECH_MUX2 U156 ( .A(n304), .B(n305), .S(n298), .Z(sum[2]) );
  GTECH_XNOR2 U157 ( .A(n306), .B(n301), .Z(n305) );
  GTECH_OAI21 U158 ( .A(n307), .B(n308), .C(n309), .Z(n301) );
  GTECH_XOR2 U159 ( .A(n306), .B(n310), .Z(n304) );
  GTECH_XNOR2 U160 ( .A(n311), .B(n312), .Z(n306) );
  GTECH_MUX2 U161 ( .A(n313), .B(n314), .S(n315), .Z(sum[1]) );
  GTECH_AND_NOT U162 ( .A(n309), .B(n307), .Z(n315) );
  GTECH_AO21 U163 ( .A(n298), .B(n308), .C(n316), .Z(n314) );
  GTECH_OAI21 U164 ( .A(n316), .B(n298), .C(n308), .Z(n313) );
  GTECH_OR_NOT U165 ( .A(n317), .B(b[0]), .Z(n308) );
  GTECH_MUX2 U166 ( .A(n318), .B(n319), .S(n320), .Z(sum[15]) );
  GTECH_XOR2 U167 ( .A(n321), .B(n322), .Z(n319) );
  GTECH_ADD_ABC U168 ( .A(a[14]), .B(n323), .C(b[14]), .COUT(n321) );
  GTECH_XOR2 U169 ( .A(n322), .B(n324), .Z(n318) );
  GTECH_XOR2 U170 ( .A(a[15]), .B(b[15]), .Z(n322) );
  GTECH_MUX2 U171 ( .A(n325), .B(n326), .S(n320), .Z(sum[14]) );
  GTECH_XOR2 U172 ( .A(n323), .B(n327), .Z(n326) );
  GTECH_AOI21 U173 ( .A(n328), .B(n329), .C(n330), .Z(n323) );
  GTECH_XOR2 U174 ( .A(n331), .B(n327), .Z(n325) );
  GTECH_XOR2 U175 ( .A(a[14]), .B(b[14]), .Z(n327) );
  GTECH_AOI21 U176 ( .A(n328), .B(n332), .C(n330), .Z(n331) );
  GTECH_NOT U177 ( .A(n333), .Z(n332) );
  GTECH_MUX2 U178 ( .A(n334), .B(n335), .S(n320), .Z(sum[13]) );
  GTECH_XOR2 U179 ( .A(n336), .B(n329), .Z(n335) );
  GTECH_XNOR2 U180 ( .A(n333), .B(n336), .Z(n334) );
  GTECH_OAI21 U181 ( .A(a[13]), .B(b[13]), .C(n328), .Z(n336) );
  GTECH_NAND2 U182 ( .A(n337), .B(n338), .Z(sum[12]) );
  GTECH_AO21 U183 ( .A(n329), .B(n333), .C(n320), .Z(n337) );
  GTECH_MUX2 U184 ( .A(n339), .B(n340), .S(n268), .Z(sum[11]) );
  GTECH_XOR2 U185 ( .A(n341), .B(n342), .Z(n340) );
  GTECH_OA21 U186 ( .A(a[10]), .B(n343), .C(n344), .Z(n341) );
  GTECH_AO21 U187 ( .A(n343), .B(a[10]), .C(b[10]), .Z(n344) );
  GTECH_XOR2 U188 ( .A(n342), .B(n345), .Z(n339) );
  GTECH_XOR2 U189 ( .A(a[11]), .B(b[11]), .Z(n342) );
  GTECH_MUX2 U190 ( .A(n346), .B(n347), .S(n268), .Z(sum[10]) );
  GTECH_XNOR2 U191 ( .A(n348), .B(n343), .Z(n347) );
  GTECH_OAI2N2 U192 ( .A(n272), .B(n270), .C(a[9]), .D(b[9]), .Z(n343) );
  GTECH_NOT U193 ( .A(n349), .Z(n272) );
  GTECH_XNOR2 U194 ( .A(n348), .B(n350), .Z(n346) );
  GTECH_XNOR2 U195 ( .A(a[10]), .B(b[10]), .Z(n348) );
  GTECH_XOR2 U196 ( .A(n298), .B(n351), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n320), .B(n352), .C(n338), .Z(cout) );
  GTECH_NAND3 U198 ( .A(n329), .B(n333), .C(n320), .Z(n338) );
  GTECH_NAND2 U199 ( .A(b[12]), .B(a[12]), .Z(n329) );
  GTECH_AOI21 U200 ( .A(n324), .B(a[15]), .C(n353), .Z(n352) );
  GTECH_OA21 U201 ( .A(a[15]), .B(n324), .C(b[15]), .Z(n353) );
  GTECH_ADD_ABC U202 ( .A(a[14]), .B(n354), .C(b[14]), .COUT(n324) );
  GTECH_OA21 U203 ( .A(n355), .B(n333), .C(n356), .Z(n354) );
  GTECH_NOT U204 ( .A(n330), .Z(n356) );
  GTECH_NOR2 U205 ( .A(b[13]), .B(a[13]), .Z(n330) );
  GTECH_OR2 U206 ( .A(a[12]), .B(b[12]), .Z(n333) );
  GTECH_NOT U207 ( .A(n328), .Z(n355) );
  GTECH_NAND2 U208 ( .A(a[13]), .B(b[13]), .Z(n328) );
  GTECH_OA21 U209 ( .A(n357), .B(n268), .C(n274), .Z(n320) );
  GTECH_NAND3 U210 ( .A(n270), .B(n271), .C(n268), .Z(n274) );
  GTECH_NAND2 U211 ( .A(b[8]), .B(a[8]), .Z(n270) );
  GTECH_MUX2 U212 ( .A(n358), .B(n295), .S(n277), .Z(n268) );
  GTECH_MUX2 U213 ( .A(n359), .B(n351), .S(n298), .Z(n277) );
  GTECH_NOT U214 ( .A(cin), .Z(n298) );
  GTECH_XOR2 U215 ( .A(a[0]), .B(n360), .Z(n351) );
  GTECH_AOI21 U216 ( .A(n303), .B(a[3]), .C(n361), .Z(n359) );
  GTECH_OA21 U217 ( .A(a[3]), .B(n303), .C(b[3]), .Z(n361) );
  GTECH_OAI21 U218 ( .A(n310), .B(n311), .C(n362), .Z(n303) );
  GTECH_AO21 U219 ( .A(n311), .B(n310), .C(n312), .Z(n362) );
  GTECH_NOT U220 ( .A(b[2]), .Z(n312) );
  GTECH_NOT U221 ( .A(a[2]), .Z(n311) );
  GTECH_OA21 U222 ( .A(n307), .B(n316), .C(n309), .Z(n310) );
  GTECH_NAND2 U223 ( .A(b[1]), .B(a[1]), .Z(n309) );
  GTECH_AND2 U224 ( .A(n360), .B(n317), .Z(n316) );
  GTECH_NOT U225 ( .A(a[0]), .Z(n317) );
  GTECH_NOT U226 ( .A(b[0]), .Z(n360) );
  GTECH_NOR2 U227 ( .A(a[1]), .B(b[1]), .Z(n307) );
  GTECH_OR_NOT U228 ( .A(n287), .B(n294), .Z(n295) );
  GTECH_AND2 U229 ( .A(b[4]), .B(a[4]), .Z(n287) );
  GTECH_AOI21 U230 ( .A(n282), .B(a[7]), .C(n363), .Z(n358) );
  GTECH_OA21 U231 ( .A(a[7]), .B(n282), .C(b[7]), .Z(n363) );
  GTECH_AO21 U232 ( .A(n289), .B(a[6]), .C(n364), .Z(n282) );
  GTECH_OA21 U233 ( .A(a[6]), .B(n289), .C(b[6]), .Z(n364) );
  GTECH_AO21 U234 ( .A(n294), .B(n286), .C(n288), .Z(n289) );
  GTECH_AND2 U235 ( .A(b[5]), .B(a[5]), .Z(n288) );
  GTECH_OR2 U236 ( .A(a[5]), .B(b[5]), .Z(n286) );
  GTECH_OR2 U237 ( .A(a[4]), .B(b[4]), .Z(n294) );
  GTECH_AOI21 U238 ( .A(n345), .B(a[11]), .C(n365), .Z(n357) );
  GTECH_OA21 U239 ( .A(a[11]), .B(n345), .C(b[11]), .Z(n365) );
  GTECH_AO21 U240 ( .A(n350), .B(a[10]), .C(n366), .Z(n345) );
  GTECH_OA21 U241 ( .A(a[10]), .B(n350), .C(b[10]), .Z(n366) );
  GTECH_AO22 U242 ( .A(n271), .B(n349), .C(a[9]), .D(b[9]), .Z(n350) );
  GTECH_OR2 U243 ( .A(b[9]), .B(a[9]), .Z(n349) );
  GTECH_OR2 U244 ( .A(a[8]), .B(b[8]), .Z(n271) );
endmodule

