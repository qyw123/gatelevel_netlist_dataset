
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
         n369, n370, n371;

  GTECH_MUX2 U131 ( .A(n270), .B(n271), .S(n272), .Z(sum[9]) );
  GTECH_AOI21 U132 ( .A(n273), .B(n274), .C(n275), .Z(n272) );
  GTECH_XOR2 U133 ( .A(b[9]), .B(a[9]), .Z(n271) );
  GTECH_OR_NOT U134 ( .A(n276), .B(n277), .Z(n270) );
  GTECH_XOR2 U135 ( .A(n278), .B(n279), .Z(sum[8]) );
  GTECH_MUX2 U136 ( .A(n280), .B(n281), .S(n282), .Z(sum[7]) );
  GTECH_XOR2 U137 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_AOI21 U138 ( .A(n285), .B(n286), .C(n287), .Z(n284) );
  GTECH_XOR2 U139 ( .A(n283), .B(n288), .Z(n280) );
  GTECH_XOR2 U140 ( .A(n289), .B(b[7]), .Z(n283) );
  GTECH_MUX2 U141 ( .A(n290), .B(n291), .S(n292), .Z(sum[6]) );
  GTECH_XOR2 U142 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_XOR2 U143 ( .A(n293), .B(n285), .Z(n290) );
  GTECH_NAND2 U144 ( .A(n295), .B(n296), .Z(n285) );
  GTECH_NAND3 U145 ( .A(b[4]), .B(n297), .C(a[4]), .Z(n295) );
  GTECH_AND_NOT U146 ( .A(n286), .B(n287), .Z(n293) );
  GTECH_XOR2 U147 ( .A(n298), .B(n299), .Z(sum[5]) );
  GTECH_NAND2 U148 ( .A(n296), .B(n297), .Z(n299) );
  GTECH_NOT U149 ( .A(n300), .Z(n298) );
  GTECH_ADD_ABC U150 ( .A(a[4]), .B(n301), .C(b[4]), .COUT(n300) );
  GTECH_MUX2 U151 ( .A(n302), .B(n303), .S(cin), .Z(n301) );
  GTECH_OAI21 U152 ( .A(n304), .B(n305), .C(n306), .Z(n303) );
  GTECH_AO21 U153 ( .A(n305), .B(n304), .C(n307), .Z(n306) );
  GTECH_XOR2 U154 ( .A(n292), .B(n308), .Z(sum[4]) );
  GTECH_MUX2 U155 ( .A(n309), .B(n310), .S(cin), .Z(sum[3]) );
  GTECH_XOR2 U156 ( .A(n311), .B(n304), .Z(n310) );
  GTECH_XOR2 U157 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_AOI21 U158 ( .A(n313), .B(n314), .C(n315), .Z(n312) );
  GTECH_XOR2 U159 ( .A(n305), .B(b[3]), .Z(n311) );
  GTECH_MUX2 U160 ( .A(n316), .B(n317), .S(cin), .Z(sum[2]) );
  GTECH_XOR2 U161 ( .A(n318), .B(n319), .Z(n317) );
  GTECH_XOR2 U162 ( .A(n318), .B(n313), .Z(n316) );
  GTECH_AO22 U163 ( .A(a[1]), .B(b[1]), .C(n320), .D(n321), .Z(n313) );
  GTECH_AND_NOT U164 ( .A(n314), .B(n315), .Z(n318) );
  GTECH_MUX2 U165 ( .A(n322), .B(n323), .S(n324), .Z(sum[1]) );
  GTECH_XOR2 U166 ( .A(b[1]), .B(a[1]), .Z(n324) );
  GTECH_OAI21 U167 ( .A(cin), .B(n321), .C(n325), .Z(n323) );
  GTECH_AO21 U168 ( .A(n325), .B(cin), .C(n321), .Z(n322) );
  GTECH_AND2 U169 ( .A(a[0]), .B(b[0]), .Z(n321) );
  GTECH_MUX2 U170 ( .A(n326), .B(n327), .S(n328), .Z(sum[15]) );
  GTECH_XOR2 U171 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_AOI2N2 U172 ( .A(a[14]), .B(b[14]), .C(n331), .D(n332), .Z(n330) );
  GTECH_XOR2 U173 ( .A(n329), .B(n333), .Z(n326) );
  GTECH_XOR2 U174 ( .A(n334), .B(b[15]), .Z(n329) );
  GTECH_MUX2 U175 ( .A(n335), .B(n336), .S(n328), .Z(sum[14]) );
  GTECH_XOR2 U176 ( .A(n332), .B(n337), .Z(n336) );
  GTECH_AOI21 U177 ( .A(n338), .B(n339), .C(n340), .Z(n332) );
  GTECH_XOR2 U178 ( .A(n341), .B(n337), .Z(n335) );
  GTECH_AO21 U179 ( .A(a[14]), .B(b[14]), .C(n331), .Z(n337) );
  GTECH_MUX2 U180 ( .A(n342), .B(n343), .S(n344), .Z(sum[13]) );
  GTECH_AOI21 U181 ( .A(n345), .B(n346), .C(n339), .Z(n344) );
  GTECH_XOR2 U182 ( .A(b[13]), .B(a[13]), .Z(n343) );
  GTECH_OR_NOT U183 ( .A(n340), .B(n338), .Z(n342) );
  GTECH_OAI21 U184 ( .A(n347), .B(n328), .C(n348), .Z(sum[12]) );
  GTECH_MUX2 U185 ( .A(n349), .B(n350), .S(n279), .Z(sum[11]) );
  GTECH_XOR2 U186 ( .A(n351), .B(n352), .Z(n350) );
  GTECH_AOI21 U187 ( .A(n353), .B(n354), .C(n355), .Z(n352) );
  GTECH_XOR2 U188 ( .A(n351), .B(n356), .Z(n349) );
  GTECH_XOR2 U189 ( .A(n357), .B(b[11]), .Z(n351) );
  GTECH_MUX2 U190 ( .A(n358), .B(n359), .S(n360), .Z(sum[10]) );
  GTECH_AOI21 U191 ( .A(n273), .B(n361), .C(n353), .Z(n360) );
  GTECH_AO21 U192 ( .A(n277), .B(n275), .C(n276), .Z(n353) );
  GTECH_NOT U193 ( .A(n279), .Z(n273) );
  GTECH_XOR2 U194 ( .A(b[10]), .B(a[10]), .Z(n359) );
  GTECH_OR_NOT U195 ( .A(n355), .B(n354), .Z(n358) );
  GTECH_XOR2 U196 ( .A(cin), .B(n302), .Z(sum[0]) );
  GTECH_OAI21 U197 ( .A(n362), .B(n328), .C(n348), .Z(cout) );
  GTECH_OR_NOT U198 ( .A(n345), .B(n347), .Z(n348) );
  GTECH_AND_NOT U199 ( .A(n346), .B(n339), .Z(n347) );
  GTECH_AND2 U200 ( .A(b[12]), .B(a[12]), .Z(n339) );
  GTECH_NOT U201 ( .A(n328), .Z(n345) );
  GTECH_MUX2 U202 ( .A(n363), .B(n278), .S(n279), .Z(n328) );
  GTECH_MUX2 U203 ( .A(n364), .B(n365), .S(n282), .Z(n279) );
  GTECH_NOT U204 ( .A(n292), .Z(n282) );
  GTECH_MUX2 U205 ( .A(n302), .B(n366), .S(cin), .Z(n292) );
  GTECH_OAI22 U206 ( .A(n304), .B(n305), .C(n367), .D(n307), .Z(n366) );
  GTECH_NOT U207 ( .A(b[3]), .Z(n307) );
  GTECH_AND2 U208 ( .A(n304), .B(n305), .Z(n367) );
  GTECH_NOT U209 ( .A(a[3]), .Z(n305) );
  GTECH_AOI21 U210 ( .A(n314), .B(n319), .C(n315), .Z(n304) );
  GTECH_AND2 U211 ( .A(b[2]), .B(a[2]), .Z(n315) );
  GTECH_AO22 U212 ( .A(a[1]), .B(b[1]), .C(n325), .D(n320), .Z(n319) );
  GTECH_OR2 U213 ( .A(a[1]), .B(b[1]), .Z(n320) );
  GTECH_OR2 U214 ( .A(a[0]), .B(b[0]), .Z(n325) );
  GTECH_OR2 U215 ( .A(a[2]), .B(b[2]), .Z(n314) );
  GTECH_XOR2 U216 ( .A(a[0]), .B(b[0]), .Z(n302) );
  GTECH_NOT U217 ( .A(n308), .Z(n365) );
  GTECH_XOR2 U218 ( .A(a[4]), .B(b[4]), .Z(n308) );
  GTECH_AOI2N2 U219 ( .A(n368), .B(b[7]), .C(n288), .D(n289), .Z(n364) );
  GTECH_NAND2 U220 ( .A(n289), .B(n288), .Z(n368) );
  GTECH_AOI21 U221 ( .A(n294), .B(n286), .C(n287), .Z(n288) );
  GTECH_AND2 U222 ( .A(b[6]), .B(a[6]), .Z(n287) );
  GTECH_OR2 U223 ( .A(b[6]), .B(a[6]), .Z(n286) );
  GTECH_NAND2 U224 ( .A(n369), .B(n296), .Z(n294) );
  GTECH_NAND2 U225 ( .A(b[5]), .B(a[5]), .Z(n296) );
  GTECH_OAI21 U226 ( .A(a[4]), .B(b[4]), .C(n297), .Z(n369) );
  GTECH_OR2 U227 ( .A(a[5]), .B(b[5]), .Z(n297) );
  GTECH_NOT U228 ( .A(a[7]), .Z(n289) );
  GTECH_OR_NOT U229 ( .A(n275), .B(n274), .Z(n278) );
  GTECH_AND2 U230 ( .A(a[8]), .B(b[8]), .Z(n275) );
  GTECH_AOI2N2 U231 ( .A(n370), .B(b[11]), .C(n356), .D(n357), .Z(n363) );
  GTECH_NAND2 U232 ( .A(n357), .B(n356), .Z(n370) );
  GTECH_AOI21 U233 ( .A(n361), .B(n354), .C(n355), .Z(n356) );
  GTECH_AND2 U234 ( .A(a[10]), .B(b[10]), .Z(n355) );
  GTECH_OR2 U235 ( .A(a[10]), .B(b[10]), .Z(n354) );
  GTECH_AO21 U236 ( .A(n274), .B(n277), .C(n276), .Z(n361) );
  GTECH_AND2 U237 ( .A(a[9]), .B(b[9]), .Z(n276) );
  GTECH_OR2 U238 ( .A(b[9]), .B(a[9]), .Z(n277) );
  GTECH_OR2 U239 ( .A(b[8]), .B(a[8]), .Z(n274) );
  GTECH_NOT U240 ( .A(a[11]), .Z(n357) );
  GTECH_AOI2N2 U241 ( .A(n371), .B(b[15]), .C(n333), .D(n334), .Z(n362) );
  GTECH_NAND2 U242 ( .A(n334), .B(n333), .Z(n371) );
  GTECH_AOI2N2 U243 ( .A(a[14]), .B(b[14]), .C(n331), .D(n341), .Z(n333) );
  GTECH_AOI21 U244 ( .A(n346), .B(n338), .C(n340), .Z(n341) );
  GTECH_AND2 U245 ( .A(b[13]), .B(a[13]), .Z(n340) );
  GTECH_OR2 U246 ( .A(a[13]), .B(b[13]), .Z(n338) );
  GTECH_OR2 U247 ( .A(b[12]), .B(a[12]), .Z(n346) );
  GTECH_NOR2 U248 ( .A(a[14]), .B(b[14]), .Z(n331) );
  GTECH_NOT U249 ( .A(a[15]), .Z(n334) );
endmodule

