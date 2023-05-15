
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n19,
         n21, n23, n26, n28, n30, n32, n34, n83, n162, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n181, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
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
         n334, n335, n336, n337, n338, n339;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n83), .K(n83), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n83), .K(n83), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n83), .K(n83), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n83), .K(n83), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n83), .K(n83), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n83), .K(n83), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n83), .K(n83), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n83), .K(n83), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n83), .K(n83), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n83), .K(n83), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n83), .K(n83), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n181) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n83), .K(n83), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n83), .K(n83), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n179) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n83), .K(n83), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n178) );
  GTECH_FJK1S state_reg_0_ ( .J(n83), .K(n83), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n83), .K(n83), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n83), .K(n83), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n83), .K(n83), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n83), .K(n83), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n83), .K(n83), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n83), .K(n83), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n83), .K(n83), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n83), .K(n83), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n83), .K(n83), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n83), .K(n83), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n83), .K(n83), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n83), .K(n83), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n83), .K(n83), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n166) );
  GTECH_FJK1S update_digits_reg ( .J(n83), .K(n83), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n83), .K(n83), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n165) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n83), .K(n83), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n83), .K(n83), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n83), .K(n83), .TI(N138), .TE(N147), 
        .CP(clk), .Q(edge_counter[1]), .QN(n19) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n83), .K(n83), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n83), .K(n83), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n83), .K(n83), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n83), .K(n83), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n83), .K(n83), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n83), .K(n83), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n83), .K(n83), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n83), .K(n83), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n83), .K(n83), .TI(N160), .TE(N159), .CP(
        clk), .Q(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n34) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n162) );
  GTECH_ZERO U172 ( .Z(n83) );
  GTECH_OR_NOT U173 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U174 ( .A(ten_count[0]), .B(n192), .Z(seven_segment0_N8) );
  GTECH_AND2 U175 ( .A(n162), .B(n192), .Z(seven_segment0_N6) );
  GTECH_AND2 U176 ( .A(unit_count[3]), .B(n192), .Z(seven_segment0_N22) );
  GTECH_AND2 U177 ( .A(unit_count[2]), .B(n192), .Z(seven_segment0_N20) );
  GTECH_AND2 U178 ( .A(unit_count[1]), .B(n192), .Z(seven_segment0_N18) );
  GTECH_AND2 U179 ( .A(unit_count[0]), .B(n192), .Z(seven_segment0_N16) );
  GTECH_AND2 U180 ( .A(n26), .B(n192), .Z(seven_segment0_N14) );
  GTECH_AND2 U181 ( .A(ten_count[2]), .B(n192), .Z(seven_segment0_N12) );
  GTECH_AND2 U182 ( .A(ten_count[1]), .B(n192), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U183 ( .A(n193), .B(n194), .Z(segments[6]) );
  GTECH_OR_NOT U184 ( .A(n193), .B(n195), .Z(segments[5]) );
  GTECH_OA21 U185 ( .A(n196), .B(n197), .C(n198), .Z(n195) );
  GTECH_OAI21 U186 ( .A(n199), .B(n200), .C(n201), .Z(segments[3]) );
  GTECH_AND_NOT U187 ( .A(n202), .B(segments[4]), .Z(n201) );
  GTECH_OAI21 U188 ( .A(n203), .B(n200), .C(n198), .Z(segments[4]) );
  GTECH_OR_NOT U189 ( .A(n193), .B(n204), .Z(segments[2]) );
  GTECH_OAI21 U190 ( .A(n205), .B(n206), .C(n202), .Z(n193) );
  GTECH_OR_NOT U191 ( .A(n203), .B(n196), .Z(n206) );
  GTECH_NOT U192 ( .A(n199), .Z(n205) );
  GTECH_NAND3 U193 ( .A(n194), .B(n207), .C(n204), .Z(segments[1]) );
  GTECH_NOT U194 ( .A(n208), .Z(n204) );
  GTECH_OAI21 U195 ( .A(n200), .B(n209), .C(n197), .Z(n208) );
  GTECH_NAND3 U196 ( .A(n210), .B(n209), .C(n196), .Z(n207) );
  GTECH_NAND3 U197 ( .A(n202), .B(n198), .C(n211), .Z(segments[0]) );
  GTECH_OA21 U198 ( .A(n200), .B(n209), .C(n194), .Z(n211) );
  GTECH_NOT U199 ( .A(n212), .Z(n194) );
  GTECH_OAI22 U200 ( .A(n199), .B(n200), .C(n196), .D(n197), .Z(n212) );
  GTECH_NOT U201 ( .A(n203), .Z(n209) );
  GTECH_OR_NOT U202 ( .A(n210), .B(n196), .Z(n200) );
  GTECH_OR_NOT U203 ( .A(n203), .B(n213), .Z(n198) );
  GTECH_NOT U204 ( .A(n197), .Z(n213) );
  GTECH_OR_NOT U205 ( .A(n199), .B(n210), .Z(n197) );
  GTECH_NAND4 U206 ( .A(n199), .B(n203), .C(n210), .D(n196), .Z(n202) );
  GTECH_MUX2 U207 ( .A(n34), .B(n30), .S(n162), .Z(n196) );
  GTECH_MUX2 U208 ( .A(n32), .B(n28), .S(n162), .Z(n210) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n162), .Z(n203) );
  GTECH_MUX2 U210 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n162), .Z(n199) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n214), .C(reset), .Z(N9) );
  GTECH_AND2 U212 ( .A(period[11]), .B(n214), .Z(N21) );
  GTECH_OR_NOT U213 ( .A(n214), .B(n192), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n214), .C(reset), .Z(N19) );
  GTECH_AND2 U215 ( .A(period[9]), .B(n214), .Z(N18) );
  GTECH_AND2 U216 ( .A(period[8]), .B(n214), .Z(N17) );
  GTECH_AND2 U217 ( .A(N170), .B(n215), .Z(N168) );
  GTECH_OR_NOT U218 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND2 U219 ( .A(N170), .B(n218), .Z(N166) );
  GTECH_AND2 U220 ( .A(N170), .B(n219), .Z(N164) );
  GTECH_AND2 U221 ( .A(N170), .B(n220), .Z(N162) );
  GTECH_NOT U222 ( .A(n221), .Z(N170) );
  GTECH_OR_NOT U223 ( .A(reset), .B(n216), .Z(n221) );
  GTECH_NOT U224 ( .A(n222), .Z(n216) );
  GTECH_MUX2 U225 ( .A(n223), .B(n224), .S(n26), .Z(N160) );
  GTECH_OAI21 U226 ( .A(ten_count[2]), .B(n225), .C(n226), .Z(n224) );
  GTECH_NOT U227 ( .A(n227), .Z(n226) );
  GTECH_AND2 U228 ( .A(n228), .B(ten_count[2]), .Z(n223) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n214), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n229), .B(n230), .C(n231), .Z(N159) );
  GTECH_MUX2 U231 ( .A(n228), .B(n227), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U232 ( .A(ten_count[1]), .B(n225), .C(n232), .Z(n227) );
  GTECH_NOT U233 ( .A(n233), .Z(n228) );
  GTECH_NAND3 U234 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n233) );
  GTECH_MUX2 U235 ( .A(n234), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U236 ( .A(N152), .B(ten_count[0]), .Z(n234) );
  GTECH_NOT U237 ( .A(n232), .Z(N154) );
  GTECH_OR_NOT U238 ( .A(ten_count[0]), .B(N152), .Z(n232) );
  GTECH_OR_NOT U239 ( .A(n235), .B(n236), .Z(N151) );
  GTECH_OA21 U240 ( .A(n14), .B(n237), .C(n217), .Z(n236) );
  GTECH_NOT U241 ( .A(n238), .Z(n217) );
  GTECH_OAI21 U242 ( .A(n239), .B(n229), .C(n192), .Z(n238) );
  GTECH_AND2 U243 ( .A(period[6]), .B(n214), .Z(N15) );
  GTECH_OAI21 U244 ( .A(n225), .B(n237), .C(n240), .Z(N148) );
  GTECH_MUX2 U245 ( .A(n241), .B(n242), .S(n178), .Z(n240) );
  GTECH_OR3 U246 ( .A(n179), .B(n243), .C(n244), .Z(n242) );
  GTECH_AND_NOT U247 ( .A(n245), .B(n246), .Z(n241) );
  GTECH_MUX2 U248 ( .A(n225), .B(n243), .S(n179), .Z(n245) );
  GTECH_NAND3 U249 ( .A(n247), .B(n222), .C(n231), .Z(N147) );
  GTECH_OA21 U250 ( .A(n235), .B(n248), .C(n192), .Z(n231) );
  GTECH_OR_NOT U251 ( .A(n14), .B(n237), .Z(n248) );
  GTECH_NAND4 U252 ( .A(n179), .B(n178), .C(n165), .D(n249), .Z(n237) );
  GTECH_NOT U253 ( .A(n15), .Z(n235) );
  GTECH_OR_NOT U254 ( .A(n15), .B(n14), .Z(n222) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n247) );
  GTECH_MUX2 U256 ( .A(n246), .B(n250), .S(n179), .Z(N146) );
  GTECH_OAI21 U257 ( .A(n244), .B(n243), .C(n251), .Z(n250) );
  GTECH_OAI21 U258 ( .A(n252), .B(n243), .C(n253), .Z(n246) );
  GTECH_AO21 U259 ( .A(n249), .B(n165), .C(n225), .Z(n253) );
  GTECH_NOT U260 ( .A(n244), .Z(n252) );
  GTECH_NAND3 U261 ( .A(n254), .B(n215), .C(n255), .Z(n244) );
  GTECH_NOT U262 ( .A(n165), .Z(n254) );
  GTECH_OR_NOT U263 ( .A(n256), .B(n251), .Z(N144) );
  GTECH_NAND3 U264 ( .A(N152), .B(n249), .C(n165), .Z(n251) );
  GTECH_MUX2 U265 ( .A(n257), .B(n258), .S(n165), .Z(n256) );
  GTECH_AND3 U266 ( .A(n215), .B(N150), .C(n255), .Z(n258) );
  GTECH_OAI21 U267 ( .A(n249), .B(n225), .C(n259), .Z(n257) );
  GTECH_OAI21 U268 ( .A(n23), .B(n260), .C(N150), .Z(n259) );
  GTECH_OAI21 U269 ( .A(n219), .B(n218), .C(n215), .Z(n249) );
  GTECH_NOT U270 ( .A(n23), .Z(n215) );
  GTECH_MUX2 U271 ( .A(n261), .B(n262), .S(n23), .Z(N142) );
  GTECH_OAI21 U272 ( .A(n260), .B(n243), .C(n263), .Z(n262) );
  GTECH_OAI21 U273 ( .A(n219), .B(n218), .C(N152), .Z(n263) );
  GTECH_OAI21 U274 ( .A(n255), .B(n243), .C(n264), .Z(n261) );
  GTECH_NOT U275 ( .A(n260), .Z(n255) );
  GTECH_NAND3 U276 ( .A(n219), .B(n218), .C(n220), .Z(n260) );
  GTECH_NOT U277 ( .A(n21), .Z(n218) );
  GTECH_OR_NOT U278 ( .A(n265), .B(n266), .Z(N140) );
  GTECH_MUX2 U279 ( .A(n267), .B(n268), .S(n21), .Z(n266) );
  GTECH_NAND3 U280 ( .A(n220), .B(n219), .C(N150), .Z(n268) );
  GTECH_NOT U281 ( .A(n243), .Z(N150) );
  GTECH_NOT U282 ( .A(n19), .Z(n219) );
  GTECH_NOT U283 ( .A(n17), .Z(n220) );
  GTECH_AND2 U284 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_MUX2 U285 ( .A(n225), .B(n243), .S(n19), .Z(n269) );
  GTECH_NOT U286 ( .A(n264), .Z(n265) );
  GTECH_NAND3 U287 ( .A(n19), .B(N152), .C(n21), .Z(n264) );
  GTECH_NOT U288 ( .A(n225), .Z(N152) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n214), .C(reset), .Z(N14) );
  GTECH_MUX2 U290 ( .A(n271), .B(n272), .S(n19), .Z(N138) );
  GTECH_OAI21 U291 ( .A(n17), .B(n243), .C(n225), .Z(n272) );
  GTECH_NOT U292 ( .A(n270), .Z(n271) );
  GTECH_OAI21 U293 ( .A(n17), .B(n225), .C(n270), .Z(N136) );
  GTECH_OR_NOT U294 ( .A(n243), .B(n17), .Z(n270) );
  GTECH_OR_NOT U295 ( .A(reset), .B(n273), .Z(n243) );
  GTECH_OR_NOT U296 ( .A(N169), .B(n15), .Z(n225) );
  GTECH_OR_NOT U297 ( .A(n14), .B(n192), .Z(N169) );
  GTECH_AND2 U298 ( .A(n274), .B(n275), .Z(N134) );
  GTECH_OAI21 U299 ( .A(n177), .B(n276), .C(n166), .Z(n275) );
  GTECH_OR_NOT U300 ( .A(n273), .B(n192), .Z(N133) );
  GTECH_NOT U301 ( .A(reset), .Z(n192) );
  GTECH_NOT U302 ( .A(n230), .Z(n273) );
  GTECH_OR_NOT U303 ( .A(n239), .B(n15), .Z(n230) );
  GTECH_NOT U304 ( .A(n14), .Z(n239) );
  GTECH_AND2 U305 ( .A(n277), .B(n274), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n276), .B(n177), .Z(n277) );
  GTECH_OR_NOT U307 ( .A(n167), .B(n278), .Z(n276) );
  GTECH_NOT U308 ( .A(n279), .Z(n278) );
  GTECH_AND2 U309 ( .A(n280), .B(n274), .Z(N130) );
  GTECH_XOR2 U310 ( .A(n279), .B(n167), .Z(n280) );
  GTECH_OR_NOT U311 ( .A(n168), .B(n281), .Z(n279) );
  GTECH_NOT U312 ( .A(n282), .Z(n281) );
  GTECH_AND2 U313 ( .A(period[4]), .B(n214), .Z(N13) );
  GTECH_AND2 U314 ( .A(n283), .B(n274), .Z(N128) );
  GTECH_XOR2 U315 ( .A(n282), .B(n168), .Z(n283) );
  GTECH_OR_NOT U316 ( .A(n169), .B(n284), .Z(n282) );
  GTECH_NOT U317 ( .A(n285), .Z(n284) );
  GTECH_AND2 U318 ( .A(n286), .B(n274), .Z(N126) );
  GTECH_XOR2 U319 ( .A(n285), .B(n169), .Z(n286) );
  GTECH_OR_NOT U320 ( .A(n170), .B(n287), .Z(n285) );
  GTECH_NOT U321 ( .A(n288), .Z(n287) );
  GTECH_AND2 U322 ( .A(n289), .B(n274), .Z(N124) );
  GTECH_XOR2 U323 ( .A(n288), .B(n170), .Z(n289) );
  GTECH_OR_NOT U324 ( .A(n171), .B(n290), .Z(n288) );
  GTECH_NOT U325 ( .A(n291), .Z(n290) );
  GTECH_AND2 U326 ( .A(n292), .B(n274), .Z(N122) );
  GTECH_XOR2 U327 ( .A(n291), .B(n171), .Z(n292) );
  GTECH_OR_NOT U328 ( .A(n172), .B(n293), .Z(n291) );
  GTECH_NOT U329 ( .A(n294), .Z(n293) );
  GTECH_AND2 U330 ( .A(n295), .B(n274), .Z(N120) );
  GTECH_XOR2 U331 ( .A(n294), .B(n172), .Z(n295) );
  GTECH_OR_NOT U332 ( .A(n173), .B(n296), .Z(n294) );
  GTECH_NOT U333 ( .A(n297), .Z(n296) );
  GTECH_AO21 U334 ( .A(period[3]), .B(n214), .C(reset), .Z(N12) );
  GTECH_AND2 U335 ( .A(n298), .B(n274), .Z(N118) );
  GTECH_XOR2 U336 ( .A(n297), .B(n173), .Z(n298) );
  GTECH_NAND3 U337 ( .A(n299), .B(n300), .C(n301), .Z(n297) );
  GTECH_NOT U338 ( .A(n174), .Z(n301) );
  GTECH_OAI22 U339 ( .A(n174), .B(n302), .C(n303), .D(n304), .Z(N116) );
  GTECH_MUX2 U340 ( .A(n299), .B(n305), .S(n174), .Z(n304) );
  GTECH_OR_NOT U341 ( .A(n176), .B(n299), .Z(n305) );
  GTECH_MUX2 U342 ( .A(N112), .B(n306), .S(n175), .Z(N114) );
  GTECH_AND2 U343 ( .A(n274), .B(n300), .Z(n306) );
  GTECH_NOT U344 ( .A(n302), .Z(N112) );
  GTECH_OR_NOT U345 ( .A(n300), .B(n274), .Z(n302) );
  GTECH_NOT U346 ( .A(n303), .Z(n274) );
  GTECH_OR_NOT U347 ( .A(reset), .B(n229), .Z(n303) );
  GTECH_NOT U348 ( .A(n307), .Z(n229) );
  GTECH_AOI222 U349 ( .A(n308), .B(n309), .C(update_period[11]), .D(n166), .E(
        n310), .F(n311), .Z(n307) );
  GTECH_AO22 U350 ( .A(n177), .B(update_period[10]), .C(n312), .D(n313), .Z(
        n310) );
  GTECH_AO22 U351 ( .A(n167), .B(update_period[9]), .C(n314), .D(n168), .Z(
        n313) );
  GTECH_AND2 U352 ( .A(n315), .B(update_period[8]), .Z(n314) );
  GTECH_AND3 U353 ( .A(n311), .B(n315), .C(n312), .Z(n309) );
  GTECH_OR_NOT U354 ( .A(n177), .B(n316), .Z(n312) );
  GTECH_NOT U355 ( .A(update_period[10]), .Z(n316) );
  GTECH_OR_NOT U356 ( .A(n167), .B(n317), .Z(n315) );
  GTECH_NOT U357 ( .A(update_period[9]), .Z(n317) );
  GTECH_OR_NOT U358 ( .A(n166), .B(n318), .Z(n311) );
  GTECH_NOT U359 ( .A(update_period[11]), .Z(n318) );
  GTECH_OA22 U360 ( .A(n168), .B(update_period[8]), .C(n319), .D(n320), .Z(
        n308) );
  GTECH_AO22 U361 ( .A(n321), .B(n170), .C(n169), .D(update_period[7]), .Z(
        n320) );
  GTECH_AND2 U362 ( .A(n322), .B(update_period[6]), .Z(n321) );
  GTECH_OAI21 U363 ( .A(n323), .B(n324), .C(n325), .Z(n319) );
  GTECH_OR3 U364 ( .A(n326), .B(n323), .C(n327), .Z(n325) );
  GTECH_OAI22 U365 ( .A(update_period[5]), .B(n171), .C(n328), .D(n329), .Z(
        n327) );
  GTECH_AO22 U366 ( .A(n330), .B(n174), .C(n173), .D(update_period[3]), .Z(
        n329) );
  GTECH_AND2 U367 ( .A(n331), .B(update_period[2]), .Z(n330) );
  GTECH_AND3 U368 ( .A(n332), .B(n333), .C(n331), .Z(n328) );
  GTECH_OR_NOT U369 ( .A(n173), .B(n334), .Z(n331) );
  GTECH_NOT U370 ( .A(update_period[3]), .Z(n334) );
  GTECH_OAI21 U371 ( .A(n335), .B(n299), .C(n181), .Z(n333) );
  GTECH_NOT U372 ( .A(n175), .Z(n299) );
  GTECH_OA21 U373 ( .A(n174), .B(update_period[2]), .C(n336), .Z(n332) );
  GTECH_OR_NOT U374 ( .A(n175), .B(n335), .Z(n336) );
  GTECH_OR_NOT U375 ( .A(n300), .B(update_period[0]), .Z(n335) );
  GTECH_NOR2 U376 ( .A(update_period[4]), .B(n172), .Z(n326) );
  GTECH_OAI21 U377 ( .A(update_period[5]), .B(n171), .C(n337), .Z(n324) );
  GTECH_AO22 U378 ( .A(n171), .B(update_period[5]), .C(n172), .D(
        update_period[4]), .Z(n337) );
  GTECH_OAI21 U379 ( .A(update_period[6]), .B(n170), .C(n322), .Z(n323) );
  GTECH_OR_NOT U380 ( .A(n169), .B(n338), .Z(n322) );
  GTECH_NOT U381 ( .A(update_period[7]), .Z(n338) );
  GTECH_NOT U382 ( .A(n176), .Z(n300) );
  GTECH_AO21 U383 ( .A(period[2]), .B(n214), .C(reset), .Z(N11) );
  GTECH_AO21 U384 ( .A(period[1]), .B(n214), .C(reset), .Z(N10) );
  GTECH_NOT U385 ( .A(n339), .Z(n214) );
  GTECH_OR_NOT U386 ( .A(reset), .B(period_load), .Z(n339) );
endmodule

