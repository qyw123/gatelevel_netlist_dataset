
module shift_add_multiplier ( clk, rst, D, Q, out );
  input [7:0] D;
  input [7:0] Q;
  output [15:0] out;
  input clk, rst;
  wire   load_cmd, add_cmd, out_cmd, shifter_N24, shifter_N23, shifter_N22,
         shifter_N21, shifter_N20, shifter_N19, shifter_N18, shifter_N17,
         shifter_N16, shifter_N15, shifter_N14, shifter_N13, shifter_N12,
         shifter_N11, shifter_N10, shifter_N9, shifter_N8, shifter_N7,
         shifter_N6, shifter_add_temp, shifter_temp_1_, shifter_temp_2_,
         shifter_temp_3_, shifter_temp_4_, shifter_temp_5_, shifter_temp_6_,
         shifter_temp_7_, controller_N102, controller_N98, controller_N97,
         controller_N96, controller_N95, controller_N94, controller_N93,
         controller_N92, controller_N91, controller_N90, controller_N83,
         controller_N82, controller_N81, controller_N80, controller_N79,
         controller_N78, controller_N77, controller_N76, controller_N75,
         controller_N74, controller_N73, controller_N72, controller_N71,
         controller_N70, controller_N69, controller_N68, controller_N67,
         controller_N66, controller_N65, controller_N64, controller_N63,
         controller_N62, controller_N61, controller_N60, controller_N59,
         controller_N58, controller_N57, controller_N56, controller_N55,
         controller_N54, controller_N53, controller_N52, controller_count_0_,
         controller_count_1_, controller_count_2_, controller_count_3_,
         controller_count_4_, controller_count_5_, controller_count_6_,
         controller_count_7_, controller_count_8_, controller_count_9_,
         controller_count_10_, controller_count_11_, controller_count_12_,
         controller_count_13_, controller_count_14_, controller_count_15_,
         controller_count_16_, controller_count_17_, controller_count_18_,
         controller_count_19_, controller_count_20_, controller_count_21_,
         controller_count_22_, controller_count_23_, controller_count_24_,
         controller_count_25_, controller_count_26_, controller_count_27_,
         controller_count_28_, controller_count_29_, controller_count_30_,
         controller_count_31_, controller_state_0_, controller_state_1_,
         controller_state_2_, controller_start, n8, n9, n10, n12, n13, n14,
         n15, n16, n17, n18, n19, n27, n138, n140, n143, n54, n146, n149, n150,
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
         n338, n339, n340, n341, n342, n343, n344;
  wire   [7:0] A;

  GTECH_FJK2S controller_count_reg_31_ ( .J(n54), .K(n54), .TI(controller_N83), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_31_), 
        .QN(n170) );
  GTECH_FJK2S controller_count_reg_30_ ( .J(n54), .K(n54), .TI(controller_N82), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_30_), 
        .QN(n169) );
  GTECH_FJK3 controller_start_reg ( .J(n54), .K(controller_N97), .CP(clk), 
        .CD(n138), .SD(n143), .Q(controller_start), .QN(n140) );
  GTECH_FJK2S controller_state_reg_0_ ( .J(n54), .K(n54), .TI(controller_N93), 
        .TE(controller_N95), .CP(clk), .CD(n143), .Q(controller_state_0_), 
        .QN(n149) );
  GTECH_FJK2S controller_state_reg_1_ ( .J(n54), .K(n54), .TI(controller_N94), 
        .TE(controller_N95), .CP(clk), .CD(n143), .Q(controller_state_1_), 
        .QN(n8) );
  GTECH_FJK2S controller_state_reg_2_ ( .J(n54), .K(n54), .TI(controller_N96), 
        .TE(controller_N95), .CP(clk), .CD(n143), .Q(controller_state_2_), 
        .QN(n150) );
  GTECH_FJK2S controller_count_reg_29_ ( .J(n54), .K(n54), .TI(controller_N81), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_29_), 
        .QN(n168) );
  GTECH_FJK2S controller_count_reg_28_ ( .J(n54), .K(n54), .TI(controller_N80), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_28_), 
        .QN(n167) );
  GTECH_FJK2S controller_count_reg_27_ ( .J(n54), .K(n54), .TI(controller_N79), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_27_), 
        .QN(n166) );
  GTECH_FJK2S controller_count_reg_26_ ( .J(n54), .K(n54), .TI(controller_N78), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_26_), 
        .QN(n165) );
  GTECH_FJK2S controller_count_reg_25_ ( .J(n54), .K(n54), .TI(controller_N77), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_25_), 
        .QN(n164) );
  GTECH_FJK2S controller_count_reg_24_ ( .J(n54), .K(n54), .TI(controller_N76), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_24_), 
        .QN(n163) );
  GTECH_FJK2S controller_count_reg_23_ ( .J(n54), .K(n54), .TI(controller_N75), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_23_), 
        .QN(n162) );
  GTECH_FJK2S controller_count_reg_22_ ( .J(n54), .K(n54), .TI(controller_N74), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_22_), 
        .QN(n161) );
  GTECH_FJK2S controller_count_reg_21_ ( .J(n54), .K(n54), .TI(controller_N73), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_21_), 
        .QN(n160) );
  GTECH_FJK2S controller_count_reg_20_ ( .J(n54), .K(n54), .TI(controller_N72), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_20_), 
        .QN(n159) );
  GTECH_FJK2S controller_count_reg_19_ ( .J(n54), .K(n54), .TI(controller_N71), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_19_), 
        .QN(n158) );
  GTECH_FJK2S controller_count_reg_18_ ( .J(n54), .K(n54), .TI(controller_N70), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_18_), 
        .QN(n157) );
  GTECH_FJK2S controller_count_reg_17_ ( .J(n54), .K(n54), .TI(controller_N69), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_17_), 
        .QN(n156) );
  GTECH_FJK2S controller_count_reg_16_ ( .J(n54), .K(n54), .TI(controller_N68), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_16_), 
        .QN(n155) );
  GTECH_FJK2S controller_count_reg_15_ ( .J(n54), .K(n54), .TI(controller_N67), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_15_), 
        .QN(n154) );
  GTECH_FJK2S controller_count_reg_14_ ( .J(n54), .K(n54), .TI(controller_N66), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_14_), 
        .QN(n153) );
  GTECH_FJK2S controller_count_reg_13_ ( .J(n54), .K(n54), .TI(controller_N65), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_13_), 
        .QN(n152) );
  GTECH_FJK2S controller_count_reg_12_ ( .J(n54), .K(n54), .TI(controller_N64), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_12_), 
        .QN(n151) );
  GTECH_FJK2S controller_count_reg_11_ ( .J(n54), .K(n54), .TI(controller_N63), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_11_), 
        .QN(n182) );
  GTECH_FJK2S controller_count_reg_10_ ( .J(n54), .K(n54), .TI(controller_N62), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_10_), 
        .QN(n181) );
  GTECH_FJK2S controller_count_reg_9_ ( .J(n54), .K(n54), .TI(controller_N61), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_9_), 
        .QN(n180) );
  GTECH_FJK2S controller_count_reg_8_ ( .J(n54), .K(n54), .TI(controller_N60), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_8_), 
        .QN(n179) );
  GTECH_FJK2S controller_count_reg_7_ ( .J(n54), .K(n54), .TI(controller_N59), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_7_), 
        .QN(n178) );
  GTECH_FJK2S controller_count_reg_6_ ( .J(n54), .K(n54), .TI(controller_N58), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_6_), 
        .QN(n177) );
  GTECH_FJK2S controller_count_reg_5_ ( .J(n54), .K(n54), .TI(controller_N57), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_5_), 
        .QN(n176) );
  GTECH_FJK2S controller_count_reg_4_ ( .J(n54), .K(n54), .TI(controller_N56), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_4_), 
        .QN(n175) );
  GTECH_FJK2S controller_count_reg_3_ ( .J(n54), .K(n54), .TI(controller_N55), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_3_), 
        .QN(n174) );
  GTECH_FJK2S controller_count_reg_2_ ( .J(n54), .K(n54), .TI(controller_N54), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_2_), 
        .QN(n173) );
  GTECH_FJK2S controller_count_reg_1_ ( .J(n54), .K(n54), .TI(controller_N53), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_1_), 
        .QN(n172) );
  GTECH_FJK2S controller_count_reg_0_ ( .J(n54), .K(n54), .TI(controller_N52), 
        .TE(controller_N98), .CP(clk), .CD(n143), .Q(controller_count_0_), 
        .QN(n171) );
  GTECH_FJK1S controller_shift_cmd_reg ( .J(n54), .K(n54), .TI(controller_N98), 
        .TE(controller_N102), .CP(clk), .Q(n9) );
  GTECH_FJK1S controller_load_cmd_reg ( .J(n54), .K(n54), .TI(controller_N90), 
        .TE(controller_N102), .CP(clk), .Q(load_cmd), .QN(n146) );
  GTECH_FJK1S controller_add_cmd_reg ( .J(n54), .K(n54), .TI(controller_N91), 
        .TE(controller_N102), .CP(clk), .Q(add_cmd), .QN(n10) );
  GTECH_FJK2S shifter_add_temp_reg ( .J(n54), .K(n54), .TI(shifter_N24), .TE(
        shifter_N23), .CP(clk), .CD(n143), .Q(shifter_add_temp) );
  GTECH_FJK2S shifter_temp_reg_8_ ( .J(n54), .K(n54), .TI(shifter_N14), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[0]), .QN(n12) );
  GTECH_FJK2S shifter_temp_reg_15_ ( .J(n54), .K(n54), .TI(shifter_N21), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[7]), .QN(n13) );
  GTECH_FJK2S shifter_temp_reg_14_ ( .J(n54), .K(n54), .TI(shifter_N20), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[6]), .QN(n14) );
  GTECH_FJK2S shifter_temp_reg_13_ ( .J(n54), .K(n54), .TI(shifter_N19), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[5]), .QN(n15) );
  GTECH_FJK2S shifter_temp_reg_12_ ( .J(n54), .K(n54), .TI(shifter_N18), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[4]), .QN(n16) );
  GTECH_FJK2S shifter_temp_reg_11_ ( .J(n54), .K(n54), .TI(shifter_N17), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[3]), .QN(n17) );
  GTECH_FJK2S shifter_temp_reg_10_ ( .J(n54), .K(n54), .TI(shifter_N16), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[2]), .QN(n18) );
  GTECH_FJK2S shifter_temp_reg_9_ ( .J(n54), .K(n54), .TI(shifter_N15), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(A[1]), .QN(n19) );
  GTECH_FJK2S shifter_temp_reg_7_ ( .J(n54), .K(n54), .TI(shifter_N13), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_7_) );
  GTECH_FJK2S shifter_temp_reg_6_ ( .J(n54), .K(n54), .TI(shifter_N12), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_6_) );
  GTECH_FJK2S shifter_temp_reg_5_ ( .J(n54), .K(n54), .TI(shifter_N11), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_5_) );
  GTECH_FJK2S shifter_temp_reg_4_ ( .J(n54), .K(n54), .TI(shifter_N10), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_4_) );
  GTECH_FJK2S shifter_temp_reg_3_ ( .J(n54), .K(n54), .TI(shifter_N9), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_3_) );
  GTECH_FJK2S shifter_temp_reg_2_ ( .J(n54), .K(n54), .TI(shifter_N8), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_2_) );
  GTECH_FJK2S shifter_temp_reg_1_ ( .J(n54), .K(n54), .TI(shifter_N7), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(shifter_temp_1_) );
  GTECH_FJK2S shifter_temp_reg_0_ ( .J(n54), .K(n54), .TI(shifter_N6), .TE(
        shifter_N22), .CP(clk), .CD(n143), .Q(n27) );
  GTECH_FJK2S controller_out_cmd_reg ( .J(n54), .K(n54), .TI(controller_N92), 
        .TE(controller_N95), .CP(clk), .CD(n143), .Q(out_cmd) );
  GTECH_ZERO U166 ( .Z(n54) );
  GTECH_ONE U167 ( .Z(n138) );
  GTECH_AO22 U168 ( .A(Q[3]), .B(n183), .C(shifter_temp_4_), .D(n184), .Z(
        shifter_N9) );
  GTECH_AO22 U169 ( .A(Q[2]), .B(n183), .C(shifter_temp_3_), .D(n184), .Z(
        shifter_N8) );
  GTECH_AO22 U170 ( .A(Q[1]), .B(n183), .C(shifter_temp_2_), .D(n184), .Z(
        shifter_N7) );
  GTECH_AO22 U171 ( .A(Q[0]), .B(n183), .C(shifter_temp_1_), .D(n184), .Z(
        shifter_N6) );
  GTECH_NOT U172 ( .A(n185), .Z(shifter_N24) );
  GTECH_OR_NOT U173 ( .A(n186), .B(n185), .Z(shifter_N23) );
  GTECH_OR_NOT U174 ( .A(n10), .B(n146), .Z(n185) );
  GTECH_OR_NOT U175 ( .A(n183), .B(n187), .Z(shifter_N22) );
  GTECH_NOT U176 ( .A(n184), .Z(n187) );
  GTECH_AND2 U177 ( .A(n186), .B(n188), .Z(shifter_N21) );
  GTECH_OAI22 U178 ( .A(n189), .B(n190), .C(n13), .D(n191), .Z(n188) );
  GTECH_NOT U179 ( .A(n192), .Z(n191) );
  GTECH_OAI22 U180 ( .A(n13), .B(n193), .C(n194), .D(n195), .Z(shifter_N20) );
  GTECH_OA21 U181 ( .A(n13), .B(n192), .C(n196), .Z(n194) );
  GTECH_MUX2 U182 ( .A(n197), .B(n198), .S(n189), .Z(n196) );
  GTECH_OR_NOT U183 ( .A(n190), .B(n13), .Z(n198) );
  GTECH_XOR2 U184 ( .A(n190), .B(n13), .Z(n197) );
  GTECH_NOT U185 ( .A(D[7]), .Z(n190) );
  GTECH_OR_NOT U186 ( .A(D[7]), .B(n189), .Z(n192) );
  GTECH_AND2 U187 ( .A(n199), .B(n200), .Z(n189) );
  GTECH_OR_NOT U188 ( .A(n14), .B(D[6]), .Z(n200) );
  GTECH_OAI21 U189 ( .A(D[6]), .B(n201), .C(n202), .Z(n199) );
  GTECH_OAI22 U190 ( .A(n14), .B(n193), .C(n203), .D(n195), .Z(shifter_N19) );
  GTECH_XOR3 U191 ( .A(n14), .B(D[6]), .C(n202), .Z(n203) );
  GTECH_OAI21 U192 ( .A(n15), .B(n204), .C(n205), .Z(n202) );
  GTECH_OAI21 U193 ( .A(D[5]), .B(n206), .C(n207), .Z(n205) );
  GTECH_NOT U194 ( .A(D[5]), .Z(n204) );
  GTECH_OAI22 U195 ( .A(n15), .B(n193), .C(n208), .D(n195), .Z(shifter_N18) );
  GTECH_XOR3 U196 ( .A(n15), .B(D[5]), .C(n207), .Z(n208) );
  GTECH_OAI21 U197 ( .A(n16), .B(n209), .C(n210), .Z(n207) );
  GTECH_OAI21 U198 ( .A(D[4]), .B(n211), .C(n212), .Z(n210) );
  GTECH_NOT U199 ( .A(D[4]), .Z(n209) );
  GTECH_OAI22 U200 ( .A(n16), .B(n193), .C(n213), .D(n195), .Z(shifter_N17) );
  GTECH_XOR3 U201 ( .A(n16), .B(D[4]), .C(n212), .Z(n213) );
  GTECH_OAI21 U202 ( .A(n17), .B(n214), .C(n215), .Z(n212) );
  GTECH_OAI21 U203 ( .A(D[3]), .B(n216), .C(n217), .Z(n215) );
  GTECH_NOT U204 ( .A(D[3]), .Z(n214) );
  GTECH_OAI22 U205 ( .A(n17), .B(n193), .C(n218), .D(n195), .Z(shifter_N16) );
  GTECH_XOR3 U206 ( .A(n17), .B(D[3]), .C(n217), .Z(n218) );
  GTECH_OAI21 U207 ( .A(n18), .B(n219), .C(n220), .Z(n217) );
  GTECH_OAI21 U208 ( .A(D[2]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U209 ( .A(D[2]), .Z(n219) );
  GTECH_OAI22 U210 ( .A(n18), .B(n193), .C(n223), .D(n195), .Z(shifter_N15) );
  GTECH_XOR3 U211 ( .A(n18), .B(D[2]), .C(n222), .Z(n223) );
  GTECH_OAI21 U212 ( .A(n19), .B(n224), .C(n225), .Z(n222) );
  GTECH_OAI21 U213 ( .A(D[1]), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U214 ( .A(D[1]), .Z(n224) );
  GTECH_OAI22 U215 ( .A(n19), .B(n193), .C(n195), .D(n228), .Z(shifter_N14) );
  GTECH_XOR3 U216 ( .A(n19), .B(D[1]), .C(n227), .Z(n228) );
  GTECH_NOT U217 ( .A(n229), .Z(n227) );
  GTECH_OR_NOT U218 ( .A(n12), .B(D[0]), .Z(n229) );
  GTECH_AO21 U219 ( .A(Q[7]), .B(n183), .C(n230), .Z(shifter_N13) );
  GTECH_OAI22 U220 ( .A(n195), .B(n231), .C(n12), .D(n193), .Z(n230) );
  GTECH_XOR2 U221 ( .A(D[0]), .B(n12), .Z(n231) );
  GTECH_AO22 U222 ( .A(Q[6]), .B(n183), .C(shifter_temp_7_), .D(n184), .Z(
        shifter_N12) );
  GTECH_AO22 U223 ( .A(Q[5]), .B(n183), .C(shifter_temp_6_), .D(n184), .Z(
        shifter_N11) );
  GTECH_AO22 U224 ( .A(Q[4]), .B(n183), .C(shifter_temp_5_), .D(n184), .Z(
        shifter_N10) );
  GTECH_OR_NOT U225 ( .A(n186), .B(n193), .Z(n184) );
  GTECH_NAND4 U226 ( .A(n9), .B(n146), .C(n10), .D(n232), .Z(n193) );
  GTECH_NOT U227 ( .A(shifter_add_temp), .Z(n232) );
  GTECH_NOT U228 ( .A(n195), .Z(n186) );
  GTECH_NAND4 U229 ( .A(shifter_add_temp), .B(n9), .C(n146), .D(n10), .Z(n195)
         );
  GTECH_NOT U230 ( .A(n146), .Z(n183) );
  GTECH_AND2 U231 ( .A(out_cmd), .B(n226), .Z(out[9]) );
  GTECH_NOT U232 ( .A(n19), .Z(n226) );
  GTECH_AND2 U233 ( .A(out_cmd), .B(n233), .Z(out[8]) );
  GTECH_NOT U234 ( .A(n12), .Z(n233) );
  GTECH_AND2 U235 ( .A(out_cmd), .B(shifter_temp_7_), .Z(out[7]) );
  GTECH_AND2 U236 ( .A(out_cmd), .B(shifter_temp_6_), .Z(out[6]) );
  GTECH_AND2 U237 ( .A(out_cmd), .B(shifter_temp_5_), .Z(out[5]) );
  GTECH_AND2 U238 ( .A(out_cmd), .B(shifter_temp_4_), .Z(out[4]) );
  GTECH_AND2 U239 ( .A(out_cmd), .B(shifter_temp_3_), .Z(out[3]) );
  GTECH_AND2 U240 ( .A(out_cmd), .B(shifter_temp_2_), .Z(out[2]) );
  GTECH_AND2 U241 ( .A(out_cmd), .B(shifter_temp_1_), .Z(out[1]) );
  GTECH_AND2 U242 ( .A(out_cmd), .B(n234), .Z(out[15]) );
  GTECH_NOT U243 ( .A(n13), .Z(n234) );
  GTECH_AND2 U244 ( .A(out_cmd), .B(n201), .Z(out[14]) );
  GTECH_NOT U245 ( .A(n14), .Z(n201) );
  GTECH_AND2 U246 ( .A(out_cmd), .B(n206), .Z(out[13]) );
  GTECH_NOT U247 ( .A(n15), .Z(n206) );
  GTECH_AND2 U248 ( .A(out_cmd), .B(n211), .Z(out[12]) );
  GTECH_NOT U249 ( .A(n16), .Z(n211) );
  GTECH_AND2 U250 ( .A(out_cmd), .B(n216), .Z(out[11]) );
  GTECH_NOT U251 ( .A(n17), .Z(n216) );
  GTECH_AND2 U252 ( .A(out_cmd), .B(n221), .Z(out[10]) );
  GTECH_NOT U253 ( .A(n18), .Z(n221) );
  GTECH_AND2 U254 ( .A(n27), .B(out_cmd), .Z(out[0]) );
  GTECH_AND2 U255 ( .A(controller_N98), .B(n235), .Z(controller_N97) );
  GTECH_OAI21 U256 ( .A(n27), .B(n236), .C(n237), .Z(controller_N96) );
  GTECH_OAI21 U257 ( .A(n235), .B(n238), .C(n239), .Z(controller_N94) );
  GTECH_AND2 U258 ( .A(n240), .B(n241), .Z(n239) );
  GTECH_NAND3 U259 ( .A(n149), .B(n27), .C(n242), .Z(n240) );
  GTECH_AND3 U260 ( .A(n150), .B(n149), .C(n243), .Z(controller_N93) );
  GTECH_MUX2 U261 ( .A(n27), .B(n244), .S(n8), .Z(n243) );
  GTECH_NOT U262 ( .A(n140), .Z(n244) );
  GTECH_AND4 U263 ( .A(n140), .B(n150), .C(n8), .D(n149), .Z(controller_N92)
         );
  GTECH_NOT U264 ( .A(n237), .Z(controller_N91) );
  GTECH_OR_NOT U265 ( .A(n149), .B(n242), .Z(n237) );
  GTECH_NOT U266 ( .A(n236), .Z(n242) );
  GTECH_OR_NOT U267 ( .A(n8), .B(n150), .Z(n236) );
  GTECH_NOT U268 ( .A(n241), .Z(controller_N90) );
  GTECH_NAND3 U269 ( .A(n8), .B(n245), .C(n150), .Z(n241) );
  GTECH_NOT U270 ( .A(n149), .Z(n245) );
  GTECH_OA21 U271 ( .A(n169), .B(n246), .C(n247), .Z(controller_N83) );
  GTECH_NOT U272 ( .A(n170), .Z(n247) );
  GTECH_AND2 U273 ( .A(n248), .B(n249), .Z(controller_N82) );
  GTECH_XOR2 U274 ( .A(n246), .B(n169), .Z(n248) );
  GTECH_OR_NOT U275 ( .A(n168), .B(n250), .Z(n246) );
  GTECH_NOT U276 ( .A(n251), .Z(n250) );
  GTECH_AND2 U277 ( .A(n252), .B(n249), .Z(controller_N81) );
  GTECH_XOR2 U278 ( .A(n251), .B(n168), .Z(n252) );
  GTECH_OR_NOT U279 ( .A(n167), .B(n253), .Z(n251) );
  GTECH_NOT U280 ( .A(n254), .Z(n253) );
  GTECH_AND2 U281 ( .A(n255), .B(n249), .Z(controller_N80) );
  GTECH_XOR2 U282 ( .A(n254), .B(n167), .Z(n255) );
  GTECH_OR_NOT U283 ( .A(n166), .B(n256), .Z(n254) );
  GTECH_NOT U284 ( .A(n257), .Z(n256) );
  GTECH_AND2 U285 ( .A(n258), .B(n249), .Z(controller_N79) );
  GTECH_XOR2 U286 ( .A(n257), .B(n166), .Z(n258) );
  GTECH_OR_NOT U287 ( .A(n165), .B(n259), .Z(n257) );
  GTECH_NOT U288 ( .A(n260), .Z(n259) );
  GTECH_AND2 U289 ( .A(n261), .B(n249), .Z(controller_N78) );
  GTECH_XOR2 U290 ( .A(n260), .B(n165), .Z(n261) );
  GTECH_OR_NOT U291 ( .A(n164), .B(n262), .Z(n260) );
  GTECH_NOT U292 ( .A(n263), .Z(n262) );
  GTECH_AND2 U293 ( .A(n264), .B(n249), .Z(controller_N77) );
  GTECH_XOR2 U294 ( .A(n263), .B(n164), .Z(n264) );
  GTECH_OR_NOT U295 ( .A(n163), .B(n265), .Z(n263) );
  GTECH_NOT U296 ( .A(n266), .Z(n265) );
  GTECH_AND2 U297 ( .A(n267), .B(n249), .Z(controller_N76) );
  GTECH_XOR2 U298 ( .A(n266), .B(n163), .Z(n267) );
  GTECH_OR_NOT U299 ( .A(n162), .B(n268), .Z(n266) );
  GTECH_NOT U300 ( .A(n269), .Z(n268) );
  GTECH_AND2 U301 ( .A(n270), .B(n249), .Z(controller_N75) );
  GTECH_XOR2 U302 ( .A(n269), .B(n162), .Z(n270) );
  GTECH_OR_NOT U303 ( .A(n161), .B(n271), .Z(n269) );
  GTECH_NOT U304 ( .A(n272), .Z(n271) );
  GTECH_AND2 U305 ( .A(n273), .B(n249), .Z(controller_N74) );
  GTECH_XOR2 U306 ( .A(n272), .B(n161), .Z(n273) );
  GTECH_OR_NOT U307 ( .A(n160), .B(n274), .Z(n272) );
  GTECH_NOT U308 ( .A(n275), .Z(n274) );
  GTECH_AND2 U309 ( .A(n276), .B(n249), .Z(controller_N73) );
  GTECH_XOR2 U310 ( .A(n275), .B(n160), .Z(n276) );
  GTECH_OR_NOT U311 ( .A(n159), .B(n277), .Z(n275) );
  GTECH_NOT U312 ( .A(n278), .Z(n277) );
  GTECH_AND2 U313 ( .A(n279), .B(n249), .Z(controller_N72) );
  GTECH_XOR2 U314 ( .A(n278), .B(n159), .Z(n279) );
  GTECH_OR_NOT U315 ( .A(n158), .B(n280), .Z(n278) );
  GTECH_NOT U316 ( .A(n281), .Z(n280) );
  GTECH_AND2 U317 ( .A(n282), .B(n249), .Z(controller_N71) );
  GTECH_XOR2 U318 ( .A(n281), .B(n158), .Z(n282) );
  GTECH_OR_NOT U319 ( .A(n157), .B(n283), .Z(n281) );
  GTECH_NOT U320 ( .A(n284), .Z(n283) );
  GTECH_AND2 U321 ( .A(n285), .B(n249), .Z(controller_N70) );
  GTECH_XOR2 U322 ( .A(n284), .B(n157), .Z(n285) );
  GTECH_OR_NOT U323 ( .A(n156), .B(n286), .Z(n284) );
  GTECH_NOT U324 ( .A(n287), .Z(n286) );
  GTECH_AND2 U325 ( .A(n288), .B(n249), .Z(controller_N69) );
  GTECH_XOR2 U326 ( .A(n287), .B(n156), .Z(n288) );
  GTECH_OR_NOT U327 ( .A(n155), .B(n289), .Z(n287) );
  GTECH_NOT U328 ( .A(n290), .Z(n289) );
  GTECH_AND2 U329 ( .A(n291), .B(n249), .Z(controller_N68) );
  GTECH_XOR2 U330 ( .A(n290), .B(n155), .Z(n291) );
  GTECH_OR_NOT U331 ( .A(n154), .B(n292), .Z(n290) );
  GTECH_NOT U332 ( .A(n293), .Z(n292) );
  GTECH_AND2 U333 ( .A(n294), .B(n249), .Z(controller_N67) );
  GTECH_XOR2 U334 ( .A(n293), .B(n154), .Z(n294) );
  GTECH_OR_NOT U335 ( .A(n153), .B(n295), .Z(n293) );
  GTECH_NOT U336 ( .A(n296), .Z(n295) );
  GTECH_AND2 U337 ( .A(n297), .B(n249), .Z(controller_N66) );
  GTECH_XOR2 U338 ( .A(n296), .B(n153), .Z(n297) );
  GTECH_OR_NOT U339 ( .A(n152), .B(n298), .Z(n296) );
  GTECH_NOT U340 ( .A(n299), .Z(n298) );
  GTECH_AND2 U341 ( .A(n300), .B(n249), .Z(controller_N65) );
  GTECH_XOR2 U342 ( .A(n299), .B(n152), .Z(n300) );
  GTECH_OR_NOT U343 ( .A(n151), .B(n301), .Z(n299) );
  GTECH_NOT U344 ( .A(n302), .Z(n301) );
  GTECH_AND2 U345 ( .A(n303), .B(n249), .Z(controller_N64) );
  GTECH_XOR2 U346 ( .A(n302), .B(n151), .Z(n303) );
  GTECH_OR_NOT U347 ( .A(n182), .B(n304), .Z(n302) );
  GTECH_NOT U348 ( .A(n305), .Z(n304) );
  GTECH_AND2 U349 ( .A(n306), .B(n249), .Z(controller_N63) );
  GTECH_XOR2 U350 ( .A(n305), .B(n182), .Z(n306) );
  GTECH_OR_NOT U351 ( .A(n181), .B(n307), .Z(n305) );
  GTECH_NOT U352 ( .A(n308), .Z(n307) );
  GTECH_AND2 U353 ( .A(n309), .B(n249), .Z(controller_N62) );
  GTECH_XOR2 U354 ( .A(n308), .B(n181), .Z(n309) );
  GTECH_OR_NOT U355 ( .A(n180), .B(n310), .Z(n308) );
  GTECH_NOT U356 ( .A(n311), .Z(n310) );
  GTECH_AND2 U357 ( .A(n312), .B(n249), .Z(controller_N61) );
  GTECH_XOR2 U358 ( .A(n311), .B(n180), .Z(n312) );
  GTECH_OR_NOT U359 ( .A(n179), .B(n313), .Z(n311) );
  GTECH_NOT U360 ( .A(n314), .Z(n313) );
  GTECH_AND2 U361 ( .A(n315), .B(n249), .Z(controller_N60) );
  GTECH_XOR2 U362 ( .A(n314), .B(n179), .Z(n315) );
  GTECH_OR_NOT U363 ( .A(n178), .B(n316), .Z(n314) );
  GTECH_NOT U364 ( .A(n317), .Z(n316) );
  GTECH_AND2 U365 ( .A(n318), .B(n249), .Z(controller_N59) );
  GTECH_XOR2 U366 ( .A(n317), .B(n178), .Z(n318) );
  GTECH_OR_NOT U367 ( .A(n177), .B(n319), .Z(n317) );
  GTECH_NOT U368 ( .A(n320), .Z(n319) );
  GTECH_AND2 U369 ( .A(n321), .B(n249), .Z(controller_N58) );
  GTECH_XOR2 U370 ( .A(n320), .B(n177), .Z(n321) );
  GTECH_OR_NOT U371 ( .A(n176), .B(n322), .Z(n320) );
  GTECH_NOT U372 ( .A(n323), .Z(n322) );
  GTECH_AND2 U373 ( .A(n324), .B(n249), .Z(controller_N57) );
  GTECH_XOR2 U374 ( .A(n323), .B(n176), .Z(n324) );
  GTECH_OR_NOT U375 ( .A(n175), .B(n325), .Z(n323) );
  GTECH_NOT U376 ( .A(n326), .Z(n325) );
  GTECH_AND2 U377 ( .A(n327), .B(n249), .Z(controller_N56) );
  GTECH_XOR2 U378 ( .A(n326), .B(n175), .Z(n327) );
  GTECH_OR_NOT U379 ( .A(n174), .B(n328), .Z(n326) );
  GTECH_NOT U380 ( .A(n329), .Z(n328) );
  GTECH_AND2 U381 ( .A(n330), .B(n249), .Z(controller_N55) );
  GTECH_XOR2 U382 ( .A(n329), .B(n174), .Z(n330) );
  GTECH_NAND3 U383 ( .A(n331), .B(n332), .C(n333), .Z(n329) );
  GTECH_NOT U384 ( .A(n173), .Z(n332) );
  GTECH_OAI22 U385 ( .A(n173), .B(n334), .C(n235), .D(n335), .Z(controller_N54) );
  GTECH_MUX2 U386 ( .A(n331), .B(n336), .S(n173), .Z(n335) );
  GTECH_OR_NOT U387 ( .A(n172), .B(n333), .Z(n336) );
  GTECH_NOT U388 ( .A(n172), .Z(n331) );
  GTECH_MUX2 U389 ( .A(controller_N52), .B(n337), .S(n172), .Z(controller_N53)
         );
  GTECH_AND2 U390 ( .A(n249), .B(n333), .Z(n337) );
  GTECH_NOT U391 ( .A(n171), .Z(n333) );
  GTECH_NOT U392 ( .A(n334), .Z(controller_N52) );
  GTECH_OR_NOT U393 ( .A(n235), .B(n171), .Z(n334) );
  GTECH_NOT U394 ( .A(n249), .Z(n235) );
  GTECH_OAI21 U395 ( .A(n338), .B(n339), .C(n170), .Z(n249) );
  GTECH_NAND8 U396 ( .A(n181), .B(n180), .C(n182), .D(n340), .E(n174), .F(n169), .G(n175), .H(n341), .Z(n339) );
  GTECH_AND4 U397 ( .A(n168), .B(n167), .C(n166), .D(n165), .Z(n341) );
  GTECH_AND4 U398 ( .A(n179), .B(n178), .C(n177), .D(n176), .Z(n340) );
  GTECH_NAND8 U399 ( .A(n163), .B(n162), .C(n164), .D(n342), .E(n156), .F(n155), .G(n157), .H(n343), .Z(n338) );
  GTECH_AND4 U400 ( .A(n154), .B(n153), .C(n152), .D(n151), .Z(n343) );
  GTECH_AND4 U401 ( .A(n161), .B(n160), .C(n159), .D(n158), .Z(n342) );
  GTECH_AND2 U402 ( .A(controller_N95), .B(n143), .Z(controller_N102) );
  GTECH_NOT U403 ( .A(rst), .Z(n143) );
  GTECH_OR_NOT U404 ( .A(controller_N98), .B(n344), .Z(controller_N95) );
  GTECH_NOT U405 ( .A(n238), .Z(controller_N98) );
  GTECH_NAND3 U406 ( .A(n149), .B(n344), .C(n8), .Z(n238) );
  GTECH_NOT U407 ( .A(n150), .Z(n344) );
endmodule

