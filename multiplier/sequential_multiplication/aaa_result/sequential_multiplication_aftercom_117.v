
module sequential_multiplication ( a, b, op, load, reset, clk, valid );
  input [7:0] a;
  input [7:0] b;
  output [15:0] op;
  input load, reset, clk;
  output valid;
  wire   u1_N9, u1_N8, u1_N7, u1_N6, u1_N5, u1_N4, u1_N3, u1_N2, u1_N1, u2_N11,
         u2_N10, u2_N9, u2_N8, u2_N7, u2_N6, u2_N5, u2_N4, u5_N68, u5_N67,
         u5_N66, u5_N65, u5_N64, u5_N63, u5_N62, u5_N61, u5_N60, u5_N59,
         u5_N58, u5_N57, u5_N56, u5_N55, u5_N54, u5_N53, u5_N52, u5_N51,
         u5_N50, u5_N49, u5_N48, u5_N47, u5_N46, u5_N45, u5_N44, u5_N43,
         u5_N42, u5_N41, u5_N40, u5_N39, u5_N38, u5_N37, u5_N36, u5_N35,
         u5_i_0_, u5_i_1_, u5_i_2_, u5_i_3_, u5_i_4_, u5_i_5_, u5_i_6_,
         u5_i_7_, u5_i_8_, u5_i_9_, u5_i_10_, u5_i_11_, u5_i_12_, u5_i_13_,
         u5_i_14_, u5_i_15_, u5_i_16_, u5_i_17_, u5_i_18_, u5_i_19_, u5_i_20_,
         u5_i_21_, u5_i_22_, u5_i_23_, u5_i_24_, u5_i_25_, u5_i_26_, u5_i_27_,
         u5_i_28_, u5_i_29_, u5_i_30_, u5_i_31_, u4_N13, u4_N10, u4_N9, u4_N8,
         u4_N7, u4_N6, u4_N5, u4_N4, u4_N3, e1_N14, e1_N11, n12, n13, n14, n15,
         n16, n17, n18, n68, n69, n70, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357;
  wire   [7:0] x;
  wire   [7:0] z;

  GTECH_FJK2S u1_q_reg_0_ ( .J(n70), .K(n70), .TI(u1_N1), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[0]) );
  GTECH_FJK2S u1_q_reg_1_ ( .J(n70), .K(n70), .TI(u1_N2), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[1]) );
  GTECH_FJK2S u1_q_reg_2_ ( .J(n70), .K(n70), .TI(u1_N3), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[2]) );
  GTECH_FJK2S u1_q_reg_3_ ( .J(n70), .K(n70), .TI(u1_N4), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[3]) );
  GTECH_FJK2S u1_q_reg_4_ ( .J(n70), .K(n70), .TI(u1_N5), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[4]) );
  GTECH_FJK2S u1_q_reg_5_ ( .J(n70), .K(n70), .TI(u1_N6), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[5]) );
  GTECH_FJK2S u1_q_reg_6_ ( .J(n70), .K(n70), .TI(u1_N7), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[6]) );
  GTECH_FJK2S u1_q_reg_7_ ( .J(n70), .K(n70), .TI(u1_N9), .TE(u1_N8), .CP(clk), 
        .CD(n69), .Q(x[7]) );
  GTECH_FD2 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .CD(n69), .Q(z[7]), .QN(n12)
         );
  GTECH_FD2 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .CD(n69), .Q(z[6]), .QN(n13)
         );
  GTECH_FD2 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .CD(n69), .Q(z[5]), .QN(n14)
         );
  GTECH_FD2 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .CD(n69), .Q(z[4]), .QN(n15)
         );
  GTECH_FD2 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .CD(n69), .Q(z[3]), .QN(n16)
         );
  GTECH_FD2 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .CD(n69), .Q(z[2]), .QN(n17)
         );
  GTECH_FD2 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .CD(n69), .Q(z[1]), .QN(n18)
         );
  GTECH_FD2 u2_q1_reg_0_ ( .D(u2_N4), .CP(clk), .CD(n69), .Q(z[0]) );
  GTECH_FJK2S u5_i_reg_31_ ( .J(n70), .K(n70), .TI(u5_N67), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_31_) );
  GTECH_FD2 u5_l_reg ( .D(u5_N68), .CP(clk), .CD(n69), .Q(valid), .QN(e1_N14)
         );
  GTECH_FJK2S u5_i_reg_0_ ( .J(n70), .K(n70), .TI(u5_N35), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_0_) );
  GTECH_FJK2S u5_i_reg_1_ ( .J(n70), .K(n70), .TI(u5_N36), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_1_) );
  GTECH_FJK2S u5_i_reg_2_ ( .J(n70), .K(n70), .TI(u5_N37), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_2_) );
  GTECH_FJK2S u5_i_reg_3_ ( .J(n70), .K(n70), .TI(u5_N38), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_3_) );
  GTECH_FJK2S u5_i_reg_4_ ( .J(n70), .K(n70), .TI(u5_N39), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_4_) );
  GTECH_FJK2S u5_i_reg_5_ ( .J(n70), .K(n70), .TI(u5_N40), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_5_) );
  GTECH_FJK2S u5_i_reg_6_ ( .J(n70), .K(n70), .TI(u5_N41), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_6_) );
  GTECH_FJK2S u5_i_reg_7_ ( .J(n70), .K(n70), .TI(u5_N42), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_7_) );
  GTECH_FJK2S u5_i_reg_8_ ( .J(n70), .K(n70), .TI(u5_N43), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_8_) );
  GTECH_FJK2S u5_i_reg_9_ ( .J(n70), .K(n70), .TI(u5_N44), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_9_) );
  GTECH_FJK2S u5_i_reg_10_ ( .J(n70), .K(n70), .TI(u5_N45), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_10_) );
  GTECH_FJK2S u5_i_reg_11_ ( .J(n70), .K(n70), .TI(u5_N46), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_11_) );
  GTECH_FJK2S u5_i_reg_12_ ( .J(n70), .K(n70), .TI(u5_N47), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_12_) );
  GTECH_FJK2S u5_i_reg_13_ ( .J(n70), .K(n70), .TI(u5_N48), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_13_) );
  GTECH_FJK2S u5_i_reg_14_ ( .J(n70), .K(n70), .TI(u5_N49), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_14_) );
  GTECH_FJK2S u5_i_reg_15_ ( .J(n70), .K(n70), .TI(u5_N50), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_15_) );
  GTECH_FJK2S u5_i_reg_16_ ( .J(n70), .K(n70), .TI(u5_N51), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_16_) );
  GTECH_FJK2S u5_i_reg_17_ ( .J(n70), .K(n70), .TI(u5_N52), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_17_) );
  GTECH_FJK2S u5_i_reg_18_ ( .J(n70), .K(n70), .TI(u5_N53), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_18_) );
  GTECH_FJK2S u5_i_reg_19_ ( .J(n70), .K(n70), .TI(u5_N54), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_19_) );
  GTECH_FJK2S u5_i_reg_20_ ( .J(n70), .K(n70), .TI(u5_N55), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_20_) );
  GTECH_FJK2S u5_i_reg_21_ ( .J(n70), .K(n70), .TI(u5_N56), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_21_) );
  GTECH_FJK2S u5_i_reg_22_ ( .J(n70), .K(n70), .TI(u5_N57), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_22_) );
  GTECH_FJK2S u5_i_reg_23_ ( .J(n70), .K(n70), .TI(u5_N58), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_23_) );
  GTECH_FJK2S u5_i_reg_24_ ( .J(n70), .K(n70), .TI(u5_N59), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_24_) );
  GTECH_FJK2S u5_i_reg_25_ ( .J(n70), .K(n70), .TI(u5_N60), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_25_) );
  GTECH_FJK2S u5_i_reg_26_ ( .J(n70), .K(n70), .TI(u5_N61), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_26_) );
  GTECH_FJK2S u5_i_reg_27_ ( .J(n70), .K(n70), .TI(u5_N62), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_27_) );
  GTECH_FJK2S u5_i_reg_28_ ( .J(n70), .K(n70), .TI(u5_N63), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_28_) );
  GTECH_FJK2S u5_i_reg_29_ ( .J(n70), .K(n70), .TI(u5_N64), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_29_) );
  GTECH_FJK2S u5_i_reg_30_ ( .J(n70), .K(n70), .TI(u5_N65), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_30_) );
  GTECH_FJK2S u4_q2_reg_7_ ( .J(n70), .K(n70), .TI(u4_N10), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[15]) );
  GTECH_FJK2S u4_q2_reg_0_ ( .J(n70), .K(n70), .TI(u4_N3), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[8]) );
  GTECH_FJK2S u4_q2_reg_1_ ( .J(n70), .K(n70), .TI(u4_N4), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[9]) );
  GTECH_FJK2S u4_q2_reg_2_ ( .J(n70), .K(n70), .TI(u4_N5), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[10]) );
  GTECH_FJK2S u4_q2_reg_3_ ( .J(n70), .K(n70), .TI(u4_N6), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[11]) );
  GTECH_FJK2S u4_q2_reg_4_ ( .J(n70), .K(n70), .TI(u4_N7), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[12]) );
  GTECH_FJK2S u4_q2_reg_5_ ( .J(n70), .K(n70), .TI(u4_N8), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[13]) );
  GTECH_FJK2S u4_q2_reg_6_ ( .J(n70), .K(n70), .TI(u4_N9), .TE(u4_N13), .CP(
        clk), .CD(n69), .Q(op[14]) );
  GTECH_FJK2S e1_q3_reg_7_ ( .J(n70), .K(n70), .TI(e1_N11), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[7]) );
  GTECH_FJK2S e1_q3_reg_6_ ( .J(n70), .K(n70), .TI(op[7]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[6]) );
  GTECH_FJK2S e1_q3_reg_5_ ( .J(n70), .K(n70), .TI(op[6]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[5]) );
  GTECH_FJK2S e1_q3_reg_4_ ( .J(n70), .K(n70), .TI(op[5]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[4]) );
  GTECH_FJK2S e1_q3_reg_3_ ( .J(n70), .K(n70), .TI(op[4]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[3]) );
  GTECH_FJK2S e1_q3_reg_2_ ( .J(n70), .K(n70), .TI(op[3]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[2]) );
  GTECH_FJK2S e1_q3_reg_1_ ( .J(n70), .K(n70), .TI(op[2]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[1]) );
  GTECH_FJK2S e1_q3_reg_0_ ( .J(n70), .K(n70), .TI(op[1]), .TE(e1_N14), .CP(
        n68), .CD(n69), .Q(op[0]) );
  GTECH_ZERO U202 ( .Z(n70) );
  GTECH_ONE U203 ( .Z(n69) );
  GTECH_AND2 U204 ( .A(n215), .B(n216), .Z(u5_N68) );
  GTECH_NOT U205 ( .A(n217), .Z(n216) );
  GTECH_AND2 U206 ( .A(n218), .B(n219), .Z(u5_N67) );
  GTECH_XOR2 U207 ( .A(u5_i_31_), .B(n220), .Z(n219) );
  GTECH_AND2 U208 ( .A(u5_i_30_), .B(n221), .Z(n220) );
  GTECH_NAND2 U209 ( .A(n215), .B(n222), .Z(u5_N66) );
  GTECH_AND2 U210 ( .A(n218), .B(n223), .Z(u5_N65) );
  GTECH_XOR2 U211 ( .A(u5_i_30_), .B(n221), .Z(n223) );
  GTECH_NOT U212 ( .A(n224), .Z(n221) );
  GTECH_NAND2 U213 ( .A(u5_i_29_), .B(n225), .Z(n224) );
  GTECH_AND2 U214 ( .A(n218), .B(n226), .Z(u5_N64) );
  GTECH_XOR2 U215 ( .A(u5_i_29_), .B(n225), .Z(n226) );
  GTECH_NOT U216 ( .A(n227), .Z(n225) );
  GTECH_NAND2 U217 ( .A(u5_i_28_), .B(n228), .Z(n227) );
  GTECH_AND2 U218 ( .A(n218), .B(n229), .Z(u5_N63) );
  GTECH_XOR2 U219 ( .A(u5_i_28_), .B(n228), .Z(n229) );
  GTECH_NOT U220 ( .A(n230), .Z(n228) );
  GTECH_NAND2 U221 ( .A(u5_i_27_), .B(n231), .Z(n230) );
  GTECH_AND2 U222 ( .A(n218), .B(n232), .Z(u5_N62) );
  GTECH_XOR2 U223 ( .A(u5_i_27_), .B(n231), .Z(n232) );
  GTECH_NOT U224 ( .A(n233), .Z(n231) );
  GTECH_NAND2 U225 ( .A(u5_i_26_), .B(n234), .Z(n233) );
  GTECH_AND2 U226 ( .A(n218), .B(n235), .Z(u5_N61) );
  GTECH_XOR2 U227 ( .A(u5_i_26_), .B(n234), .Z(n235) );
  GTECH_NOT U228 ( .A(n236), .Z(n234) );
  GTECH_NAND2 U229 ( .A(u5_i_25_), .B(n237), .Z(n236) );
  GTECH_AND2 U230 ( .A(n218), .B(n238), .Z(u5_N60) );
  GTECH_XOR2 U231 ( .A(u5_i_25_), .B(n237), .Z(n238) );
  GTECH_NOT U232 ( .A(n239), .Z(n237) );
  GTECH_NAND2 U233 ( .A(u5_i_24_), .B(n240), .Z(n239) );
  GTECH_AND2 U234 ( .A(n218), .B(n241), .Z(u5_N59) );
  GTECH_XOR2 U235 ( .A(u5_i_24_), .B(n240), .Z(n241) );
  GTECH_NOT U236 ( .A(n242), .Z(n240) );
  GTECH_NAND2 U237 ( .A(u5_i_23_), .B(n243), .Z(n242) );
  GTECH_AND2 U238 ( .A(n218), .B(n244), .Z(u5_N58) );
  GTECH_XOR2 U239 ( .A(u5_i_23_), .B(n243), .Z(n244) );
  GTECH_NOT U240 ( .A(n245), .Z(n243) );
  GTECH_NAND2 U241 ( .A(u5_i_22_), .B(n246), .Z(n245) );
  GTECH_AND2 U242 ( .A(n218), .B(n247), .Z(u5_N57) );
  GTECH_XOR2 U243 ( .A(u5_i_22_), .B(n246), .Z(n247) );
  GTECH_NOT U244 ( .A(n248), .Z(n246) );
  GTECH_NAND2 U245 ( .A(u5_i_21_), .B(n249), .Z(n248) );
  GTECH_AND2 U246 ( .A(n218), .B(n250), .Z(u5_N56) );
  GTECH_XOR2 U247 ( .A(u5_i_21_), .B(n249), .Z(n250) );
  GTECH_NOT U248 ( .A(n251), .Z(n249) );
  GTECH_NAND2 U249 ( .A(u5_i_20_), .B(n252), .Z(n251) );
  GTECH_AND2 U250 ( .A(n218), .B(n253), .Z(u5_N55) );
  GTECH_XOR2 U251 ( .A(u5_i_20_), .B(n252), .Z(n253) );
  GTECH_NOT U252 ( .A(n254), .Z(n252) );
  GTECH_NAND2 U253 ( .A(u5_i_19_), .B(n255), .Z(n254) );
  GTECH_AND2 U254 ( .A(n218), .B(n256), .Z(u5_N54) );
  GTECH_XOR2 U255 ( .A(u5_i_19_), .B(n255), .Z(n256) );
  GTECH_NOT U256 ( .A(n257), .Z(n255) );
  GTECH_NAND2 U257 ( .A(u5_i_18_), .B(n258), .Z(n257) );
  GTECH_AND2 U258 ( .A(n218), .B(n259), .Z(u5_N53) );
  GTECH_XOR2 U259 ( .A(u5_i_18_), .B(n258), .Z(n259) );
  GTECH_NOT U260 ( .A(n260), .Z(n258) );
  GTECH_NAND2 U261 ( .A(u5_i_17_), .B(n261), .Z(n260) );
  GTECH_AND2 U262 ( .A(n218), .B(n262), .Z(u5_N52) );
  GTECH_XOR2 U263 ( .A(u5_i_17_), .B(n261), .Z(n262) );
  GTECH_NOT U264 ( .A(n263), .Z(n261) );
  GTECH_NAND2 U265 ( .A(u5_i_16_), .B(n264), .Z(n263) );
  GTECH_AND2 U266 ( .A(n218), .B(n265), .Z(u5_N51) );
  GTECH_XOR2 U267 ( .A(u5_i_16_), .B(n264), .Z(n265) );
  GTECH_NOT U268 ( .A(n266), .Z(n264) );
  GTECH_NAND2 U269 ( .A(u5_i_15_), .B(n267), .Z(n266) );
  GTECH_AND2 U270 ( .A(n218), .B(n268), .Z(u5_N50) );
  GTECH_XOR2 U271 ( .A(u5_i_15_), .B(n267), .Z(n268) );
  GTECH_NOT U272 ( .A(n269), .Z(n267) );
  GTECH_NAND2 U273 ( .A(u5_i_14_), .B(n270), .Z(n269) );
  GTECH_AND2 U274 ( .A(n218), .B(n271), .Z(u5_N49) );
  GTECH_XOR2 U275 ( .A(u5_i_14_), .B(n270), .Z(n271) );
  GTECH_NOT U276 ( .A(n272), .Z(n270) );
  GTECH_NAND2 U277 ( .A(u5_i_13_), .B(n273), .Z(n272) );
  GTECH_AND2 U278 ( .A(n218), .B(n274), .Z(u5_N48) );
  GTECH_XOR2 U279 ( .A(u5_i_13_), .B(n273), .Z(n274) );
  GTECH_NOT U280 ( .A(n275), .Z(n273) );
  GTECH_NAND2 U281 ( .A(u5_i_12_), .B(n276), .Z(n275) );
  GTECH_AND2 U282 ( .A(n218), .B(n277), .Z(u5_N47) );
  GTECH_XOR2 U283 ( .A(u5_i_12_), .B(n276), .Z(n277) );
  GTECH_NOT U284 ( .A(n278), .Z(n276) );
  GTECH_NAND2 U285 ( .A(u5_i_11_), .B(n279), .Z(n278) );
  GTECH_AND2 U286 ( .A(n218), .B(n280), .Z(u5_N46) );
  GTECH_XOR2 U287 ( .A(u5_i_11_), .B(n279), .Z(n280) );
  GTECH_NOT U288 ( .A(n281), .Z(n279) );
  GTECH_NAND2 U289 ( .A(u5_i_10_), .B(n282), .Z(n281) );
  GTECH_AND2 U290 ( .A(n218), .B(n283), .Z(u5_N45) );
  GTECH_XOR2 U291 ( .A(u5_i_10_), .B(n282), .Z(n283) );
  GTECH_NOT U292 ( .A(n284), .Z(n282) );
  GTECH_NAND2 U293 ( .A(u5_i_9_), .B(n285), .Z(n284) );
  GTECH_AND2 U294 ( .A(n218), .B(n286), .Z(u5_N44) );
  GTECH_XOR2 U295 ( .A(u5_i_9_), .B(n285), .Z(n286) );
  GTECH_NOT U296 ( .A(n287), .Z(n285) );
  GTECH_NAND2 U297 ( .A(u5_i_8_), .B(n288), .Z(n287) );
  GTECH_AND2 U298 ( .A(n218), .B(n289), .Z(u5_N43) );
  GTECH_XOR2 U299 ( .A(u5_i_8_), .B(n288), .Z(n289) );
  GTECH_NOT U300 ( .A(n290), .Z(n288) );
  GTECH_NAND2 U301 ( .A(u5_i_7_), .B(n291), .Z(n290) );
  GTECH_AND2 U302 ( .A(n218), .B(n292), .Z(u5_N42) );
  GTECH_XOR2 U303 ( .A(u5_i_7_), .B(n291), .Z(n292) );
  GTECH_NOT U304 ( .A(n293), .Z(n291) );
  GTECH_NAND2 U305 ( .A(u5_i_6_), .B(n294), .Z(n293) );
  GTECH_AND2 U306 ( .A(n218), .B(n295), .Z(u5_N41) );
  GTECH_XOR2 U307 ( .A(u5_i_6_), .B(n294), .Z(n295) );
  GTECH_NOT U308 ( .A(n296), .Z(n294) );
  GTECH_NAND2 U309 ( .A(u5_i_5_), .B(n297), .Z(n296) );
  GTECH_AND2 U310 ( .A(n218), .B(n298), .Z(u5_N40) );
  GTECH_XOR2 U311 ( .A(u5_i_5_), .B(n297), .Z(n298) );
  GTECH_NOT U312 ( .A(n299), .Z(n297) );
  GTECH_NAND2 U313 ( .A(u5_i_4_), .B(n300), .Z(n299) );
  GTECH_AND2 U314 ( .A(n218), .B(n301), .Z(u5_N39) );
  GTECH_XOR2 U315 ( .A(u5_i_4_), .B(n300), .Z(n301) );
  GTECH_NOT U316 ( .A(n302), .Z(n300) );
  GTECH_NAND2 U317 ( .A(u5_i_3_), .B(n303), .Z(n302) );
  GTECH_AND2 U318 ( .A(n218), .B(n304), .Z(u5_N38) );
  GTECH_XOR2 U319 ( .A(u5_i_3_), .B(n303), .Z(n304) );
  GTECH_NOT U320 ( .A(n305), .Z(n303) );
  GTECH_OAI22 U321 ( .A(n306), .B(n307), .C(n222), .D(n308), .Z(u5_N37) );
  GTECH_MUX2 U322 ( .A(n306), .B(n309), .S(u5_i_1_), .Z(n308) );
  GTECH_NAND2 U323 ( .A(u5_i_0_), .B(n306), .Z(n309) );
  GTECH_NOT U324 ( .A(u5_i_2_), .Z(n306) );
  GTECH_MUX2 U325 ( .A(n310), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND2 U326 ( .A(n218), .B(u5_i_0_), .Z(n310) );
  GTECH_NOT U327 ( .A(n307), .Z(u5_N35) );
  GTECH_NAND2 U328 ( .A(n218), .B(n311), .Z(n307) );
  GTECH_NOT U329 ( .A(u5_i_0_), .Z(n311) );
  GTECH_NOT U330 ( .A(n222), .Z(n218) );
  GTECH_NAND2 U331 ( .A(n215), .B(n217), .Z(n222) );
  GTECH_NAND2 U332 ( .A(n312), .B(n313), .Z(n217) );
  GTECH_NOR8 U333 ( .A(u5_i_27_), .B(u5_i_28_), .C(u5_i_29_), .D(u5_i_30_), 
        .E(u5_i_25_), .F(u5_i_26_), .G(u5_i_24_), .H(n314), .Z(n313) );
  GTECH_OR8 U334 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n314) );
  GTECH_NOR8 U335 ( .A(u5_i_12_), .B(u5_i_13_), .C(u5_i_14_), .D(u5_i_15_), 
        .E(u5_i_10_), .F(u5_i_11_), .G(n315), .H(n305), .Z(n312) );
  GTECH_NAND3 U336 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n305) );
  GTECH_OR8 U337 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n315) );
  GTECH_AND2 U338 ( .A(n215), .B(n316), .Z(u4_N9) );
  GTECH_OAI21 U339 ( .A(n317), .B(n318), .C(n319), .Z(n316) );
  GTECH_MUX2 U340 ( .A(n320), .B(n321), .S(n322), .Z(n319) );
  GTECH_NAND2 U341 ( .A(n323), .B(n317), .Z(n321) );
  GTECH_XOR2 U342 ( .A(op[15]), .B(n323), .Z(n320) );
  GTECH_NOT U343 ( .A(n324), .Z(n323) );
  GTECH_NOT U344 ( .A(op[15]), .Z(n317) );
  GTECH_AND2 U345 ( .A(n215), .B(n325), .Z(u4_N8) );
  GTECH_XOR3 U346 ( .A(n326), .B(n327), .C(op[14]), .Z(n325) );
  GTECH_AND2 U347 ( .A(x[6]), .B(z[0]), .Z(n326) );
  GTECH_AND2 U348 ( .A(n215), .B(n328), .Z(u4_N7) );
  GTECH_XOR3 U349 ( .A(n329), .B(n330), .C(op[13]), .Z(n328) );
  GTECH_AND2 U350 ( .A(x[5]), .B(z[0]), .Z(n329) );
  GTECH_AND2 U351 ( .A(n215), .B(n331), .Z(u4_N6) );
  GTECH_XOR3 U352 ( .A(n332), .B(n333), .C(op[12]), .Z(n331) );
  GTECH_AND2 U353 ( .A(x[4]), .B(z[0]), .Z(n332) );
  GTECH_AND2 U354 ( .A(n215), .B(n334), .Z(u4_N5) );
  GTECH_XOR3 U355 ( .A(n335), .B(n336), .C(op[11]), .Z(n334) );
  GTECH_AND2 U356 ( .A(x[3]), .B(z[0]), .Z(n335) );
  GTECH_AND2 U357 ( .A(n215), .B(n337), .Z(u4_N4) );
  GTECH_XOR3 U358 ( .A(n338), .B(n339), .C(op[10]), .Z(n337) );
  GTECH_AND2 U359 ( .A(x[2]), .B(z[0]), .Z(n338) );
  GTECH_AND2 U360 ( .A(n215), .B(n340), .Z(u4_N3) );
  GTECH_XOR3 U361 ( .A(n341), .B(n342), .C(op[9]), .Z(n340) );
  GTECH_AND2 U362 ( .A(x[1]), .B(z[0]), .Z(n341) );
  GTECH_NAND2 U363 ( .A(valid), .B(n215), .Z(u4_N13) );
  GTECH_AND2 U364 ( .A(n215), .B(n343), .Z(u4_N10) );
  GTECH_OAI2N2 U365 ( .A(n322), .B(n324), .C(n318), .D(op[15]), .Z(n343) );
  GTECH_NAND2 U366 ( .A(n322), .B(n324), .Z(n318) );
  GTECH_NAND2 U367 ( .A(x[7]), .B(z[0]), .Z(n324) );
  GTECH_NOT U368 ( .A(n344), .Z(n322) );
  GTECH_ADD_ABC U369 ( .A(n345), .B(op[14]), .C(n327), .COUT(n344) );
  GTECH_ADD_ABC U370 ( .A(n346), .B(op[13]), .C(n330), .COUT(n327) );
  GTECH_ADD_ABC U371 ( .A(n347), .B(op[12]), .C(n333), .COUT(n330) );
  GTECH_ADD_ABC U372 ( .A(n348), .B(op[11]), .C(n336), .COUT(n333) );
  GTECH_ADD_ABC U373 ( .A(n349), .B(op[10]), .C(n339), .COUT(n336) );
  GTECH_ADD_ABC U374 ( .A(n350), .B(op[9]), .C(n342), .COUT(n339) );
  GTECH_NOT U375 ( .A(n351), .Z(n342) );
  GTECH_NAND3 U376 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n351) );
  GTECH_AND2 U377 ( .A(x[1]), .B(z[0]), .Z(n350) );
  GTECH_AND2 U378 ( .A(x[2]), .B(z[0]), .Z(n349) );
  GTECH_AND2 U379 ( .A(x[3]), .B(z[0]), .Z(n348) );
  GTECH_AND2 U380 ( .A(x[4]), .B(z[0]), .Z(n347) );
  GTECH_AND2 U381 ( .A(x[5]), .B(z[0]), .Z(n346) );
  GTECH_AND2 U382 ( .A(x[6]), .B(z[0]), .Z(n345) );
  GTECH_NOT U383 ( .A(n352), .Z(n215) );
  GTECH_OAI2N2 U384 ( .A(n352), .B(n13), .C(b[5]), .D(n353), .Z(u2_N9) );
  GTECH_OAI2N2 U385 ( .A(n352), .B(n14), .C(b[4]), .D(n353), .Z(u2_N8) );
  GTECH_OAI2N2 U386 ( .A(n352), .B(n15), .C(b[3]), .D(n353), .Z(u2_N7) );
  GTECH_OAI2N2 U387 ( .A(n352), .B(n16), .C(b[2]), .D(n353), .Z(u2_N6) );
  GTECH_OAI2N2 U388 ( .A(n352), .B(n17), .C(b[1]), .D(n353), .Z(u2_N5) );
  GTECH_OAI2N2 U389 ( .A(n352), .B(n18), .C(b[0]), .D(n353), .Z(u2_N4) );
  GTECH_AND2 U390 ( .A(b[7]), .B(n353), .Z(u2_N11) );
  GTECH_OAI2N2 U391 ( .A(n352), .B(n12), .C(b[6]), .D(n353), .Z(u2_N10) );
  GTECH_NAND2 U392 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_NOT U393 ( .A(load), .Z(n354) );
  GTECH_AND2 U394 ( .A(a[7]), .B(n353), .Z(u1_N9) );
  GTECH_NAND2 U395 ( .A(n355), .B(n356), .Z(u1_N8) );
  GTECH_AND2 U396 ( .A(a[6]), .B(n353), .Z(u1_N7) );
  GTECH_AND2 U397 ( .A(a[5]), .B(n353), .Z(u1_N6) );
  GTECH_AND2 U398 ( .A(a[4]), .B(n353), .Z(u1_N5) );
  GTECH_AND2 U399 ( .A(a[3]), .B(n353), .Z(u1_N4) );
  GTECH_AND2 U400 ( .A(a[2]), .B(n353), .Z(u1_N3) );
  GTECH_AND2 U401 ( .A(a[1]), .B(n353), .Z(u1_N2) );
  GTECH_AND2 U402 ( .A(a[0]), .B(n353), .Z(u1_N1) );
  GTECH_NOT U403 ( .A(n356), .Z(n353) );
  GTECH_NAND2 U404 ( .A(load), .B(n355), .Z(n356) );
  GTECH_NOT U405 ( .A(reset), .Z(n355) );
  GTECH_NOT U406 ( .A(clk), .Z(n68) );
  GTECH_XOR2 U407 ( .A(op[8]), .B(n357), .Z(e1_N11) );
  GTECH_AND2 U408 ( .A(z[0]), .B(x[0]), .Z(n357) );
endmodule
