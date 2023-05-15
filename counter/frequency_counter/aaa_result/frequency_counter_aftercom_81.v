
module frequency_counter ( clk, reset, signal, period, period_load, segments, 
        digit, dbg_state, dbg_clk_count, dbg_edge_count );
  input [11:0] period;
  output [6:0] segments;
  output [1:0] dbg_state;
  output [2:0] dbg_clk_count;
  output [2:0] dbg_edge_count;
  input clk, reset, signal, period_load;
  output digit;
  wire   N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         update_digits, N62, N112, N114, N116, N118, N120, N122, N124, N126,
         N128, N130, N132, N133, N134, N136, N138, N140, N142, N144, N146,
         N147, N148, N150, N151, N152, N154, N156, N158, N159, N160, N162,
         N164, N166, N167, N168, N169, N170, edge_detect0_q2, edge_detect0_q1,
         edge_detect0_q0, seven_segment0_N22, seven_segment0_N20,
         seven_segment0_N18, seven_segment0_N16, seven_segment0_N14,
         seven_segment0_N12, seven_segment0_N10, seven_segment0_N9,
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n20, n22,
         n25, n26, n30, n82, n162, n164, sub_85_carry_2_, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n181, n192, n193, n194, n195, n196, n197, n198, n199, n200,
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
         n344, n345, n346, n347, n348, n349, n350, n351;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n82), .K(n82), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n82), .K(n82), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n82), .K(n82), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n82), .K(n82), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n82), .K(n82), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n82), .K(n82), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n82), .K(n82), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n82), .K(n82), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n82), .K(n82), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n82), .K(n82), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n82), .K(n82), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n82), .K(n82), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n82), .K(n82), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n82), .K(n82), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n82), .K(n82), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n82), .K(n82), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n82), .K(n82), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n82), .K(n82), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n82), .K(n82), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n82), .K(n82), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n82), .K(n82), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n82), .K(n82), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n82), .K(n82), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n82), .K(n82), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n82), .K(n82), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n82), .K(n82), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n82), .K(n82), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n82), .K(n82), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n82), .K(n82), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n82), .K(n82), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n82), .K(n82), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n82), .K(n82), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n82), .K(n82), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n82), .K(n82), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n82), .K(n82), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n82), .K(n82), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n82), .K(n82), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n82), .K(n82), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n82), .K(n82), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n82), .K(n82), .TI(N160), .TE(N159), .CP(
        clk), .Q(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U172 ( .Z(n82) );
  GTECH_NAND2 U173 ( .A(n15), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U174 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U175 ( .A(n162), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U176 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U177 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U178 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U179 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U180 ( .A(n25), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U181 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U182 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U183 ( .A(n193), .B(n194), .Z(segments[6]) );
  GTECH_OA21 U184 ( .A(n195), .B(n196), .C(n197), .Z(n193) );
  GTECH_OAI21 U185 ( .A(n195), .B(n196), .C(n198), .Z(segments[3]) );
  GTECH_AND_NOT U186 ( .A(n199), .B(segments[4]), .Z(n198) );
  GTECH_NAND2 U187 ( .A(n200), .B(n201), .Z(segments[4]) );
  GTECH_NAND3 U188 ( .A(n202), .B(n203), .C(n196), .Z(segments[2]) );
  GTECH_NOT U189 ( .A(segments[5]), .Z(n203) );
  GTECH_OAI21 U190 ( .A(n204), .B(n202), .C(n194), .Z(segments[5]) );
  GTECH_NOT U191 ( .A(n205), .Z(n194) );
  GTECH_NAND3 U192 ( .A(n201), .B(n206), .C(n207), .Z(n205) );
  GTECH_NAND2 U193 ( .A(n208), .B(n209), .Z(n201) );
  GTECH_NAND4 U194 ( .A(n197), .B(n206), .C(n196), .D(n202), .Z(segments[1])
         );
  GTECH_NAND2 U195 ( .A(n208), .B(n210), .Z(n206) );
  GTECH_NOT U196 ( .A(n211), .Z(n208) );
  GTECH_NAND3 U197 ( .A(n212), .B(n213), .C(n195), .Z(n211) );
  GTECH_NAND3 U198 ( .A(n207), .B(n196), .C(n200), .Z(segments[0]) );
  GTECH_NOT U199 ( .A(n214), .Z(n200) );
  GTECH_OAI21 U200 ( .A(n204), .B(n202), .C(n197), .Z(n214) );
  GTECH_NAND4 U201 ( .A(n209), .B(n212), .C(n213), .D(n215), .Z(n197) );
  GTECH_NAND3 U202 ( .A(n213), .B(n204), .C(n209), .Z(n196) );
  GTECH_NOT U203 ( .A(n216), .Z(n207) );
  GTECH_OAI21 U204 ( .A(n213), .B(n202), .C(n199), .Z(n216) );
  GTECH_NAND4 U205 ( .A(n195), .B(n213), .C(n204), .D(n210), .Z(n199) );
  GTECH_NOT U206 ( .A(n212), .Z(n204) );
  GTECH_MUX2 U207 ( .A(n30), .B(n26), .S(n162), .Z(n212) );
  GTECH_NAND2 U208 ( .A(n210), .B(n215), .Z(n202) );
  GTECH_NOT U209 ( .A(n195), .Z(n215) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n162), .Z(n195) );
  GTECH_NOT U211 ( .A(n209), .Z(n210) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n162), .Z(n209) );
  GTECH_NOT U213 ( .A(n217), .Z(n213) );
  GTECH_MUX2 U214 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n162), .Z(n217) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n218), .C(reset), .Z(N9) );
  GTECH_AND_NOT U216 ( .A(period[11]), .B(n219), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n192), .B(n219), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n218), .C(reset), .Z(N19) );
  GTECH_AND_NOT U219 ( .A(period[9]), .B(n219), .Z(N18) );
  GTECH_AND_NOT U220 ( .A(period[8]), .B(n219), .Z(N17) );
  GTECH_AND_NOT U221 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n220), .B(n221), .Z(N167) );
  GTECH_AND_NOT U223 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U224 ( .A(sub_85_carry_2_), .B(n222), .Z(N164) );
  GTECH_AND_NOT U225 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U226 ( .A(n222), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n223), .B(n192), .Z(n222) );
  GTECH_NOT U228 ( .A(n221), .Z(n223) );
  GTECH_AND_NOT U229 ( .A(N152), .B(n224), .Z(N160) );
  GTECH_XNOR2 U230 ( .A(n225), .B(n25), .Z(n224) );
  GTECH_AND_NOT U231 ( .A(ten_count[2]), .B(n226), .Z(n225) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n218), .C(reset), .Z(N16) );
  GTECH_OAI21 U233 ( .A(n227), .B(n228), .C(n229), .Z(N159) );
  GTECH_AND_NOT U234 ( .A(N152), .B(n230), .Z(N158) );
  GTECH_XOR2 U235 ( .A(n226), .B(ten_count[2]), .Z(n230) );
  GTECH_AND_NOT U236 ( .A(n231), .B(n232), .Z(N156) );
  GTECH_OA21 U237 ( .A(ten_count[0]), .B(ten_count[1]), .C(n226), .Z(n231) );
  GTECH_NAND2 U238 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n226) );
  GTECH_AND_NOT U239 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U240 ( .A(n233), .B(n164), .Z(N151) );
  GTECH_OA21 U241 ( .A(n14), .B(n234), .C(n220), .Z(n233) );
  GTECH_NOT U242 ( .A(n235), .Z(n220) );
  GTECH_OAI21 U243 ( .A(n236), .B(n227), .C(n192), .Z(n235) );
  GTECH_AND_NOT U244 ( .A(period[6]), .B(n219), .Z(N15) );
  GTECH_OAI21 U245 ( .A(n232), .B(n234), .C(n237), .Z(N148) );
  GTECH_MUX2 U246 ( .A(n238), .B(n239), .S(n178), .Z(n237) );
  GTECH_OR3 U247 ( .A(n179), .B(n240), .C(n241), .Z(n239) );
  GTECH_AND_NOT U248 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U249 ( .A(n232), .B(n240), .S(n179), .Z(n242) );
  GTECH_NAND3 U250 ( .A(n244), .B(n221), .C(n229), .Z(N147) );
  GTECH_AND_NOT U251 ( .A(n192), .B(n245), .Z(n229) );
  GTECH_AND3 U252 ( .A(n236), .B(n164), .C(n234), .Z(n245) );
  GTECH_NAND4 U253 ( .A(n179), .B(n178), .C(n165), .D(n246), .Z(n234) );
  GTECH_NAND2 U254 ( .A(n14), .B(n247), .Z(n221) );
  GTECH_NOT U255 ( .A(n164), .Z(n247) );
  GTECH_NAND3 U256 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U257 ( .A(n243), .B(n248), .S(n179), .Z(N146) );
  GTECH_OAI21 U258 ( .A(n241), .B(n240), .C(n249), .Z(n248) );
  GTECH_OAI21 U259 ( .A(n250), .B(n240), .C(n251), .Z(n243) );
  GTECH_AO21 U260 ( .A(n246), .B(n165), .C(n232), .Z(n251) );
  GTECH_NOT U261 ( .A(n241), .Z(n250) );
  GTECH_NAND3 U262 ( .A(n252), .B(n253), .C(n254), .Z(n241) );
  GTECH_NOT U263 ( .A(n165), .Z(n252) );
  GTECH_NAND2 U264 ( .A(n255), .B(n249), .Z(N144) );
  GTECH_NAND3 U265 ( .A(N152), .B(n246), .C(n165), .Z(n249) );
  GTECH_MUX2 U266 ( .A(n256), .B(n257), .S(n165), .Z(n255) );
  GTECH_NAND3 U267 ( .A(n254), .B(n253), .C(N150), .Z(n257) );
  GTECH_OA21 U268 ( .A(n232), .B(n246), .C(n258), .Z(n256) );
  GTECH_OAI21 U269 ( .A(n22), .B(n259), .C(N150), .Z(n258) );
  GTECH_NAND2 U270 ( .A(n260), .B(n253), .Z(n246) );
  GTECH_NOT U271 ( .A(n22), .Z(n253) );
  GTECH_OAI21 U272 ( .A(n240), .B(n261), .C(n262), .Z(N142) );
  GTECH_MUX2 U273 ( .A(n263), .B(n264), .S(n22), .Z(n262) );
  GTECH_NAND2 U274 ( .A(N152), .B(n260), .Z(n264) );
  GTECH_XOR2 U275 ( .A(n22), .B(n254), .Z(n261) );
  GTECH_NOT U276 ( .A(n259), .Z(n254) );
  GTECH_NAND3 U277 ( .A(n265), .B(n266), .C(sub_85_carry_2_), .Z(n259) );
  GTECH_NOT U278 ( .A(n20), .Z(n266) );
  GTECH_NAND2 U279 ( .A(n267), .B(n263), .Z(N140) );
  GTECH_NAND2 U280 ( .A(n268), .B(N152), .Z(n263) );
  GTECH_NOT U281 ( .A(n232), .Z(N152) );
  GTECH_NOT U282 ( .A(n260), .Z(n268) );
  GTECH_NAND2 U283 ( .A(n20), .B(n269), .Z(n260) );
  GTECH_NOT U284 ( .A(sub_85_carry_2_), .Z(n269) );
  GTECH_MUX2 U285 ( .A(n270), .B(n271), .S(n20), .Z(n267) );
  GTECH_NAND3 U286 ( .A(sub_85_carry_2_), .B(n265), .C(N150), .Z(n271) );
  GTECH_NOT U287 ( .A(n16), .Z(n265) );
  GTECH_AND_NOT U288 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_MUX2 U289 ( .A(n240), .B(n232), .S(sub_85_carry_2_), .Z(n272) );
  GTECH_AO21 U290 ( .A(period[5]), .B(n218), .C(reset), .Z(N14) );
  GTECH_MUX2 U291 ( .A(n274), .B(n273), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U292 ( .A(n275), .Z(n273) );
  GTECH_OAI21 U293 ( .A(n16), .B(n240), .C(n232), .Z(n274) );
  GTECH_OAI21 U294 ( .A(n16), .B(n232), .C(n275), .Z(N136) );
  GTECH_NAND2 U295 ( .A(n16), .B(N150), .Z(n275) );
  GTECH_NOT U296 ( .A(n240), .Z(N150) );
  GTECH_NAND2 U297 ( .A(n276), .B(n192), .Z(n240) );
  GTECH_NOT U298 ( .A(n228), .Z(n276) );
  GTECH_NAND2 U299 ( .A(n164), .B(n277), .Z(n232) );
  GTECH_NOT U300 ( .A(N169), .Z(n277) );
  GTECH_NAND2 U301 ( .A(n192), .B(n236), .Z(N169) );
  GTECH_NOT U302 ( .A(n14), .Z(n236) );
  GTECH_OA21 U303 ( .A(n278), .B(n279), .C(n280), .Z(N134) );
  GTECH_NOR2 U304 ( .A(n281), .B(n177), .Z(n279) );
  GTECH_NAND2 U305 ( .A(n192), .B(n228), .Z(N133) );
  GTECH_NAND2 U306 ( .A(n164), .B(n14), .Z(n228) );
  GTECH_AND_NOT U307 ( .A(n282), .B(n283), .Z(N132) );
  GTECH_XOR2 U308 ( .A(n281), .B(n177), .Z(n282) );
  GTECH_NAND2 U309 ( .A(n284), .B(n285), .Z(n281) );
  GTECH_NOT U310 ( .A(n286), .Z(n284) );
  GTECH_AND_NOT U311 ( .A(n287), .B(n283), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n286), .B(n167), .Z(n287) );
  GTECH_NAND2 U313 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U314 ( .A(n168), .Z(n289) );
  GTECH_NOT U315 ( .A(n290), .Z(n288) );
  GTECH_AND_NOT U316 ( .A(period[4]), .B(n219), .Z(N13) );
  GTECH_AND_NOT U317 ( .A(n291), .B(n283), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n290), .B(n168), .Z(n291) );
  GTECH_NAND2 U319 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U320 ( .A(n294), .Z(n292) );
  GTECH_AND_NOT U321 ( .A(n295), .B(n283), .Z(N126) );
  GTECH_XOR2 U322 ( .A(n294), .B(n169), .Z(n295) );
  GTECH_NAND2 U323 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U324 ( .A(n170), .Z(n297) );
  GTECH_NOT U325 ( .A(n298), .Z(n296) );
  GTECH_AND_NOT U326 ( .A(n299), .B(n283), .Z(N124) );
  GTECH_XOR2 U327 ( .A(n298), .B(n170), .Z(n299) );
  GTECH_NAND2 U328 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U329 ( .A(n171), .Z(n301) );
  GTECH_NOT U330 ( .A(n302), .Z(n300) );
  GTECH_AND_NOT U331 ( .A(n303), .B(n283), .Z(N122) );
  GTECH_XOR2 U332 ( .A(n302), .B(n171), .Z(n303) );
  GTECH_NAND2 U333 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U334 ( .A(n306), .Z(n304) );
  GTECH_AND_NOT U335 ( .A(n307), .B(n283), .Z(N120) );
  GTECH_XOR2 U336 ( .A(n306), .B(n172), .Z(n307) );
  GTECH_NAND2 U337 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U338 ( .A(n310), .Z(n308) );
  GTECH_AO21 U339 ( .A(period[3]), .B(n218), .C(reset), .Z(N12) );
  GTECH_AND_NOT U340 ( .A(n311), .B(n283), .Z(N118) );
  GTECH_XOR2 U341 ( .A(n310), .B(n173), .Z(n311) );
  GTECH_NAND3 U342 ( .A(n312), .B(n313), .C(n314), .Z(n310) );
  GTECH_NOT U343 ( .A(n174), .Z(n314) );
  GTECH_OAI22 U344 ( .A(n174), .B(n315), .C(n283), .D(n316), .Z(N116) );
  GTECH_MUX2 U345 ( .A(n312), .B(n317), .S(n174), .Z(n316) );
  GTECH_NAND2 U346 ( .A(n312), .B(n313), .Z(n317) );
  GTECH_NOT U347 ( .A(n176), .Z(n313) );
  GTECH_MUX2 U348 ( .A(N112), .B(n318), .S(n175), .Z(N114) );
  GTECH_AND_NOT U349 ( .A(n280), .B(n176), .Z(n318) );
  GTECH_NOT U350 ( .A(n315), .Z(N112) );
  GTECH_NAND2 U351 ( .A(n280), .B(n176), .Z(n315) );
  GTECH_NOT U352 ( .A(n283), .Z(n280) );
  GTECH_NAND2 U353 ( .A(n192), .B(n227), .Z(n283) );
  GTECH_NOT U354 ( .A(n319), .Z(n227) );
  GTECH_AOI222 U355 ( .A(n320), .B(n321), .C(update_period[11]), .D(n166), .E(
        n322), .F(n323), .Z(n319) );
  GTECH_OAI2N2 U356 ( .A(n324), .B(n325), .C(n326), .D(n327), .Z(n322) );
  GTECH_OAI21 U357 ( .A(n328), .B(n285), .C(n329), .Z(n327) );
  GTECH_NAND3 U358 ( .A(n330), .B(update_period[8]), .C(n168), .Z(n329) );
  GTECH_AND3 U359 ( .A(n330), .B(n326), .C(n323), .Z(n321) );
  GTECH_NAND2 U360 ( .A(n331), .B(n278), .Z(n323) );
  GTECH_NOT U361 ( .A(n166), .Z(n278) );
  GTECH_NOT U362 ( .A(update_period[11]), .Z(n331) );
  GTECH_NAND2 U363 ( .A(n325), .B(n324), .Z(n326) );
  GTECH_NOT U364 ( .A(n177), .Z(n324) );
  GTECH_NOT U365 ( .A(update_period[10]), .Z(n325) );
  GTECH_NAND2 U366 ( .A(n285), .B(n328), .Z(n330) );
  GTECH_NOT U367 ( .A(update_period[9]), .Z(n328) );
  GTECH_NOT U368 ( .A(n167), .Z(n285) );
  GTECH_OA22 U369 ( .A(n168), .B(update_period[8]), .C(n332), .D(n333), .Z(
        n320) );
  GTECH_OAI21 U370 ( .A(n293), .B(n334), .C(n335), .Z(n333) );
  GTECH_NAND3 U371 ( .A(n336), .B(update_period[6]), .C(n170), .Z(n335) );
  GTECH_OAI2N2 U372 ( .A(n337), .B(n338), .C(n339), .D(n340), .Z(n332) );
  GTECH_ADD_ABC U373 ( .A(n341), .B(n171), .C(update_period[5]), .COUT(n340)
         );
  GTECH_AND_NOT U374 ( .A(update_period[4]), .B(n305), .Z(n341) );
  GTECH_NOT U375 ( .A(n172), .Z(n305) );
  GTECH_OAI21 U376 ( .A(update_period[4]), .B(n172), .C(n339), .Z(n338) );
  GTECH_NOT U377 ( .A(n342), .Z(n339) );
  GTECH_OAI21 U378 ( .A(update_period[6]), .B(n170), .C(n336), .Z(n342) );
  GTECH_NAND2 U379 ( .A(n334), .B(n293), .Z(n336) );
  GTECH_NOT U380 ( .A(n169), .Z(n293) );
  GTECH_NOT U381 ( .A(update_period[7]), .Z(n334) );
  GTECH_OAI22 U382 ( .A(update_period[5]), .B(n171), .C(n343), .D(n344), .Z(
        n337) );
  GTECH_OAI21 U383 ( .A(n309), .B(n345), .C(n346), .Z(n344) );
  GTECH_NAND3 U384 ( .A(n347), .B(update_period[2]), .C(n174), .Z(n346) );
  GTECH_AND3 U385 ( .A(n348), .B(n349), .C(n347), .Z(n343) );
  GTECH_NAND2 U386 ( .A(n345), .B(n309), .Z(n347) );
  GTECH_NOT U387 ( .A(n173), .Z(n309) );
  GTECH_NOT U388 ( .A(update_period[3]), .Z(n345) );
  GTECH_OAI21 U389 ( .A(n350), .B(n312), .C(n181), .Z(n349) );
  GTECH_NOT U390 ( .A(n175), .Z(n312) );
  GTECH_OA22 U391 ( .A(n174), .B(update_period[2]), .C(n351), .D(n175), .Z(
        n348) );
  GTECH_NOT U392 ( .A(n350), .Z(n351) );
  GTECH_NAND2 U393 ( .A(update_period[0]), .B(n176), .Z(n350) );
  GTECH_AO21 U394 ( .A(period[2]), .B(n218), .C(reset), .Z(N11) );
  GTECH_AO21 U395 ( .A(period[1]), .B(n218), .C(reset), .Z(N10) );
  GTECH_NOT U396 ( .A(n219), .Z(n218) );
  GTECH_NAND2 U397 ( .A(period_load), .B(n192), .Z(n219) );
  GTECH_NOT U398 ( .A(reset), .Z(n192) );
endmodule

