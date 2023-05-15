
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
         n16, n17, n18, n67, n68, n69, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318;
  wire   [7:0] x;
  wire   [7:0] z;

  GTECH_FJK2S u1_q_reg_0_ ( .J(n69), .K(n69), .TI(u1_N1), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[0]) );
  GTECH_FJK2S u1_q_reg_1_ ( .J(n69), .K(n69), .TI(u1_N2), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[1]) );
  GTECH_FJK2S u1_q_reg_2_ ( .J(n69), .K(n69), .TI(u1_N3), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[2]) );
  GTECH_FJK2S u1_q_reg_3_ ( .J(n69), .K(n69), .TI(u1_N4), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[3]) );
  GTECH_FJK2S u1_q_reg_4_ ( .J(n69), .K(n69), .TI(u1_N5), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[4]) );
  GTECH_FJK2S u1_q_reg_5_ ( .J(n69), .K(n69), .TI(u1_N6), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[5]) );
  GTECH_FJK2S u1_q_reg_6_ ( .J(n69), .K(n69), .TI(u1_N7), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[6]) );
  GTECH_FJK2S u1_q_reg_7_ ( .J(n69), .K(n69), .TI(u1_N9), .TE(u1_N8), .CP(clk), 
        .CD(n68), .Q(x[7]) );
  GTECH_FD1 u2_q1_reg_7_ ( .D(u2_N11), .CP(clk), .Q(z[7]), .QN(n12) );
  GTECH_FD1 u2_q1_reg_6_ ( .D(u2_N10), .CP(clk), .Q(z[6]), .QN(n13) );
  GTECH_FD1 u2_q1_reg_5_ ( .D(u2_N9), .CP(clk), .Q(z[5]), .QN(n14) );
  GTECH_FD1 u2_q1_reg_4_ ( .D(u2_N8), .CP(clk), .Q(z[4]), .QN(n15) );
  GTECH_FD1 u2_q1_reg_3_ ( .D(u2_N7), .CP(clk), .Q(z[3]), .QN(n16) );
  GTECH_FD1 u2_q1_reg_2_ ( .D(u2_N6), .CP(clk), .Q(z[2]), .QN(n17) );
  GTECH_FD1 u2_q1_reg_1_ ( .D(u2_N5), .CP(clk), .Q(z[1]), .QN(n18) );
  GTECH_FD1 u2_q1_reg_0_ ( .D(u2_N4), .CP(clk), .Q(z[0]) );
  GTECH_FJK2S u5_i_reg_31_ ( .J(n69), .K(n69), .TI(u5_N67), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_31_) );
  GTECH_FD1 u5_l_reg ( .D(u5_N68), .CP(clk), .Q(valid), .QN(e1_N14) );
  GTECH_FJK2S u5_i_reg_0_ ( .J(n69), .K(n69), .TI(u5_N35), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_0_) );
  GTECH_FJK2S u5_i_reg_1_ ( .J(n69), .K(n69), .TI(u5_N36), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_1_) );
  GTECH_FJK2S u5_i_reg_2_ ( .J(n69), .K(n69), .TI(u5_N37), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_2_) );
  GTECH_FJK2S u5_i_reg_3_ ( .J(n69), .K(n69), .TI(u5_N38), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_3_) );
  GTECH_FJK2S u5_i_reg_4_ ( .J(n69), .K(n69), .TI(u5_N39), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_4_) );
  GTECH_FJK2S u5_i_reg_5_ ( .J(n69), .K(n69), .TI(u5_N40), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_5_) );
  GTECH_FJK2S u5_i_reg_6_ ( .J(n69), .K(n69), .TI(u5_N41), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_6_) );
  GTECH_FJK2S u5_i_reg_7_ ( .J(n69), .K(n69), .TI(u5_N42), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_7_) );
  GTECH_FJK2S u5_i_reg_8_ ( .J(n69), .K(n69), .TI(u5_N43), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_8_) );
  GTECH_FJK2S u5_i_reg_9_ ( .J(n69), .K(n69), .TI(u5_N44), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_9_) );
  GTECH_FJK2S u5_i_reg_10_ ( .J(n69), .K(n69), .TI(u5_N45), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_10_) );
  GTECH_FJK2S u5_i_reg_11_ ( .J(n69), .K(n69), .TI(u5_N46), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_11_) );
  GTECH_FJK2S u5_i_reg_12_ ( .J(n69), .K(n69), .TI(u5_N47), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_12_) );
  GTECH_FJK2S u5_i_reg_13_ ( .J(n69), .K(n69), .TI(u5_N48), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_13_) );
  GTECH_FJK2S u5_i_reg_14_ ( .J(n69), .K(n69), .TI(u5_N49), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_14_) );
  GTECH_FJK2S u5_i_reg_15_ ( .J(n69), .K(n69), .TI(u5_N50), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_15_) );
  GTECH_FJK2S u5_i_reg_16_ ( .J(n69), .K(n69), .TI(u5_N51), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_16_) );
  GTECH_FJK2S u5_i_reg_17_ ( .J(n69), .K(n69), .TI(u5_N52), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_17_) );
  GTECH_FJK2S u5_i_reg_18_ ( .J(n69), .K(n69), .TI(u5_N53), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_18_) );
  GTECH_FJK2S u5_i_reg_19_ ( .J(n69), .K(n69), .TI(u5_N54), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_19_) );
  GTECH_FJK2S u5_i_reg_20_ ( .J(n69), .K(n69), .TI(u5_N55), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_20_) );
  GTECH_FJK2S u5_i_reg_21_ ( .J(n69), .K(n69), .TI(u5_N56), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_21_) );
  GTECH_FJK2S u5_i_reg_22_ ( .J(n69), .K(n69), .TI(u5_N57), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_22_) );
  GTECH_FJK2S u5_i_reg_23_ ( .J(n69), .K(n69), .TI(u5_N58), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_23_) );
  GTECH_FJK2S u5_i_reg_24_ ( .J(n69), .K(n69), .TI(u5_N59), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_24_) );
  GTECH_FJK2S u5_i_reg_25_ ( .J(n69), .K(n69), .TI(u5_N60), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_25_) );
  GTECH_FJK2S u5_i_reg_26_ ( .J(n69), .K(n69), .TI(u5_N61), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_26_) );
  GTECH_FJK2S u5_i_reg_27_ ( .J(n69), .K(n69), .TI(u5_N62), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_27_) );
  GTECH_FJK2S u5_i_reg_28_ ( .J(n69), .K(n69), .TI(u5_N63), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_28_) );
  GTECH_FJK2S u5_i_reg_29_ ( .J(n69), .K(n69), .TI(u5_N64), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_29_) );
  GTECH_FJK2S u5_i_reg_30_ ( .J(n69), .K(n69), .TI(u5_N65), .TE(u5_N66), .CP(
        clk), .CD(n68), .Q(u5_i_30_) );
  GTECH_FJK2S u4_q2_reg_7_ ( .J(n69), .K(n69), .TI(u4_N10), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[15]) );
  GTECH_FJK2S u4_q2_reg_0_ ( .J(n69), .K(n69), .TI(u4_N3), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[8]) );
  GTECH_FJK2S u4_q2_reg_1_ ( .J(n69), .K(n69), .TI(u4_N4), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[9]) );
  GTECH_FJK2S u4_q2_reg_2_ ( .J(n69), .K(n69), .TI(u4_N5), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[10]) );
  GTECH_FJK2S u4_q2_reg_3_ ( .J(n69), .K(n69), .TI(u4_N6), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[11]) );
  GTECH_FJK2S u4_q2_reg_4_ ( .J(n69), .K(n69), .TI(u4_N7), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[12]) );
  GTECH_FJK2S u4_q2_reg_5_ ( .J(n69), .K(n69), .TI(u4_N8), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[13]) );
  GTECH_FJK2S u4_q2_reg_6_ ( .J(n69), .K(n69), .TI(u4_N9), .TE(u4_N13), .CP(
        clk), .CD(n68), .Q(op[14]) );
  GTECH_FJK2S e1_q3_reg_7_ ( .J(n69), .K(n69), .TI(e1_N11), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[7]) );
  GTECH_FJK2S e1_q3_reg_6_ ( .J(n69), .K(n69), .TI(op[7]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[6]) );
  GTECH_FJK2S e1_q3_reg_5_ ( .J(n69), .K(n69), .TI(op[6]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[5]) );
  GTECH_FJK2S e1_q3_reg_4_ ( .J(n69), .K(n69), .TI(op[5]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[4]) );
  GTECH_FJK2S e1_q3_reg_3_ ( .J(n69), .K(n69), .TI(op[4]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[3]) );
  GTECH_FJK2S e1_q3_reg_2_ ( .J(n69), .K(n69), .TI(op[3]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[2]) );
  GTECH_FJK2S e1_q3_reg_1_ ( .J(n69), .K(n69), .TI(op[2]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[1]) );
  GTECH_FJK2S e1_q3_reg_0_ ( .J(n69), .K(n69), .TI(op[1]), .TE(e1_N14), .CP(
        n67), .CD(n68), .Q(op[0]) );
  GTECH_ZERO U192 ( .Z(n69) );
  GTECH_ONE U193 ( .Z(n68) );
  GTECH_AND2 U194 ( .A(n205), .B(n206), .Z(u5_N68) );
  GTECH_AND2 U195 ( .A(n207), .B(n208), .Z(u5_N67) );
  GTECH_XOR2 U196 ( .A(u5_i_31_), .B(n209), .Z(n208) );
  GTECH_AND2 U197 ( .A(u5_i_30_), .B(n210), .Z(n209) );
  GTECH_OR_NOT U198 ( .A(n207), .B(n206), .Z(u5_N66) );
  GTECH_AND2 U199 ( .A(n207), .B(n211), .Z(u5_N65) );
  GTECH_XOR2 U200 ( .A(u5_i_30_), .B(n210), .Z(n211) );
  GTECH_NOT U201 ( .A(n212), .Z(n210) );
  GTECH_OR_NOT U202 ( .A(n213), .B(u5_i_29_), .Z(n212) );
  GTECH_AND2 U203 ( .A(n207), .B(n214), .Z(u5_N64) );
  GTECH_XNOR2 U204 ( .A(u5_i_29_), .B(n213), .Z(n214) );
  GTECH_OR_NOT U205 ( .A(n215), .B(u5_i_28_), .Z(n213) );
  GTECH_AND2 U206 ( .A(n207), .B(n216), .Z(u5_N63) );
  GTECH_XNOR2 U207 ( .A(u5_i_28_), .B(n215), .Z(n216) );
  GTECH_OR_NOT U208 ( .A(n217), .B(u5_i_27_), .Z(n215) );
  GTECH_AND2 U209 ( .A(n207), .B(n218), .Z(u5_N62) );
  GTECH_XNOR2 U210 ( .A(u5_i_27_), .B(n217), .Z(n218) );
  GTECH_OR_NOT U211 ( .A(n219), .B(u5_i_26_), .Z(n217) );
  GTECH_AND2 U212 ( .A(n207), .B(n220), .Z(u5_N61) );
  GTECH_XNOR2 U213 ( .A(u5_i_26_), .B(n219), .Z(n220) );
  GTECH_OR_NOT U214 ( .A(n221), .B(u5_i_25_), .Z(n219) );
  GTECH_AND2 U215 ( .A(n207), .B(n222), .Z(u5_N60) );
  GTECH_XNOR2 U216 ( .A(u5_i_25_), .B(n221), .Z(n222) );
  GTECH_OR_NOT U217 ( .A(n223), .B(u5_i_24_), .Z(n221) );
  GTECH_AND2 U218 ( .A(n207), .B(n224), .Z(u5_N59) );
  GTECH_XNOR2 U219 ( .A(u5_i_24_), .B(n223), .Z(n224) );
  GTECH_OR_NOT U220 ( .A(n225), .B(u5_i_23_), .Z(n223) );
  GTECH_AND2 U221 ( .A(n207), .B(n226), .Z(u5_N58) );
  GTECH_XNOR2 U222 ( .A(u5_i_23_), .B(n225), .Z(n226) );
  GTECH_OR_NOT U223 ( .A(n227), .B(u5_i_22_), .Z(n225) );
  GTECH_AND2 U224 ( .A(n207), .B(n228), .Z(u5_N57) );
  GTECH_XNOR2 U225 ( .A(u5_i_22_), .B(n227), .Z(n228) );
  GTECH_OR_NOT U226 ( .A(n229), .B(u5_i_21_), .Z(n227) );
  GTECH_AND2 U227 ( .A(n207), .B(n230), .Z(u5_N56) );
  GTECH_XNOR2 U228 ( .A(u5_i_21_), .B(n229), .Z(n230) );
  GTECH_OR_NOT U229 ( .A(n231), .B(u5_i_20_), .Z(n229) );
  GTECH_AND2 U230 ( .A(n207), .B(n232), .Z(u5_N55) );
  GTECH_XNOR2 U231 ( .A(u5_i_20_), .B(n231), .Z(n232) );
  GTECH_OR_NOT U232 ( .A(n233), .B(u5_i_19_), .Z(n231) );
  GTECH_AND2 U233 ( .A(n207), .B(n234), .Z(u5_N54) );
  GTECH_XNOR2 U234 ( .A(u5_i_19_), .B(n233), .Z(n234) );
  GTECH_OR_NOT U235 ( .A(n235), .B(u5_i_18_), .Z(n233) );
  GTECH_AND2 U236 ( .A(n207), .B(n236), .Z(u5_N53) );
  GTECH_XNOR2 U237 ( .A(u5_i_18_), .B(n235), .Z(n236) );
  GTECH_OR_NOT U238 ( .A(n237), .B(u5_i_17_), .Z(n235) );
  GTECH_AND2 U239 ( .A(n207), .B(n238), .Z(u5_N52) );
  GTECH_XNOR2 U240 ( .A(u5_i_17_), .B(n237), .Z(n238) );
  GTECH_OR_NOT U241 ( .A(n239), .B(u5_i_16_), .Z(n237) );
  GTECH_AND2 U242 ( .A(n207), .B(n240), .Z(u5_N51) );
  GTECH_XNOR2 U243 ( .A(u5_i_16_), .B(n239), .Z(n240) );
  GTECH_OR_NOT U244 ( .A(n241), .B(u5_i_15_), .Z(n239) );
  GTECH_AND2 U245 ( .A(n207), .B(n242), .Z(u5_N50) );
  GTECH_XNOR2 U246 ( .A(u5_i_15_), .B(n241), .Z(n242) );
  GTECH_OR_NOT U247 ( .A(n243), .B(u5_i_14_), .Z(n241) );
  GTECH_AND2 U248 ( .A(n207), .B(n244), .Z(u5_N49) );
  GTECH_XNOR2 U249 ( .A(u5_i_14_), .B(n243), .Z(n244) );
  GTECH_OR_NOT U250 ( .A(n245), .B(u5_i_13_), .Z(n243) );
  GTECH_AND2 U251 ( .A(n207), .B(n246), .Z(u5_N48) );
  GTECH_XNOR2 U252 ( .A(u5_i_13_), .B(n245), .Z(n246) );
  GTECH_OR_NOT U253 ( .A(n247), .B(u5_i_12_), .Z(n245) );
  GTECH_AND2 U254 ( .A(n207), .B(n248), .Z(u5_N47) );
  GTECH_XNOR2 U255 ( .A(u5_i_12_), .B(n247), .Z(n248) );
  GTECH_OR_NOT U256 ( .A(n249), .B(u5_i_11_), .Z(n247) );
  GTECH_AND2 U257 ( .A(n207), .B(n250), .Z(u5_N46) );
  GTECH_XNOR2 U258 ( .A(u5_i_11_), .B(n249), .Z(n250) );
  GTECH_OR_NOT U259 ( .A(n251), .B(u5_i_10_), .Z(n249) );
  GTECH_AND2 U260 ( .A(n207), .B(n252), .Z(u5_N45) );
  GTECH_XNOR2 U261 ( .A(u5_i_10_), .B(n251), .Z(n252) );
  GTECH_OR_NOT U262 ( .A(n253), .B(u5_i_9_), .Z(n251) );
  GTECH_AND2 U263 ( .A(n207), .B(n254), .Z(u5_N44) );
  GTECH_XNOR2 U264 ( .A(u5_i_9_), .B(n253), .Z(n254) );
  GTECH_OR_NOT U265 ( .A(n255), .B(u5_i_8_), .Z(n253) );
  GTECH_AND2 U266 ( .A(n207), .B(n256), .Z(u5_N43) );
  GTECH_XNOR2 U267 ( .A(u5_i_8_), .B(n255), .Z(n256) );
  GTECH_OR_NOT U268 ( .A(n257), .B(u5_i_7_), .Z(n255) );
  GTECH_AND2 U269 ( .A(n207), .B(n258), .Z(u5_N42) );
  GTECH_XNOR2 U270 ( .A(u5_i_7_), .B(n257), .Z(n258) );
  GTECH_OR_NOT U271 ( .A(n259), .B(u5_i_6_), .Z(n257) );
  GTECH_AND2 U272 ( .A(n207), .B(n260), .Z(u5_N41) );
  GTECH_XNOR2 U273 ( .A(u5_i_6_), .B(n259), .Z(n260) );
  GTECH_OR_NOT U274 ( .A(n261), .B(u5_i_5_), .Z(n259) );
  GTECH_AND2 U275 ( .A(n207), .B(n262), .Z(u5_N40) );
  GTECH_XNOR2 U276 ( .A(u5_i_5_), .B(n261), .Z(n262) );
  GTECH_OR_NOT U277 ( .A(n263), .B(u5_i_4_), .Z(n261) );
  GTECH_AND2 U278 ( .A(n207), .B(n264), .Z(u5_N39) );
  GTECH_XNOR2 U279 ( .A(u5_i_4_), .B(n263), .Z(n264) );
  GTECH_OR_NOT U280 ( .A(n265), .B(u5_i_3_), .Z(n263) );
  GTECH_AND2 U281 ( .A(n207), .B(n266), .Z(u5_N38) );
  GTECH_XNOR2 U282 ( .A(u5_i_3_), .B(n265), .Z(n266) );
  GTECH_OAI22 U283 ( .A(n267), .B(n268), .C(n269), .D(n270), .Z(u5_N37) );
  GTECH_MUX2 U284 ( .A(n267), .B(n271), .S(u5_i_1_), .Z(n270) );
  GTECH_OR_NOT U285 ( .A(u5_i_2_), .B(u5_i_0_), .Z(n271) );
  GTECH_NOT U286 ( .A(u5_i_2_), .Z(n267) );
  GTECH_MUX2 U287 ( .A(n272), .B(u5_N35), .S(u5_i_1_), .Z(u5_N36) );
  GTECH_AND2 U288 ( .A(n207), .B(u5_i_0_), .Z(n272) );
  GTECH_NOT U289 ( .A(n268), .Z(u5_N35) );
  GTECH_OR_NOT U290 ( .A(u5_i_0_), .B(n207), .Z(n268) );
  GTECH_NOT U291 ( .A(n269), .Z(n207) );
  GTECH_OR_NOT U292 ( .A(n205), .B(n206), .Z(n269) );
  GTECH_AND2 U293 ( .A(n273), .B(n274), .Z(n205) );
  GTECH_NOR8 U294 ( .A(u5_i_12_), .B(u5_i_13_), .C(u5_i_14_), .D(u5_i_15_), 
        .E(u5_i_10_), .F(u5_i_11_), .G(n275), .H(n265), .Z(n274) );
  GTECH_NAND3 U295 ( .A(u5_i_1_), .B(u5_i_0_), .C(u5_i_2_), .Z(n265) );
  GTECH_OR8 U296 ( .A(u5_i_22_), .B(u5_i_23_), .C(u5_i_20_), .D(u5_i_21_), .E(
        u5_i_18_), .F(u5_i_19_), .G(u5_i_16_), .H(u5_i_17_), .Z(n275) );
  GTECH_NOR8 U297 ( .A(u5_i_24_), .B(n276), .C(u5_i_25_), .D(u5_i_26_), .E(
        u5_i_29_), .F(u5_i_30_), .G(u5_i_27_), .H(u5_i_28_), .Z(n273) );
  GTECH_OR8 U298 ( .A(u5_i_8_), .B(u5_i_9_), .C(u5_i_6_), .D(u5_i_7_), .E(
        u5_i_4_), .F(u5_i_5_), .G(u5_i_31_), .H(u5_i_3_), .Z(n276) );
  GTECH_AND2 U299 ( .A(n206), .B(n277), .Z(u4_N9) );
  GTECH_OAI21 U300 ( .A(n278), .B(n279), .C(n280), .Z(n277) );
  GTECH_MUX2 U301 ( .A(n281), .B(n282), .S(n283), .Z(n280) );
  GTECH_OR_NOT U302 ( .A(op[15]), .B(n284), .Z(n282) );
  GTECH_XOR2 U303 ( .A(op[15]), .B(n284), .Z(n281) );
  GTECH_NOT U304 ( .A(op[15]), .Z(n278) );
  GTECH_AND2 U305 ( .A(n206), .B(n285), .Z(u4_N8) );
  GTECH_XOR3 U306 ( .A(n286), .B(n287), .C(op[14]), .Z(n285) );
  GTECH_AND2 U307 ( .A(z[0]), .B(x[6]), .Z(n286) );
  GTECH_AND2 U308 ( .A(n206), .B(n288), .Z(u4_N7) );
  GTECH_XOR3 U309 ( .A(n289), .B(n290), .C(op[13]), .Z(n288) );
  GTECH_AND2 U310 ( .A(z[0]), .B(x[5]), .Z(n289) );
  GTECH_AND2 U311 ( .A(n206), .B(n291), .Z(u4_N6) );
  GTECH_XOR3 U312 ( .A(n292), .B(n293), .C(op[12]), .Z(n291) );
  GTECH_AND2 U313 ( .A(z[0]), .B(x[4]), .Z(n292) );
  GTECH_AND2 U314 ( .A(n206), .B(n294), .Z(u4_N5) );
  GTECH_XOR3 U315 ( .A(n295), .B(n296), .C(op[11]), .Z(n294) );
  GTECH_AND2 U316 ( .A(z[0]), .B(x[3]), .Z(n295) );
  GTECH_AND2 U317 ( .A(n206), .B(n297), .Z(u4_N4) );
  GTECH_XOR3 U318 ( .A(n298), .B(n299), .C(op[10]), .Z(n297) );
  GTECH_AND2 U319 ( .A(z[0]), .B(x[2]), .Z(n298) );
  GTECH_AND2 U320 ( .A(n206), .B(n300), .Z(u4_N3) );
  GTECH_XOR3 U321 ( .A(n301), .B(n302), .C(op[9]), .Z(n300) );
  GTECH_AND2 U322 ( .A(z[0]), .B(x[1]), .Z(n301) );
  GTECH_OR_NOT U323 ( .A(n303), .B(valid), .Z(u4_N13) );
  GTECH_AND2 U324 ( .A(n206), .B(n304), .Z(u4_N10) );
  GTECH_OAI2N2 U325 ( .A(n283), .B(n305), .C(n279), .D(op[15]), .Z(n304) );
  GTECH_OR_NOT U326 ( .A(n284), .B(n283), .Z(n279) );
  GTECH_NOT U327 ( .A(n305), .Z(n284) );
  GTECH_OR_NOT U328 ( .A(n306), .B(x[7]), .Z(n305) );
  GTECH_NOT U329 ( .A(z[0]), .Z(n306) );
  GTECH_NOT U330 ( .A(n307), .Z(n283) );
  GTECH_ADD_ABC U331 ( .A(n308), .B(op[14]), .C(n287), .COUT(n307) );
  GTECH_ADD_ABC U332 ( .A(n309), .B(op[13]), .C(n290), .COUT(n287) );
  GTECH_ADD_ABC U333 ( .A(n310), .B(op[12]), .C(n293), .COUT(n290) );
  GTECH_ADD_ABC U334 ( .A(n311), .B(op[11]), .C(n296), .COUT(n293) );
  GTECH_ADD_ABC U335 ( .A(n312), .B(op[10]), .C(n299), .COUT(n296) );
  GTECH_ADD_ABC U336 ( .A(n313), .B(op[9]), .C(n302), .COUT(n299) );
  GTECH_NOT U337 ( .A(n314), .Z(n302) );
  GTECH_NAND3 U338 ( .A(x[0]), .B(op[8]), .C(z[0]), .Z(n314) );
  GTECH_AND2 U339 ( .A(x[1]), .B(z[0]), .Z(n313) );
  GTECH_AND2 U340 ( .A(x[2]), .B(z[0]), .Z(n312) );
  GTECH_AND2 U341 ( .A(x[3]), .B(z[0]), .Z(n311) );
  GTECH_AND2 U342 ( .A(x[4]), .B(z[0]), .Z(n310) );
  GTECH_AND2 U343 ( .A(x[5]), .B(z[0]), .Z(n309) );
  GTECH_AND2 U344 ( .A(x[6]), .B(z[0]), .Z(n308) );
  GTECH_NOT U345 ( .A(n303), .Z(n206) );
  GTECH_OAI2N2 U346 ( .A(n303), .B(n13), .C(b[5]), .D(n315), .Z(u2_N9) );
  GTECH_OAI2N2 U347 ( .A(n303), .B(n14), .C(b[4]), .D(n315), .Z(u2_N8) );
  GTECH_OAI2N2 U348 ( .A(n303), .B(n15), .C(b[3]), .D(n315), .Z(u2_N7) );
  GTECH_OAI2N2 U349 ( .A(n303), .B(n16), .C(b[2]), .D(n315), .Z(u2_N6) );
  GTECH_OAI2N2 U350 ( .A(n303), .B(n17), .C(b[1]), .D(n315), .Z(u2_N5) );
  GTECH_OAI2N2 U351 ( .A(n303), .B(n18), .C(b[0]), .D(n315), .Z(u2_N4) );
  GTECH_AND2 U352 ( .A(b[7]), .B(n315), .Z(u2_N11) );
  GTECH_OAI2N2 U353 ( .A(n303), .B(n12), .C(b[6]), .D(n315), .Z(u2_N10) );
  GTECH_OR_NOT U354 ( .A(load), .B(n316), .Z(n303) );
  GTECH_AND2 U355 ( .A(a[7]), .B(n315), .Z(u1_N9) );
  GTECH_OR_NOT U356 ( .A(n315), .B(n316), .Z(u1_N8) );
  GTECH_NOT U357 ( .A(reset), .Z(n316) );
  GTECH_AND2 U358 ( .A(a[6]), .B(n315), .Z(u1_N7) );
  GTECH_AND2 U359 ( .A(a[5]), .B(n315), .Z(u1_N6) );
  GTECH_AND2 U360 ( .A(a[4]), .B(n315), .Z(u1_N5) );
  GTECH_AND2 U361 ( .A(a[3]), .B(n315), .Z(u1_N4) );
  GTECH_AND2 U362 ( .A(a[2]), .B(n315), .Z(u1_N3) );
  GTECH_AND2 U363 ( .A(a[1]), .B(n315), .Z(u1_N2) );
  GTECH_AND2 U364 ( .A(a[0]), .B(n315), .Z(u1_N1) );
  GTECH_NOT U365 ( .A(n317), .Z(n315) );
  GTECH_OR_NOT U366 ( .A(reset), .B(load), .Z(n317) );
  GTECH_NOT U367 ( .A(clk), .Z(n67) );
  GTECH_XOR2 U368 ( .A(op[8]), .B(n318), .Z(e1_N11) );
  GTECH_AND2 U369 ( .A(z[0]), .B(x[0]), .Z(n318) );
endmodule

