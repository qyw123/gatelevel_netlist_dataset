
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
         n16, n17, n18, n68, n69, n70, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347;
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
  GTECH_FD1 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .Q(z[7]), .QN(n12) );
  GTECH_FD1 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .Q(z[6]), .QN(n13) );
  GTECH_FD1 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .Q(z[5]), .QN(n14) );
  GTECH_FD1 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .Q(z[4]), .QN(n15) );
  GTECH_FD1 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .Q(z[3]), .QN(n16) );
  GTECH_FD1 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .Q(z[2]), .QN(n17) );
  GTECH_FD1 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .Q(z[1]), .QN(n18) );
  GTECH_FD1 u2_q1_reg_0_ ( .D(u2_N4), .CP(clk), .Q(z[0]) );
  GTECH_FJK2S u5_i_reg_31_ ( .J(n70), .K(n70), .TI(u5_N67), .TE(u5_N66), .CP(
        clk), .CD(n69), .Q(u5_i_31_) );
  GTECH_FD1 u5_l_reg ( .D(u5_N68), .CP(clk), .Q(valid), .QN(e1_N14) );
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
  GTECH_ZERO U193 ( .Z(n70) );
  GTECH_ONE U194 ( .Z(n69) );
  GTECH_AND_NOT U195 ( .A(n206), .B(n207), .Z(u5_N68) );
  GTECH_AND_NOT U196 ( .A(n208), .B(n209), .Z(u5_N67) );
  GTECH_XOR2 U197 ( .A(n210), .B(u5_i_31_), .Z(n209) );
  GTECH_OR_NOT U198 ( .A(n211), .B(u5_i_30_), .Z(n210) );
  GTECH_NAND2 U199 ( .A(n206), .B(n212), .Z(u5_N66) );
  GTECH_AND_NOT U200 ( .A(n208), .B(n213), .Z(u5_N65) );
  GTECH_XOR2 U201 ( .A(n211), .B(u5_i_30_), .Z(n213) );
  GTECH_NAND2 U202 ( .A(u5_i_29_), .B(n214), .Z(n211) );
  GTECH_NOT U203 ( .A(n215), .Z(n214) );
  GTECH_AND_NOT U204 ( .A(n208), .B(n216), .Z(u5_N64) );
  GTECH_XOR2 U205 ( .A(n215), .B(u5_i_29_), .Z(n216) );
  GTECH_NAND2 U206 ( .A(u5_i_28_), .B(n217), .Z(n215) );
  GTECH_NOT U207 ( .A(n218), .Z(n217) );
  GTECH_AND_NOT U208 ( .A(n208), .B(n219), .Z(u5_N63) );
  GTECH_XOR2 U209 ( .A(n218), .B(u5_i_28_), .Z(n219) );
  GTECH_NAND2 U210 ( .A(u5_i_27_), .B(n220), .Z(n218) );
  GTECH_NOT U211 ( .A(n221), .Z(n220) );
  GTECH_AND_NOT U212 ( .A(n208), .B(n222), .Z(u5_N62) );
  GTECH_XOR2 U213 ( .A(n221), .B(u5_i_27_), .Z(n222) );
  GTECH_NAND2 U214 ( .A(u5_i_26_), .B(n223), .Z(n221) );
  GTECH_NOT U215 ( .A(n224), .Z(n223) );
  GTECH_AND_NOT U216 ( .A(n208), .B(n225), .Z(u5_N61) );
  GTECH_XOR2 U217 ( .A(n224), .B(u5_i_26_), .Z(n225) );
  GTECH_NAND2 U218 ( .A(u5_i_25_), .B(n226), .Z(n224) );
  GTECH_NOT U219 ( .A(n227), .Z(n226) );
  GTECH_AND_NOT U220 ( .A(n208), .B(n228), .Z(u5_N60) );
  GTECH_XOR2 U221 ( .A(n227), .B(u5_i_25_), .Z(n228) );
  GTECH_NAND2 U222 ( .A(u5_i_24_), .B(n229), .Z(n227) );
  GTECH_NOT U223 ( .A(n230), .Z(n229) );
  GTECH_AND_NOT U224 ( .A(n208), .B(n231), .Z(u5_N59) );
  GTECH_XOR2 U225 ( .A(n230), .B(u5_i_24_), .Z(n231) );
  GTECH_NAND2 U226 ( .A(u5_i_23_), .B(n232), .Z(n230) );
  GTECH_NOT U227 ( .A(n233), .Z(n232) );
  GTECH_AND_NOT U228 ( .A(n208), .B(n234), .Z(u5_N58) );
  GTECH_XOR2 U229 ( .A(n233), .B(u5_i_23_), .Z(n234) );
  GTECH_NAND2 U230 ( .A(u5_i_22_), .B(n235), .Z(n233) );
  GTECH_NOT U231 ( .A(n236), .Z(n235) );
  GTECH_AND_NOT U232 ( .A(n208), .B(n237), .Z(u5_N57) );
  GTECH_XOR2 U233 ( .A(n236), .B(u5_i_22_), .Z(n237) );
  GTECH_NAND2 U234 ( .A(u5_i_21_), .B(n238), .Z(n236) );
  GTECH_NOT U235 ( .A(n239), .Z(n238) );
  GTECH_AND_NOT U236 ( .A(n208), .B(n240), .Z(u5_N56) );
  GTECH_XOR2 U237 ( .A(n239), .B(u5_i_21_), .Z(n240) );
  GTECH_NAND2 U238 ( .A(u5_i_20_), .B(n241), .Z(n239) );
  GTECH_NOT U239 ( .A(n242), .Z(n241) );
  GTECH_AND_NOT U240 ( .A(n208), .B(n243), .Z(u5_N55) );
  GTECH_XOR2 U241 ( .A(n242), .B(u5_i_20_), .Z(n243) );
  GTECH_NAND2 U242 ( .A(u5_i_19_), .B(n244), .Z(n242) );
  GTECH_NOT U243 ( .A(n245), .Z(n244) );
  GTECH_AND_NOT U244 ( .A(n208), .B(n246), .Z(u5_N54) );
  GTECH_XOR2 U245 ( .A(n245), .B(u5_i_19_), .Z(n246) );
  GTECH_NAND2 U246 ( .A(u5_i_18_), .B(n247), .Z(n245) );
  GTECH_NOT U247 ( .A(n248), .Z(n247) );
  GTECH_AND_NOT U248 ( .A(n208), .B(n249), .Z(u5_N53) );
  GTECH_XOR2 U249 ( .A(n248), .B(u5_i_18_), .Z(n249) );
  GTECH_NAND2 U250 ( .A(u5_i_17_), .B(n250), .Z(n248) );
  GTECH_NOT U251 ( .A(n251), .Z(n250) );
  GTECH_AND_NOT U252 ( .A(n208), .B(n252), .Z(u5_N52) );
  GTECH_XOR2 U253 ( .A(n251), .B(u5_i_17_), .Z(n252) );
  GTECH_NAND2 U254 ( .A(u5_i_16_), .B(n253), .Z(n251) );
  GTECH_NOT U255 ( .A(n254), .Z(n253) );
  GTECH_AND_NOT U256 ( .A(n208), .B(n255), .Z(u5_N51) );
  GTECH_XOR2 U257 ( .A(n254), .B(u5_i_16_), .Z(n255) );
  GTECH_NAND2 U258 ( .A(u5_i_15_), .B(n256), .Z(n254) );
  GTECH_NOT U259 ( .A(n257), .Z(n256) );
  GTECH_AND_NOT U260 ( .A(n208), .B(n258), .Z(u5_N50) );
  GTECH_XOR2 U261 ( .A(n257), .B(u5_i_15_), .Z(n258) );
  GTECH_NAND2 U262 ( .A(u5_i_14_), .B(n259), .Z(n257) );
  GTECH_NOT U263 ( .A(n260), .Z(n259) );
  GTECH_AND_NOT U264 ( .A(n208), .B(n261), .Z(u5_N49) );
  GTECH_XOR2 U265 ( .A(n260), .B(u5_i_14_), .Z(n261) );
  GTECH_NAND2 U266 ( .A(u5_i_13_), .B(n262), .Z(n260) );
  GTECH_NOT U267 ( .A(n263), .Z(n262) );
  GTECH_AND_NOT U268 ( .A(n208), .B(n264), .Z(u5_N48) );
  GTECH_XOR2 U269 ( .A(n263), .B(u5_i_13_), .Z(n264) );
  GTECH_NAND2 U270 ( .A(u5_i_12_), .B(n265), .Z(n263) );
  GTECH_NOT U271 ( .A(n266), .Z(n265) );
  GTECH_AND_NOT U272 ( .A(n208), .B(n267), .Z(u5_N47) );
  GTECH_XOR2 U273 ( .A(n266), .B(u5_i_12_), .Z(n267) );
  GTECH_NAND2 U274 ( .A(u5_i_11_), .B(n268), .Z(n266) );
  GTECH_NOT U275 ( .A(n269), .Z(n268) );
  GTECH_AND_NOT U276 ( .A(n208), .B(n270), .Z(u5_N46) );
  GTECH_XOR2 U277 ( .A(n269), .B(u5_i_11_), .Z(n270) );
  GTECH_NAND2 U278 ( .A(u5_i_10_), .B(n271), .Z(n269) );
  GTECH_NOT U279 ( .A(n272), .Z(n271) );
  GTECH_AND_NOT U280 ( .A(n208), .B(n273), .Z(u5_N45) );
  GTECH_XOR2 U281 ( .A(n272), .B(u5_i_10_), .Z(n273) );
  GTECH_NAND2 U282 ( .A(u5_i_9_), .B(n274), .Z(n272) );
  GTECH_NOT U283 ( .A(n275), .Z(n274) );
  GTECH_AND_NOT U284 ( .A(n208), .B(n276), .Z(u5_N44) );
  GTECH_XOR2 U285 ( .A(n275), .B(u5_i_9_), .Z(n276) );
  GTECH_NAND2 U286 ( .A(u5_i_8_), .B(n277), .Z(n275) );
  GTECH_NOT U287 ( .A(n278), .Z(n277) );
  GTECH_AND_NOT U288 ( .A(n208), .B(n279), .Z(u5_N43) );
  GTECH_XOR2 U289 ( .A(n278), .B(u5_i_8_), .Z(n279) );
  GTECH_NAND2 U290 ( .A(u5_i_7_), .B(n280), .Z(n278) );
  GTECH_NOT U291 ( .A(n281), .Z(n280) );
  GTECH_AND_NOT U292 ( .A(n208), .B(n282), .Z(u5_N42) );
  GTECH_XOR2 U293 ( .A(n281), .B(u5_i_7_), .Z(n282) );
  GTECH_NAND2 U294 ( .A(u5_i_6_), .B(n283), .Z(n281) );
  GTECH_NOT U295 ( .A(n284), .Z(n283) );
  GTECH_AND_NOT U296 ( .A(n208), .B(n285), .Z(u5_N41) );
  GTECH_XOR2 U297 ( .A(n284), .B(u5_i_6_), .Z(n285) );
  GTECH_NAND2 U298 ( .A(u5_i_5_), .B(n286), .Z(n284) );
  GTECH_NOT U299 ( .A(n287), .Z(n286) );
  GTECH_AND_NOT U300 ( .A(n208), .B(n288), .Z(u5_N40) );
  GTECH_XOR2 U301 ( .A(n287), .B(u5_i_5_), .Z(n288) );
  GTECH_NAND2 U302 ( .A(u5_i_4_), .B(n289), .Z(n287) );
  GTECH_NOT U303 ( .A(n290), .Z(n289) );
  GTECH_AND_NOT U304 ( .A(n208), .B(n291), .Z(u5_N39) );
  GTECH_XOR2 U305 ( .A(n290), .B(u5_i_4_), .Z(n291) );
  GTECH_NAND2 U306 ( .A(u5_i_3_), .B(n292), .Z(n290) );
  GTECH_NOT U307 ( .A(n293), .Z(n292) );
  GTECH_AND_NOT U308 ( .A(n208), .B(n294), .Z(u5_N38) );
  GTECH_XOR2 U309 ( .A(n293), .B(u5_i_3_), .Z(n294) );
  GTECH_OAI22 U310 ( .A(n295), .B(n296), .C(n212), .D(n297), .Z(u5_N37) );
  GTECH_MUX2 U311 ( .A(n295), .B(n298), .S(u5_i_1_), .Z(n297) );
  GTECH_NAND2 U312 ( .A(u5_i_0_), .B(n295), .Z(n298) );
  GTECH_NOT U313 ( .A(u5_i_2_), .Z(n295) );
  GTECH_MUX2 U314 ( .A(n299), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND_NOT U315 ( .A(n208), .B(n300), .Z(n299) );
  GTECH_NOT U316 ( .A(n296), .Z(u5_N35) );
  GTECH_NAND2 U317 ( .A(n208), .B(n300), .Z(n296) );
  GTECH_NOT U318 ( .A(u5_i_0_), .Z(n300) );
  GTECH_NOT U319 ( .A(n212), .Z(n208) );
  GTECH_NAND2 U320 ( .A(n206), .B(n207), .Z(n212) );
  GTECH_NAND2 U321 ( .A(n301), .B(n302), .Z(n207) );
  GTECH_NOR8 U322 ( .A(u5_i_27_), .B(u5_i_28_), .C(u5_i_29_), .D(u5_i_30_), 
        .E(u5_i_25_), .F(u5_i_26_), .G(u5_i_24_), .H(n303), .Z(n302) );
  GTECH_OR8 U323 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n303) );
  GTECH_NOR8 U324 ( .A(u5_i_12_), .B(u5_i_13_), .C(u5_i_14_), .D(u5_i_15_), 
        .E(u5_i_10_), .F(u5_i_11_), .G(n304), .H(n293), .Z(n301) );
  GTECH_NAND3 U325 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n293) );
  GTECH_OR8 U326 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n304) );
  GTECH_OA21 U327 ( .A(n305), .B(n306), .C(n206), .Z(u4_N9) );
  GTECH_AND_NOT U328 ( .A(n307), .B(n308), .Z(n306) );
  GTECH_MUX2 U329 ( .A(n309), .B(n310), .S(n311), .Z(n305) );
  GTECH_NOR2 U330 ( .A(n312), .B(op[15]), .Z(n310) );
  GTECH_XOR2 U331 ( .A(n312), .B(op[15]), .Z(n309) );
  GTECH_AND_NOT U332 ( .A(n313), .B(n314), .Z(u4_N8) );
  GTECH_XNOR3 U333 ( .A(n315), .B(op[14]), .C(n316), .Z(n313) );
  GTECH_NAND2 U334 ( .A(x[6]), .B(z[0]), .Z(n316) );
  GTECH_AND_NOT U335 ( .A(n317), .B(n314), .Z(u4_N7) );
  GTECH_XNOR3 U336 ( .A(n318), .B(op[13]), .C(n319), .Z(n317) );
  GTECH_NAND2 U337 ( .A(x[5]), .B(z[0]), .Z(n319) );
  GTECH_AND_NOT U338 ( .A(n320), .B(n314), .Z(u4_N6) );
  GTECH_XNOR3 U339 ( .A(n321), .B(op[12]), .C(n322), .Z(n320) );
  GTECH_NAND2 U340 ( .A(x[4]), .B(z[0]), .Z(n322) );
  GTECH_AND_NOT U341 ( .A(n323), .B(n314), .Z(u4_N5) );
  GTECH_XNOR3 U342 ( .A(n324), .B(op[11]), .C(n325), .Z(n323) );
  GTECH_NAND2 U343 ( .A(x[3]), .B(z[0]), .Z(n325) );
  GTECH_AND_NOT U344 ( .A(n326), .B(n314), .Z(u4_N4) );
  GTECH_XNOR3 U345 ( .A(n327), .B(op[10]), .C(n328), .Z(n326) );
  GTECH_NAND2 U346 ( .A(x[2]), .B(z[0]), .Z(n328) );
  GTECH_AND_NOT U347 ( .A(n206), .B(n329), .Z(u4_N3) );
  GTECH_XNOR3 U348 ( .A(n330), .B(op[9]), .C(n331), .Z(n329) );
  GTECH_NAND2 U349 ( .A(x[1]), .B(z[0]), .Z(n331) );
  GTECH_NAND2 U350 ( .A(valid), .B(n206), .Z(u4_N13) );
  GTECH_AND_NOT U351 ( .A(n206), .B(n332), .Z(u4_N10) );
  GTECH_OA22 U352 ( .A(n307), .B(n308), .C(n311), .D(n312), .Z(n332) );
  GTECH_NOT U353 ( .A(op[15]), .Z(n308) );
  GTECH_NOT U354 ( .A(n333), .Z(n307) );
  GTECH_NAND2 U355 ( .A(n311), .B(n312), .Z(n333) );
  GTECH_NAND2 U356 ( .A(x[7]), .B(z[0]), .Z(n312) );
  GTECH_NOT U357 ( .A(n334), .Z(n311) );
  GTECH_ADD_ABC U358 ( .A(n335), .B(op[14]), .C(n315), .COUT(n334) );
  GTECH_ADD_ABC U359 ( .A(n336), .B(op[13]), .C(n318), .COUT(n315) );
  GTECH_ADD_ABC U360 ( .A(n337), .B(op[12]), .C(n321), .COUT(n318) );
  GTECH_ADD_ABC U361 ( .A(n338), .B(op[11]), .C(n324), .COUT(n321) );
  GTECH_ADD_ABC U362 ( .A(n339), .B(op[10]), .C(n327), .COUT(n324) );
  GTECH_ADD_ABC U363 ( .A(n340), .B(op[9]), .C(n341), .COUT(n327) );
  GTECH_NOT U364 ( .A(n330), .Z(n341) );
  GTECH_NAND3 U365 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n330) );
  GTECH_AND_NOT U366 ( .A(x[1]), .B(n342), .Z(n340) );
  GTECH_AND_NOT U367 ( .A(x[2]), .B(n342), .Z(n339) );
  GTECH_AND_NOT U368 ( .A(x[3]), .B(n342), .Z(n338) );
  GTECH_AND_NOT U369 ( .A(x[4]), .B(n342), .Z(n337) );
  GTECH_AND_NOT U370 ( .A(x[5]), .B(n342), .Z(n336) );
  GTECH_AND_NOT U371 ( .A(x[6]), .B(n342), .Z(n335) );
  GTECH_NOT U372 ( .A(z[0]), .Z(n342) );
  GTECH_NOT U373 ( .A(n314), .Z(n206) );
  GTECH_OAI2N2 U374 ( .A(n314), .B(n13), .C(b[5]), .D(n343), .Z(u2_N9) );
  GTECH_OAI2N2 U375 ( .A(n314), .B(n14), .C(b[4]), .D(n343), .Z(u2_N8) );
  GTECH_OAI2N2 U376 ( .A(n314), .B(n15), .C(b[3]), .D(n343), .Z(u2_N7) );
  GTECH_OAI2N2 U377 ( .A(n314), .B(n16), .C(b[2]), .D(n343), .Z(u2_N6) );
  GTECH_OAI2N2 U378 ( .A(n314), .B(n17), .C(b[1]), .D(n343), .Z(u2_N5) );
  GTECH_OAI2N2 U379 ( .A(n314), .B(n18), .C(b[0]), .D(n343), .Z(u2_N4) );
  GTECH_AND_NOT U380 ( .A(b[7]), .B(n344), .Z(u2_N11) );
  GTECH_OAI2N2 U381 ( .A(n314), .B(n12), .C(b[6]), .D(n343), .Z(u2_N10) );
  GTECH_NOT U382 ( .A(n344), .Z(n343) );
  GTECH_NAND2 U383 ( .A(n345), .B(n346), .Z(n314) );
  GTECH_NOT U384 ( .A(load), .Z(n345) );
  GTECH_AND_NOT U385 ( .A(a[7]), .B(n344), .Z(u1_N9) );
  GTECH_NAND2 U386 ( .A(n346), .B(n344), .Z(u1_N8) );
  GTECH_AND_NOT U387 ( .A(a[6]), .B(n344), .Z(u1_N7) );
  GTECH_AND_NOT U388 ( .A(a[5]), .B(n344), .Z(u1_N6) );
  GTECH_AND_NOT U389 ( .A(a[4]), .B(n344), .Z(u1_N5) );
  GTECH_AND_NOT U390 ( .A(a[3]), .B(n344), .Z(u1_N4) );
  GTECH_AND_NOT U391 ( .A(a[2]), .B(n344), .Z(u1_N3) );
  GTECH_AND_NOT U392 ( .A(a[1]), .B(n344), .Z(u1_N2) );
  GTECH_AND_NOT U393 ( .A(a[0]), .B(n344), .Z(u1_N1) );
  GTECH_NAND2 U394 ( .A(load), .B(n346), .Z(n344) );
  GTECH_NOT U395 ( .A(reset), .Z(n346) );
  GTECH_NOT U396 ( .A(clk), .Z(n68) );
  GTECH_XNOR2 U397 ( .A(op[8]), .B(n347), .Z(e1_N11) );
  GTECH_NAND2 U398 ( .A(z[0]), .B(x[0]), .Z(n347) );
endmodule

