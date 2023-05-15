
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
         n354, n355, n356, n357, n358;

  GTECH_MUX2 U127 ( .A(n266), .B(n267), .S(n268), .Z(sum[9]) );
  GTECH_XNOR2 U128 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_XNOR2 U129 ( .A(n271), .B(n269), .Z(n266) );
  GTECH_AOI21 U130 ( .A(a[9]), .B(b[9]), .C(n272), .Z(n269) );
  GTECH_XNOR2 U131 ( .A(n273), .B(n274), .Z(sum[8]) );
  GTECH_MUX2 U132 ( .A(n275), .B(n276), .S(n277), .Z(sum[7]) );
  GTECH_XOR2 U133 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_XOR2 U134 ( .A(n278), .B(n280), .Z(n275) );
  GTECH_OAI21 U135 ( .A(n281), .B(n282), .C(n283), .Z(n280) );
  GTECH_XOR2 U136 ( .A(a[7]), .B(b[7]), .Z(n278) );
  GTECH_MUX2 U137 ( .A(n284), .B(n285), .S(n277), .Z(sum[6]) );
  GTECH_XNOR2 U138 ( .A(n286), .B(n287), .Z(n285) );
  GTECH_XNOR2 U139 ( .A(n286), .B(n281), .Z(n284) );
  GTECH_AOI21 U140 ( .A(n288), .B(n289), .C(n290), .Z(n281) );
  GTECH_AND_NOT U141 ( .A(n283), .B(n282), .Z(n286) );
  GTECH_XOR2 U142 ( .A(n291), .B(n292), .Z(sum[5]) );
  GTECH_AOI21 U143 ( .A(n277), .B(n293), .C(n289), .Z(n292) );
  GTECH_OR_NOT U144 ( .A(n290), .B(n288), .Z(n291) );
  GTECH_XNOR2 U145 ( .A(n277), .B(n294), .Z(sum[4]) );
  GTECH_MUX2 U146 ( .A(n295), .B(n296), .S(n297), .Z(sum[3]) );
  GTECH_XNOR2 U147 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_AOI21 U148 ( .A(n300), .B(n301), .C(n302), .Z(n299) );
  GTECH_XNOR2 U149 ( .A(n298), .B(n303), .Z(n295) );
  GTECH_XOR2 U150 ( .A(a[3]), .B(b[3]), .Z(n298) );
  GTECH_MUX2 U151 ( .A(n304), .B(n305), .S(n297), .Z(sum[2]) );
  GTECH_XOR2 U152 ( .A(n306), .B(n300), .Z(n305) );
  GTECH_OAI21 U153 ( .A(n307), .B(n308), .C(n309), .Z(n300) );
  GTECH_XOR2 U154 ( .A(n306), .B(n310), .Z(n304) );
  GTECH_AND_NOT U155 ( .A(n301), .B(n302), .Z(n306) );
  GTECH_MUX2 U156 ( .A(n311), .B(n312), .S(n313), .Z(sum[1]) );
  GTECH_AND_NOT U157 ( .A(n309), .B(n307), .Z(n313) );
  GTECH_AO21 U158 ( .A(n297), .B(n308), .C(n314), .Z(n312) );
  GTECH_OAI21 U159 ( .A(n314), .B(n297), .C(n308), .Z(n311) );
  GTECH_MUX2 U160 ( .A(n315), .B(n316), .S(n317), .Z(sum[15]) );
  GTECH_XOR2 U161 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_ADD_ABC U162 ( .A(a[14]), .B(n320), .C(b[14]), .COUT(n318) );
  GTECH_XOR2 U163 ( .A(n319), .B(n321), .Z(n315) );
  GTECH_XOR2 U164 ( .A(a[15]), .B(b[15]), .Z(n319) );
  GTECH_MUX2 U165 ( .A(n322), .B(n323), .S(n317), .Z(sum[14]) );
  GTECH_XOR2 U166 ( .A(n320), .B(n324), .Z(n323) );
  GTECH_AOI21 U167 ( .A(n325), .B(n326), .C(n327), .Z(n320) );
  GTECH_XOR2 U168 ( .A(n328), .B(n324), .Z(n322) );
  GTECH_XOR2 U169 ( .A(a[14]), .B(b[14]), .Z(n324) );
  GTECH_MUX2 U170 ( .A(n329), .B(n330), .S(n317), .Z(sum[13]) );
  GTECH_XOR2 U171 ( .A(n326), .B(n331), .Z(n330) );
  GTECH_XOR2 U172 ( .A(n332), .B(n331), .Z(n329) );
  GTECH_OAI21 U173 ( .A(a[13]), .B(b[13]), .C(n325), .Z(n331) );
  GTECH_OR_NOT U174 ( .A(n333), .B(n334), .Z(sum[12]) );
  GTECH_AO21 U175 ( .A(n326), .B(n335), .C(n317), .Z(n334) );
  GTECH_MUX2 U176 ( .A(n336), .B(n337), .S(n274), .Z(sum[11]) );
  GTECH_XOR2 U177 ( .A(n338), .B(n339), .Z(n337) );
  GTECH_XOR2 U178 ( .A(n338), .B(n340), .Z(n336) );
  GTECH_OAI21 U179 ( .A(n341), .B(n342), .C(n343), .Z(n340) );
  GTECH_XOR2 U180 ( .A(a[11]), .B(b[11]), .Z(n338) );
  GTECH_MUX2 U181 ( .A(n344), .B(n345), .S(n274), .Z(sum[10]) );
  GTECH_NOT U182 ( .A(n268), .Z(n274) );
  GTECH_XNOR2 U183 ( .A(n346), .B(n347), .Z(n345) );
  GTECH_XNOR2 U184 ( .A(n346), .B(n341), .Z(n344) );
  GTECH_AOI2N2 U185 ( .A(a[9]), .B(b[9]), .C(n272), .D(n270), .Z(n341) );
  GTECH_AND_NOT U186 ( .A(n343), .B(n342), .Z(n346) );
  GTECH_XOR2 U187 ( .A(cin), .B(n348), .Z(sum[0]) );
  GTECH_AO21 U188 ( .A(n349), .B(n350), .C(n333), .Z(cout) );
  GTECH_AND3 U189 ( .A(n335), .B(n326), .C(n317), .Z(n333) );
  GTECH_NAND2 U190 ( .A(a[12]), .B(b[12]), .Z(n326) );
  GTECH_NOT U191 ( .A(n332), .Z(n335) );
  GTECH_NOT U192 ( .A(n317), .Z(n350) );
  GTECH_MUX2 U193 ( .A(n351), .B(n273), .S(n268), .Z(n317) );
  GTECH_MUX2 U194 ( .A(n294), .B(n352), .S(n277), .Z(n268) );
  GTECH_MUX2 U195 ( .A(n353), .B(n348), .S(n297), .Z(n277) );
  GTECH_NOT U196 ( .A(cin), .Z(n297) );
  GTECH_AND_NOT U197 ( .A(n308), .B(n314), .Z(n348) );
  GTECH_NAND2 U198 ( .A(b[0]), .B(a[0]), .Z(n308) );
  GTECH_OA22 U199 ( .A(b[3]), .B(n354), .C(a[3]), .D(n355), .Z(n353) );
  GTECH_AND2 U200 ( .A(a[3]), .B(n355), .Z(n354) );
  GTECH_NOT U201 ( .A(n303), .Z(n355) );
  GTECH_AOI21 U202 ( .A(n301), .B(n310), .C(n302), .Z(n303) );
  GTECH_AND2 U203 ( .A(b[2]), .B(a[2]), .Z(n302) );
  GTECH_OAI21 U204 ( .A(n314), .B(n307), .C(n309), .Z(n310) );
  GTECH_NAND2 U205 ( .A(b[1]), .B(a[1]), .Z(n309) );
  GTECH_NOR2 U206 ( .A(a[1]), .B(b[1]), .Z(n307) );
  GTECH_NOR2 U207 ( .A(a[0]), .B(b[0]), .Z(n314) );
  GTECH_OR2 U208 ( .A(a[2]), .B(b[2]), .Z(n301) );
  GTECH_AOI22 U209 ( .A(n279), .B(a[7]), .C(n356), .D(b[7]), .Z(n352) );
  GTECH_OR2 U210 ( .A(n279), .B(a[7]), .Z(n356) );
  GTECH_OAI21 U211 ( .A(n282), .B(n287), .C(n283), .Z(n279) );
  GTECH_NAND2 U212 ( .A(a[6]), .B(b[6]), .Z(n283) );
  GTECH_AOI21 U213 ( .A(n293), .B(n288), .C(n290), .Z(n287) );
  GTECH_AND2 U214 ( .A(b[5]), .B(a[5]), .Z(n290) );
  GTECH_OR2 U215 ( .A(a[5]), .B(b[5]), .Z(n288) );
  GTECH_NOR2 U216 ( .A(b[6]), .B(a[6]), .Z(n282) );
  GTECH_OR_NOT U217 ( .A(n289), .B(n293), .Z(n294) );
  GTECH_OR2 U218 ( .A(b[4]), .B(a[4]), .Z(n293) );
  GTECH_AND2 U219 ( .A(b[4]), .B(a[4]), .Z(n289) );
  GTECH_OR_NOT U220 ( .A(n271), .B(n270), .Z(n273) );
  GTECH_NAND2 U221 ( .A(b[8]), .B(a[8]), .Z(n270) );
  GTECH_AOI22 U222 ( .A(n339), .B(a[11]), .C(n357), .D(b[11]), .Z(n351) );
  GTECH_OR2 U223 ( .A(n339), .B(a[11]), .Z(n357) );
  GTECH_OAI21 U224 ( .A(n342), .B(n347), .C(n343), .Z(n339) );
  GTECH_NAND2 U225 ( .A(b[10]), .B(a[10]), .Z(n343) );
  GTECH_AOI2N2 U226 ( .A(a[9]), .B(b[9]), .C(n271), .D(n272), .Z(n347) );
  GTECH_NOR2 U227 ( .A(b[9]), .B(a[9]), .Z(n272) );
  GTECH_NOR2 U228 ( .A(b[8]), .B(a[8]), .Z(n271) );
  GTECH_NOR2 U229 ( .A(a[10]), .B(b[10]), .Z(n342) );
  GTECH_AO22 U230 ( .A(n321), .B(a[15]), .C(n358), .D(b[15]), .Z(n349) );
  GTECH_OR2 U231 ( .A(n321), .B(a[15]), .Z(n358) );
  GTECH_ADD_ABC U232 ( .A(a[14]), .B(n328), .C(b[14]), .COUT(n321) );
  GTECH_AOI21 U233 ( .A(n325), .B(n332), .C(n327), .Z(n328) );
  GTECH_NOR2 U234 ( .A(b[13]), .B(a[13]), .Z(n327) );
  GTECH_NOR2 U235 ( .A(b[12]), .B(a[12]), .Z(n332) );
  GTECH_NAND2 U236 ( .A(a[13]), .B(b[13]), .Z(n325) );
endmodule

