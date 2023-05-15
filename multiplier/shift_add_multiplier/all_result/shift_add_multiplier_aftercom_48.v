
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
         n10, n11, n13, n14, n15, n16, n17, n18, n19, n20, n132, n134, n137,
         n48, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n48), .K(n48), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_31_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n48), .K(n48), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_30_), 
        .QN(n159) );
  GTECH_FJK3 controller_start_reg ( .J(n48), .K(controller_N97), .CP(clk), 
        .CD(n132), .SD(n137), .Q(controller_start), .QN(n134) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n48), .K(n48), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(controller_state_0_), 
        .QN(n142) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n48), .K(n48), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(controller_state_2_), 
        .QN(n143) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n48), .K(n48), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n48), .K(n48), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_29_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n48), .K(n48), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_28_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n48), .K(n48), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_27_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n48), .K(n48), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_26_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n48), .K(n48), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_25_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n48), .K(n48), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_24_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n48), .K(n48), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_23_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n48), .K(n48), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_22_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n48), .K(n48), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_21_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n48), .K(n48), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_20_), 
        .QN(n149) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n48), .K(n48), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_19_), 
        .QN(n148) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n48), .K(n48), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_18_), 
        .QN(n147) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n48), .K(n48), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_17_), 
        .QN(n146) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n48), .K(n48), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_16_), 
        .QN(n145) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n48), .K(n48), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_15_), 
        .QN(n144) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n48), .K(n48), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_14_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n48), .K(n48), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_13_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n48), .K(n48), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_12_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n48), .K(n48), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_11_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n48), .K(n48), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_10_), 
        .QN(n171) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n48), .K(n48), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_9_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n48), .K(n48), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_8_), 
        .QN(n169) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n48), .K(n48), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_7_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n48), .K(n48), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_6_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n48), .K(n48), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_5_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n48), .K(n48), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_4_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n48), .K(n48), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_3_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n48), .K(n48), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_2_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n48), .K(n48), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_1_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n48), .K(n48), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n137), .Q(controller_count_0_), 
        .QN(n161) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n48), .K(n48), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n48), .K(n48), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n10) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n48), .K(n48), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n11) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n48), .K(n48), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n137), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n48), .K(n48), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[0]), .QN(n13) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n48), .K(n48), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[7]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n48), .K(n48), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[6]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n48), .K(n48), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[5]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n48), .K(n48), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[4]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n48), .K(n48), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[3]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n48), .K(n48), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[2]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n48), .K(n48), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(A[1]), .QN(n20) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n48), .K(n48), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n48), .K(n48), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n48), .K(n48), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n48), .K(n48), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n48), .K(n48), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n48), .K(n48), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n48), .K(n48), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n48), .K(n48), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n137), .Q(lsb), .QN(n141) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n48), .K(n48), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n137), .Q(out_cmd) );
  GTECH_ZERO U160 ( .Z(n48) );
  GTECH_ONE U161 ( .Z(n132) );
  GTECH_OAI2N2 U162 ( .A(n176), .B(n177), .C(Q[3]), .D(n178), .Z(shifter_N9)
         );
  GTECH_NOT U163 ( .A(shifter_temp_4_), .Z(n177) );
  GTECH_OAI2N2 U164 ( .A(n176), .B(n179), .C(Q[2]), .D(n178), .Z(shifter_N8)
         );
  GTECH_NOT U165 ( .A(shifter_temp_3_), .Z(n179) );
  GTECH_OAI2N2 U166 ( .A(n176), .B(n180), .C(Q[1]), .D(n178), .Z(shifter_N7)
         );
  GTECH_NOT U167 ( .A(shifter_temp_2_), .Z(n180) );
  GTECH_OAI2N2 U168 ( .A(n176), .B(n181), .C(Q[0]), .D(n178), .Z(shifter_N6)
         );
  GTECH_NOT U169 ( .A(shifter_temp_1_), .Z(n181) );
  GTECH_NOT U170 ( .A(n182), .Z(shifter_N24) );
  GTECH_OR_NOT U171 ( .A(n183), .B(n182), .Z(shifter_N23) );
  GTECH_OR_NOT U172 ( .A(n11), .B(n10), .Z(n182) );
  GTECH_OR_NOT U173 ( .A(n178), .B(n176), .Z(shifter_N22) );
  GTECH_AND2 U174 ( .A(n183), .B(n184), .Z(shifter_N21) );
  GTECH_OAI22 U175 ( .A(n185), .B(n186), .C(n14), .D(n187), .Z(n184) );
  GTECH_NOT U176 ( .A(n188), .Z(n187) );
  GTECH_OAI22 U177 ( .A(n14), .B(n189), .C(n190), .D(n191), .Z(shifter_N20) );
  GTECH_OA21 U178 ( .A(n14), .B(n188), .C(n192), .Z(n190) );
  GTECH_MUX2 U179 ( .A(n193), .B(n194), .S(n185), .Z(n192) );
  GTECH_OR_NOT U180 ( .A(n186), .B(n14), .Z(n194) );
  GTECH_XOR2 U181 ( .A(n186), .B(n14), .Z(n193) );
  GTECH_NOT U182 ( .A(D[7]), .Z(n186) );
  GTECH_OR_NOT U183 ( .A(D[7]), .B(n185), .Z(n188) );
  GTECH_AND2 U184 ( .A(n195), .B(n196), .Z(n185) );
  GTECH_OR_NOT U185 ( .A(n15), .B(D[6]), .Z(n196) );
  GTECH_OAI21 U186 ( .A(D[6]), .B(n197), .C(n198), .Z(n195) );
  GTECH_OAI22 U187 ( .A(n15), .B(n189), .C(n199), .D(n191), .Z(shifter_N19) );
  GTECH_XOR3 U188 ( .A(n15), .B(D[6]), .C(n198), .Z(n199) );
  GTECH_OAI21 U189 ( .A(n16), .B(n200), .C(n201), .Z(n198) );
  GTECH_OAI21 U190 ( .A(D[5]), .B(n202), .C(n203), .Z(n201) );
  GTECH_NOT U191 ( .A(D[5]), .Z(n200) );
  GTECH_OAI22 U192 ( .A(n16), .B(n189), .C(n204), .D(n191), .Z(shifter_N18) );
  GTECH_XOR3 U193 ( .A(n16), .B(D[5]), .C(n203), .Z(n204) );
  GTECH_OAI21 U194 ( .A(n17), .B(n205), .C(n206), .Z(n203) );
  GTECH_OAI21 U195 ( .A(D[4]), .B(n207), .C(n208), .Z(n206) );
  GTECH_NOT U196 ( .A(D[4]), .Z(n205) );
  GTECH_OAI22 U197 ( .A(n17), .B(n189), .C(n209), .D(n191), .Z(shifter_N17) );
  GTECH_XOR3 U198 ( .A(n17), .B(D[4]), .C(n208), .Z(n209) );
  GTECH_OAI21 U199 ( .A(n18), .B(n210), .C(n211), .Z(n208) );
  GTECH_OAI21 U200 ( .A(D[3]), .B(n212), .C(n213), .Z(n211) );
  GTECH_NOT U201 ( .A(D[3]), .Z(n210) );
  GTECH_OAI22 U202 ( .A(n18), .B(n189), .C(n214), .D(n191), .Z(shifter_N16) );
  GTECH_XOR3 U203 ( .A(n18), .B(D[3]), .C(n213), .Z(n214) );
  GTECH_OAI21 U204 ( .A(n19), .B(n215), .C(n216), .Z(n213) );
  GTECH_OAI21 U205 ( .A(D[2]), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U206 ( .A(D[2]), .Z(n215) );
  GTECH_OAI22 U207 ( .A(n19), .B(n189), .C(n219), .D(n191), .Z(shifter_N15) );
  GTECH_XOR3 U208 ( .A(n19), .B(D[2]), .C(n218), .Z(n219) );
  GTECH_OAI21 U209 ( .A(n20), .B(n220), .C(n221), .Z(n218) );
  GTECH_OAI21 U210 ( .A(D[1]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U211 ( .A(D[1]), .Z(n220) );
  GTECH_OAI22 U212 ( .A(n20), .B(n189), .C(n191), .D(n224), .Z(shifter_N14) );
  GTECH_XOR3 U213 ( .A(n20), .B(D[1]), .C(n223), .Z(n224) );
  GTECH_NOT U214 ( .A(n225), .Z(n223) );
  GTECH_OR_NOT U215 ( .A(n13), .B(D[0]), .Z(n225) );
  GTECH_NOT U216 ( .A(n226), .Z(shifter_N13) );
  GTECH_AOI222 U217 ( .A(Q[7]), .B(n178), .C(n227), .D(n228), .E(n229), .F(
        n183), .Z(n226) );
  GTECH_NOT U218 ( .A(n191), .Z(n183) );
  GTECH_XNOR2 U219 ( .A(D[0]), .B(n13), .Z(n229) );
  GTECH_OAI2N2 U220 ( .A(n176), .B(n230), .C(Q[6]), .D(n178), .Z(shifter_N12)
         );
  GTECH_NOT U221 ( .A(shifter_temp_7_), .Z(n230) );
  GTECH_OAI2N2 U222 ( .A(n176), .B(n231), .C(Q[5]), .D(n178), .Z(shifter_N11)
         );
  GTECH_NOT U223 ( .A(shifter_temp_6_), .Z(n231) );
  GTECH_OAI2N2 U224 ( .A(n176), .B(n232), .C(Q[4]), .D(n178), .Z(shifter_N10)
         );
  GTECH_NOT U225 ( .A(n10), .Z(n178) );
  GTECH_NOT U226 ( .A(shifter_temp_5_), .Z(n232) );
  GTECH_NOT U227 ( .A(n233), .Z(n176) );
  GTECH_OR_NOT U228 ( .A(n227), .B(n191), .Z(n233) );
  GTECH_NAND4 U229 ( .A(shifter_add_temp), .B(n9), .C(n11), .D(n10), .Z(n191)
         );
  GTECH_NOT U230 ( .A(n189), .Z(n227) );
  GTECH_NAND4 U231 ( .A(n9), .B(n11), .C(n10), .D(n234), .Z(n189) );
  GTECH_NOT U232 ( .A(shifter_add_temp), .Z(n234) );
  GTECH_AND2 U233 ( .A(out_cmd), .B(n222), .Z(out[9]) );
  GTECH_NOT U234 ( .A(n20), .Z(n222) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(n228), .Z(out[8]) );
  GTECH_NOT U236 ( .A(n13), .Z(n228) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U243 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n235), .Z(out[15]) );
  GTECH_NOT U245 ( .A(n14), .Z(n235) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n197), .Z(out[14]) );
  GTECH_NOT U247 ( .A(n15), .Z(n197) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n202), .Z(out[13]) );
  GTECH_NOT U249 ( .A(n16), .Z(n202) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n207), .Z(out[12]) );
  GTECH_NOT U251 ( .A(n17), .Z(n207) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n212), .Z(out[11]) );
  GTECH_NOT U253 ( .A(n18), .Z(n212) );
  GTECH_AND2 U254 ( .A(out_cmd), .B(n217), .Z(out[10]) );
  GTECH_NOT U255 ( .A(n19), .Z(n217) );
  GTECH_AND2 U256 ( .A(out_cmd), .B(n236), .Z(out[0]) );
  GTECH_AND2 U257 ( .A(controller_N98), .B(n237), .Z(controller_N97) );
  GTECH_OAI21 U258 ( .A(n238), .B(n236), .C(n239), .Z(controller_N96) );
  GTECH_OAI21 U259 ( .A(n237), .B(n240), .C(n241), .Z(controller_N94) );
  GTECH_AND2 U260 ( .A(n242), .B(n243), .Z(n241) );
  GTECH_NAND3 U261 ( .A(n142), .B(n236), .C(n244), .Z(n242) );
  GTECH_AND3 U262 ( .A(n143), .B(n142), .C(n245), .Z(controller_N93) );
  GTECH_MUX2 U263 ( .A(n236), .B(n246), .S(n8), .Z(n245) );
  GTECH_NOT U264 ( .A(n141), .Z(n236) );
  GTECH_NOR4 U265 ( .A(n247), .B(n248), .C(n249), .D(n246), .Z(controller_N92)
         );
  GTECH_NOT U266 ( .A(n134), .Z(n246) );
  GTECH_NOT U267 ( .A(n8), .Z(n248) );
  GTECH_NOT U268 ( .A(n239), .Z(controller_N91) );
  GTECH_OR_NOT U269 ( .A(n142), .B(n244), .Z(n239) );
  GTECH_NOT U270 ( .A(n238), .Z(n244) );
  GTECH_OR_NOT U271 ( .A(n8), .B(n143), .Z(n238) );
  GTECH_NOT U272 ( .A(n243), .Z(controller_N90) );
  GTECH_NAND3 U273 ( .A(n8), .B(n247), .C(n143), .Z(n243) );
  GTECH_NOT U274 ( .A(n142), .Z(n247) );
  GTECH_OA21 U275 ( .A(n159), .B(n250), .C(n251), .Z(controller_N83) );
  GTECH_NOT U276 ( .A(n160), .Z(n251) );
  GTECH_AND2 U277 ( .A(n252), .B(n253), .Z(controller_N82) );
  GTECH_XOR2 U278 ( .A(n250), .B(n159), .Z(n252) );
  GTECH_OR_NOT U279 ( .A(n158), .B(n254), .Z(n250) );
  GTECH_NOT U280 ( .A(n255), .Z(n254) );
  GTECH_AND2 U281 ( .A(n256), .B(n253), .Z(controller_N81) );
  GTECH_XOR2 U282 ( .A(n255), .B(n158), .Z(n256) );
  GTECH_OR_NOT U283 ( .A(n157), .B(n257), .Z(n255) );
  GTECH_NOT U284 ( .A(n258), .Z(n257) );
  GTECH_AND2 U285 ( .A(n259), .B(n253), .Z(controller_N80) );
  GTECH_XOR2 U286 ( .A(n258), .B(n157), .Z(n259) );
  GTECH_OR_NOT U287 ( .A(n156), .B(n260), .Z(n258) );
  GTECH_NOT U288 ( .A(n261), .Z(n260) );
  GTECH_AND2 U289 ( .A(n262), .B(n253), .Z(controller_N79) );
  GTECH_XOR2 U290 ( .A(n261), .B(n156), .Z(n262) );
  GTECH_OR_NOT U291 ( .A(n155), .B(n263), .Z(n261) );
  GTECH_NOT U292 ( .A(n264), .Z(n263) );
  GTECH_AND2 U293 ( .A(n265), .B(n253), .Z(controller_N78) );
  GTECH_XOR2 U294 ( .A(n264), .B(n155), .Z(n265) );
  GTECH_OR_NOT U295 ( .A(n154), .B(n266), .Z(n264) );
  GTECH_NOT U296 ( .A(n267), .Z(n266) );
  GTECH_AND2 U297 ( .A(n268), .B(n253), .Z(controller_N77) );
  GTECH_XOR2 U298 ( .A(n267), .B(n154), .Z(n268) );
  GTECH_OR_NOT U299 ( .A(n153), .B(n269), .Z(n267) );
  GTECH_NOT U300 ( .A(n270), .Z(n269) );
  GTECH_AND2 U301 ( .A(n271), .B(n253), .Z(controller_N76) );
  GTECH_XOR2 U302 ( .A(n270), .B(n153), .Z(n271) );
  GTECH_OR_NOT U303 ( .A(n152), .B(n272), .Z(n270) );
  GTECH_NOT U304 ( .A(n273), .Z(n272) );
  GTECH_AND2 U305 ( .A(n274), .B(n253), .Z(controller_N75) );
  GTECH_XOR2 U306 ( .A(n273), .B(n152), .Z(n274) );
  GTECH_OR_NOT U307 ( .A(n151), .B(n275), .Z(n273) );
  GTECH_NOT U308 ( .A(n276), .Z(n275) );
  GTECH_AND2 U309 ( .A(n277), .B(n253), .Z(controller_N74) );
  GTECH_XOR2 U310 ( .A(n276), .B(n151), .Z(n277) );
  GTECH_OR_NOT U311 ( .A(n150), .B(n278), .Z(n276) );
  GTECH_NOT U312 ( .A(n279), .Z(n278) );
  GTECH_AND2 U313 ( .A(n280), .B(n253), .Z(controller_N73) );
  GTECH_XOR2 U314 ( .A(n279), .B(n150), .Z(n280) );
  GTECH_OR_NOT U315 ( .A(n149), .B(n281), .Z(n279) );
  GTECH_NOT U316 ( .A(n282), .Z(n281) );
  GTECH_AND2 U317 ( .A(n283), .B(n253), .Z(controller_N72) );
  GTECH_XOR2 U318 ( .A(n282), .B(n149), .Z(n283) );
  GTECH_OR_NOT U319 ( .A(n148), .B(n284), .Z(n282) );
  GTECH_NOT U320 ( .A(n285), .Z(n284) );
  GTECH_AND2 U321 ( .A(n286), .B(n253), .Z(controller_N71) );
  GTECH_XOR2 U322 ( .A(n285), .B(n148), .Z(n286) );
  GTECH_OR_NOT U323 ( .A(n147), .B(n287), .Z(n285) );
  GTECH_NOT U324 ( .A(n288), .Z(n287) );
  GTECH_AND2 U325 ( .A(n289), .B(n253), .Z(controller_N70) );
  GTECH_XOR2 U326 ( .A(n288), .B(n147), .Z(n289) );
  GTECH_OR_NOT U327 ( .A(n146), .B(n290), .Z(n288) );
  GTECH_NOT U328 ( .A(n291), .Z(n290) );
  GTECH_AND2 U329 ( .A(n292), .B(n253), .Z(controller_N69) );
  GTECH_XOR2 U330 ( .A(n291), .B(n146), .Z(n292) );
  GTECH_OR_NOT U331 ( .A(n145), .B(n293), .Z(n291) );
  GTECH_NOT U332 ( .A(n294), .Z(n293) );
  GTECH_AND2 U333 ( .A(n295), .B(n253), .Z(controller_N68) );
  GTECH_XOR2 U334 ( .A(n294), .B(n145), .Z(n295) );
  GTECH_OR_NOT U335 ( .A(n144), .B(n296), .Z(n294) );
  GTECH_NOT U336 ( .A(n297), .Z(n296) );
  GTECH_AND2 U337 ( .A(n298), .B(n253), .Z(controller_N67) );
  GTECH_XOR2 U338 ( .A(n297), .B(n144), .Z(n298) );
  GTECH_OR_NOT U339 ( .A(n175), .B(n299), .Z(n297) );
  GTECH_NOT U340 ( .A(n300), .Z(n299) );
  GTECH_AND2 U341 ( .A(n301), .B(n253), .Z(controller_N66) );
  GTECH_XOR2 U342 ( .A(n300), .B(n175), .Z(n301) );
  GTECH_OR_NOT U343 ( .A(n174), .B(n302), .Z(n300) );
  GTECH_NOT U344 ( .A(n303), .Z(n302) );
  GTECH_AND2 U345 ( .A(n304), .B(n253), .Z(controller_N65) );
  GTECH_XOR2 U346 ( .A(n303), .B(n174), .Z(n304) );
  GTECH_OR_NOT U347 ( .A(n173), .B(n305), .Z(n303) );
  GTECH_NOT U348 ( .A(n306), .Z(n305) );
  GTECH_AND2 U349 ( .A(n307), .B(n253), .Z(controller_N64) );
  GTECH_XOR2 U350 ( .A(n306), .B(n173), .Z(n307) );
  GTECH_OR_NOT U351 ( .A(n172), .B(n308), .Z(n306) );
  GTECH_NOT U352 ( .A(n309), .Z(n308) );
  GTECH_AND2 U353 ( .A(n310), .B(n253), .Z(controller_N63) );
  GTECH_XOR2 U354 ( .A(n309), .B(n172), .Z(n310) );
  GTECH_OR_NOT U355 ( .A(n171), .B(n311), .Z(n309) );
  GTECH_NOT U356 ( .A(n312), .Z(n311) );
  GTECH_AND2 U357 ( .A(n313), .B(n253), .Z(controller_N62) );
  GTECH_XOR2 U358 ( .A(n312), .B(n171), .Z(n313) );
  GTECH_OR_NOT U359 ( .A(n170), .B(n314), .Z(n312) );
  GTECH_NOT U360 ( .A(n315), .Z(n314) );
  GTECH_AND2 U361 ( .A(n316), .B(n253), .Z(controller_N61) );
  GTECH_XOR2 U362 ( .A(n315), .B(n170), .Z(n316) );
  GTECH_OR_NOT U363 ( .A(n169), .B(n317), .Z(n315) );
  GTECH_NOT U364 ( .A(n318), .Z(n317) );
  GTECH_AND2 U365 ( .A(n319), .B(n253), .Z(controller_N60) );
  GTECH_XOR2 U366 ( .A(n318), .B(n169), .Z(n319) );
  GTECH_OR_NOT U367 ( .A(n168), .B(n320), .Z(n318) );
  GTECH_NOT U368 ( .A(n321), .Z(n320) );
  GTECH_AND2 U369 ( .A(n322), .B(n253), .Z(controller_N59) );
  GTECH_XOR2 U370 ( .A(n321), .B(n168), .Z(n322) );
  GTECH_OR_NOT U371 ( .A(n167), .B(n323), .Z(n321) );
  GTECH_NOT U372 ( .A(n324), .Z(n323) );
  GTECH_AND2 U373 ( .A(n325), .B(n253), .Z(controller_N58) );
  GTECH_XOR2 U374 ( .A(n324), .B(n167), .Z(n325) );
  GTECH_OR_NOT U375 ( .A(n166), .B(n326), .Z(n324) );
  GTECH_NOT U376 ( .A(n327), .Z(n326) );
  GTECH_AND2 U377 ( .A(n328), .B(n253), .Z(controller_N57) );
  GTECH_XOR2 U378 ( .A(n327), .B(n166), .Z(n328) );
  GTECH_OR_NOT U379 ( .A(n165), .B(n329), .Z(n327) );
  GTECH_NOT U380 ( .A(n330), .Z(n329) );
  GTECH_AND2 U381 ( .A(n331), .B(n253), .Z(controller_N56) );
  GTECH_XOR2 U382 ( .A(n330), .B(n165), .Z(n331) );
  GTECH_OR_NOT U383 ( .A(n164), .B(n332), .Z(n330) );
  GTECH_NOT U384 ( .A(n333), .Z(n332) );
  GTECH_AND2 U385 ( .A(n334), .B(n253), .Z(controller_N55) );
  GTECH_XOR2 U386 ( .A(n333), .B(n164), .Z(n334) );
  GTECH_NAND3 U387 ( .A(n335), .B(n336), .C(n337), .Z(n333) );
  GTECH_NOT U388 ( .A(n163), .Z(n336) );
  GTECH_OAI22 U389 ( .A(n163), .B(n338), .C(n237), .D(n339), .Z(controller_N54) );
  GTECH_MUX2 U390 ( .A(n335), .B(n340), .S(n163), .Z(n339) );
  GTECH_OR_NOT U391 ( .A(n162), .B(n337), .Z(n340) );
  GTECH_NOT U392 ( .A(n162), .Z(n335) );
  GTECH_MUX2 U393 ( .A(controller_N52), .B(n341), .S(n162), .Z(controller_N53)
         );
  GTECH_AND2 U394 ( .A(n253), .B(n337), .Z(n341) );
  GTECH_NOT U395 ( .A(n161), .Z(n337) );
  GTECH_NOT U396 ( .A(n338), .Z(controller_N52) );
  GTECH_OR_NOT U397 ( .A(n237), .B(n161), .Z(n338) );
  GTECH_NOT U398 ( .A(n253), .Z(n237) );
  GTECH_OAI21 U399 ( .A(n342), .B(n343), .C(n160), .Z(n253) );
  GTECH_NAND8 U400 ( .A(n169), .B(n170), .C(n171), .D(n172), .E(n175), .F(n174), .G(n173), .H(n344), .Z(n343) );
  GTECH_AND3 U401 ( .A(n167), .B(n166), .C(n345), .Z(n344) );
  GTECH_AND5 U402 ( .A(n158), .B(n159), .C(n164), .D(n165), .E(n168), .Z(n345)
         );
  GTECH_NAND8 U403 ( .A(n151), .B(n152), .C(n153), .D(n154), .E(n157), .F(n156), .G(n155), .H(n346), .Z(n342) );
  GTECH_AND3 U404 ( .A(n149), .B(n148), .C(n347), .Z(n346) );
  GTECH_AND5 U405 ( .A(n144), .B(n145), .C(n146), .D(n147), .E(n150), .Z(n347)
         );
  GTECH_AND2 U406 ( .A(controller_N95), .B(n137), .Z(controller_N102) );
  GTECH_NOT U407 ( .A(rst), .Z(n137) );
  GTECH_OR_NOT U408 ( .A(controller_N98), .B(n249), .Z(controller_N95) );
  GTECH_NOT U409 ( .A(n240), .Z(controller_N98) );
  GTECH_NAND3 U410 ( .A(n142), .B(n249), .C(n8), .Z(n240) );
  GTECH_NOT U411 ( .A(n143), .Z(n249) );
endmodule

