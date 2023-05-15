
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n21,
         n23, n25, n26, n27, n29, n31, n33, n80, n162, sub_85_carry_2_, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n80), .K(n80), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n80), .K(n80), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n80), .K(n80), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n80), .K(n80), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n80), .K(n80), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n80), .K(n80), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n80), .K(n80), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n80), .K(n80), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n80), .K(n80), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n80), .K(n80), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n80), .K(n80), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n178) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n80), .K(n80), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n80), .K(n80), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n80), .K(n80), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n80), .K(n80), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n80), .K(n80), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n80), .K(n80), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n80), .K(n80), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n80), .K(n80), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n80), .K(n80), .TI(N154), .TE(N159), .CP(
        clk), .Q(n25) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n80), .K(n80), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n80), .K(n80), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n80), .K(n80), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U169 ( .Z(n80) );
  GTECH_NAND2 U170 ( .A(n16), .B(n190), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(n25), .B(n190), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n162), .B(n190), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n190), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n190), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n190), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n190), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(n26), .B(n190), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n190), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n190), .Z(seven_segment0_N10) );
  GTECH_NAND2 U180 ( .A(n191), .B(n192), .Z(segments[6]) );
  GTECH_NAND3 U181 ( .A(n192), .B(n193), .C(n194), .Z(segments[3]) );
  GTECH_NOT U182 ( .A(segments[4]), .Z(n193) );
  GTECH_OAI21 U183 ( .A(n195), .B(n196), .C(n197), .Z(segments[4]) );
  GTECH_NAND2 U184 ( .A(n198), .B(n199), .Z(segments[2]) );
  GTECH_NOT U185 ( .A(segments[5]), .Z(n199) );
  GTECH_NAND2 U186 ( .A(n191), .B(n197), .Z(segments[5]) );
  GTECH_AND2 U187 ( .A(n200), .B(n201), .Z(n191) );
  GTECH_NAND3 U188 ( .A(n202), .B(n203), .C(n204), .Z(n201) );
  GTECH_NAND3 U189 ( .A(n205), .B(n192), .C(n198), .Z(segments[1]) );
  GTECH_NOT U190 ( .A(n206), .Z(n198) );
  GTECH_OAI21 U191 ( .A(n203), .B(n195), .C(n207), .Z(n206) );
  GTECH_NAND3 U192 ( .A(n202), .B(n208), .C(n203), .Z(n205) );
  GTECH_NAND3 U193 ( .A(n192), .B(n197), .C(n209), .Z(segments[0]) );
  GTECH_OA21 U194 ( .A(n203), .B(n195), .C(n200), .Z(n209) );
  GTECH_NOT U195 ( .A(n210), .Z(n200) );
  GTECH_OAI21 U196 ( .A(n202), .B(n207), .C(n194), .Z(n210) );
  GTECH_NAND4 U197 ( .A(n196), .B(n204), .C(n202), .D(n208), .Z(n194) );
  GTECH_NOT U198 ( .A(n211), .Z(n204) );
  GTECH_NOT U199 ( .A(n203), .Z(n196) );
  GTECH_NAND2 U200 ( .A(n203), .B(n212), .Z(n197) );
  GTECH_NOT U201 ( .A(n207), .Z(n212) );
  GTECH_NAND2 U202 ( .A(n211), .B(n208), .Z(n207) );
  GTECH_NOT U203 ( .A(n213), .Z(n208) );
  GTECH_MUX2 U204 ( .A(n31), .B(n27), .S(n162), .Z(n203) );
  GTECH_NAND2 U205 ( .A(n214), .B(n211), .Z(n192) );
  GTECH_MUX2 U206 ( .A(n33), .B(n29), .S(n162), .Z(n211) );
  GTECH_NOT U207 ( .A(n195), .Z(n214) );
  GTECH_NAND2 U208 ( .A(n213), .B(n202), .Z(n195) );
  GTECH_NOT U209 ( .A(n215), .Z(n202) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n162), .Z(n215) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n162), .Z(n213) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U213 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n190), .B(n217), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U216 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U217 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U218 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U220 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_AND2 U221 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U222 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U223 ( .A(n223), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n224), .B(n190), .Z(n223) );
  GTECH_NOT U225 ( .A(n220), .Z(n224) );
  GTECH_OAI22 U226 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(N160) );
  GTECH_MUX2 U227 ( .A(n225), .B(n229), .S(ten_count[2]), .Z(n228) );
  GTECH_NAND2 U228 ( .A(n230), .B(n225), .Z(n229) );
  GTECH_NOT U229 ( .A(n26), .Z(n225) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_MUX2 U232 ( .A(n234), .B(n235), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U233 ( .A(n226), .Z(n235) );
  GTECH_NAND2 U234 ( .A(N152), .B(n236), .Z(n226) );
  GTECH_AND2 U235 ( .A(N152), .B(n230), .Z(n234) );
  GTECH_NOT U236 ( .A(n236), .Z(n230) );
  GTECH_NAND2 U237 ( .A(ten_count[1]), .B(n25), .Z(n236) );
  GTECH_MUX2 U238 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U239 ( .A(N152), .B(n25), .Z(n237) );
  GTECH_NOT U240 ( .A(n238), .Z(N154) );
  GTECH_NAND2 U241 ( .A(N152), .B(n239), .Z(n238) );
  GTECH_NOT U242 ( .A(n25), .Z(n239) );
  GTECH_NAND2 U243 ( .A(n240), .B(n15), .Z(N151) );
  GTECH_OA21 U244 ( .A(n14), .B(n241), .C(n219), .Z(n240) );
  GTECH_NOT U245 ( .A(n242), .Z(n219) );
  GTECH_OAI21 U246 ( .A(n243), .B(n231), .C(n190), .Z(n242) );
  GTECH_AND2 U247 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U248 ( .A(n227), .B(n241), .C(n244), .Z(N148) );
  GTECH_NOT U249 ( .A(n245), .Z(n244) );
  GTECH_MUX2 U250 ( .A(n246), .B(n247), .S(n176), .Z(n245) );
  GTECH_NOR3 U251 ( .A(n248), .B(n177), .C(n249), .Z(n247) );
  GTECH_OR_NOT U252 ( .A(n250), .B(n251), .Z(n246) );
  GTECH_MUX2 U253 ( .A(n227), .B(n249), .S(n177), .Z(n251) );
  GTECH_NAND3 U254 ( .A(n252), .B(n220), .C(n233), .Z(N147) );
  GTECH_AND2 U255 ( .A(n190), .B(n253), .Z(n233) );
  GTECH_NAND3 U256 ( .A(n243), .B(n15), .C(n241), .Z(n253) );
  GTECH_NAND4 U257 ( .A(n177), .B(n176), .C(n163), .D(n254), .Z(n241) );
  GTECH_NAND2 U258 ( .A(n14), .B(n255), .Z(n220) );
  GTECH_NOT U259 ( .A(n15), .Z(n255) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_MUX2 U261 ( .A(n250), .B(n256), .S(n177), .Z(N146) );
  GTECH_OAI21 U262 ( .A(n248), .B(n249), .C(n257), .Z(n256) );
  GTECH_OAI21 U263 ( .A(n258), .B(n249), .C(n259), .Z(n250) );
  GTECH_AO21 U264 ( .A(n254), .B(n163), .C(n227), .Z(n259) );
  GTECH_NOT U265 ( .A(n248), .Z(n258) );
  GTECH_NAND3 U266 ( .A(n260), .B(n218), .C(n261), .Z(n248) );
  GTECH_NOT U267 ( .A(n163), .Z(n260) );
  GTECH_NAND2 U268 ( .A(n262), .B(n257), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n254), .C(n163), .Z(n257) );
  GTECH_MUX2 U270 ( .A(n263), .B(n264), .S(n163), .Z(n262) );
  GTECH_NAND3 U271 ( .A(n261), .B(n218), .C(N150), .Z(n264) );
  GTECH_OA21 U272 ( .A(n227), .B(n254), .C(n265), .Z(n263) );
  GTECH_OAI21 U273 ( .A(n23), .B(n266), .C(N150), .Z(n265) );
  GTECH_NAND2 U274 ( .A(n267), .B(n218), .Z(n254) );
  GTECH_NOT U275 ( .A(n23), .Z(n218) );
  GTECH_OAI21 U276 ( .A(n249), .B(n268), .C(n269), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n270), .B(n271), .S(n23), .Z(n269) );
  GTECH_NAND2 U278 ( .A(N152), .B(n267), .Z(n271) );
  GTECH_XOR2 U279 ( .A(n23), .B(n261), .Z(n268) );
  GTECH_NOT U280 ( .A(n266), .Z(n261) );
  GTECH_NAND3 U281 ( .A(n222), .B(n221), .C(sub_85_carry_2_), .Z(n266) );
  GTECH_NOT U282 ( .A(n21), .Z(n221) );
  GTECH_NAND2 U283 ( .A(n272), .B(n270), .Z(N140) );
  GTECH_NAND2 U284 ( .A(n273), .B(N152), .Z(n270) );
  GTECH_NOT U285 ( .A(n227), .Z(N152) );
  GTECH_NOT U286 ( .A(n267), .Z(n273) );
  GTECH_NAND2 U287 ( .A(n21), .B(n274), .Z(n267) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n274) );
  GTECH_MUX2 U289 ( .A(n275), .B(n276), .S(n21), .Z(n272) );
  GTECH_NAND3 U290 ( .A(sub_85_carry_2_), .B(n222), .C(N150), .Z(n276) );
  GTECH_NOT U291 ( .A(n17), .Z(n222) );
  GTECH_AND2 U292 ( .A(n277), .B(n278), .Z(n275) );
  GTECH_MUX2 U293 ( .A(n249), .B(n227), .S(sub_85_carry_2_), .Z(n277) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n279), .B(n280), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U296 ( .A(n278), .Z(n280) );
  GTECH_OAI21 U297 ( .A(n17), .B(n249), .C(n227), .Z(n279) );
  GTECH_OAI21 U298 ( .A(n17), .B(n227), .C(n278), .Z(N136) );
  GTECH_NAND2 U299 ( .A(n17), .B(N150), .Z(n278) );
  GTECH_NOT U300 ( .A(n249), .Z(N150) );
  GTECH_NAND2 U301 ( .A(n281), .B(n190), .Z(n249) );
  GTECH_NOT U302 ( .A(n232), .Z(n281) );
  GTECH_NAND2 U303 ( .A(n15), .B(n282), .Z(n227) );
  GTECH_NOT U304 ( .A(N169), .Z(n282) );
  GTECH_NAND2 U305 ( .A(n190), .B(n243), .Z(N169) );
  GTECH_NOT U306 ( .A(n14), .Z(n243) );
  GTECH_AND2 U307 ( .A(n283), .B(n284), .Z(N134) );
  GTECH_OAI21 U308 ( .A(n175), .B(n285), .C(n164), .Z(n284) );
  GTECH_NAND2 U309 ( .A(n190), .B(n232), .Z(N133) );
  GTECH_NAND2 U310 ( .A(n15), .B(n14), .Z(n232) );
  GTECH_AND2 U311 ( .A(n286), .B(n283), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n285), .B(n175), .Z(n286) );
  GTECH_NAND2 U313 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U314 ( .A(n289), .Z(n287) );
  GTECH_AND2 U315 ( .A(n290), .B(n283), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n289), .B(n165), .Z(n290) );
  GTECH_NAND2 U317 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U318 ( .A(n166), .Z(n292) );
  GTECH_NOT U319 ( .A(n293), .Z(n291) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U321 ( .A(n294), .B(n283), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n293), .B(n166), .Z(n294) );
  GTECH_NAND2 U323 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U324 ( .A(n297), .Z(n295) );
  GTECH_AND2 U325 ( .A(n298), .B(n283), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n297), .B(n167), .Z(n298) );
  GTECH_NAND2 U327 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U328 ( .A(n168), .Z(n300) );
  GTECH_NOT U329 ( .A(n301), .Z(n299) );
  GTECH_AND2 U330 ( .A(n302), .B(n283), .Z(N124) );
  GTECH_XOR2 U331 ( .A(n301), .B(n168), .Z(n302) );
  GTECH_NAND2 U332 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U333 ( .A(n169), .Z(n304) );
  GTECH_NOT U334 ( .A(n305), .Z(n303) );
  GTECH_AND2 U335 ( .A(n306), .B(n283), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n305), .B(n169), .Z(n306) );
  GTECH_NAND2 U337 ( .A(n307), .B(n308), .Z(n305) );
  GTECH_NOT U338 ( .A(n170), .Z(n308) );
  GTECH_NOT U339 ( .A(n309), .Z(n307) );
  GTECH_AND2 U340 ( .A(n310), .B(n283), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n309), .B(n170), .Z(n310) );
  GTECH_NAND2 U342 ( .A(n311), .B(n312), .Z(n309) );
  GTECH_NOT U343 ( .A(n313), .Z(n311) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n314), .B(n283), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n313), .B(n171), .Z(n314) );
  GTECH_NAND3 U347 ( .A(n315), .B(n316), .C(n317), .Z(n313) );
  GTECH_NOT U348 ( .A(n172), .Z(n317) );
  GTECH_OAI22 U349 ( .A(n172), .B(n318), .C(n319), .D(n320), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n315), .B(n321), .S(n172), .Z(n320) );
  GTECH_NAND2 U351 ( .A(n315), .B(n316), .Z(n321) );
  GTECH_NOT U352 ( .A(n173), .Z(n315) );
  GTECH_MUX2 U353 ( .A(N112), .B(n322), .S(n173), .Z(N114) );
  GTECH_AND2 U354 ( .A(n283), .B(n316), .Z(n322) );
  GTECH_NOT U355 ( .A(n318), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n283), .B(n174), .Z(n318) );
  GTECH_NOT U357 ( .A(n319), .Z(n283) );
  GTECH_NAND2 U358 ( .A(n231), .B(n190), .Z(n319) );
  GTECH_NOT U359 ( .A(n323), .Z(n231) );
  GTECH_AOI222 U360 ( .A(n324), .B(n325), .C(update_period[11]), .D(n326), .E(
        n164), .F(n327), .Z(n323) );
  GTECH_OR_NOT U361 ( .A(n327), .B(n328), .Z(n326) );
  GTECH_NOT U362 ( .A(n164), .Z(n328) );
  GTECH_OAI2N2 U363 ( .A(n329), .B(n330), .C(update_period[10]), .D(n331), .Z(
        n327) );
  GTECH_OR_NOT U364 ( .A(n332), .B(n330), .Z(n331) );
  GTECH_NOT U365 ( .A(n175), .Z(n330) );
  GTECH_NOT U366 ( .A(n332), .Z(n329) );
  GTECH_OAI2N2 U367 ( .A(n288), .B(n333), .C(update_period[8]), .D(n334), .Z(
        n332) );
  GTECH_OA21 U368 ( .A(update_period[9]), .B(n165), .C(n166), .Z(n334) );
  GTECH_NOT U369 ( .A(update_period[9]), .Z(n333) );
  GTECH_NOT U370 ( .A(n165), .Z(n288) );
  GTECH_OA21 U371 ( .A(update_period[9]), .B(n165), .C(n335), .Z(n325) );
  GTECH_OA22 U372 ( .A(update_period[11]), .B(n164), .C(n336), .D(n337), .Z(
        n335) );
  GTECH_OAI22 U373 ( .A(n338), .B(n339), .C(n340), .D(n338), .Z(n337) );
  GTECH_OAI2N2 U374 ( .A(update_period[4]), .B(n170), .C(n341), .D(n342), .Z(
        n340) );
  GTECH_NAND3 U375 ( .A(n343), .B(n344), .C(n345), .Z(n342) );
  GTECH_OA22 U376 ( .A(update_period[2]), .B(n172), .C(update_period[1]), .D(
        n173), .Z(n344) );
  GTECH_OAI2N2 U377 ( .A(n178), .B(n316), .C(n173), .D(update_period[1]), .Z(
        n343) );
  GTECH_NOT U378 ( .A(n174), .Z(n316) );
  GTECH_OA21 U379 ( .A(n312), .B(n346), .C(n347), .Z(n341) );
  GTECH_NAND3 U380 ( .A(n345), .B(update_period[2]), .C(n172), .Z(n347) );
  GTECH_NAND2 U381 ( .A(n346), .B(n312), .Z(n345) );
  GTECH_NOT U382 ( .A(update_period[3]), .Z(n346) );
  GTECH_NOT U383 ( .A(n171), .Z(n312) );
  GTECH_AOI22 U384 ( .A(n169), .B(update_period[5]), .C(n170), .D(
        update_period[4]), .Z(n339) );
  GTECH_OAI21 U385 ( .A(update_period[5]), .B(n169), .C(n348), .Z(n338) );
  GTECH_OA21 U386 ( .A(update_period[6]), .B(n168), .C(n349), .Z(n348) );
  GTECH_OAI21 U387 ( .A(n350), .B(n296), .C(n351), .Z(n336) );
  GTECH_NAND3 U388 ( .A(n349), .B(update_period[6]), .C(n168), .Z(n351) );
  GTECH_NAND2 U389 ( .A(n350), .B(n296), .Z(n349) );
  GTECH_NOT U390 ( .A(n167), .Z(n296) );
  GTECH_NOT U391 ( .A(update_period[7]), .Z(n350) );
  GTECH_OA22 U392 ( .A(n175), .B(update_period[10]), .C(n166), .D(
        update_period[8]), .Z(n324) );
  GTECH_AO21 U393 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U394 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U395 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U396 ( .A(period_load), .B(n190), .Z(n217) );
  GTECH_NOT U397 ( .A(reset), .Z(n190) );
endmodule

