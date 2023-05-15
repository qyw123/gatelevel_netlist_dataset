
module shift_add_multiplier ( clk, rst, D, Q, out );
  input [7:0] D;
  input [7:0] Q;
  output [15:0] out;
  input clk, rst;
  wire   load_cmd, add_cmd, out_cmd, lsb, shifter_N24, shifter_N23,
         shifter_N22, shifter_N21, shifter_N20, shifter_N19, shifter_N18,
         shifter_N17, shifter_N16, shifter_N15, shifter_N14, shifter_N13,
         shifter_N12, shifter_N11, shifter_N10, shifter_N9, shifter_N8,
         shifter_N7, shifter_N6, shifter_add_temp, shifter_temp_1_,
         shifter_temp_2_, shifter_temp_3_, shifter_temp_4_, shifter_temp_5_,
         shifter_temp_6_, shifter_temp_7_, controller_N102, controller_N98,
         controller_N97, controller_N96, controller_N95, controller_N94,
         controller_N93, controller_N92, controller_N91, controller_N90,
         controller_N83, controller_N82, controller_N81, controller_N80,
         controller_N79, controller_N78, controller_N77, controller_N76,
         controller_N75, controller_N74, controller_N73, controller_N72,
         controller_N71, controller_N70, controller_N69, controller_N68,
         controller_N67, controller_N66, controller_N65, controller_N64,
         controller_N63, controller_N62, controller_N61, controller_N60,
         controller_N59, controller_N58, controller_N57, controller_N56,
         controller_N55, controller_N54, controller_N53, controller_N52,
         controller_count_0_, controller_count_1_, controller_count_2_,
         controller_count_3_, controller_count_4_, controller_count_5_,
         controller_count_6_, controller_count_7_, controller_count_8_,
         controller_count_9_, controller_count_10_, controller_count_11_,
         controller_count_12_, controller_count_13_, controller_count_14_,
         controller_count_15_, controller_count_16_, controller_count_17_,
         controller_count_18_, controller_count_19_, controller_count_20_,
         controller_count_21_, controller_count_22_, controller_count_23_,
         controller_count_24_, controller_count_25_, controller_count_26_,
         controller_count_27_, controller_count_28_, controller_count_29_,
         controller_count_30_, controller_count_31_, controller_state_0_,
         controller_state_1_, controller_state_2_, controller_start, n8, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n139, n141, n144, n55,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n55), .K(n55), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_31_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n55), .K(n55), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_30_), 
        .QN(n169) );
  GTECH_FJK3 controller_start_reg ( .J(n55), .K(controller_N97), .CP(clk), 
        .CD(n139), .SD(n144), .Q(controller_start), .QN(n141) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n55), .K(n55), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n144), .Q(controller_state_0_), 
        .QN(n8) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n55), .K(n55), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n144), .Q(controller_state_1_), 
        .QN(n149) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n55), .K(n55), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n144), .Q(controller_state_2_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n55), .K(n55), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_29_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n55), .K(n55), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_28_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n55), .K(n55), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_27_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n55), .K(n55), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_26_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n55), .K(n55), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_25_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n55), .K(n55), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_24_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n55), .K(n55), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_23_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n55), .K(n55), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_22_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n55), .K(n55), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_21_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n55), .K(n55), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_20_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n55), .K(n55), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_19_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n55), .K(n55), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_18_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n55), .K(n55), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_17_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n55), .K(n55), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_16_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n55), .K(n55), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_15_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n55), .K(n55), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_14_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n55), .K(n55), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_13_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n55), .K(n55), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_12_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n55), .K(n55), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_11_), 
        .QN(n182) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n55), .K(n55), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_10_), 
        .QN(n181) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n55), .K(n55), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_9_), 
        .QN(n180) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n55), .K(n55), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_8_), 
        .QN(n179) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n55), .K(n55), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_7_), 
        .QN(n178) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n55), .K(n55), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_6_), 
        .QN(n177) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n55), .K(n55), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_5_), 
        .QN(n176) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n55), .K(n55), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_4_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n55), .K(n55), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_3_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n55), .K(n55), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_2_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n55), .K(n55), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_1_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n55), .K(n55), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n144), .Q(controller_count_0_), 
        .QN(n171) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n55), .K(n55), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n144), .Q(out_cmd) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n55), .K(n55), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .QN(n147) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n55), .K(n55), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n11) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n55), .K(n55), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n12) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n55), .K(n55), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n144), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n55), .K(n55), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[0]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n55), .K(n55), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[7]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n55), .K(n55), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[6]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n55), .K(n55), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[5]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n55), .K(n55), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[4]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n55), .K(n55), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[3]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n55), .K(n55), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[2]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n55), .K(n55), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(A[1]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n55), .K(n55), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n55), .K(n55), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n55), .K(n55), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n55), .K(n55), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n55), .K(n55), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n55), .K(n55), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n55), .K(n55), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n55), .K(n55), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n144), .Q(lsb), .QN(n148) );
  GTECH_ZERO U167 ( .Z(n55) );
  GTECH_ONE U168 ( .Z(n139) );
  GTECH_AO22 U169 ( .A(Q[3]), .B(n183), .C(shifter_temp_4_), .D(n184), .Z(
        shifter_N9) );
  GTECH_AO22 U170 ( .A(Q[2]), .B(n183), .C(shifter_temp_3_), .D(n184), .Z(
        shifter_N8) );
  GTECH_AO22 U171 ( .A(Q[1]), .B(n183), .C(shifter_temp_2_), .D(n184), .Z(
        shifter_N7) );
  GTECH_AO22 U172 ( .A(Q[0]), .B(n183), .C(shifter_temp_1_), .D(n184), .Z(
        shifter_N6) );
  GTECH_NOT U173 ( .A(n185), .Z(shifter_N24) );
  GTECH_NAND2 U174 ( .A(n185), .B(n186), .Z(shifter_N23) );
  GTECH_NAND2 U175 ( .A(n11), .B(n187), .Z(n185) );
  GTECH_NOT U176 ( .A(n12), .Z(n187) );
  GTECH_NAND2 U177 ( .A(n188), .B(n11), .Z(shifter_N22) );
  GTECH_NOT U178 ( .A(n184), .Z(n188) );
  GTECH_AND2 U179 ( .A(n189), .B(n190), .Z(shifter_N21) );
  GTECH_OAI22 U180 ( .A(n191), .B(n192), .C(n15), .D(n193), .Z(n190) );
  GTECH_NOT U181 ( .A(n194), .Z(n193) );
  GTECH_NOT U182 ( .A(n186), .Z(n189) );
  GTECH_OAI22 U183 ( .A(n15), .B(n195), .C(n196), .D(n186), .Z(shifter_N20) );
  GTECH_OA21 U184 ( .A(n15), .B(n194), .C(n197), .Z(n196) );
  GTECH_MUX2 U185 ( .A(n198), .B(n199), .S(n191), .Z(n197) );
  GTECH_NAND2 U186 ( .A(n15), .B(D[7]), .Z(n199) );
  GTECH_XOR2 U187 ( .A(n192), .B(n15), .Z(n198) );
  GTECH_NAND2 U188 ( .A(n191), .B(n192), .Z(n194) );
  GTECH_NOT U189 ( .A(D[7]), .Z(n192) );
  GTECH_AND2 U190 ( .A(n200), .B(n201), .Z(n191) );
  GTECH_OR_NOT U191 ( .A(n16), .B(D[6]), .Z(n201) );
  GTECH_OAI21 U192 ( .A(D[6]), .B(n202), .C(n203), .Z(n200) );
  GTECH_OAI22 U193 ( .A(n16), .B(n195), .C(n204), .D(n186), .Z(shifter_N19) );
  GTECH_XOR3 U194 ( .A(n16), .B(D[6]), .C(n203), .Z(n204) );
  GTECH_OAI21 U195 ( .A(n17), .B(n205), .C(n206), .Z(n203) );
  GTECH_OAI21 U196 ( .A(D[5]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U197 ( .A(D[5]), .Z(n205) );
  GTECH_OAI22 U198 ( .A(n17), .B(n195), .C(n209), .D(n186), .Z(shifter_N18) );
  GTECH_XOR3 U199 ( .A(n17), .B(D[5]), .C(n208), .Z(n209) );
  GTECH_OAI21 U200 ( .A(n18), .B(n210), .C(n211), .Z(n208) );
  GTECH_OAI21 U201 ( .A(D[4]), .B(n212), .C(n213), .Z(n211) );
  GTECH_NOT U202 ( .A(D[4]), .Z(n210) );
  GTECH_OAI22 U203 ( .A(n18), .B(n195), .C(n214), .D(n186), .Z(shifter_N17) );
  GTECH_XOR3 U204 ( .A(n18), .B(D[4]), .C(n213), .Z(n214) );
  GTECH_OAI21 U205 ( .A(n19), .B(n215), .C(n216), .Z(n213) );
  GTECH_OAI21 U206 ( .A(D[3]), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U207 ( .A(D[3]), .Z(n215) );
  GTECH_OAI22 U208 ( .A(n19), .B(n195), .C(n219), .D(n186), .Z(shifter_N16) );
  GTECH_XOR3 U209 ( .A(n19), .B(D[3]), .C(n218), .Z(n219) );
  GTECH_OAI21 U210 ( .A(n20), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U211 ( .A(D[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U212 ( .A(D[2]), .Z(n220) );
  GTECH_OAI22 U213 ( .A(n20), .B(n195), .C(n224), .D(n186), .Z(shifter_N15) );
  GTECH_XOR3 U214 ( .A(n20), .B(D[2]), .C(n223), .Z(n224) );
  GTECH_OAI21 U215 ( .A(n21), .B(n225), .C(n226), .Z(n223) );
  GTECH_OAI21 U216 ( .A(D[1]), .B(n227), .C(n228), .Z(n226) );
  GTECH_NOT U217 ( .A(D[1]), .Z(n225) );
  GTECH_OAI22 U218 ( .A(n21), .B(n195), .C(n186), .D(n229), .Z(shifter_N14) );
  GTECH_XOR3 U219 ( .A(n21), .B(D[1]), .C(n228), .Z(n229) );
  GTECH_NOT U220 ( .A(n230), .Z(n228) );
  GTECH_NAND2 U221 ( .A(D[0]), .B(n231), .Z(n230) );
  GTECH_AO21 U222 ( .A(Q[7]), .B(n183), .C(n232), .Z(shifter_N13) );
  GTECH_OAI22 U223 ( .A(n186), .B(n233), .C(n14), .D(n195), .Z(n232) );
  GTECH_XOR2 U224 ( .A(D[0]), .B(n14), .Z(n233) );
  GTECH_AO22 U225 ( .A(Q[6]), .B(n183), .C(shifter_temp_7_), .D(n184), .Z(
        shifter_N12) );
  GTECH_AO22 U226 ( .A(Q[5]), .B(n183), .C(shifter_temp_6_), .D(n184), .Z(
        shifter_N11) );
  GTECH_AO22 U227 ( .A(Q[4]), .B(n183), .C(shifter_temp_5_), .D(n184), .Z(
        shifter_N10) );
  GTECH_NAND2 U228 ( .A(n195), .B(n186), .Z(n184) );
  GTECH_NAND4 U229 ( .A(shifter_add_temp), .B(n12), .C(n11), .D(n234), .Z(n186) );
  GTECH_NAND4 U230 ( .A(n12), .B(n11), .C(n234), .D(n235), .Z(n195) );
  GTECH_NOT U231 ( .A(shifter_add_temp), .Z(n235) );
  GTECH_NOT U232 ( .A(n147), .Z(n234) );
  GTECH_NOT U233 ( .A(n11), .Z(n183) );
  GTECH_AND2 U234 ( .A(out_cmd), .B(n227), .Z(out[9]) );
  GTECH_NOT U235 ( .A(n21), .Z(n227) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(n231), .Z(out[8]) );
  GTECH_NOT U237 ( .A(n14), .Z(n231) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(n236), .Z(out[15]) );
  GTECH_NOT U246 ( .A(n15), .Z(n236) );
  GTECH_AND2 U247 ( .A(out_cmd), .B(n202), .Z(out[14]) );
  GTECH_NOT U248 ( .A(n16), .Z(n202) );
  GTECH_AND2 U249 ( .A(out_cmd), .B(n207), .Z(out[13]) );
  GTECH_NOT U250 ( .A(n17), .Z(n207) );
  GTECH_AND2 U251 ( .A(out_cmd), .B(n212), .Z(out[12]) );
  GTECH_NOT U252 ( .A(n18), .Z(n212) );
  GTECH_AND2 U253 ( .A(out_cmd), .B(n217), .Z(out[11]) );
  GTECH_NOT U254 ( .A(n19), .Z(n217) );
  GTECH_AND2 U255 ( .A(out_cmd), .B(n222), .Z(out[10]) );
  GTECH_NOT U256 ( .A(n20), .Z(n222) );
  GTECH_AND2 U257 ( .A(out_cmd), .B(n237), .Z(out[0]) );
  GTECH_AND2 U258 ( .A(controller_N98), .B(n238), .Z(controller_N97) );
  GTECH_NOT U259 ( .A(n239), .Z(controller_N98) );
  GTECH_NAND2 U260 ( .A(n240), .B(n241), .Z(controller_N96) );
  GTECH_OR3 U261 ( .A(n149), .B(n237), .C(n242), .Z(n241) );
  GTECH_NOT U262 ( .A(n148), .Z(n237) );
  GTECH_OAI21 U263 ( .A(n238), .B(n239), .C(n243), .Z(controller_N94) );
  GTECH_AND2 U264 ( .A(n244), .B(n245), .Z(n243) );
  GTECH_OR3 U265 ( .A(n149), .B(n148), .C(n246), .Z(n244) );
  GTECH_AND_NOT U266 ( .A(n247), .B(n248), .Z(controller_N93) );
  GTECH_MUX2 U267 ( .A(n148), .B(n141), .S(n149), .Z(n248) );
  GTECH_AND3 U268 ( .A(n247), .B(n149), .C(n141), .Z(controller_N92) );
  GTECH_NOT U269 ( .A(n246), .Z(n247) );
  GTECH_NAND2 U270 ( .A(n150), .B(n8), .Z(n246) );
  GTECH_NOT U271 ( .A(n240), .Z(controller_N91) );
  GTECH_OR3 U272 ( .A(n8), .B(n149), .C(n242), .Z(n240) );
  GTECH_NOT U273 ( .A(n245), .Z(controller_N90) );
  GTECH_OR3 U274 ( .A(n8), .B(n249), .C(n242), .Z(n245) );
  GTECH_OA21 U275 ( .A(n169), .B(n250), .C(n251), .Z(controller_N83) );
  GTECH_NOT U276 ( .A(n170), .Z(n251) );
  GTECH_AND2 U277 ( .A(n252), .B(n253), .Z(controller_N82) );
  GTECH_XOR2 U278 ( .A(n250), .B(n169), .Z(n252) );
  GTECH_NAND2 U279 ( .A(n254), .B(n255), .Z(n250) );
  GTECH_NOT U280 ( .A(n168), .Z(n255) );
  GTECH_NOT U281 ( .A(n256), .Z(n254) );
  GTECH_AND2 U282 ( .A(n257), .B(n253), .Z(controller_N81) );
  GTECH_XOR2 U283 ( .A(n256), .B(n168), .Z(n257) );
  GTECH_NAND2 U284 ( .A(n258), .B(n259), .Z(n256) );
  GTECH_NOT U285 ( .A(n167), .Z(n259) );
  GTECH_NOT U286 ( .A(n260), .Z(n258) );
  GTECH_AND2 U287 ( .A(n261), .B(n253), .Z(controller_N80) );
  GTECH_XOR2 U288 ( .A(n260), .B(n167), .Z(n261) );
  GTECH_NAND2 U289 ( .A(n262), .B(n263), .Z(n260) );
  GTECH_NOT U290 ( .A(n166), .Z(n263) );
  GTECH_NOT U291 ( .A(n264), .Z(n262) );
  GTECH_AND2 U292 ( .A(n265), .B(n253), .Z(controller_N79) );
  GTECH_XOR2 U293 ( .A(n264), .B(n166), .Z(n265) );
  GTECH_NAND2 U294 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_NOT U295 ( .A(n165), .Z(n267) );
  GTECH_NOT U296 ( .A(n268), .Z(n266) );
  GTECH_AND2 U297 ( .A(n269), .B(n253), .Z(controller_N78) );
  GTECH_XOR2 U298 ( .A(n268), .B(n165), .Z(n269) );
  GTECH_NAND2 U299 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_NOT U300 ( .A(n164), .Z(n271) );
  GTECH_NOT U301 ( .A(n272), .Z(n270) );
  GTECH_AND2 U302 ( .A(n273), .B(n253), .Z(controller_N77) );
  GTECH_XOR2 U303 ( .A(n272), .B(n164), .Z(n273) );
  GTECH_NAND2 U304 ( .A(n274), .B(n275), .Z(n272) );
  GTECH_NOT U305 ( .A(n163), .Z(n275) );
  GTECH_NOT U306 ( .A(n276), .Z(n274) );
  GTECH_AND2 U307 ( .A(n277), .B(n253), .Z(controller_N76) );
  GTECH_XOR2 U308 ( .A(n276), .B(n163), .Z(n277) );
  GTECH_NAND2 U309 ( .A(n278), .B(n279), .Z(n276) );
  GTECH_NOT U310 ( .A(n162), .Z(n279) );
  GTECH_NOT U311 ( .A(n280), .Z(n278) );
  GTECH_AND2 U312 ( .A(n281), .B(n253), .Z(controller_N75) );
  GTECH_XOR2 U313 ( .A(n280), .B(n162), .Z(n281) );
  GTECH_NAND2 U314 ( .A(n282), .B(n283), .Z(n280) );
  GTECH_NOT U315 ( .A(n161), .Z(n283) );
  GTECH_NOT U316 ( .A(n284), .Z(n282) );
  GTECH_AND2 U317 ( .A(n285), .B(n253), .Z(controller_N74) );
  GTECH_XOR2 U318 ( .A(n284), .B(n161), .Z(n285) );
  GTECH_NAND2 U319 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U320 ( .A(n160), .Z(n287) );
  GTECH_NOT U321 ( .A(n288), .Z(n286) );
  GTECH_AND2 U322 ( .A(n289), .B(n253), .Z(controller_N73) );
  GTECH_XOR2 U323 ( .A(n288), .B(n160), .Z(n289) );
  GTECH_NAND2 U324 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U325 ( .A(n159), .Z(n291) );
  GTECH_NOT U326 ( .A(n292), .Z(n290) );
  GTECH_AND2 U327 ( .A(n293), .B(n253), .Z(controller_N72) );
  GTECH_XOR2 U328 ( .A(n292), .B(n159), .Z(n293) );
  GTECH_NAND2 U329 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U330 ( .A(n158), .Z(n295) );
  GTECH_NOT U331 ( .A(n296), .Z(n294) );
  GTECH_AND2 U332 ( .A(n297), .B(n253), .Z(controller_N71) );
  GTECH_XOR2 U333 ( .A(n296), .B(n158), .Z(n297) );
  GTECH_NAND2 U334 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U335 ( .A(n157), .Z(n299) );
  GTECH_NOT U336 ( .A(n300), .Z(n298) );
  GTECH_AND2 U337 ( .A(n301), .B(n253), .Z(controller_N70) );
  GTECH_XOR2 U338 ( .A(n300), .B(n157), .Z(n301) );
  GTECH_NAND2 U339 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U340 ( .A(n156), .Z(n303) );
  GTECH_NOT U341 ( .A(n304), .Z(n302) );
  GTECH_AND2 U342 ( .A(n305), .B(n253), .Z(controller_N69) );
  GTECH_XOR2 U343 ( .A(n304), .B(n156), .Z(n305) );
  GTECH_NAND2 U344 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U345 ( .A(n155), .Z(n307) );
  GTECH_NOT U346 ( .A(n308), .Z(n306) );
  GTECH_AND2 U347 ( .A(n309), .B(n253), .Z(controller_N68) );
  GTECH_XOR2 U348 ( .A(n308), .B(n155), .Z(n309) );
  GTECH_NAND2 U349 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U350 ( .A(n154), .Z(n311) );
  GTECH_NOT U351 ( .A(n312), .Z(n310) );
  GTECH_AND2 U352 ( .A(n313), .B(n253), .Z(controller_N67) );
  GTECH_XOR2 U353 ( .A(n312), .B(n154), .Z(n313) );
  GTECH_NAND2 U354 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U355 ( .A(n153), .Z(n315) );
  GTECH_NOT U356 ( .A(n316), .Z(n314) );
  GTECH_AND2 U357 ( .A(n317), .B(n253), .Z(controller_N66) );
  GTECH_XOR2 U358 ( .A(n316), .B(n153), .Z(n317) );
  GTECH_NAND2 U359 ( .A(n318), .B(n319), .Z(n316) );
  GTECH_NOT U360 ( .A(n152), .Z(n319) );
  GTECH_NOT U361 ( .A(n320), .Z(n318) );
  GTECH_AND2 U362 ( .A(n321), .B(n253), .Z(controller_N65) );
  GTECH_XOR2 U363 ( .A(n320), .B(n152), .Z(n321) );
  GTECH_NAND2 U364 ( .A(n322), .B(n323), .Z(n320) );
  GTECH_NOT U365 ( .A(n151), .Z(n323) );
  GTECH_NOT U366 ( .A(n324), .Z(n322) );
  GTECH_AND2 U367 ( .A(n325), .B(n253), .Z(controller_N64) );
  GTECH_XOR2 U368 ( .A(n324), .B(n151), .Z(n325) );
  GTECH_NAND2 U369 ( .A(n326), .B(n327), .Z(n324) );
  GTECH_NOT U370 ( .A(n182), .Z(n327) );
  GTECH_NOT U371 ( .A(n328), .Z(n326) );
  GTECH_AND2 U372 ( .A(n329), .B(n253), .Z(controller_N63) );
  GTECH_XOR2 U373 ( .A(n328), .B(n182), .Z(n329) );
  GTECH_NAND2 U374 ( .A(n330), .B(n331), .Z(n328) );
  GTECH_NOT U375 ( .A(n181), .Z(n331) );
  GTECH_NOT U376 ( .A(n332), .Z(n330) );
  GTECH_AND2 U377 ( .A(n333), .B(n253), .Z(controller_N62) );
  GTECH_XOR2 U378 ( .A(n332), .B(n181), .Z(n333) );
  GTECH_NAND2 U379 ( .A(n334), .B(n335), .Z(n332) );
  GTECH_NOT U380 ( .A(n180), .Z(n335) );
  GTECH_NOT U381 ( .A(n336), .Z(n334) );
  GTECH_AND2 U382 ( .A(n337), .B(n253), .Z(controller_N61) );
  GTECH_XOR2 U383 ( .A(n336), .B(n180), .Z(n337) );
  GTECH_NAND2 U384 ( .A(n338), .B(n339), .Z(n336) );
  GTECH_NOT U385 ( .A(n179), .Z(n339) );
  GTECH_NOT U386 ( .A(n340), .Z(n338) );
  GTECH_AND2 U387 ( .A(n341), .B(n253), .Z(controller_N60) );
  GTECH_XOR2 U388 ( .A(n340), .B(n179), .Z(n341) );
  GTECH_NAND2 U389 ( .A(n342), .B(n343), .Z(n340) );
  GTECH_NOT U390 ( .A(n178), .Z(n343) );
  GTECH_NOT U391 ( .A(n344), .Z(n342) );
  GTECH_AND2 U392 ( .A(n345), .B(n253), .Z(controller_N59) );
  GTECH_XOR2 U393 ( .A(n344), .B(n178), .Z(n345) );
  GTECH_NAND2 U394 ( .A(n346), .B(n347), .Z(n344) );
  GTECH_NOT U395 ( .A(n177), .Z(n347) );
  GTECH_NOT U396 ( .A(n348), .Z(n346) );
  GTECH_AND2 U397 ( .A(n349), .B(n253), .Z(controller_N58) );
  GTECH_XOR2 U398 ( .A(n348), .B(n177), .Z(n349) );
  GTECH_NAND2 U399 ( .A(n350), .B(n351), .Z(n348) );
  GTECH_NOT U400 ( .A(n176), .Z(n351) );
  GTECH_NOT U401 ( .A(n352), .Z(n350) );
  GTECH_AND2 U402 ( .A(n353), .B(n253), .Z(controller_N57) );
  GTECH_XOR2 U403 ( .A(n352), .B(n176), .Z(n353) );
  GTECH_NAND2 U404 ( .A(n354), .B(n355), .Z(n352) );
  GTECH_NOT U405 ( .A(n175), .Z(n355) );
  GTECH_NOT U406 ( .A(n356), .Z(n354) );
  GTECH_AND2 U407 ( .A(n357), .B(n253), .Z(controller_N56) );
  GTECH_XOR2 U408 ( .A(n356), .B(n175), .Z(n357) );
  GTECH_NAND2 U409 ( .A(n358), .B(n359), .Z(n356) );
  GTECH_NOT U410 ( .A(n174), .Z(n359) );
  GTECH_NOT U411 ( .A(n360), .Z(n358) );
  GTECH_AND2 U412 ( .A(n361), .B(n253), .Z(controller_N55) );
  GTECH_XOR2 U413 ( .A(n360), .B(n174), .Z(n361) );
  GTECH_OR3 U414 ( .A(n173), .B(n172), .C(n171), .Z(n360) );
  GTECH_OAI22 U415 ( .A(n173), .B(n362), .C(n238), .D(n363), .Z(controller_N54) );
  GTECH_MUX2 U416 ( .A(n364), .B(n365), .S(n173), .Z(n363) );
  GTECH_NAND2 U417 ( .A(n366), .B(n364), .Z(n365) );
  GTECH_NOT U418 ( .A(n172), .Z(n364) );
  GTECH_NOT U419 ( .A(n253), .Z(n238) );
  GTECH_MUX2 U420 ( .A(controller_N52), .B(n367), .S(n172), .Z(controller_N53)
         );
  GTECH_AND2 U421 ( .A(n253), .B(n366), .Z(n367) );
  GTECH_NOT U422 ( .A(n171), .Z(n366) );
  GTECH_NOT U423 ( .A(n362), .Z(controller_N52) );
  GTECH_NAND2 U424 ( .A(n171), .B(n253), .Z(n362) );
  GTECH_OAI21 U425 ( .A(n368), .B(n369), .C(n170), .Z(n253) );
  GTECH_NAND8 U426 ( .A(n181), .B(n180), .C(n182), .D(n370), .E(n174), .F(n169), .G(n175), .H(n371), .Z(n369) );
  GTECH_AND4 U427 ( .A(n168), .B(n167), .C(n166), .D(n165), .Z(n371) );
  GTECH_AND4 U428 ( .A(n179), .B(n178), .C(n177), .D(n176), .Z(n370) );
  GTECH_NAND8 U429 ( .A(n163), .B(n162), .C(n164), .D(n372), .E(n156), .F(n155), .G(n157), .H(n373), .Z(n368) );
  GTECH_AND4 U430 ( .A(n154), .B(n153), .C(n152), .D(n151), .Z(n373) );
  GTECH_AND4 U431 ( .A(n161), .B(n160), .C(n159), .D(n158), .Z(n372) );
  GTECH_AND2 U432 ( .A(controller_N95), .B(n144), .Z(controller_N102) );
  GTECH_NOT U433 ( .A(rst), .Z(n144) );
  GTECH_NAND2 U434 ( .A(n242), .B(n239), .Z(controller_N95) );
  GTECH_OR3 U435 ( .A(n150), .B(n249), .C(n374), .Z(n239) );
  GTECH_NOT U436 ( .A(n8), .Z(n374) );
  GTECH_NOT U437 ( .A(n149), .Z(n249) );
  GTECH_NOT U438 ( .A(n150), .Z(n242) );
endmodule

