
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
         n23, n26, n27, n30, n31, n81, n161, sub_85_carry_2_, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n179, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n81), .K(n81), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n81), .K(n81), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n81), .K(n81), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n81), .K(n81), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n81), .K(n81), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n81), .K(n81), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n81), .K(n81), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n81), .K(n81), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n81), .K(n81), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n81), .K(n81), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n81), .K(n81), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n179) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n177) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n176) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n164) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n163) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n81), .K(n81), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n81), .K(n81), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n81), .K(n81), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n81), .K(n81), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n81), .K(n81), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n81), .K(n81), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n81), .K(n81), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n81), .K(n81), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n81), .K(n81), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n81), .K(n81), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n81), .K(n81), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n81), .K(n81), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n161) );
  GTECH_ZERO U171 ( .Z(n81) );
  GTECH_OR_NOT U172 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U173 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U174 ( .A(n161), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U175 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U176 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U177 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U178 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U179 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U180 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U181 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U182 ( .A(n190), .B(n191), .Z(segments[6]) );
  GTECH_OA21 U183 ( .A(n192), .B(n193), .C(n194), .Z(n191) );
  GTECH_NAND3 U184 ( .A(n195), .B(n196), .C(n194), .Z(segments[5]) );
  GTECH_OAI21 U185 ( .A(n192), .B(n193), .C(n197), .Z(segments[3]) );
  GTECH_AND_NOT U186 ( .A(n198), .B(segments[4]), .Z(n197) );
  GTECH_OAI21 U187 ( .A(n199), .B(n200), .C(n195), .Z(segments[4]) );
  GTECH_NAND3 U188 ( .A(n193), .B(n201), .C(n194), .Z(segments[2]) );
  GTECH_NOT U189 ( .A(n202), .Z(n194) );
  GTECH_OAI21 U190 ( .A(n200), .B(n203), .C(n198), .Z(n202) );
  GTECH_NAND3 U191 ( .A(n193), .B(n201), .C(n204), .Z(segments[1]) );
  GTECH_OA21 U192 ( .A(n205), .B(n200), .C(n206), .Z(n204) );
  GTECH_NAND4 U193 ( .A(n206), .B(n198), .C(n193), .D(n195), .Z(segments[0])
         );
  GTECH_OR_NOT U194 ( .A(n201), .B(n207), .Z(n195) );
  GTECH_NAND3 U195 ( .A(n208), .B(n205), .C(n209), .Z(n193) );
  GTECH_NOT U196 ( .A(n199), .Z(n205) );
  GTECH_NAND4 U197 ( .A(n199), .B(n192), .C(n209), .D(n208), .Z(n198) );
  GTECH_NOT U198 ( .A(n207), .Z(n209) );
  GTECH_NOT U199 ( .A(n190), .Z(n206) );
  GTECH_OAI21 U200 ( .A(n200), .B(n210), .C(n196), .Z(n190) );
  GTECH_OR_NOT U201 ( .A(n208), .B(n211), .Z(n196) );
  GTECH_NOT U202 ( .A(n201), .Z(n211) );
  GTECH_OR_NOT U203 ( .A(n192), .B(n199), .Z(n201) );
  GTECH_NOT U204 ( .A(n212), .Z(n208) );
  GTECH_OR_NOT U205 ( .A(n199), .B(n203), .Z(n210) );
  GTECH_NOT U206 ( .A(n192), .Z(n203) );
  GTECH_MUX2 U207 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n161), .Z(n192) );
  GTECH_MUX2 U208 ( .A(n31), .B(n27), .S(n161), .Z(n199) );
  GTECH_OR_NOT U209 ( .A(n212), .B(n207), .Z(n200) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n161), .Z(n207) );
  GTECH_MUX2 U211 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n161), .Z(n212) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n213), .C(reset), .Z(N9) );
  GTECH_AND_NOT U213 ( .A(period[11]), .B(n214), .Z(N21) );
  GTECH_OR_NOT U214 ( .A(n213), .B(n215), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n213), .C(reset), .Z(N19) );
  GTECH_AND_NOT U216 ( .A(period[9]), .B(n214), .Z(N18) );
  GTECH_AND_NOT U217 ( .A(period[8]), .B(n214), .Z(N17) );
  GTECH_AND_NOT U218 ( .A(N170), .B(n23), .Z(N168) );
  GTECH_OR_NOT U219 ( .A(n216), .B(n217), .Z(N167) );
  GTECH_AND_NOT U220 ( .A(N170), .B(n21), .Z(N166) );
  GTECH_AND_NOT U221 ( .A(sub_85_carry_2_), .B(n218), .Z(N164) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n17), .Z(N162) );
  GTECH_NOT U223 ( .A(n218), .Z(N170) );
  GTECH_OR_NOT U224 ( .A(reset), .B(n216), .Z(n218) );
  GTECH_NOT U225 ( .A(n219), .Z(n216) );
  GTECH_AND_NOT U226 ( .A(N152), .B(n220), .Z(N160) );
  GTECH_XOR2 U227 ( .A(n221), .B(ten_count[3]), .Z(n220) );
  GTECH_OR_NOT U228 ( .A(n222), .B(ten_count[2]), .Z(n221) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n213), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n223), .B(n224), .C(n225), .Z(N159) );
  GTECH_AND_NOT U231 ( .A(N152), .B(n226), .Z(N158) );
  GTECH_XOR2 U232 ( .A(n222), .B(ten_count[2]), .Z(n226) );
  GTECH_AND_NOT U233 ( .A(n227), .B(n228), .Z(N156) );
  GTECH_OA21 U234 ( .A(ten_count[0]), .B(ten_count[1]), .C(n222), .Z(n227) );
  GTECH_OR_NOT U235 ( .A(n229), .B(ten_count[1]), .Z(n222) );
  GTECH_NOT U236 ( .A(ten_count[0]), .Z(n229) );
  GTECH_AND_NOT U237 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_OR_NOT U238 ( .A(n230), .B(n231), .Z(N151) );
  GTECH_OA21 U239 ( .A(n14), .B(n232), .C(n217), .Z(n231) );
  GTECH_NOT U240 ( .A(n233), .Z(n217) );
  GTECH_OAI21 U241 ( .A(n234), .B(n223), .C(n215), .Z(n233) );
  GTECH_AND_NOT U242 ( .A(period[6]), .B(n214), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n228), .B(n232), .C(n235), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n236), .B(n237), .S(n176), .Z(n235) );
  GTECH_OR3 U245 ( .A(n177), .B(n238), .C(n239), .Z(n237) );
  GTECH_AND_NOT U246 ( .A(n240), .B(n241), .Z(n236) );
  GTECH_MUX2 U247 ( .A(n228), .B(n238), .S(n177), .Z(n240) );
  GTECH_NAND3 U248 ( .A(n242), .B(n219), .C(n225), .Z(N147) );
  GTECH_OA21 U249 ( .A(n230), .B(n243), .C(n215), .Z(n225) );
  GTECH_OR_NOT U250 ( .A(n14), .B(n232), .Z(n243) );
  GTECH_NAND4 U251 ( .A(n177), .B(n176), .C(n163), .D(n244), .Z(n232) );
  GTECH_NOT U252 ( .A(n15), .Z(n230) );
  GTECH_OR_NOT U253 ( .A(n15), .B(n14), .Z(n219) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n242) );
  GTECH_MUX2 U255 ( .A(n241), .B(n245), .S(n177), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n239), .B(n238), .C(n246), .Z(n245) );
  GTECH_OAI21 U257 ( .A(n247), .B(n238), .C(n248), .Z(n241) );
  GTECH_AO21 U258 ( .A(n244), .B(n163), .C(n228), .Z(n248) );
  GTECH_NOT U259 ( .A(n239), .Z(n247) );
  GTECH_NAND3 U260 ( .A(n249), .B(n250), .C(n251), .Z(n239) );
  GTECH_NOT U261 ( .A(n163), .Z(n249) );
  GTECH_OR_NOT U262 ( .A(n252), .B(n246), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n244), .C(n163), .Z(n246) );
  GTECH_MUX2 U264 ( .A(n253), .B(n254), .S(n163), .Z(n252) );
  GTECH_AND3 U265 ( .A(n250), .B(N150), .C(n251), .Z(n254) );
  GTECH_NOT U266 ( .A(n23), .Z(n250) );
  GTECH_OAI21 U267 ( .A(n244), .B(n228), .C(n255), .Z(n253) );
  GTECH_OAI21 U268 ( .A(n23), .B(n256), .C(N150), .Z(n255) );
  GTECH_OR_NOT U269 ( .A(n23), .B(n257), .Z(n244) );
  GTECH_OAI21 U270 ( .A(n238), .B(n258), .C(n259), .Z(N142) );
  GTECH_MUX2 U271 ( .A(n260), .B(n261), .S(n23), .Z(n259) );
  GTECH_OR_NOT U272 ( .A(n262), .B(N152), .Z(n261) );
  GTECH_NOT U273 ( .A(n228), .Z(N152) );
  GTECH_XOR2 U274 ( .A(n23), .B(n251), .Z(n258) );
  GTECH_NOT U275 ( .A(n256), .Z(n251) );
  GTECH_NAND3 U276 ( .A(n263), .B(n264), .C(sub_85_carry_2_), .Z(n256) );
  GTECH_NOT U277 ( .A(n21), .Z(n264) );
  GTECH_OR_NOT U278 ( .A(n265), .B(n260), .Z(N140) );
  GTECH_OR_NOT U279 ( .A(n228), .B(n262), .Z(n260) );
  GTECH_NOT U280 ( .A(n257), .Z(n262) );
  GTECH_OR_NOT U281 ( .A(sub_85_carry_2_), .B(n21), .Z(n257) );
  GTECH_MUX2 U282 ( .A(n266), .B(n267), .S(n21), .Z(n265) );
  GTECH_AND3 U283 ( .A(n263), .B(N150), .C(sub_85_carry_2_), .Z(n267) );
  GTECH_NOT U284 ( .A(n238), .Z(N150) );
  GTECH_NOT U285 ( .A(n17), .Z(n263) );
  GTECH_OR_NOT U286 ( .A(n268), .B(n269), .Z(n266) );
  GTECH_MUX2 U287 ( .A(n238), .B(n228), .S(sub_85_carry_2_), .Z(n269) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n213), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n270), .B(n268), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n271), .Z(n268) );
  GTECH_OAI21 U291 ( .A(n17), .B(n238), .C(n228), .Z(n270) );
  GTECH_OAI21 U292 ( .A(n17), .B(n228), .C(n271), .Z(N136) );
  GTECH_OR_NOT U293 ( .A(n238), .B(n17), .Z(n271) );
  GTECH_OR_NOT U294 ( .A(reset), .B(n272), .Z(n238) );
  GTECH_OR_NOT U295 ( .A(N169), .B(n15), .Z(n228) );
  GTECH_OR_NOT U296 ( .A(n14), .B(n215), .Z(N169) );
  GTECH_AND_NOT U297 ( .A(n273), .B(n274), .Z(N134) );
  GTECH_OA21 U298 ( .A(n275), .B(n175), .C(n164), .Z(n274) );
  GTECH_OR_NOT U299 ( .A(n272), .B(n215), .Z(N133) );
  GTECH_NOT U300 ( .A(reset), .Z(n215) );
  GTECH_NOT U301 ( .A(n224), .Z(n272) );
  GTECH_OR_NOT U302 ( .A(n234), .B(n15), .Z(n224) );
  GTECH_NOT U303 ( .A(n14), .Z(n234) );
  GTECH_AND_NOT U304 ( .A(n276), .B(n277), .Z(N132) );
  GTECH_XOR2 U305 ( .A(n275), .B(n175), .Z(n276) );
  GTECH_OR_NOT U306 ( .A(n165), .B(n278), .Z(n275) );
  GTECH_NOT U307 ( .A(n279), .Z(n278) );
  GTECH_AND_NOT U308 ( .A(n280), .B(n277), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n279), .B(n165), .Z(n280) );
  GTECH_OR_NOT U310 ( .A(n166), .B(n281), .Z(n279) );
  GTECH_NOT U311 ( .A(n282), .Z(n281) );
  GTECH_AND_NOT U312 ( .A(period[4]), .B(n214), .Z(N13) );
  GTECH_AND_NOT U313 ( .A(n283), .B(n277), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n282), .B(n166), .Z(n283) );
  GTECH_OR_NOT U315 ( .A(n167), .B(n284), .Z(n282) );
  GTECH_NOT U316 ( .A(n285), .Z(n284) );
  GTECH_AND_NOT U317 ( .A(n286), .B(n277), .Z(N126) );
  GTECH_XOR2 U318 ( .A(n285), .B(n167), .Z(n286) );
  GTECH_OR_NOT U319 ( .A(n168), .B(n287), .Z(n285) );
  GTECH_NOT U320 ( .A(n288), .Z(n287) );
  GTECH_AND_NOT U321 ( .A(n289), .B(n277), .Z(N124) );
  GTECH_XOR2 U322 ( .A(n288), .B(n168), .Z(n289) );
  GTECH_OR_NOT U323 ( .A(n169), .B(n290), .Z(n288) );
  GTECH_NOT U324 ( .A(n291), .Z(n290) );
  GTECH_AND_NOT U325 ( .A(n292), .B(n277), .Z(N122) );
  GTECH_XOR2 U326 ( .A(n291), .B(n169), .Z(n292) );
  GTECH_OR_NOT U327 ( .A(n170), .B(n293), .Z(n291) );
  GTECH_NOT U328 ( .A(n294), .Z(n293) );
  GTECH_AND_NOT U329 ( .A(n295), .B(n277), .Z(N120) );
  GTECH_XOR2 U330 ( .A(n294), .B(n170), .Z(n295) );
  GTECH_OR_NOT U331 ( .A(n171), .B(n296), .Z(n294) );
  GTECH_NOT U332 ( .A(n297), .Z(n296) );
  GTECH_AO21 U333 ( .A(period[3]), .B(n213), .C(reset), .Z(N12) );
  GTECH_AND_NOT U334 ( .A(n298), .B(n277), .Z(N118) );
  GTECH_XOR2 U335 ( .A(n297), .B(n171), .Z(n298) );
  GTECH_NAND3 U336 ( .A(n299), .B(n300), .C(n301), .Z(n297) );
  GTECH_NOT U337 ( .A(n172), .Z(n301) );
  GTECH_OAI22 U338 ( .A(n172), .B(n302), .C(n277), .D(n303), .Z(N116) );
  GTECH_MUX2 U339 ( .A(n299), .B(n304), .S(n172), .Z(n303) );
  GTECH_OR_NOT U340 ( .A(n174), .B(n299), .Z(n304) );
  GTECH_MUX2 U341 ( .A(N112), .B(n305), .S(n173), .Z(N114) );
  GTECH_AND_NOT U342 ( .A(n273), .B(n174), .Z(n305) );
  GTECH_NOT U343 ( .A(n302), .Z(N112) );
  GTECH_OR_NOT U344 ( .A(n300), .B(n273), .Z(n302) );
  GTECH_NOT U345 ( .A(n277), .Z(n273) );
  GTECH_OR_NOT U346 ( .A(reset), .B(n223), .Z(n277) );
  GTECH_NOT U347 ( .A(n306), .Z(n223) );
  GTECH_AOI222 U348 ( .A(n307), .B(n308), .C(update_period[11]), .D(n164), .E(
        n309), .F(n310), .Z(n306) );
  GTECH_AO22 U349 ( .A(n175), .B(update_period[10]), .C(n311), .D(n312), .Z(
        n309) );
  GTECH_AO21 U350 ( .A(n165), .B(update_period[9]), .C(n313), .Z(n312) );
  GTECH_AND3 U351 ( .A(n314), .B(update_period[8]), .C(n166), .Z(n313) );
  GTECH_AND3 U352 ( .A(n310), .B(n314), .C(n311), .Z(n308) );
  GTECH_OR_NOT U353 ( .A(n175), .B(n315), .Z(n311) );
  GTECH_NOT U354 ( .A(update_period[10]), .Z(n315) );
  GTECH_OR_NOT U355 ( .A(n165), .B(n316), .Z(n314) );
  GTECH_NOT U356 ( .A(update_period[9]), .Z(n316) );
  GTECH_OR_NOT U357 ( .A(n164), .B(n317), .Z(n310) );
  GTECH_NOT U358 ( .A(update_period[11]), .Z(n317) );
  GTECH_OA22 U359 ( .A(n166), .B(update_period[8]), .C(n318), .D(n319), .Z(
        n307) );
  GTECH_AO21 U360 ( .A(n167), .B(update_period[7]), .C(n320), .Z(n319) );
  GTECH_AND3 U361 ( .A(n321), .B(update_period[6]), .C(n168), .Z(n320) );
  GTECH_OAI2N2 U362 ( .A(n322), .B(n323), .C(n324), .D(n325), .Z(n318) );
  GTECH_ADD_ABC U363 ( .A(n326), .B(n169), .C(update_period[5]), .COUT(n325)
         );
  GTECH_ADD_AB U364 ( .A(update_period[4]), .B(n170), .COUT(n326) );
  GTECH_OAI21 U365 ( .A(update_period[4]), .B(n170), .C(n324), .Z(n323) );
  GTECH_NOT U366 ( .A(n327), .Z(n324) );
  GTECH_OAI21 U367 ( .A(update_period[6]), .B(n168), .C(n321), .Z(n327) );
  GTECH_OR_NOT U368 ( .A(n167), .B(n328), .Z(n321) );
  GTECH_NOT U369 ( .A(update_period[7]), .Z(n328) );
  GTECH_OAI22 U370 ( .A(update_period[5]), .B(n169), .C(n329), .D(n330), .Z(
        n322) );
  GTECH_AO21 U371 ( .A(n171), .B(update_period[3]), .C(n331), .Z(n330) );
  GTECH_AND3 U372 ( .A(n332), .B(update_period[2]), .C(n172), .Z(n331) );
  GTECH_AND3 U373 ( .A(n333), .B(n334), .C(n332), .Z(n329) );
  GTECH_OR_NOT U374 ( .A(n171), .B(n335), .Z(n332) );
  GTECH_NOT U375 ( .A(update_period[3]), .Z(n335) );
  GTECH_OAI21 U376 ( .A(n336), .B(n299), .C(n179), .Z(n334) );
  GTECH_NOT U377 ( .A(n173), .Z(n299) );
  GTECH_OA21 U378 ( .A(n172), .B(update_period[2]), .C(n337), .Z(n333) );
  GTECH_OR_NOT U379 ( .A(n173), .B(n336), .Z(n337) );
  GTECH_OR_NOT U380 ( .A(n300), .B(update_period[0]), .Z(n336) );
  GTECH_NOT U381 ( .A(n174), .Z(n300) );
  GTECH_AO21 U382 ( .A(period[2]), .B(n213), .C(reset), .Z(N11) );
  GTECH_AO21 U383 ( .A(period[1]), .B(n213), .C(reset), .Z(N10) );
  GTECH_NOT U384 ( .A(n214), .Z(n213) );
  GTECH_OR_NOT U385 ( .A(reset), .B(period_load), .Z(n214) );
endmodule

