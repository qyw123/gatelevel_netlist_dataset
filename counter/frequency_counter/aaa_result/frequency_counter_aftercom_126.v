
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
         n26, n27, n28, n29, n30, n31, n32, n33, n82, n160, n163,
         sub_85_carry_2_, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n180, n191, n192, n193, n194,
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
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348;
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
        .CP(clk), .Q(update_period[1]), .QN(n180) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n82), .K(n82), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n82), .K(n82), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n178) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n82), .K(n82), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n177) );
  GTECH_FJK1S state_reg_0_ ( .J(n82), .K(n82), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n82), .K(n82), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(n82), .K(n82), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n82), .K(n82), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n82), .K(n82), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n82), .K(n82), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n82), .K(n82), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n82), .K(n82), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n82), .K(n82), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n82), .K(n82), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n82), .K(n82), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n82), .K(n82), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n82), .K(n82), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n82), .K(n82), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n82), .K(n82), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n82), .K(n82), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n164) );
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
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n82), .K(n82), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n160) );
  GTECH_ZERO U172 ( .Z(n82) );
  GTECH_NAND2 U173 ( .A(n15), .B(n191), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U174 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U175 ( .A(n160), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U176 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U177 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U178 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U179 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U180 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U181 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U182 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U183 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_OR3 U184 ( .A(segments[4]), .B(n194), .C(n195), .Z(segments[3]) );
  GTECH_NOT U185 ( .A(n196), .Z(n194) );
  GTECH_OAI21 U186 ( .A(n197), .B(n198), .C(n199), .Z(segments[4]) );
  GTECH_NAND2 U187 ( .A(n200), .B(n201), .Z(segments[2]) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n201) );
  GTECH_NAND2 U189 ( .A(n192), .B(n199), .Z(segments[5]) );
  GTECH_OA21 U190 ( .A(n202), .B(n203), .C(n204), .Z(n192) );
  GTECH_NAND2 U191 ( .A(n205), .B(n206), .Z(n203) );
  GTECH_NOT U192 ( .A(n207), .Z(n200) );
  GTECH_OR3 U193 ( .A(n195), .B(n208), .C(n207), .Z(segments[1]) );
  GTECH_OAI21 U194 ( .A(n206), .B(n197), .C(n209), .Z(n207) );
  GTECH_AND3 U195 ( .A(n205), .B(n210), .C(n206), .Z(n208) );
  GTECH_NOT U196 ( .A(n193), .Z(n195) );
  GTECH_NAND4 U197 ( .A(n204), .B(n211), .C(n199), .D(n193), .Z(segments[0])
         );
  GTECH_NAND2 U198 ( .A(n212), .B(n202), .Z(n193) );
  GTECH_NOT U199 ( .A(n197), .Z(n212) );
  GTECH_NAND2 U200 ( .A(n206), .B(n213), .Z(n199) );
  GTECH_NOT U201 ( .A(n209), .Z(n213) );
  GTECH_OR2 U202 ( .A(n206), .B(n197), .Z(n211) );
  GTECH_NAND2 U203 ( .A(n205), .B(n214), .Z(n197) );
  GTECH_NOT U204 ( .A(n210), .Z(n214) );
  GTECH_NOT U205 ( .A(n215), .Z(n204) );
  GTECH_OAI21 U206 ( .A(n205), .B(n209), .C(n196), .Z(n215) );
  GTECH_NAND4 U207 ( .A(n205), .B(n210), .C(n198), .D(n216), .Z(n196) );
  GTECH_NOT U208 ( .A(n202), .Z(n216) );
  GTECH_NOT U209 ( .A(n206), .Z(n198) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n160), .Z(n206) );
  GTECH_NAND2 U211 ( .A(n210), .B(n202), .Z(n209) );
  GTECH_MUX2 U212 ( .A(n32), .B(n28), .S(n160), .Z(n202) );
  GTECH_MUX2 U213 ( .A(n31), .B(n27), .S(n160), .Z(n210) );
  GTECH_MUX2 U214 ( .A(n33), .B(n29), .S(n160), .Z(n205) );
  GTECH_AO21 U215 ( .A(period[0]), .B(n217), .C(reset), .Z(N9) );
  GTECH_AND_NOT U216 ( .A(period[11]), .B(n218), .Z(N21) );
  GTECH_NAND2 U217 ( .A(n191), .B(n218), .Z(N20) );
  GTECH_AO21 U218 ( .A(period[10]), .B(n217), .C(reset), .Z(N19) );
  GTECH_AND_NOT U219 ( .A(period[9]), .B(n218), .Z(N18) );
  GTECH_AND_NOT U220 ( .A(period[8]), .B(n218), .Z(N17) );
  GTECH_AND_NOT U221 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U222 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND_NOT U223 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U224 ( .A(sub_85_carry_2_), .B(n221), .Z(N164) );
  GTECH_AND_NOT U225 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U226 ( .A(n221), .Z(N170) );
  GTECH_NAND2 U227 ( .A(n222), .B(n191), .Z(n221) );
  GTECH_OAI22 U228 ( .A(n223), .B(n224), .C(n225), .D(n226), .Z(N160) );
  GTECH_MUX2 U229 ( .A(n223), .B(n227), .S(ten_count[2]), .Z(n226) );
  GTECH_OR_NOT U230 ( .A(n228), .B(n223), .Z(n227) );
  GTECH_NOT U231 ( .A(ten_count[3]), .Z(n223) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n217), .C(reset), .Z(N16) );
  GTECH_OAI21 U233 ( .A(n229), .B(n230), .C(n231), .Z(N159) );
  GTECH_NOT U234 ( .A(n232), .Z(n231) );
  GTECH_MUX2 U235 ( .A(n233), .B(n234), .S(ten_count[2]), .Z(N158) );
  GTECH_AND_NOT U236 ( .A(N152), .B(n228), .Z(n233) );
  GTECH_OA21 U237 ( .A(ten_count[0]), .B(ten_count[1]), .C(n234), .Z(N156) );
  GTECH_NOT U238 ( .A(n224), .Z(n234) );
  GTECH_NAND2 U239 ( .A(N152), .B(n228), .Z(n224) );
  GTECH_NAND2 U240 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n228) );
  GTECH_AND_NOT U241 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U242 ( .A(n235), .B(n163), .Z(N151) );
  GTECH_OA21 U243 ( .A(n14), .B(n236), .C(n219), .Z(n235) );
  GTECH_NOT U244 ( .A(n237), .Z(n219) );
  GTECH_OAI21 U245 ( .A(n238), .B(n229), .C(n191), .Z(n237) );
  GTECH_AND_NOT U246 ( .A(period[6]), .B(n218), .Z(N15) );
  GTECH_OAI21 U247 ( .A(n225), .B(n236), .C(n239), .Z(N148) );
  GTECH_MUX2 U248 ( .A(n240), .B(n241), .S(n177), .Z(n239) );
  GTECH_OR3 U249 ( .A(n178), .B(n242), .C(n243), .Z(n241) );
  GTECH_AND_NOT U250 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U251 ( .A(n225), .B(n243), .S(n178), .Z(n244) );
  GTECH_OR3 U252 ( .A(n222), .B(n246), .C(n232), .Z(N147) );
  GTECH_OAI21 U253 ( .A(n14), .B(n247), .C(n191), .Z(n232) );
  GTECH_NAND2 U254 ( .A(n236), .B(n163), .Z(n247) );
  GTECH_NAND4 U255 ( .A(n178), .B(n177), .C(n164), .D(n248), .Z(n236) );
  GTECH_AND3 U256 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n246) );
  GTECH_NOT U257 ( .A(n220), .Z(n222) );
  GTECH_NAND2 U258 ( .A(n14), .B(n249), .Z(n220) );
  GTECH_NOT U259 ( .A(n163), .Z(n249) );
  GTECH_MUX2 U260 ( .A(n245), .B(n250), .S(n178), .Z(N146) );
  GTECH_OAI21 U261 ( .A(n242), .B(n243), .C(n251), .Z(n250) );
  GTECH_OAI21 U262 ( .A(n252), .B(n243), .C(n253), .Z(n245) );
  GTECH_OAI21 U263 ( .A(n254), .B(n255), .C(N152), .Z(n253) );
  GTECH_NOT U264 ( .A(n242), .Z(n252) );
  GTECH_OR3 U265 ( .A(n22), .B(n164), .C(n256), .Z(n242) );
  GTECH_NAND2 U266 ( .A(n257), .B(n251), .Z(N144) );
  GTECH_OR3 U267 ( .A(n254), .B(n225), .C(n255), .Z(n251) );
  GTECH_NOT U268 ( .A(n164), .Z(n255) );
  GTECH_NOT U269 ( .A(n248), .Z(n254) );
  GTECH_MUX2 U270 ( .A(n258), .B(n259), .S(n164), .Z(n257) );
  GTECH_OR3 U271 ( .A(n22), .B(n256), .C(n243), .Z(n259) );
  GTECH_OA21 U272 ( .A(n225), .B(n248), .C(n260), .Z(n258) );
  GTECH_OAI21 U273 ( .A(n22), .B(n256), .C(N150), .Z(n260) );
  GTECH_NAND2 U274 ( .A(n261), .B(n262), .Z(n248) );
  GTECH_NOT U275 ( .A(n22), .Z(n262) );
  GTECH_OAI21 U276 ( .A(n243), .B(n263), .C(n264), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n265), .B(n266), .S(n22), .Z(n264) );
  GTECH_NAND2 U278 ( .A(N152), .B(n261), .Z(n266) );
  GTECH_XNOR2 U279 ( .A(n22), .B(n256), .Z(n263) );
  GTECH_OR3 U280 ( .A(n20), .B(n16), .C(n267), .Z(n256) );
  GTECH_NAND2 U281 ( .A(n268), .B(n265), .Z(N140) );
  GTECH_NAND2 U282 ( .A(n269), .B(N152), .Z(n265) );
  GTECH_NOT U283 ( .A(n225), .Z(N152) );
  GTECH_NOT U284 ( .A(n261), .Z(n269) );
  GTECH_NAND2 U285 ( .A(n20), .B(n267), .Z(n261) );
  GTECH_MUX2 U286 ( .A(n270), .B(n271), .S(n20), .Z(n268) );
  GTECH_OR3 U287 ( .A(n16), .B(n267), .C(n243), .Z(n271) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n267) );
  GTECH_AND_NOT U289 ( .A(n272), .B(n273), .Z(n270) );
  GTECH_MUX2 U290 ( .A(n243), .B(n225), .S(sub_85_carry_2_), .Z(n272) );
  GTECH_AO21 U291 ( .A(period[5]), .B(n217), .C(reset), .Z(N14) );
  GTECH_MUX2 U292 ( .A(n274), .B(n273), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U293 ( .A(n275), .Z(n273) );
  GTECH_OAI21 U294 ( .A(n16), .B(n243), .C(n225), .Z(n274) );
  GTECH_OAI21 U295 ( .A(n16), .B(n225), .C(n275), .Z(N136) );
  GTECH_NAND2 U296 ( .A(n16), .B(N150), .Z(n275) );
  GTECH_NOT U297 ( .A(n243), .Z(N150) );
  GTECH_NAND2 U298 ( .A(n276), .B(n191), .Z(n243) );
  GTECH_NOT U299 ( .A(n230), .Z(n276) );
  GTECH_NAND2 U300 ( .A(n163), .B(n277), .Z(n225) );
  GTECH_NOT U301 ( .A(N169), .Z(n277) );
  GTECH_NAND2 U302 ( .A(n191), .B(n238), .Z(N169) );
  GTECH_NOT U303 ( .A(n14), .Z(n238) );
  GTECH_OA21 U304 ( .A(n278), .B(n279), .C(n280), .Z(N134) );
  GTECH_NOR2 U305 ( .A(n281), .B(n176), .Z(n279) );
  GTECH_NAND2 U306 ( .A(n191), .B(n230), .Z(N133) );
  GTECH_NAND2 U307 ( .A(n163), .B(n14), .Z(n230) );
  GTECH_AND_NOT U308 ( .A(n282), .B(n283), .Z(N132) );
  GTECH_XOR2 U309 ( .A(n281), .B(n176), .Z(n282) );
  GTECH_NAND2 U310 ( .A(n284), .B(n285), .Z(n281) );
  GTECH_NOT U311 ( .A(n166), .Z(n285) );
  GTECH_NOT U312 ( .A(n286), .Z(n284) );
  GTECH_AND_NOT U313 ( .A(n287), .B(n283), .Z(N130) );
  GTECH_XOR2 U314 ( .A(n286), .B(n166), .Z(n287) );
  GTECH_NAND2 U315 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U316 ( .A(n167), .Z(n289) );
  GTECH_NOT U317 ( .A(n290), .Z(n288) );
  GTECH_AND_NOT U318 ( .A(period[4]), .B(n218), .Z(N13) );
  GTECH_AND_NOT U319 ( .A(n291), .B(n283), .Z(N128) );
  GTECH_XOR2 U320 ( .A(n290), .B(n167), .Z(n291) );
  GTECH_NAND2 U321 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U322 ( .A(n294), .Z(n292) );
  GTECH_AND_NOT U323 ( .A(n295), .B(n283), .Z(N126) );
  GTECH_XOR2 U324 ( .A(n294), .B(n168), .Z(n295) );
  GTECH_NAND2 U325 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U326 ( .A(n298), .Z(n296) );
  GTECH_AND_NOT U327 ( .A(n299), .B(n283), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n298), .B(n169), .Z(n299) );
  GTECH_NAND2 U329 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U330 ( .A(n170), .Z(n301) );
  GTECH_NOT U331 ( .A(n302), .Z(n300) );
  GTECH_AND_NOT U332 ( .A(n303), .B(n283), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n302), .B(n170), .Z(n303) );
  GTECH_NAND2 U334 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U335 ( .A(n306), .Z(n304) );
  GTECH_AND_NOT U336 ( .A(n307), .B(n283), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n306), .B(n171), .Z(n307) );
  GTECH_NAND2 U338 ( .A(n308), .B(n309), .Z(n306) );
  GTECH_NOT U339 ( .A(n310), .Z(n308) );
  GTECH_AO21 U340 ( .A(period[3]), .B(n217), .C(reset), .Z(N12) );
  GTECH_AND_NOT U341 ( .A(n311), .B(n283), .Z(N118) );
  GTECH_XOR2 U342 ( .A(n310), .B(n172), .Z(n311) );
  GTECH_OR3 U343 ( .A(n175), .B(n174), .C(n173), .Z(n310) );
  GTECH_OAI22 U344 ( .A(n173), .B(n312), .C(n283), .D(n313), .Z(N116) );
  GTECH_MUX2 U345 ( .A(n314), .B(n315), .S(n173), .Z(n313) );
  GTECH_OR_NOT U346 ( .A(n175), .B(n314), .Z(n315) );
  GTECH_MUX2 U347 ( .A(N112), .B(n316), .S(n174), .Z(N114) );
  GTECH_AND_NOT U348 ( .A(n280), .B(n175), .Z(n316) );
  GTECH_NOT U349 ( .A(n312), .Z(N112) );
  GTECH_NAND2 U350 ( .A(n280), .B(n175), .Z(n312) );
  GTECH_NOT U351 ( .A(n283), .Z(n280) );
  GTECH_NAND2 U352 ( .A(n229), .B(n191), .Z(n283) );
  GTECH_NOT U353 ( .A(n317), .Z(n229) );
  GTECH_AOI222 U354 ( .A(n318), .B(n319), .C(update_period[11]), .D(n165), .E(
        n320), .F(n321), .Z(n317) );
  GTECH_OAI2N2 U355 ( .A(n322), .B(n323), .C(n324), .D(n325), .Z(n320) );
  GTECH_AO22 U356 ( .A(update_period[8]), .B(n326), .C(n166), .D(
        update_period[9]), .Z(n325) );
  GTECH_OA21 U357 ( .A(n166), .B(update_period[9]), .C(n167), .Z(n326) );
  GTECH_AOI21 U358 ( .A(n327), .B(n328), .C(n329), .Z(n319) );
  GTECH_NAND2 U359 ( .A(n324), .B(n321), .Z(n329) );
  GTECH_NAND2 U360 ( .A(n278), .B(n330), .Z(n321) );
  GTECH_NOT U361 ( .A(update_period[11]), .Z(n330) );
  GTECH_NOT U362 ( .A(n165), .Z(n278) );
  GTECH_NAND2 U363 ( .A(n323), .B(n322), .Z(n324) );
  GTECH_NOT U364 ( .A(n176), .Z(n322) );
  GTECH_NOT U365 ( .A(update_period[10]), .Z(n323) );
  GTECH_AOI2N2 U366 ( .A(n331), .B(n332), .C(n333), .D(n334), .Z(n328) );
  GTECH_OAI21 U367 ( .A(update_period[4]), .B(n171), .C(n331), .Z(n334) );
  GTECH_OAI22 U368 ( .A(update_period[5]), .B(n170), .C(n335), .D(n336), .Z(
        n333) );
  GTECH_AO21 U369 ( .A(update_period[3]), .B(n172), .C(n337), .Z(n336) );
  GTECH_AND3 U370 ( .A(n173), .B(update_period[2]), .C(n338), .Z(n337) );
  GTECH_AND3 U371 ( .A(n339), .B(n340), .C(n338), .Z(n335) );
  GTECH_NAND2 U372 ( .A(n341), .B(n309), .Z(n338) );
  GTECH_NOT U373 ( .A(n172), .Z(n309) );
  GTECH_NOT U374 ( .A(update_period[3]), .Z(n341) );
  GTECH_OAI21 U375 ( .A(n342), .B(n314), .C(n180), .Z(n340) );
  GTECH_NOT U376 ( .A(n174), .Z(n314) );
  GTECH_OA21 U377 ( .A(n173), .B(update_period[2]), .C(n343), .Z(n339) );
  GTECH_OR_NOT U378 ( .A(n174), .B(n342), .Z(n343) );
  GTECH_NAND2 U379 ( .A(update_period[0]), .B(n175), .Z(n342) );
  GTECH_ADD_ABC U380 ( .A(n344), .B(n170), .C(update_period[5]), .COUT(n332)
         );
  GTECH_AND_NOT U381 ( .A(update_period[4]), .B(n305), .Z(n344) );
  GTECH_NOT U382 ( .A(n171), .Z(n305) );
  GTECH_NOT U383 ( .A(n345), .Z(n331) );
  GTECH_OAI21 U384 ( .A(update_period[6]), .B(n169), .C(n346), .Z(n345) );
  GTECH_AOI2N2 U385 ( .A(n347), .B(n346), .C(n293), .D(n348), .Z(n327) );
  GTECH_NAND2 U386 ( .A(n348), .B(n293), .Z(n346) );
  GTECH_NOT U387 ( .A(n168), .Z(n293) );
  GTECH_NOT U388 ( .A(update_period[7]), .Z(n348) );
  GTECH_AND_NOT U389 ( .A(update_period[6]), .B(n297), .Z(n347) );
  GTECH_NOT U390 ( .A(n169), .Z(n297) );
  GTECH_OA22 U391 ( .A(n167), .B(update_period[8]), .C(n166), .D(
        update_period[9]), .Z(n318) );
  GTECH_AO21 U392 ( .A(period[2]), .B(n217), .C(reset), .Z(N11) );
  GTECH_AO21 U393 ( .A(period[1]), .B(n217), .C(reset), .Z(N10) );
  GTECH_NOT U394 ( .A(n218), .Z(n217) );
  GTECH_NAND2 U395 ( .A(period_load), .B(n191), .Z(n218) );
  GTECH_NOT U396 ( .A(reset), .Z(n191) );
endmodule

