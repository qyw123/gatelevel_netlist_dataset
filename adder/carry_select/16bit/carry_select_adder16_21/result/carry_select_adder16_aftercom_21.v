
module carry_select_adder16 ( a, b, cin, cout, sum );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;
  wire   n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366;

  GTECH_OAI22 U129 ( .A(n268), .B(n269), .C(n270), .D(n271), .Z(sum[9]) );
  GTECH_XOR2 U130 ( .A(n272), .B(n273), .Z(n271) );
  GTECH_XOR2 U131 ( .A(n273), .B(n274), .Z(n268) );
  GTECH_OAI21 U132 ( .A(n275), .B(n276), .C(n277), .Z(n273) );
  GTECH_XNOR2 U133 ( .A(n278), .B(n270), .Z(sum[8]) );
  GTECH_OAI22 U134 ( .A(n279), .B(n280), .C(n281), .D(n282), .Z(sum[7]) );
  GTECH_XNOR2 U135 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_AOI21 U136 ( .A(n285), .B(n286), .C(n287), .Z(n283) );
  GTECH_XOR2 U137 ( .A(n288), .B(n284), .Z(n279) );
  GTECH_XNOR2 U138 ( .A(a[7]), .B(b[7]), .Z(n284) );
  GTECH_OAI22 U139 ( .A(n289), .B(n280), .C(n290), .D(n282), .Z(sum[6]) );
  GTECH_XOR2 U140 ( .A(n291), .B(n286), .Z(n290) );
  GTECH_AO21 U141 ( .A(n292), .B(n293), .C(n294), .Z(n286) );
  GTECH_XOR2 U142 ( .A(n295), .B(n291), .Z(n289) );
  GTECH_OR_NOT U143 ( .A(n287), .B(n285), .Z(n291) );
  GTECH_OAI2N2 U144 ( .A(n296), .B(n297), .C(n298), .D(n297), .Z(sum[5]) );
  GTECH_AO21 U145 ( .A(n299), .B(n282), .C(n293), .Z(n298) );
  GTECH_OR_NOT U146 ( .A(n294), .B(n292), .Z(n297) );
  GTECH_OA21 U147 ( .A(n293), .B(n282), .C(n299), .Z(n296) );
  GTECH_XOR2 U148 ( .A(n300), .B(n282), .Z(sum[4]) );
  GTECH_OAI22 U149 ( .A(n301), .B(n302), .C(cin), .D(n303), .Z(sum[3]) );
  GTECH_XNOR2 U150 ( .A(n304), .B(n305), .Z(n303) );
  GTECH_AOI21 U151 ( .A(n306), .B(n307), .C(n308), .Z(n304) );
  GTECH_XOR2 U152 ( .A(n309), .B(n305), .Z(n302) );
  GTECH_XNOR2 U153 ( .A(a[3]), .B(b[3]), .Z(n305) );
  GTECH_OAI22 U154 ( .A(n301), .B(n310), .C(cin), .D(n311), .Z(sum[2]) );
  GTECH_XOR2 U155 ( .A(n312), .B(n307), .Z(n311) );
  GTECH_AO21 U156 ( .A(n313), .B(n314), .C(n315), .Z(n307) );
  GTECH_XOR2 U157 ( .A(n316), .B(n312), .Z(n310) );
  GTECH_OR_NOT U158 ( .A(n308), .B(n306), .Z(n312) );
  GTECH_OAI2N2 U159 ( .A(n317), .B(n318), .C(n319), .D(n318), .Z(sum[1]) );
  GTECH_AO21 U160 ( .A(n320), .B(cin), .C(n314), .Z(n319) );
  GTECH_OR_NOT U161 ( .A(n315), .B(n313), .Z(n318) );
  GTECH_OA21 U162 ( .A(cin), .B(n314), .C(n320), .Z(n317) );
  GTECH_AND2 U163 ( .A(a[0]), .B(b[0]), .Z(n314) );
  GTECH_OAI22 U164 ( .A(n321), .B(n322), .C(n323), .D(n324), .Z(sum[15]) );
  GTECH_XNOR2 U165 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_AOI21 U166 ( .A(n327), .B(n328), .C(n329), .Z(n325) );
  GTECH_XOR2 U167 ( .A(n330), .B(n326), .Z(n321) );
  GTECH_XNOR2 U168 ( .A(a[15]), .B(b[15]), .Z(n326) );
  GTECH_OAI22 U169 ( .A(n331), .B(n322), .C(n332), .D(n324), .Z(sum[14]) );
  GTECH_XOR2 U170 ( .A(n333), .B(n328), .Z(n332) );
  GTECH_AO21 U171 ( .A(n334), .B(n335), .C(n336), .Z(n328) );
  GTECH_XOR2 U172 ( .A(n333), .B(n337), .Z(n331) );
  GTECH_OR_NOT U173 ( .A(n329), .B(n327), .Z(n333) );
  GTECH_OAI21 U174 ( .A(n338), .B(n339), .C(n340), .Z(sum[13]) );
  GTECH_OAI21 U175 ( .A(n336), .B(n341), .C(n338), .Z(n340) );
  GTECH_NOT U176 ( .A(n334), .Z(n341) );
  GTECH_XNOR2 U177 ( .A(a[13]), .B(b[13]), .Z(n339) );
  GTECH_AO21 U178 ( .A(n342), .B(n324), .C(n335), .Z(n338) );
  GTECH_NAND2 U179 ( .A(n343), .B(n344), .Z(sum[12]) );
  GTECH_OAI21 U180 ( .A(n335), .B(n345), .C(n324), .Z(n343) );
  GTECH_OAI22 U181 ( .A(n346), .B(n269), .C(n347), .D(n270), .Z(sum[11]) );
  GTECH_XNOR2 U182 ( .A(n348), .B(n349), .Z(n347) );
  GTECH_AOI21 U183 ( .A(n350), .B(n351), .C(n352), .Z(n348) );
  GTECH_XOR2 U184 ( .A(n353), .B(n349), .Z(n346) );
  GTECH_XNOR2 U185 ( .A(a[11]), .B(b[11]), .Z(n349) );
  GTECH_OAI22 U186 ( .A(n354), .B(n269), .C(n355), .D(n270), .Z(sum[10]) );
  GTECH_XOR2 U187 ( .A(n356), .B(n351), .Z(n355) );
  GTECH_OAI2N2 U188 ( .A(n275), .B(n276), .C(n277), .D(n272), .Z(n351) );
  GTECH_XOR2 U189 ( .A(n356), .B(n357), .Z(n354) );
  GTECH_OR_NOT U190 ( .A(n352), .B(n350), .Z(n356) );
  GTECH_XNOR2 U191 ( .A(cin), .B(n358), .Z(sum[0]) );
  GTECH_OAI21 U192 ( .A(n359), .B(n322), .C(n344), .Z(cout) );
  GTECH_OR3 U193 ( .A(n345), .B(n335), .C(n324), .Z(n344) );
  GTECH_AND2 U194 ( .A(a[12]), .B(b[12]), .Z(n335) );
  GTECH_NOT U195 ( .A(n342), .Z(n345) );
  GTECH_NOT U196 ( .A(n324), .Z(n322) );
  GTECH_AOI2N2 U197 ( .A(n278), .B(n269), .C(n360), .D(n269), .Z(n324) );
  GTECH_OA21 U198 ( .A(a[11]), .B(n353), .C(n361), .Z(n360) );
  GTECH_AO21 U199 ( .A(n353), .B(a[11]), .C(b[11]), .Z(n361) );
  GTECH_AO21 U200 ( .A(n357), .B(n350), .C(n352), .Z(n353) );
  GTECH_AND2 U201 ( .A(a[10]), .B(b[10]), .Z(n352) );
  GTECH_OR2 U202 ( .A(a[10]), .B(b[10]), .Z(n350) );
  GTECH_OAI2N2 U203 ( .A(n275), .B(n276), .C(n277), .D(n274), .Z(n357) );
  GTECH_NAND2 U204 ( .A(n276), .B(n275), .Z(n277) );
  GTECH_NOT U205 ( .A(b[9]), .Z(n276) );
  GTECH_NOT U206 ( .A(a[9]), .Z(n275) );
  GTECH_NOT U207 ( .A(n270), .Z(n269) );
  GTECH_OA22 U208 ( .A(n362), .B(n280), .C(n300), .D(n282), .Z(n270) );
  GTECH_AND_NOT U209 ( .A(n299), .B(n293), .Z(n300) );
  GTECH_AND2 U210 ( .A(a[4]), .B(b[4]), .Z(n293) );
  GTECH_NOT U211 ( .A(n282), .Z(n280) );
  GTECH_AOI2N2 U212 ( .A(n301), .B(n358), .C(n363), .D(n301), .Z(n282) );
  GTECH_OA21 U213 ( .A(a[3]), .B(n309), .C(n364), .Z(n363) );
  GTECH_AO21 U214 ( .A(n309), .B(a[3]), .C(b[3]), .Z(n364) );
  GTECH_AO21 U215 ( .A(n316), .B(n306), .C(n308), .Z(n309) );
  GTECH_AND2 U216 ( .A(a[2]), .B(b[2]), .Z(n308) );
  GTECH_OR2 U217 ( .A(a[2]), .B(b[2]), .Z(n306) );
  GTECH_AO21 U218 ( .A(n320), .B(n313), .C(n315), .Z(n316) );
  GTECH_AND2 U219 ( .A(a[1]), .B(b[1]), .Z(n315) );
  GTECH_OR2 U220 ( .A(a[1]), .B(b[1]), .Z(n313) );
  GTECH_OR2 U221 ( .A(a[0]), .B(b[0]), .Z(n320) );
  GTECH_XNOR2 U222 ( .A(a[0]), .B(b[0]), .Z(n358) );
  GTECH_NOT U223 ( .A(cin), .Z(n301) );
  GTECH_OA21 U224 ( .A(a[7]), .B(n288), .C(n365), .Z(n362) );
  GTECH_AO21 U225 ( .A(n288), .B(a[7]), .C(b[7]), .Z(n365) );
  GTECH_AO21 U226 ( .A(n295), .B(n285), .C(n287), .Z(n288) );
  GTECH_AND2 U227 ( .A(a[6]), .B(b[6]), .Z(n287) );
  GTECH_OR2 U228 ( .A(a[6]), .B(b[6]), .Z(n285) );
  GTECH_AO21 U229 ( .A(n299), .B(n292), .C(n294), .Z(n295) );
  GTECH_AND2 U230 ( .A(a[5]), .B(b[5]), .Z(n294) );
  GTECH_OR2 U231 ( .A(a[5]), .B(b[5]), .Z(n292) );
  GTECH_OR2 U232 ( .A(a[4]), .B(b[4]), .Z(n299) );
  GTECH_OR_NOT U233 ( .A(n272), .B(n274), .Z(n278) );
  GTECH_OR2 U234 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_AND2 U235 ( .A(a[8]), .B(b[8]), .Z(n272) );
  GTECH_AOI21 U236 ( .A(n330), .B(a[15]), .C(n366), .Z(n359) );
  GTECH_OA21 U237 ( .A(a[15]), .B(n330), .C(b[15]), .Z(n366) );
  GTECH_AO21 U238 ( .A(n327), .B(n337), .C(n329), .Z(n330) );
  GTECH_AND2 U239 ( .A(a[14]), .B(b[14]), .Z(n329) );
  GTECH_AO21 U240 ( .A(n334), .B(n342), .C(n336), .Z(n337) );
  GTECH_AND2 U241 ( .A(b[13]), .B(a[13]), .Z(n336) );
  GTECH_OR2 U242 ( .A(b[12]), .B(a[12]), .Z(n342) );
  GTECH_OR2 U243 ( .A(b[13]), .B(a[13]), .Z(n334) );
  GTECH_OR2 U244 ( .A(a[14]), .B(b[14]), .Z(n327) );
endmodule
