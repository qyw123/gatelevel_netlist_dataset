
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
         n26, n27, n28, n30, n31, n32, n82, n160, n164, sub_85_carry_2_, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356;
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
        .CP(clk), .Q(update_period[1]) );
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
  GTECH_FJK1S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
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
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n160) );
  GTECH_ZERO U173 ( .Z(n82) );
  GTECH_NAND2 U174 ( .A(n15), .B(n192), .Z(seven_segment0_N9) );
  GTECH_AND2 U175 ( .A(ten_count[0]), .B(n192), .Z(seven_segment0_N8) );
  GTECH_AND2 U176 ( .A(n160), .B(n192), .Z(seven_segment0_N6) );
  GTECH_AND2 U177 ( .A(unit_count[3]), .B(n192), .Z(seven_segment0_N22) );
  GTECH_AND2 U178 ( .A(unit_count[2]), .B(n192), .Z(seven_segment0_N20) );
  GTECH_AND2 U179 ( .A(unit_count[1]), .B(n192), .Z(seven_segment0_N18) );
  GTECH_AND2 U180 ( .A(unit_count[0]), .B(n192), .Z(seven_segment0_N16) );
  GTECH_AND2 U181 ( .A(ten_count[3]), .B(n192), .Z(seven_segment0_N14) );
  GTECH_AND2 U182 ( .A(ten_count[2]), .B(n192), .Z(seven_segment0_N12) );
  GTECH_AND2 U183 ( .A(ten_count[1]), .B(n192), .Z(seven_segment0_N10) );
  GTECH_NAND3 U184 ( .A(n193), .B(n194), .C(n195), .Z(segments[6]) );
  GTECH_NAND3 U185 ( .A(n196), .B(n197), .C(n198), .Z(segments[5]) );
  GTECH_AOI21 U186 ( .A(n199), .B(n200), .C(n201), .Z(n198) );
  GTECH_NOT U187 ( .A(n194), .Z(n199) );
  GTECH_NAND2 U188 ( .A(n193), .B(n202), .Z(segments[3]) );
  GTECH_NOT U189 ( .A(segments[4]), .Z(n202) );
  GTECH_NAND2 U190 ( .A(n196), .B(n194), .Z(segments[4]) );
  GTECH_NAND2 U191 ( .A(n203), .B(n204), .Z(n194) );
  GTECH_NOT U192 ( .A(n205), .Z(n193) );
  GTECH_NAND3 U193 ( .A(n197), .B(n206), .C(n207), .Z(segments[2]) );
  GTECH_NAND2 U194 ( .A(n203), .B(n200), .Z(n206) );
  GTECH_OAI21 U195 ( .A(n208), .B(n200), .C(n207), .Z(segments[1]) );
  GTECH_AND2 U196 ( .A(n209), .B(n195), .Z(n207) );
  GTECH_NOT U197 ( .A(n201), .Z(n195) );
  GTECH_OAI22 U198 ( .A(n210), .B(n211), .C(n212), .D(n213), .Z(n201) );
  GTECH_AOI21 U199 ( .A(n212), .B(n203), .C(n214), .Z(n209) );
  GTECH_OR2 U200 ( .A(n215), .B(n216), .Z(segments[0]) );
  GTECH_AO21 U201 ( .A(n212), .B(n203), .C(n205), .Z(n216) );
  GTECH_OAI21 U202 ( .A(n208), .B(n200), .C(n197), .Z(n205) );
  GTECH_NAND2 U203 ( .A(n212), .B(n217), .Z(n197) );
  GTECH_NOT U204 ( .A(n213), .Z(n217) );
  GTECH_NAND3 U205 ( .A(n210), .B(n200), .C(n218), .Z(n213) );
  GTECH_NOT U206 ( .A(n219), .Z(n200) );
  GTECH_NOT U207 ( .A(n208), .Z(n203) );
  GTECH_NAND2 U208 ( .A(n210), .B(n220), .Z(n208) );
  GTECH_NOT U209 ( .A(n218), .Z(n220) );
  GTECH_OAI21 U210 ( .A(n210), .B(n211), .C(n196), .Z(n215) );
  GTECH_NAND2 U211 ( .A(n214), .B(n204), .Z(n196) );
  GTECH_NOT U212 ( .A(n212), .Z(n204) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n160), .Z(n212) );
  GTECH_NOT U214 ( .A(n211), .Z(n214) );
  GTECH_NAND2 U215 ( .A(n219), .B(n218), .Z(n211) );
  GTECH_MUX2 U216 ( .A(n30), .B(n26), .S(n160), .Z(n218) );
  GTECH_MUX2 U217 ( .A(n31), .B(n27), .S(n160), .Z(n219) );
  GTECH_MUX2 U218 ( .A(n32), .B(n28), .S(n160), .Z(n210) );
  GTECH_AO21 U219 ( .A(period[0]), .B(n221), .C(reset), .Z(N9) );
  GTECH_AND2 U220 ( .A(period[11]), .B(n221), .Z(N21) );
  GTECH_NAND2 U221 ( .A(n192), .B(n222), .Z(N20) );
  GTECH_AO21 U222 ( .A(period[10]), .B(n221), .C(reset), .Z(N19) );
  GTECH_AND2 U223 ( .A(period[9]), .B(n221), .Z(N18) );
  GTECH_AND2 U224 ( .A(period[8]), .B(n221), .Z(N17) );
  GTECH_AND2 U225 ( .A(N170), .B(n223), .Z(N168) );
  GTECH_NAND2 U226 ( .A(n224), .B(n225), .Z(N167) );
  GTECH_NOT U227 ( .A(n226), .Z(n224) );
  GTECH_AND2 U228 ( .A(N170), .B(n227), .Z(N166) );
  GTECH_AND2 U229 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U230 ( .A(N170), .B(n228), .Z(N162) );
  GTECH_NOT U231 ( .A(n229), .Z(N170) );
  GTECH_NAND2 U232 ( .A(n230), .B(n192), .Z(n229) );
  GTECH_NOT U233 ( .A(n225), .Z(n230) );
  GTECH_MUX2 U234 ( .A(n231), .B(n232), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U235 ( .A(ten_count[2]), .B(n233), .C(n234), .Z(n232) );
  GTECH_NOT U236 ( .A(n235), .Z(n234) );
  GTECH_AND2 U237 ( .A(n236), .B(ten_count[2]), .Z(n231) );
  GTECH_AO21 U238 ( .A(period[7]), .B(n221), .C(reset), .Z(N16) );
  GTECH_OAI21 U239 ( .A(n237), .B(n238), .C(n239), .Z(N159) );
  GTECH_MUX2 U240 ( .A(n236), .B(n235), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U241 ( .A(ten_count[1]), .B(n233), .C(n240), .Z(n235) );
  GTECH_NOT U242 ( .A(n241), .Z(n236) );
  GTECH_NAND3 U243 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n241) );
  GTECH_MUX2 U244 ( .A(n242), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U245 ( .A(N152), .B(ten_count[0]), .Z(n242) );
  GTECH_NOT U246 ( .A(n240), .Z(N154) );
  GTECH_NAND2 U247 ( .A(N152), .B(n243), .Z(n240) );
  GTECH_NOT U248 ( .A(ten_count[0]), .Z(n243) );
  GTECH_NAND2 U249 ( .A(n244), .B(n164), .Z(N151) );
  GTECH_AOI21 U250 ( .A(n245), .B(n246), .C(n226), .Z(n244) );
  GTECH_OAI21 U251 ( .A(n246), .B(n237), .C(n192), .Z(n226) );
  GTECH_NOT U252 ( .A(n247), .Z(n245) );
  GTECH_AND2 U253 ( .A(period[6]), .B(n221), .Z(N15) );
  GTECH_OAI21 U254 ( .A(n233), .B(n247), .C(n248), .Z(N148) );
  GTECH_MUX2 U255 ( .A(n249), .B(n250), .S(n178), .Z(n248) );
  GTECH_OR3 U256 ( .A(n179), .B(n251), .C(n252), .Z(n250) );
  GTECH_AND_NOT U257 ( .A(n253), .B(n254), .Z(n249) );
  GTECH_MUX2 U258 ( .A(n233), .B(n251), .S(n179), .Z(n253) );
  GTECH_NAND3 U259 ( .A(n255), .B(n225), .C(n239), .Z(N147) );
  GTECH_AND2 U260 ( .A(n192), .B(n256), .Z(n239) );
  GTECH_NAND3 U261 ( .A(n246), .B(n164), .C(n247), .Z(n256) );
  GTECH_NAND4 U262 ( .A(n179), .B(n178), .C(n165), .D(n257), .Z(n247) );
  GTECH_NAND2 U263 ( .A(n14), .B(n258), .Z(n225) );
  GTECH_NOT U264 ( .A(n164), .Z(n258) );
  GTECH_NAND3 U265 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n255) );
  GTECH_MUX2 U266 ( .A(n254), .B(n259), .S(n179), .Z(N146) );
  GTECH_OAI21 U267 ( .A(n252), .B(n251), .C(n260), .Z(n259) );
  GTECH_OAI21 U268 ( .A(n261), .B(n251), .C(n262), .Z(n254) );
  GTECH_AO21 U269 ( .A(n257), .B(n165), .C(n233), .Z(n262) );
  GTECH_NOT U270 ( .A(n252), .Z(n261) );
  GTECH_NAND3 U271 ( .A(n263), .B(n223), .C(n264), .Z(n252) );
  GTECH_NOT U272 ( .A(n165), .Z(n263) );
  GTECH_NAND2 U273 ( .A(n265), .B(n260), .Z(N144) );
  GTECH_NAND3 U274 ( .A(N152), .B(n257), .C(n165), .Z(n260) );
  GTECH_MUX2 U275 ( .A(n266), .B(n267), .S(n165), .Z(n265) );
  GTECH_NAND3 U276 ( .A(n264), .B(n223), .C(N150), .Z(n267) );
  GTECH_OA22 U277 ( .A(n268), .B(n251), .C(n233), .D(n257), .Z(n266) );
  GTECH_NAND2 U278 ( .A(n269), .B(n223), .Z(n257) );
  GTECH_AND2 U279 ( .A(n264), .B(n223), .Z(n268) );
  GTECH_NOT U280 ( .A(n22), .Z(n223) );
  GTECH_OAI21 U281 ( .A(n251), .B(n270), .C(n271), .Z(N142) );
  GTECH_MUX2 U282 ( .A(n272), .B(n273), .S(n22), .Z(n271) );
  GTECH_NAND2 U283 ( .A(N152), .B(n269), .Z(n273) );
  GTECH_XOR2 U284 ( .A(n22), .B(n264), .Z(n270) );
  GTECH_NOT U285 ( .A(n274), .Z(n264) );
  GTECH_NAND3 U286 ( .A(n228), .B(n227), .C(sub_85_carry_2_), .Z(n274) );
  GTECH_NOT U287 ( .A(n20), .Z(n227) );
  GTECH_NAND2 U288 ( .A(n275), .B(n272), .Z(N140) );
  GTECH_NAND2 U289 ( .A(n276), .B(N152), .Z(n272) );
  GTECH_NOT U290 ( .A(n233), .Z(N152) );
  GTECH_NOT U291 ( .A(n269), .Z(n276) );
  GTECH_NAND2 U292 ( .A(n20), .B(n277), .Z(n269) );
  GTECH_NOT U293 ( .A(sub_85_carry_2_), .Z(n277) );
  GTECH_MUX2 U294 ( .A(n278), .B(n279), .S(n20), .Z(n275) );
  GTECH_NAND3 U295 ( .A(sub_85_carry_2_), .B(n228), .C(N150), .Z(n279) );
  GTECH_NOT U296 ( .A(n16), .Z(n228) );
  GTECH_AND2 U297 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_MUX2 U298 ( .A(n251), .B(n233), .S(sub_85_carry_2_), .Z(n280) );
  GTECH_AO21 U299 ( .A(period[5]), .B(n221), .C(reset), .Z(N14) );
  GTECH_MUX2 U300 ( .A(n282), .B(n283), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U301 ( .A(n281), .Z(n283) );
  GTECH_OAI21 U302 ( .A(n16), .B(n251), .C(n233), .Z(n282) );
  GTECH_OAI21 U303 ( .A(n16), .B(n233), .C(n281), .Z(N136) );
  GTECH_NAND2 U304 ( .A(n16), .B(N150), .Z(n281) );
  GTECH_NOT U305 ( .A(n251), .Z(N150) );
  GTECH_NAND2 U306 ( .A(n284), .B(n192), .Z(n251) );
  GTECH_NOT U307 ( .A(n238), .Z(n284) );
  GTECH_NAND2 U308 ( .A(n164), .B(n285), .Z(n233) );
  GTECH_NOT U309 ( .A(N169), .Z(n285) );
  GTECH_NAND2 U310 ( .A(n192), .B(n246), .Z(N169) );
  GTECH_NOT U311 ( .A(n14), .Z(n246) );
  GTECH_AND2 U312 ( .A(n286), .B(n287), .Z(N134) );
  GTECH_OAI21 U313 ( .A(n177), .B(n288), .C(n166), .Z(n287) );
  GTECH_NAND2 U314 ( .A(n192), .B(n238), .Z(N133) );
  GTECH_NAND2 U315 ( .A(n164), .B(n14), .Z(n238) );
  GTECH_AND2 U316 ( .A(n289), .B(n286), .Z(N132) );
  GTECH_XOR2 U317 ( .A(n288), .B(n177), .Z(n289) );
  GTECH_NAND2 U318 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U319 ( .A(n292), .Z(n290) );
  GTECH_AND2 U320 ( .A(n293), .B(n286), .Z(N130) );
  GTECH_XOR2 U321 ( .A(n292), .B(n167), .Z(n293) );
  GTECH_NAND2 U322 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U323 ( .A(n168), .Z(n295) );
  GTECH_NOT U324 ( .A(n296), .Z(n294) );
  GTECH_AND2 U325 ( .A(period[4]), .B(n221), .Z(N13) );
  GTECH_AND2 U326 ( .A(n297), .B(n286), .Z(N128) );
  GTECH_XOR2 U327 ( .A(n296), .B(n168), .Z(n297) );
  GTECH_NAND2 U328 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U329 ( .A(n300), .Z(n298) );
  GTECH_AND2 U330 ( .A(n301), .B(n286), .Z(N126) );
  GTECH_XOR2 U331 ( .A(n300), .B(n169), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n170), .Z(n303) );
  GTECH_NOT U334 ( .A(n304), .Z(n302) );
  GTECH_AND2 U335 ( .A(n305), .B(n286), .Z(N124) );
  GTECH_XOR2 U336 ( .A(n304), .B(n170), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n171), .Z(n307) );
  GTECH_NOT U339 ( .A(n308), .Z(n306) );
  GTECH_AND2 U340 ( .A(n309), .B(n286), .Z(N122) );
  GTECH_XOR2 U341 ( .A(n308), .B(n171), .Z(n309) );
  GTECH_NAND2 U342 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U343 ( .A(n172), .Z(n311) );
  GTECH_NOT U344 ( .A(n312), .Z(n310) );
  GTECH_AND2 U345 ( .A(n313), .B(n286), .Z(N120) );
  GTECH_XOR2 U346 ( .A(n312), .B(n172), .Z(n313) );
  GTECH_NAND2 U347 ( .A(n314), .B(n315), .Z(n312) );
  GTECH_NOT U348 ( .A(n173), .Z(n315) );
  GTECH_NOT U349 ( .A(n316), .Z(n314) );
  GTECH_AO21 U350 ( .A(period[3]), .B(n221), .C(reset), .Z(N12) );
  GTECH_AND2 U351 ( .A(n317), .B(n286), .Z(N118) );
  GTECH_XOR2 U352 ( .A(n316), .B(n173), .Z(n317) );
  GTECH_NAND3 U353 ( .A(n318), .B(n319), .C(n320), .Z(n316) );
  GTECH_NOT U354 ( .A(n174), .Z(n320) );
  GTECH_OAI22 U355 ( .A(n174), .B(n321), .C(n322), .D(n323), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n318), .B(n324), .S(n174), .Z(n323) );
  GTECH_NAND2 U357 ( .A(n318), .B(n319), .Z(n324) );
  GTECH_NOT U358 ( .A(n175), .Z(n318) );
  GTECH_MUX2 U359 ( .A(N112), .B(n325), .S(n175), .Z(N114) );
  GTECH_AND2 U360 ( .A(n286), .B(n319), .Z(n325) );
  GTECH_NOT U361 ( .A(n176), .Z(n319) );
  GTECH_NOT U362 ( .A(n321), .Z(N112) );
  GTECH_NAND2 U363 ( .A(n286), .B(n176), .Z(n321) );
  GTECH_NOT U364 ( .A(n322), .Z(n286) );
  GTECH_NAND2 U365 ( .A(n192), .B(n237), .Z(n322) );
  GTECH_NOT U366 ( .A(n326), .Z(n237) );
  GTECH_AOI222 U367 ( .A(n327), .B(n328), .C(update_period[11]), .D(n166), .E(
        n329), .F(n330), .Z(n326) );
  GTECH_OAI2N2 U368 ( .A(n331), .B(n332), .C(n333), .D(n334), .Z(n329) );
  GTECH_OAI21 U369 ( .A(n335), .B(n291), .C(n336), .Z(n334) );
  GTECH_NAND3 U370 ( .A(n168), .B(n337), .C(update_period[8]), .Z(n336) );
  GTECH_AND3 U371 ( .A(n337), .B(n333), .C(n330), .Z(n328) );
  GTECH_NAND2 U372 ( .A(n338), .B(n339), .Z(n330) );
  GTECH_NOT U373 ( .A(n166), .Z(n339) );
  GTECH_NOT U374 ( .A(update_period[11]), .Z(n338) );
  GTECH_NAND2 U375 ( .A(n332), .B(n331), .Z(n333) );
  GTECH_NOT U376 ( .A(n177), .Z(n331) );
  GTECH_NOT U377 ( .A(update_period[10]), .Z(n332) );
  GTECH_NAND2 U378 ( .A(n291), .B(n335), .Z(n337) );
  GTECH_NOT U379 ( .A(update_period[9]), .Z(n335) );
  GTECH_NOT U380 ( .A(n167), .Z(n291) );
  GTECH_OA22 U381 ( .A(n168), .B(update_period[8]), .C(n340), .D(n341), .Z(
        n327) );
  GTECH_OAI21 U382 ( .A(n299), .B(n342), .C(n343), .Z(n341) );
  GTECH_NAND3 U383 ( .A(n344), .B(update_period[6]), .C(n170), .Z(n343) );
  GTECH_OAI2N2 U384 ( .A(n345), .B(n346), .C(n347), .D(n348), .Z(n340) );
  GTECH_ADD_ABC U385 ( .A(n349), .B(n171), .C(update_period[5]), .COUT(n348)
         );
  GTECH_AND2 U386 ( .A(update_period[4]), .B(n172), .Z(n349) );
  GTECH_OAI21 U387 ( .A(update_period[4]), .B(n172), .C(n347), .Z(n346) );
  GTECH_NOT U388 ( .A(n350), .Z(n347) );
  GTECH_OAI21 U389 ( .A(update_period[6]), .B(n170), .C(n344), .Z(n350) );
  GTECH_NAND2 U390 ( .A(n342), .B(n299), .Z(n344) );
  GTECH_NOT U391 ( .A(n169), .Z(n299) );
  GTECH_NOT U392 ( .A(update_period[7]), .Z(n342) );
  GTECH_OAI21 U393 ( .A(update_period[5]), .B(n171), .C(n351), .Z(n345) );
  GTECH_AO21 U394 ( .A(n352), .B(n353), .C(n354), .Z(n351) );
  GTECH_ADD_ABC U395 ( .A(n355), .B(n173), .C(update_period[3]), .COUT(n354)
         );
  GTECH_AND2 U396 ( .A(update_period[2]), .B(n174), .Z(n355) );
  GTECH_ADD_ABC U397 ( .A(update_period[1]), .B(n356), .C(n175), .COUT(n353)
         );
  GTECH_AND2 U398 ( .A(update_period[0]), .B(n176), .Z(n356) );
  GTECH_OA22 U399 ( .A(n174), .B(update_period[2]), .C(n173), .D(
        update_period[3]), .Z(n352) );
  GTECH_AO21 U400 ( .A(period[2]), .B(n221), .C(reset), .Z(N11) );
  GTECH_AO21 U401 ( .A(period[1]), .B(n221), .C(reset), .Z(N10) );
  GTECH_NOT U402 ( .A(n222), .Z(n221) );
  GTECH_NAND2 U403 ( .A(period_load), .B(n192), .Z(n222) );
  GTECH_NOT U404 ( .A(reset), .Z(n192) );
endmodule

