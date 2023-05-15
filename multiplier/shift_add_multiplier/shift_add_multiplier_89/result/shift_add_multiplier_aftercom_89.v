
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
         controller_state_1_, controller_start, n8, n15, n16, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n134, n136, n139, n50, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
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
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n50), .K(n50), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_31_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n50), .K(n50), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_30_), 
        .QN(n159) );
  GTECH_FJK3 controller_start_reg ( .J(n50), .K(controller_N97), .CP(clk), 
        .CD(n134), .SD(n139), .Q(controller_start), .QN(n136) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n50), .K(n50), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n139), .Q(controller_state_0_), 
        .QN(n144) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n50), .K(n50), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n8) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n50), .K(n50), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n139), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n50), .K(n50), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n50), .K(n50), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n50), .K(n50), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n50), .K(n50), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n50), .K(n50), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(lsb), .QN(n143) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n50), .K(n50), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n139), .QN(n145) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n50), .K(n50), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_29_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n50), .K(n50), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_28_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n50), .K(n50), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_27_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n50), .K(n50), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_26_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n50), .K(n50), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_25_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n50), .K(n50), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_24_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n50), .K(n50), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_23_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n50), .K(n50), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_22_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n50), .K(n50), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_21_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n50), .K(n50), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_20_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n50), .K(n50), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_19_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n50), .K(n50), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_18_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n50), .K(n50), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_17_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n50), .K(n50), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_16_), 
        .QN(n177) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n50), .K(n50), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_15_), 
        .QN(n176) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n50), .K(n50), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_14_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n50), .K(n50), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_13_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n50), .K(n50), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_12_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n50), .K(n50), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_11_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n50), .K(n50), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_10_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n50), .K(n50), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_9_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n50), .K(n50), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_8_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n50), .K(n50), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_7_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n50), .K(n50), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_6_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n50), .K(n50), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_5_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n50), .K(n50), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_4_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n50), .K(n50), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_3_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n50), .K(n50), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_2_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n50), .K(n50), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_1_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n50), .K(n50), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n139), .Q(controller_count_0_), 
        .QN(n161) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n50), .K(n50), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n15) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n50), .K(n50), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n139), .Q(controller_state_1_), 
        .QN(n16) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n50), .K(n50), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n139), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n50), .K(n50), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n50), .K(n50), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[0]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n50), .K(n50), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[7]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n50), .K(n50), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[6]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n50), .K(n50), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[5]), .QN(n22) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n50), .K(n50), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[4]), .QN(n23) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n50), .K(n50), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[3]), .QN(n24) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n50), .K(n50), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[2]), .QN(n25) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n50), .K(n50), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(A[1]), .QN(n26) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n50), .K(n50), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n50), .K(n50), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n50), .K(n50), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n139), .Q(shifter_temp_5_) );
  GTECH_ZERO U161 ( .Z(n50) );
  GTECH_ONE U162 ( .Z(n134) );
  GTECH_OAI2N2 U163 ( .A(n178), .B(n179), .C(Q[3]), .D(n180), .Z(shifter_N9)
         );
  GTECH_NOT U164 ( .A(shifter_temp_4_), .Z(n179) );
  GTECH_OAI2N2 U165 ( .A(n178), .B(n181), .C(Q[2]), .D(n180), .Z(shifter_N8)
         );
  GTECH_NOT U166 ( .A(shifter_temp_3_), .Z(n181) );
  GTECH_OAI2N2 U167 ( .A(n178), .B(n182), .C(Q[1]), .D(n180), .Z(shifter_N7)
         );
  GTECH_NOT U168 ( .A(shifter_temp_2_), .Z(n182) );
  GTECH_OAI2N2 U169 ( .A(n178), .B(n183), .C(Q[0]), .D(n180), .Z(shifter_N6)
         );
  GTECH_NOT U170 ( .A(shifter_temp_1_), .Z(n183) );
  GTECH_NOT U171 ( .A(n184), .Z(shifter_N24) );
  GTECH_NAND2 U172 ( .A(n184), .B(n185), .Z(shifter_N23) );
  GTECH_NAND2 U173 ( .A(n18), .B(n186), .Z(n184) );
  GTECH_NAND2 U174 ( .A(n178), .B(n18), .Z(shifter_N22) );
  GTECH_AND2 U175 ( .A(n187), .B(n188), .Z(shifter_N21) );
  GTECH_OAI22 U176 ( .A(n189), .B(n190), .C(n20), .D(n191), .Z(n188) );
  GTECH_NOT U177 ( .A(n192), .Z(n191) );
  GTECH_NOT U178 ( .A(n185), .Z(n187) );
  GTECH_OAI22 U179 ( .A(n20), .B(n193), .C(n194), .D(n185), .Z(shifter_N20) );
  GTECH_OA21 U180 ( .A(n20), .B(n192), .C(n195), .Z(n194) );
  GTECH_MUX2 U181 ( .A(n196), .B(n197), .S(n189), .Z(n195) );
  GTECH_NAND2 U182 ( .A(n20), .B(D[7]), .Z(n197) );
  GTECH_XOR2 U183 ( .A(n190), .B(n20), .Z(n196) );
  GTECH_NAND2 U184 ( .A(n189), .B(n190), .Z(n192) );
  GTECH_NOT U185 ( .A(D[7]), .Z(n190) );
  GTECH_AND2 U186 ( .A(n198), .B(n199), .Z(n189) );
  GTECH_OR_NOT U187 ( .A(n21), .B(D[6]), .Z(n199) );
  GTECH_OAI21 U188 ( .A(D[6]), .B(n200), .C(n201), .Z(n198) );
  GTECH_OAI22 U189 ( .A(n21), .B(n193), .C(n202), .D(n185), .Z(shifter_N19) );
  GTECH_XOR3 U190 ( .A(n21), .B(D[6]), .C(n201), .Z(n202) );
  GTECH_OAI21 U191 ( .A(n22), .B(n203), .C(n204), .Z(n201) );
  GTECH_OAI21 U192 ( .A(D[5]), .B(n205), .C(n206), .Z(n204) );
  GTECH_NOT U193 ( .A(D[5]), .Z(n203) );
  GTECH_OAI22 U194 ( .A(n22), .B(n193), .C(n207), .D(n185), .Z(shifter_N18) );
  GTECH_XOR3 U195 ( .A(n22), .B(D[5]), .C(n206), .Z(n207) );
  GTECH_OAI21 U196 ( .A(n23), .B(n208), .C(n209), .Z(n206) );
  GTECH_OAI21 U197 ( .A(D[4]), .B(n210), .C(n211), .Z(n209) );
  GTECH_NOT U198 ( .A(D[4]), .Z(n208) );
  GTECH_OAI22 U199 ( .A(n23), .B(n193), .C(n212), .D(n185), .Z(shifter_N17) );
  GTECH_XOR3 U200 ( .A(n23), .B(D[4]), .C(n211), .Z(n212) );
  GTECH_OAI21 U201 ( .A(n24), .B(n213), .C(n214), .Z(n211) );
  GTECH_OAI21 U202 ( .A(D[3]), .B(n215), .C(n216), .Z(n214) );
  GTECH_NOT U203 ( .A(D[3]), .Z(n213) );
  GTECH_OAI22 U204 ( .A(n24), .B(n193), .C(n217), .D(n185), .Z(shifter_N16) );
  GTECH_XOR3 U205 ( .A(n24), .B(D[3]), .C(n216), .Z(n217) );
  GTECH_OAI21 U206 ( .A(n25), .B(n218), .C(n219), .Z(n216) );
  GTECH_OAI21 U207 ( .A(D[2]), .B(n220), .C(n221), .Z(n219) );
  GTECH_NOT U208 ( .A(D[2]), .Z(n218) );
  GTECH_OAI22 U209 ( .A(n25), .B(n193), .C(n222), .D(n185), .Z(shifter_N15) );
  GTECH_XOR3 U210 ( .A(n25), .B(D[2]), .C(n221), .Z(n222) );
  GTECH_OAI21 U211 ( .A(n26), .B(n223), .C(n224), .Z(n221) );
  GTECH_OAI21 U212 ( .A(D[1]), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U213 ( .A(D[1]), .Z(n223) );
  GTECH_OAI22 U214 ( .A(n26), .B(n193), .C(n185), .D(n227), .Z(shifter_N14) );
  GTECH_XOR3 U215 ( .A(n26), .B(D[1]), .C(n226), .Z(n227) );
  GTECH_NOT U216 ( .A(n228), .Z(n226) );
  GTECH_NAND2 U217 ( .A(D[0]), .B(n229), .Z(n228) );
  GTECH_NOT U218 ( .A(n230), .Z(shifter_N13) );
  GTECH_AOI21 U219 ( .A(Q[7]), .B(n180), .C(n231), .Z(n230) );
  GTECH_OAI22 U220 ( .A(n185), .B(n232), .C(n19), .D(n193), .Z(n231) );
  GTECH_XOR2 U221 ( .A(D[0]), .B(n19), .Z(n232) );
  GTECH_OAI2N2 U222 ( .A(n178), .B(n233), .C(Q[6]), .D(n180), .Z(shifter_N12)
         );
  GTECH_NOT U223 ( .A(shifter_temp_7_), .Z(n233) );
  GTECH_OAI2N2 U224 ( .A(n178), .B(n234), .C(Q[5]), .D(n180), .Z(shifter_N11)
         );
  GTECH_NOT U225 ( .A(shifter_temp_6_), .Z(n234) );
  GTECH_OAI2N2 U226 ( .A(n178), .B(n235), .C(Q[4]), .D(n180), .Z(shifter_N10)
         );
  GTECH_NOT U227 ( .A(shifter_temp_5_), .Z(n235) );
  GTECH_NOT U228 ( .A(n236), .Z(n178) );
  GTECH_NAND2 U229 ( .A(n185), .B(n193), .Z(n236) );
  GTECH_OR4 U230 ( .A(n180), .B(n186), .C(shifter_add_temp), .D(n237), .Z(n193) );
  GTECH_OR4 U231 ( .A(n186), .B(n238), .C(n237), .D(n180), .Z(n185) );
  GTECH_NOT U232 ( .A(n18), .Z(n180) );
  GTECH_NOT U233 ( .A(n15), .Z(n237) );
  GTECH_NOT U234 ( .A(shifter_add_temp), .Z(n238) );
  GTECH_NOT U235 ( .A(n8), .Z(n186) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(n225), .Z(out[9]) );
  GTECH_NOT U237 ( .A(n26), .Z(n225) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(n229), .Z(out[8]) );
  GTECH_NOT U239 ( .A(n19), .Z(n229) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U245 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U247 ( .A(out_cmd), .B(n239), .Z(out[15]) );
  GTECH_NOT U248 ( .A(n20), .Z(n239) );
  GTECH_AND2 U249 ( .A(out_cmd), .B(n200), .Z(out[14]) );
  GTECH_NOT U250 ( .A(n21), .Z(n200) );
  GTECH_AND2 U251 ( .A(out_cmd), .B(n205), .Z(out[13]) );
  GTECH_NOT U252 ( .A(n22), .Z(n205) );
  GTECH_AND2 U253 ( .A(out_cmd), .B(n210), .Z(out[12]) );
  GTECH_NOT U254 ( .A(n23), .Z(n210) );
  GTECH_AND2 U255 ( .A(out_cmd), .B(n215), .Z(out[11]) );
  GTECH_NOT U256 ( .A(n24), .Z(n215) );
  GTECH_AND2 U257 ( .A(out_cmd), .B(n220), .Z(out[10]) );
  GTECH_NOT U258 ( .A(n25), .Z(n220) );
  GTECH_AND2 U259 ( .A(out_cmd), .B(n240), .Z(out[0]) );
  GTECH_AND2 U260 ( .A(controller_N98), .B(n241), .Z(controller_N97) );
  GTECH_NOT U261 ( .A(n242), .Z(controller_N98) );
  GTECH_OAI21 U262 ( .A(n243), .B(n240), .C(n244), .Z(controller_N96) );
  GTECH_OAI21 U263 ( .A(n241), .B(n242), .C(n245), .Z(controller_N94) );
  GTECH_AND2 U264 ( .A(n246), .B(n247), .Z(n245) );
  GTECH_NAND3 U265 ( .A(n144), .B(n240), .C(n248), .Z(n246) );
  GTECH_AND3 U266 ( .A(n145), .B(n144), .C(n249), .Z(controller_N93) );
  GTECH_MUX2 U267 ( .A(n240), .B(n250), .S(n16), .Z(n249) );
  GTECH_NOT U268 ( .A(n136), .Z(n250) );
  GTECH_NOT U269 ( .A(n143), .Z(n240) );
  GTECH_AND4 U270 ( .A(n136), .B(n145), .C(n16), .D(n144), .Z(controller_N92)
         );
  GTECH_NOT U271 ( .A(n244), .Z(controller_N91) );
  GTECH_NAND2 U272 ( .A(n248), .B(n251), .Z(n244) );
  GTECH_NOT U273 ( .A(n243), .Z(n248) );
  GTECH_NAND2 U274 ( .A(n145), .B(n252), .Z(n243) );
  GTECH_NOT U275 ( .A(n16), .Z(n252) );
  GTECH_NOT U276 ( .A(n247), .Z(controller_N90) );
  GTECH_NAND3 U277 ( .A(n16), .B(n251), .C(n145), .Z(n247) );
  GTECH_NOT U278 ( .A(n144), .Z(n251) );
  GTECH_OA21 U279 ( .A(n159), .B(n253), .C(n254), .Z(controller_N83) );
  GTECH_NOT U280 ( .A(n160), .Z(n254) );
  GTECH_AND2 U281 ( .A(n255), .B(n256), .Z(controller_N82) );
  GTECH_XOR2 U282 ( .A(n253), .B(n159), .Z(n255) );
  GTECH_NAND2 U283 ( .A(n257), .B(n258), .Z(n253) );
  GTECH_NOT U284 ( .A(n158), .Z(n258) );
  GTECH_NOT U285 ( .A(n259), .Z(n257) );
  GTECH_AND2 U286 ( .A(n260), .B(n256), .Z(controller_N81) );
  GTECH_XOR2 U287 ( .A(n259), .B(n158), .Z(n260) );
  GTECH_NAND2 U288 ( .A(n261), .B(n262), .Z(n259) );
  GTECH_NOT U289 ( .A(n157), .Z(n262) );
  GTECH_NOT U290 ( .A(n263), .Z(n261) );
  GTECH_AND2 U291 ( .A(n264), .B(n256), .Z(controller_N80) );
  GTECH_XOR2 U292 ( .A(n263), .B(n157), .Z(n264) );
  GTECH_NAND2 U293 ( .A(n265), .B(n266), .Z(n263) );
  GTECH_NOT U294 ( .A(n156), .Z(n266) );
  GTECH_NOT U295 ( .A(n267), .Z(n265) );
  GTECH_AND2 U296 ( .A(n268), .B(n256), .Z(controller_N79) );
  GTECH_XOR2 U297 ( .A(n267), .B(n156), .Z(n268) );
  GTECH_NAND2 U298 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_NOT U299 ( .A(n155), .Z(n270) );
  GTECH_NOT U300 ( .A(n271), .Z(n269) );
  GTECH_AND2 U301 ( .A(n272), .B(n256), .Z(controller_N78) );
  GTECH_XOR2 U302 ( .A(n271), .B(n155), .Z(n272) );
  GTECH_NAND2 U303 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_NOT U304 ( .A(n154), .Z(n274) );
  GTECH_NOT U305 ( .A(n275), .Z(n273) );
  GTECH_AND2 U306 ( .A(n276), .B(n256), .Z(controller_N77) );
  GTECH_XOR2 U307 ( .A(n275), .B(n154), .Z(n276) );
  GTECH_NAND2 U308 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_NOT U309 ( .A(n153), .Z(n278) );
  GTECH_NOT U310 ( .A(n279), .Z(n277) );
  GTECH_AND2 U311 ( .A(n280), .B(n256), .Z(controller_N76) );
  GTECH_XOR2 U312 ( .A(n279), .B(n153), .Z(n280) );
  GTECH_NAND2 U313 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U314 ( .A(n152), .Z(n282) );
  GTECH_NOT U315 ( .A(n283), .Z(n281) );
  GTECH_AND2 U316 ( .A(n284), .B(n256), .Z(controller_N75) );
  GTECH_XOR2 U317 ( .A(n283), .B(n152), .Z(n284) );
  GTECH_NAND2 U318 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U319 ( .A(n151), .Z(n286) );
  GTECH_NOT U320 ( .A(n287), .Z(n285) );
  GTECH_AND2 U321 ( .A(n288), .B(n256), .Z(controller_N74) );
  GTECH_XOR2 U322 ( .A(n287), .B(n151), .Z(n288) );
  GTECH_NAND2 U323 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U324 ( .A(n150), .Z(n290) );
  GTECH_NOT U325 ( .A(n291), .Z(n289) );
  GTECH_AND2 U326 ( .A(n292), .B(n256), .Z(controller_N73) );
  GTECH_XOR2 U327 ( .A(n291), .B(n150), .Z(n292) );
  GTECH_NAND2 U328 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U329 ( .A(n149), .Z(n294) );
  GTECH_NOT U330 ( .A(n295), .Z(n293) );
  GTECH_AND2 U331 ( .A(n296), .B(n256), .Z(controller_N72) );
  GTECH_XOR2 U332 ( .A(n295), .B(n149), .Z(n296) );
  GTECH_NAND2 U333 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U334 ( .A(n148), .Z(n298) );
  GTECH_NOT U335 ( .A(n299), .Z(n297) );
  GTECH_AND2 U336 ( .A(n300), .B(n256), .Z(controller_N71) );
  GTECH_XOR2 U337 ( .A(n299), .B(n148), .Z(n300) );
  GTECH_NAND2 U338 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U339 ( .A(n147), .Z(n302) );
  GTECH_NOT U340 ( .A(n303), .Z(n301) );
  GTECH_AND2 U341 ( .A(n304), .B(n256), .Z(controller_N70) );
  GTECH_XOR2 U342 ( .A(n303), .B(n147), .Z(n304) );
  GTECH_NAND2 U343 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U344 ( .A(n146), .Z(n306) );
  GTECH_NOT U345 ( .A(n307), .Z(n305) );
  GTECH_AND2 U346 ( .A(n308), .B(n256), .Z(controller_N69) );
  GTECH_XOR2 U347 ( .A(n307), .B(n146), .Z(n308) );
  GTECH_NAND2 U348 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U349 ( .A(n177), .Z(n310) );
  GTECH_NOT U350 ( .A(n311), .Z(n309) );
  GTECH_AND2 U351 ( .A(n312), .B(n256), .Z(controller_N68) );
  GTECH_XOR2 U352 ( .A(n311), .B(n177), .Z(n312) );
  GTECH_NAND2 U353 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U354 ( .A(n176), .Z(n314) );
  GTECH_NOT U355 ( .A(n315), .Z(n313) );
  GTECH_AND2 U356 ( .A(n316), .B(n256), .Z(controller_N67) );
  GTECH_XOR2 U357 ( .A(n315), .B(n176), .Z(n316) );
  GTECH_NAND2 U358 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U359 ( .A(n175), .Z(n318) );
  GTECH_NOT U360 ( .A(n319), .Z(n317) );
  GTECH_AND2 U361 ( .A(n320), .B(n256), .Z(controller_N66) );
  GTECH_XOR2 U362 ( .A(n319), .B(n175), .Z(n320) );
  GTECH_NAND2 U363 ( .A(n321), .B(n322), .Z(n319) );
  GTECH_NOT U364 ( .A(n174), .Z(n322) );
  GTECH_NOT U365 ( .A(n323), .Z(n321) );
  GTECH_AND2 U366 ( .A(n324), .B(n256), .Z(controller_N65) );
  GTECH_XOR2 U367 ( .A(n323), .B(n174), .Z(n324) );
  GTECH_NAND2 U368 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_NOT U369 ( .A(n173), .Z(n326) );
  GTECH_NOT U370 ( .A(n327), .Z(n325) );
  GTECH_AND2 U371 ( .A(n328), .B(n256), .Z(controller_N64) );
  GTECH_XOR2 U372 ( .A(n327), .B(n173), .Z(n328) );
  GTECH_NAND2 U373 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_NOT U374 ( .A(n172), .Z(n330) );
  GTECH_NOT U375 ( .A(n331), .Z(n329) );
  GTECH_AND2 U376 ( .A(n332), .B(n256), .Z(controller_N63) );
  GTECH_XOR2 U377 ( .A(n331), .B(n172), .Z(n332) );
  GTECH_NAND2 U378 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_NOT U379 ( .A(n171), .Z(n334) );
  GTECH_NOT U380 ( .A(n335), .Z(n333) );
  GTECH_AND2 U381 ( .A(n336), .B(n256), .Z(controller_N62) );
  GTECH_XOR2 U382 ( .A(n335), .B(n171), .Z(n336) );
  GTECH_NAND2 U383 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U384 ( .A(n170), .Z(n338) );
  GTECH_NOT U385 ( .A(n339), .Z(n337) );
  GTECH_AND2 U386 ( .A(n340), .B(n256), .Z(controller_N61) );
  GTECH_XOR2 U387 ( .A(n339), .B(n170), .Z(n340) );
  GTECH_NAND2 U388 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U389 ( .A(n169), .Z(n342) );
  GTECH_NOT U390 ( .A(n343), .Z(n341) );
  GTECH_AND2 U391 ( .A(n344), .B(n256), .Z(controller_N60) );
  GTECH_XOR2 U392 ( .A(n343), .B(n169), .Z(n344) );
  GTECH_NAND2 U393 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U394 ( .A(n168), .Z(n346) );
  GTECH_NOT U395 ( .A(n347), .Z(n345) );
  GTECH_AND2 U396 ( .A(n348), .B(n256), .Z(controller_N59) );
  GTECH_XOR2 U397 ( .A(n347), .B(n168), .Z(n348) );
  GTECH_NAND2 U398 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U399 ( .A(n167), .Z(n350) );
  GTECH_NOT U400 ( .A(n351), .Z(n349) );
  GTECH_AND2 U401 ( .A(n352), .B(n256), .Z(controller_N58) );
  GTECH_XOR2 U402 ( .A(n351), .B(n167), .Z(n352) );
  GTECH_NAND2 U403 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U404 ( .A(n166), .Z(n354) );
  GTECH_NOT U405 ( .A(n355), .Z(n353) );
  GTECH_AND2 U406 ( .A(n356), .B(n256), .Z(controller_N57) );
  GTECH_XOR2 U407 ( .A(n355), .B(n166), .Z(n356) );
  GTECH_NAND2 U408 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U409 ( .A(n165), .Z(n358) );
  GTECH_NOT U410 ( .A(n359), .Z(n357) );
  GTECH_AND2 U411 ( .A(n360), .B(n256), .Z(controller_N56) );
  GTECH_XOR2 U412 ( .A(n359), .B(n165), .Z(n360) );
  GTECH_NAND2 U413 ( .A(n361), .B(n362), .Z(n359) );
  GTECH_NOT U414 ( .A(n164), .Z(n362) );
  GTECH_NOT U415 ( .A(n363), .Z(n361) );
  GTECH_AND2 U416 ( .A(n364), .B(n256), .Z(controller_N55) );
  GTECH_XOR2 U417 ( .A(n363), .B(n164), .Z(n364) );
  GTECH_NAND3 U418 ( .A(n365), .B(n366), .C(n367), .Z(n363) );
  GTECH_NOT U419 ( .A(n163), .Z(n366) );
  GTECH_OAI22 U420 ( .A(n163), .B(n368), .C(n241), .D(n369), .Z(controller_N54) );
  GTECH_MUX2 U421 ( .A(n365), .B(n370), .S(n163), .Z(n369) );
  GTECH_NAND2 U422 ( .A(n367), .B(n365), .Z(n370) );
  GTECH_NOT U423 ( .A(n162), .Z(n365) );
  GTECH_NOT U424 ( .A(n256), .Z(n241) );
  GTECH_MUX2 U425 ( .A(controller_N52), .B(n371), .S(n162), .Z(controller_N53)
         );
  GTECH_AND2 U426 ( .A(n256), .B(n367), .Z(n371) );
  GTECH_NOT U427 ( .A(n161), .Z(n367) );
  GTECH_NOT U428 ( .A(n368), .Z(controller_N52) );
  GTECH_NAND2 U429 ( .A(n161), .B(n256), .Z(n368) );
  GTECH_OAI21 U430 ( .A(n372), .B(n373), .C(n160), .Z(n256) );
  GTECH_NAND8 U431 ( .A(n176), .B(n175), .C(n177), .D(n374), .E(n169), .F(n168), .G(n170), .H(n375), .Z(n373) );
  GTECH_AND4 U432 ( .A(n167), .B(n166), .C(n165), .D(n164), .Z(n375) );
  GTECH_AND4 U433 ( .A(n174), .B(n173), .C(n172), .D(n171), .Z(n374) );
  GTECH_NAND8 U434 ( .A(n158), .B(n157), .C(n159), .D(n376), .E(n151), .F(n150), .G(n152), .H(n377), .Z(n372) );
  GTECH_AND4 U435 ( .A(n149), .B(n148), .C(n147), .D(n146), .Z(n377) );
  GTECH_AND4 U436 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(n376) );
  GTECH_AND2 U437 ( .A(controller_N95), .B(n139), .Z(controller_N102) );
  GTECH_NOT U438 ( .A(rst), .Z(n139) );
  GTECH_NAND2 U439 ( .A(n378), .B(n242), .Z(controller_N95) );
  GTECH_NAND3 U440 ( .A(n144), .B(n378), .C(n16), .Z(n242) );
  GTECH_NOT U441 ( .A(n145), .Z(n378) );
endmodule

