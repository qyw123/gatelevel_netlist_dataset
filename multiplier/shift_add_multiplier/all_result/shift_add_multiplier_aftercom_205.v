
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
         controller_state_1_, controller_state_2_, controller_start, n8, n9,
         n10, n12, n14, n15, n16, n17, n18, n19, n20, n21, n131, n133, n136,
         n47, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n47), .K(n47), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_31_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n47), .K(n47), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_30_), 
        .QN(n157) );
  GTECH_FJK3 controller_start_reg ( .J(n47), .K(controller_N97), .CP(clk), 
        .CD(n131), .SD(n136), .Q(controller_start), .QN(n133) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n47), .K(n47), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_0_), 
        .QN(n141) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n47), .K(n47), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n47), .K(n47), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(controller_state_2_), 
        .QN(n142) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n47), .K(n47), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_29_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n47), .K(n47), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_28_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n47), .K(n47), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_27_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n47), .K(n47), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_26_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n47), .K(n47), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_25_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n47), .K(n47), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_24_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n47), .K(n47), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_23_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n47), .K(n47), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_22_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n47), .K(n47), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_21_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n47), .K(n47), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_20_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n47), .K(n47), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_19_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n47), .K(n47), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_18_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n47), .K(n47), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_17_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n47), .K(n47), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_16_), 
        .QN(n143) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n47), .K(n47), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_15_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n47), .K(n47), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_14_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n47), .K(n47), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_13_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n47), .K(n47), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_12_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n47), .K(n47), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_11_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n47), .K(n47), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_10_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n47), .K(n47), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_9_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n47), .K(n47), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_8_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n47), .K(n47), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_7_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n47), .K(n47), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_6_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n47), .K(n47), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_5_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n47), .K(n47), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_4_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n47), .K(n47), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_3_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n47), .K(n47), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_2_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n47), .K(n47), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_1_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n47), .K(n47), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n136), .Q(controller_count_0_), 
        .QN(n159) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n47), .K(n47), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n47), .K(n47), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n10) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n47), .K(n47), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n136), .Q(out_cmd) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n47), .K(n47), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n12) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n47), .K(n47), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n136), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n47), .K(n47), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[0]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n47), .K(n47), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[7]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n47), .K(n47), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[6]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n47), .K(n47), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[5]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n47), .K(n47), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[4]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n47), .K(n47), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[3]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n47), .K(n47), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[2]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n47), .K(n47), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(A[1]), .QN(n21) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n47), .K(n47), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n47), .K(n47), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n47), .K(n47), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n47), .K(n47), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n47), .K(n47), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n47), .K(n47), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n47), .K(n47), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n47), .K(n47), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n136), .Q(lsb), .QN(n140) );
  GTECH_ZERO U159 ( .Z(n47) );
  GTECH_ONE U160 ( .Z(n131) );
  GTECH_OAI2N2 U161 ( .A(n175), .B(n176), .C(Q[3]), .D(n177), .Z(shifter_N9)
         );
  GTECH_NOT U162 ( .A(shifter_temp_4_), .Z(n176) );
  GTECH_OAI2N2 U163 ( .A(n175), .B(n178), .C(Q[2]), .D(n177), .Z(shifter_N8)
         );
  GTECH_NOT U164 ( .A(shifter_temp_3_), .Z(n178) );
  GTECH_OAI2N2 U165 ( .A(n175), .B(n179), .C(Q[1]), .D(n177), .Z(shifter_N7)
         );
  GTECH_NOT U166 ( .A(shifter_temp_2_), .Z(n179) );
  GTECH_OAI2N2 U167 ( .A(n175), .B(n180), .C(Q[0]), .D(n177), .Z(shifter_N6)
         );
  GTECH_NOT U168 ( .A(shifter_temp_1_), .Z(n180) );
  GTECH_NOT U169 ( .A(n181), .Z(shifter_N24) );
  GTECH_NAND2 U170 ( .A(n181), .B(n182), .Z(shifter_N23) );
  GTECH_NAND2 U171 ( .A(n12), .B(n183), .Z(n181) );
  GTECH_NOT U172 ( .A(n10), .Z(n183) );
  GTECH_NAND2 U173 ( .A(n175), .B(n12), .Z(shifter_N22) );
  GTECH_AND2 U174 ( .A(n184), .B(n185), .Z(shifter_N21) );
  GTECH_OAI22 U175 ( .A(n186), .B(n187), .C(n15), .D(n188), .Z(n185) );
  GTECH_NOT U176 ( .A(n189), .Z(n188) );
  GTECH_NOT U177 ( .A(n182), .Z(n184) );
  GTECH_OAI22 U178 ( .A(n15), .B(n190), .C(n191), .D(n182), .Z(shifter_N20) );
  GTECH_OA21 U179 ( .A(n15), .B(n189), .C(n192), .Z(n191) );
  GTECH_MUX2 U180 ( .A(n193), .B(n194), .S(n186), .Z(n192) );
  GTECH_NAND2 U181 ( .A(n15), .B(D[7]), .Z(n194) );
  GTECH_XOR2 U182 ( .A(n187), .B(n15), .Z(n193) );
  GTECH_NAND2 U183 ( .A(n186), .B(n187), .Z(n189) );
  GTECH_NOT U184 ( .A(D[7]), .Z(n187) );
  GTECH_OA21 U185 ( .A(n16), .B(n195), .C(n196), .Z(n186) );
  GTECH_OAI21 U186 ( .A(D[6]), .B(n197), .C(n198), .Z(n196) );
  GTECH_NOT U187 ( .A(D[6]), .Z(n195) );
  GTECH_OAI22 U188 ( .A(n16), .B(n190), .C(n199), .D(n182), .Z(shifter_N19) );
  GTECH_XOR3 U189 ( .A(n16), .B(D[6]), .C(n198), .Z(n199) );
  GTECH_OAI21 U190 ( .A(n17), .B(n200), .C(n201), .Z(n198) );
  GTECH_OAI21 U191 ( .A(D[5]), .B(n202), .C(n203), .Z(n201) );
  GTECH_NOT U192 ( .A(D[5]), .Z(n200) );
  GTECH_OAI22 U193 ( .A(n17), .B(n190), .C(n204), .D(n182), .Z(shifter_N18) );
  GTECH_XOR3 U194 ( .A(n17), .B(D[5]), .C(n203), .Z(n204) );
  GTECH_OAI21 U195 ( .A(n18), .B(n205), .C(n206), .Z(n203) );
  GTECH_OAI21 U196 ( .A(D[4]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U197 ( .A(D[4]), .Z(n205) );
  GTECH_OAI22 U198 ( .A(n18), .B(n190), .C(n209), .D(n182), .Z(shifter_N17) );
  GTECH_XOR3 U199 ( .A(n18), .B(D[4]), .C(n208), .Z(n209) );
  GTECH_OAI21 U200 ( .A(n19), .B(n210), .C(n211), .Z(n208) );
  GTECH_OAI21 U201 ( .A(D[3]), .B(n212), .C(n213), .Z(n211) );
  GTECH_NOT U202 ( .A(D[3]), .Z(n210) );
  GTECH_OAI22 U203 ( .A(n19), .B(n190), .C(n214), .D(n182), .Z(shifter_N16) );
  GTECH_XOR3 U204 ( .A(n19), .B(D[3]), .C(n213), .Z(n214) );
  GTECH_OAI21 U205 ( .A(n20), .B(n215), .C(n216), .Z(n213) );
  GTECH_OAI21 U206 ( .A(D[2]), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U207 ( .A(D[2]), .Z(n215) );
  GTECH_OAI22 U208 ( .A(n20), .B(n190), .C(n219), .D(n182), .Z(shifter_N15) );
  GTECH_XOR3 U209 ( .A(n20), .B(D[2]), .C(n218), .Z(n219) );
  GTECH_OAI21 U210 ( .A(n21), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U211 ( .A(D[1]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U212 ( .A(D[1]), .Z(n220) );
  GTECH_OAI22 U213 ( .A(n21), .B(n190), .C(n182), .D(n224), .Z(shifter_N14) );
  GTECH_XOR3 U214 ( .A(n21), .B(D[1]), .C(n223), .Z(n224) );
  GTECH_NOT U215 ( .A(n225), .Z(n223) );
  GTECH_NAND2 U216 ( .A(D[0]), .B(n226), .Z(n225) );
  GTECH_NOT U217 ( .A(n227), .Z(shifter_N13) );
  GTECH_AOI21 U218 ( .A(Q[7]), .B(n177), .C(n228), .Z(n227) );
  GTECH_OAI22 U219 ( .A(n182), .B(n229), .C(n14), .D(n190), .Z(n228) );
  GTECH_XOR2 U220 ( .A(D[0]), .B(n14), .Z(n229) );
  GTECH_OAI2N2 U221 ( .A(n175), .B(n230), .C(Q[6]), .D(n177), .Z(shifter_N12)
         );
  GTECH_NOT U222 ( .A(shifter_temp_7_), .Z(n230) );
  GTECH_OAI2N2 U223 ( .A(n175), .B(n231), .C(Q[5]), .D(n177), .Z(shifter_N11)
         );
  GTECH_NOT U224 ( .A(shifter_temp_6_), .Z(n231) );
  GTECH_OAI2N2 U225 ( .A(n175), .B(n232), .C(Q[4]), .D(n177), .Z(shifter_N10)
         );
  GTECH_NOT U226 ( .A(n12), .Z(n177) );
  GTECH_NOT U227 ( .A(shifter_temp_5_), .Z(n232) );
  GTECH_NOT U228 ( .A(n233), .Z(n175) );
  GTECH_NAND2 U229 ( .A(n182), .B(n190), .Z(n233) );
  GTECH_NAND4 U230 ( .A(n9), .B(n12), .C(n10), .D(n234), .Z(n190) );
  GTECH_NOT U231 ( .A(shifter_add_temp), .Z(n234) );
  GTECH_NAND4 U232 ( .A(shifter_add_temp), .B(n9), .C(n12), .D(n10), .Z(n182)
         );
  GTECH_AND2 U233 ( .A(out_cmd), .B(n222), .Z(out[9]) );
  GTECH_NOT U234 ( .A(n21), .Z(n222) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(n226), .Z(out[8]) );
  GTECH_NOT U236 ( .A(n14), .Z(n226) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n235), .Z(out[15]) );
  GTECH_NOT U245 ( .A(n15), .Z(n235) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n197), .Z(out[14]) );
  GTECH_NOT U247 ( .A(n16), .Z(n197) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n202), .Z(out[13]) );
  GTECH_NOT U249 ( .A(n17), .Z(n202) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n207), .Z(out[12]) );
  GTECH_NOT U251 ( .A(n18), .Z(n207) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n212), .Z(out[11]) );
  GTECH_NOT U253 ( .A(n19), .Z(n212) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n217), .Z(out[10]) );
  GTECH_NOT U255 ( .A(n20), .Z(n217) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n236), .Z(out[0]) );
  GTECH_AND2 U257 ( .A(n237), .B(controller_N98), .Z(controller_N97) );
  GTECH_NOT U258 ( .A(n238), .Z(controller_N98) );
  GTECH_OAI21 U259 ( .A(n239), .B(n236), .C(n240), .Z(controller_N96) );
  GTECH_OAI21 U260 ( .A(n237), .B(n238), .C(n241), .Z(controller_N94) );
  GTECH_AND2 U261 ( .A(n242), .B(n243), .Z(n241) );
  GTECH_NAND3 U262 ( .A(n141), .B(n236), .C(n244), .Z(n242) );
  GTECH_AND3 U263 ( .A(n142), .B(n141), .C(n245), .Z(controller_N93) );
  GTECH_MUX2 U264 ( .A(n236), .B(n246), .S(n8), .Z(n245) );
  GTECH_NOT U265 ( .A(n133), .Z(n246) );
  GTECH_NOT U266 ( .A(n140), .Z(n236) );
  GTECH_AND4 U267 ( .A(n133), .B(n142), .C(n8), .D(n141), .Z(controller_N92)
         );
  GTECH_NOT U268 ( .A(n240), .Z(controller_N91) );
  GTECH_NAND2 U269 ( .A(n244), .B(n247), .Z(n240) );
  GTECH_NOT U270 ( .A(n239), .Z(n244) );
  GTECH_NAND2 U271 ( .A(n142), .B(n248), .Z(n239) );
  GTECH_NOT U272 ( .A(n8), .Z(n248) );
  GTECH_NOT U273 ( .A(n243), .Z(controller_N90) );
  GTECH_NAND3 U274 ( .A(n8), .B(n247), .C(n142), .Z(n243) );
  GTECH_NOT U275 ( .A(n141), .Z(n247) );
  GTECH_OA21 U276 ( .A(n157), .B(n249), .C(n250), .Z(controller_N83) );
  GTECH_NOT U277 ( .A(n158), .Z(n250) );
  GTECH_AND2 U278 ( .A(n251), .B(n252), .Z(controller_N82) );
  GTECH_XOR2 U279 ( .A(n249), .B(n157), .Z(n251) );
  GTECH_NAND2 U280 ( .A(n253), .B(n254), .Z(n249) );
  GTECH_NOT U281 ( .A(n156), .Z(n254) );
  GTECH_NOT U282 ( .A(n255), .Z(n253) );
  GTECH_AND2 U283 ( .A(n256), .B(n252), .Z(controller_N81) );
  GTECH_XOR2 U284 ( .A(n255), .B(n156), .Z(n256) );
  GTECH_NAND2 U285 ( .A(n257), .B(n258), .Z(n255) );
  GTECH_NOT U286 ( .A(n155), .Z(n258) );
  GTECH_NOT U287 ( .A(n259), .Z(n257) );
  GTECH_AND2 U288 ( .A(n260), .B(n252), .Z(controller_N80) );
  GTECH_XOR2 U289 ( .A(n259), .B(n155), .Z(n260) );
  GTECH_NAND2 U290 ( .A(n261), .B(n262), .Z(n259) );
  GTECH_NOT U291 ( .A(n154), .Z(n262) );
  GTECH_NOT U292 ( .A(n263), .Z(n261) );
  GTECH_AND2 U293 ( .A(n264), .B(n252), .Z(controller_N79) );
  GTECH_XOR2 U294 ( .A(n263), .B(n154), .Z(n264) );
  GTECH_NAND2 U295 ( .A(n265), .B(n266), .Z(n263) );
  GTECH_NOT U296 ( .A(n153), .Z(n266) );
  GTECH_NOT U297 ( .A(n267), .Z(n265) );
  GTECH_AND2 U298 ( .A(n268), .B(n252), .Z(controller_N78) );
  GTECH_XOR2 U299 ( .A(n267), .B(n153), .Z(n268) );
  GTECH_NAND2 U300 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_NOT U301 ( .A(n152), .Z(n270) );
  GTECH_NOT U302 ( .A(n271), .Z(n269) );
  GTECH_AND2 U303 ( .A(n272), .B(n252), .Z(controller_N77) );
  GTECH_XOR2 U304 ( .A(n271), .B(n152), .Z(n272) );
  GTECH_NAND2 U305 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_NOT U306 ( .A(n151), .Z(n274) );
  GTECH_NOT U307 ( .A(n275), .Z(n273) );
  GTECH_AND2 U308 ( .A(n276), .B(n252), .Z(controller_N76) );
  GTECH_XOR2 U309 ( .A(n275), .B(n151), .Z(n276) );
  GTECH_NAND2 U310 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_NOT U311 ( .A(n150), .Z(n278) );
  GTECH_NOT U312 ( .A(n279), .Z(n277) );
  GTECH_AND2 U313 ( .A(n280), .B(n252), .Z(controller_N75) );
  GTECH_XOR2 U314 ( .A(n279), .B(n150), .Z(n280) );
  GTECH_NAND2 U315 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U316 ( .A(n149), .Z(n282) );
  GTECH_NOT U317 ( .A(n283), .Z(n281) );
  GTECH_AND2 U318 ( .A(n284), .B(n252), .Z(controller_N74) );
  GTECH_XOR2 U319 ( .A(n283), .B(n149), .Z(n284) );
  GTECH_NAND2 U320 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U321 ( .A(n148), .Z(n286) );
  GTECH_NOT U322 ( .A(n287), .Z(n285) );
  GTECH_AND2 U323 ( .A(n288), .B(n252), .Z(controller_N73) );
  GTECH_XOR2 U324 ( .A(n287), .B(n148), .Z(n288) );
  GTECH_NAND2 U325 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U326 ( .A(n147), .Z(n290) );
  GTECH_NOT U327 ( .A(n291), .Z(n289) );
  GTECH_AND2 U328 ( .A(n292), .B(n252), .Z(controller_N72) );
  GTECH_XOR2 U329 ( .A(n291), .B(n147), .Z(n292) );
  GTECH_NAND2 U330 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U331 ( .A(n146), .Z(n294) );
  GTECH_NOT U332 ( .A(n295), .Z(n293) );
  GTECH_AND2 U333 ( .A(n296), .B(n252), .Z(controller_N71) );
  GTECH_XOR2 U334 ( .A(n295), .B(n146), .Z(n296) );
  GTECH_NAND2 U335 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U336 ( .A(n145), .Z(n298) );
  GTECH_NOT U337 ( .A(n299), .Z(n297) );
  GTECH_AND2 U338 ( .A(n300), .B(n252), .Z(controller_N70) );
  GTECH_XOR2 U339 ( .A(n299), .B(n145), .Z(n300) );
  GTECH_NAND2 U340 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U341 ( .A(n144), .Z(n302) );
  GTECH_NOT U342 ( .A(n303), .Z(n301) );
  GTECH_AND2 U343 ( .A(n304), .B(n252), .Z(controller_N69) );
  GTECH_XOR2 U344 ( .A(n303), .B(n144), .Z(n304) );
  GTECH_NAND2 U345 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U346 ( .A(n143), .Z(n306) );
  GTECH_NOT U347 ( .A(n307), .Z(n305) );
  GTECH_AND2 U348 ( .A(n308), .B(n252), .Z(controller_N68) );
  GTECH_XOR2 U349 ( .A(n307), .B(n143), .Z(n308) );
  GTECH_NAND2 U350 ( .A(n309), .B(n310), .Z(n307) );
  GTECH_NOT U351 ( .A(n174), .Z(n310) );
  GTECH_NOT U352 ( .A(n311), .Z(n309) );
  GTECH_AND2 U353 ( .A(n312), .B(n252), .Z(controller_N67) );
  GTECH_XOR2 U354 ( .A(n311), .B(n174), .Z(n312) );
  GTECH_NAND2 U355 ( .A(n313), .B(n314), .Z(n311) );
  GTECH_NOT U356 ( .A(n173), .Z(n314) );
  GTECH_NOT U357 ( .A(n315), .Z(n313) );
  GTECH_AND2 U358 ( .A(n316), .B(n252), .Z(controller_N66) );
  GTECH_XOR2 U359 ( .A(n315), .B(n173), .Z(n316) );
  GTECH_NAND2 U360 ( .A(n317), .B(n318), .Z(n315) );
  GTECH_NOT U361 ( .A(n172), .Z(n318) );
  GTECH_NOT U362 ( .A(n319), .Z(n317) );
  GTECH_AND2 U363 ( .A(n320), .B(n252), .Z(controller_N65) );
  GTECH_XOR2 U364 ( .A(n319), .B(n172), .Z(n320) );
  GTECH_NAND2 U365 ( .A(n321), .B(n322), .Z(n319) );
  GTECH_NOT U366 ( .A(n171), .Z(n322) );
  GTECH_NOT U367 ( .A(n323), .Z(n321) );
  GTECH_AND2 U368 ( .A(n324), .B(n252), .Z(controller_N64) );
  GTECH_XOR2 U369 ( .A(n323), .B(n171), .Z(n324) );
  GTECH_NAND2 U370 ( .A(n325), .B(n326), .Z(n323) );
  GTECH_NOT U371 ( .A(n170), .Z(n326) );
  GTECH_NOT U372 ( .A(n327), .Z(n325) );
  GTECH_AND2 U373 ( .A(n328), .B(n252), .Z(controller_N63) );
  GTECH_XOR2 U374 ( .A(n327), .B(n170), .Z(n328) );
  GTECH_NAND2 U375 ( .A(n329), .B(n330), .Z(n327) );
  GTECH_NOT U376 ( .A(n169), .Z(n330) );
  GTECH_NOT U377 ( .A(n331), .Z(n329) );
  GTECH_AND2 U378 ( .A(n332), .B(n252), .Z(controller_N62) );
  GTECH_XOR2 U379 ( .A(n331), .B(n169), .Z(n332) );
  GTECH_NAND2 U380 ( .A(n333), .B(n334), .Z(n331) );
  GTECH_NOT U381 ( .A(n168), .Z(n334) );
  GTECH_NOT U382 ( .A(n335), .Z(n333) );
  GTECH_AND2 U383 ( .A(n336), .B(n252), .Z(controller_N61) );
  GTECH_XOR2 U384 ( .A(n335), .B(n168), .Z(n336) );
  GTECH_NAND2 U385 ( .A(n337), .B(n338), .Z(n335) );
  GTECH_NOT U386 ( .A(n167), .Z(n338) );
  GTECH_NOT U387 ( .A(n339), .Z(n337) );
  GTECH_AND2 U388 ( .A(n340), .B(n252), .Z(controller_N60) );
  GTECH_XOR2 U389 ( .A(n339), .B(n167), .Z(n340) );
  GTECH_NAND2 U390 ( .A(n341), .B(n342), .Z(n339) );
  GTECH_NOT U391 ( .A(n166), .Z(n342) );
  GTECH_NOT U392 ( .A(n343), .Z(n341) );
  GTECH_AND2 U393 ( .A(n344), .B(n252), .Z(controller_N59) );
  GTECH_XOR2 U394 ( .A(n343), .B(n166), .Z(n344) );
  GTECH_NAND2 U395 ( .A(n345), .B(n346), .Z(n343) );
  GTECH_NOT U396 ( .A(n165), .Z(n346) );
  GTECH_NOT U397 ( .A(n347), .Z(n345) );
  GTECH_AND2 U398 ( .A(n348), .B(n252), .Z(controller_N58) );
  GTECH_XOR2 U399 ( .A(n347), .B(n165), .Z(n348) );
  GTECH_NAND2 U400 ( .A(n349), .B(n350), .Z(n347) );
  GTECH_NOT U401 ( .A(n164), .Z(n350) );
  GTECH_NOT U402 ( .A(n351), .Z(n349) );
  GTECH_AND2 U403 ( .A(n352), .B(n252), .Z(controller_N57) );
  GTECH_XOR2 U404 ( .A(n351), .B(n164), .Z(n352) );
  GTECH_NAND2 U405 ( .A(n353), .B(n354), .Z(n351) );
  GTECH_NOT U406 ( .A(n163), .Z(n354) );
  GTECH_NOT U407 ( .A(n355), .Z(n353) );
  GTECH_AND2 U408 ( .A(n356), .B(n252), .Z(controller_N56) );
  GTECH_XOR2 U409 ( .A(n355), .B(n163), .Z(n356) );
  GTECH_NAND2 U410 ( .A(n357), .B(n358), .Z(n355) );
  GTECH_NOT U411 ( .A(n162), .Z(n358) );
  GTECH_NOT U412 ( .A(n359), .Z(n357) );
  GTECH_AND2 U413 ( .A(n360), .B(n252), .Z(controller_N55) );
  GTECH_XOR2 U414 ( .A(n359), .B(n162), .Z(n360) );
  GTECH_NAND3 U415 ( .A(n361), .B(n362), .C(n363), .Z(n359) );
  GTECH_NOT U416 ( .A(n161), .Z(n362) );
  GTECH_OAI22 U417 ( .A(n161), .B(n364), .C(n237), .D(n365), .Z(controller_N54) );
  GTECH_MUX2 U418 ( .A(n361), .B(n366), .S(n161), .Z(n365) );
  GTECH_NAND2 U419 ( .A(n363), .B(n361), .Z(n366) );
  GTECH_NOT U420 ( .A(n160), .Z(n361) );
  GTECH_NOT U421 ( .A(n252), .Z(n237) );
  GTECH_MUX2 U422 ( .A(controller_N52), .B(n367), .S(n160), .Z(controller_N53)
         );
  GTECH_AND2 U423 ( .A(n252), .B(n363), .Z(n367) );
  GTECH_NOT U424 ( .A(n159), .Z(n363) );
  GTECH_NOT U425 ( .A(n364), .Z(controller_N52) );
  GTECH_NAND2 U426 ( .A(n159), .B(n252), .Z(n364) );
  GTECH_OAI21 U427 ( .A(n368), .B(n369), .C(n158), .Z(n252) );
  GTECH_NAND8 U428 ( .A(n173), .B(n172), .C(n174), .D(n370), .E(n166), .F(n165), .G(n167), .H(n371), .Z(n369) );
  GTECH_AND4 U429 ( .A(n164), .B(n163), .C(n162), .D(n157), .Z(n371) );
  GTECH_AND4 U430 ( .A(n171), .B(n170), .C(n169), .D(n168), .Z(n370) );
  GTECH_NAND8 U431 ( .A(n155), .B(n154), .C(n156), .D(n372), .E(n148), .F(n147), .G(n149), .H(n373), .Z(n368) );
  GTECH_AND4 U432 ( .A(n146), .B(n145), .C(n144), .D(n143), .Z(n373) );
  GTECH_AND4 U433 ( .A(n153), .B(n152), .C(n151), .D(n150), .Z(n372) );
  GTECH_AND2 U434 ( .A(controller_N95), .B(n136), .Z(controller_N102) );
  GTECH_NOT U435 ( .A(rst), .Z(n136) );
  GTECH_NAND2 U436 ( .A(n374), .B(n238), .Z(controller_N95) );
  GTECH_NAND3 U437 ( .A(n141), .B(n374), .C(n8), .Z(n238) );
  GTECH_NOT U438 ( .A(n142), .Z(n374) );
endmodule
