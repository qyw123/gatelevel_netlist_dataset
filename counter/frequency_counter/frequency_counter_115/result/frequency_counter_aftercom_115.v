
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
         n25, n26, n28, n29, n30, n32, n33, n83, n163, n165, sub_85_carry_2_,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n182, n193, n194, n195, n196, n197, n198,
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
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343;
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
        .CP(clk), .Q(update_period[1]), .QN(n182) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n83), .K(n83), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n83), .K(n83), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n180) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n83), .K(n83), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n179) );
  GTECH_FJK1S state_reg_0_ ( .J(n83), .K(n83), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n83), .K(n83), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n83), .K(n83), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n178) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n83), .K(n83), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n177) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n83), .K(n83), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n83), .K(n83), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n83), .K(n83), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n83), .K(n83), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n83), .K(n83), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n83), .K(n83), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n83), .K(n83), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n83), .K(n83), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n83), .K(n83), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n83), .K(n83), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n167) );
  GTECH_FJK1S update_digits_reg ( .J(n83), .K(n83), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n83), .K(n83), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n166) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n83), .K(n83), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n83), .K(n83), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n83), .K(n83), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n83), .K(n83), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n83), .K(n83), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n83), .K(n83), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n83), .K(n83), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n83), .K(n83), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n83), .K(n83), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n83), .K(n83), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n83), .K(n83), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n83), .K(n83), .TI(N160), .TE(N159), .CP(
        clk), .Q(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n83), .K(n83), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n163) );
  GTECH_ZERO U173 ( .Z(n83) );
  GTECH_NAND2 U174 ( .A(n15), .B(n193), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U175 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U176 ( .A(n163), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U177 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U178 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U179 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U180 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U181 ( .A(n25), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U182 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U183 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND4 U184 ( .A(n194), .B(n195), .C(n196), .D(n197), .Z(segments[6])
         );
  GTECH_NAND2 U185 ( .A(n198), .B(n194), .Z(segments[5]) );
  GTECH_OA21 U186 ( .A(n199), .B(n200), .C(n197), .Z(n198) );
  GTECH_NAND3 U187 ( .A(n196), .B(n201), .C(n202), .Z(segments[3]) );
  GTECH_NOT U188 ( .A(segments[4]), .Z(n201) );
  GTECH_OAI21 U189 ( .A(n203), .B(n197), .C(n204), .Z(segments[4]) );
  GTECH_NAND2 U190 ( .A(n205), .B(n206), .Z(n196) );
  GTECH_NOT U191 ( .A(n207), .Z(n205) );
  GTECH_NAND4 U192 ( .A(n202), .B(n207), .C(n197), .D(n200), .Z(segments[2])
         );
  GTECH_NAND3 U193 ( .A(n207), .B(n200), .C(n208), .Z(segments[1]) );
  GTECH_OA21 U194 ( .A(n209), .B(n197), .C(n195), .Z(n208) );
  GTECH_NAND3 U195 ( .A(n210), .B(n211), .C(n212), .Z(n197) );
  GTECH_NAND3 U196 ( .A(n194), .B(n207), .C(n204), .Z(segments[0]) );
  GTECH_NOT U197 ( .A(n213), .Z(n204) );
  GTECH_OAI21 U198 ( .A(n199), .B(n200), .C(n195), .Z(n213) );
  GTECH_NAND4 U199 ( .A(n209), .B(n206), .C(n212), .D(n210), .Z(n195) );
  GTECH_NAND3 U200 ( .A(n210), .B(n199), .C(n209), .Z(n207) );
  GTECH_NOT U201 ( .A(n214), .Z(n194) );
  GTECH_OAI21 U202 ( .A(n210), .B(n200), .C(n202), .Z(n214) );
  GTECH_NAND4 U203 ( .A(n210), .B(n211), .C(n203), .D(n199), .Z(n202) );
  GTECH_NOT U204 ( .A(n212), .Z(n199) );
  GTECH_MUX2 U205 ( .A(n30), .B(n26), .S(n163), .Z(n212) );
  GTECH_NOT U206 ( .A(n206), .Z(n211) );
  GTECH_NAND2 U207 ( .A(n206), .B(n203), .Z(n200) );
  GTECH_NOT U208 ( .A(n209), .Z(n203) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n163), .Z(n209) );
  GTECH_MUX2 U210 ( .A(n32), .B(n28), .S(n163), .Z(n206) );
  GTECH_MUX2 U211 ( .A(n33), .B(n29), .S(n163), .Z(n210) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND_NOT U213 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n193), .B(n216), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND_NOT U216 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND_NOT U217 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND_NOT U218 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n217), .B(n218), .Z(N167) );
  GTECH_AND_NOT U220 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U221 ( .A(sub_85_carry_2_), .B(n219), .Z(N164) );
  GTECH_AND_NOT U222 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U223 ( .A(n219), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n220), .B(n193), .Z(n219) );
  GTECH_NOT U225 ( .A(n218), .Z(n220) );
  GTECH_AND_NOT U226 ( .A(N152), .B(n221), .Z(N160) );
  GTECH_XOR2 U227 ( .A(n222), .B(n25), .Z(n221) );
  GTECH_OR_NOT U228 ( .A(n223), .B(ten_count[2]), .Z(n222) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n224), .B(n225), .C(n226), .Z(N159) );
  GTECH_AND_NOT U231 ( .A(N152), .B(n227), .Z(N158) );
  GTECH_XOR2 U232 ( .A(n223), .B(ten_count[2]), .Z(n227) );
  GTECH_AND_NOT U233 ( .A(n228), .B(n229), .Z(N156) );
  GTECH_OA21 U234 ( .A(ten_count[0]), .B(ten_count[1]), .C(n223), .Z(n228) );
  GTECH_NAND2 U235 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n223) );
  GTECH_AND_NOT U236 ( .A(N152), .B(ten_count[0]), .Z(N154) );
  GTECH_NAND2 U237 ( .A(n230), .B(n165), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n231), .C(n217), .Z(n230) );
  GTECH_NOT U239 ( .A(n232), .Z(n217) );
  GTECH_OAI21 U240 ( .A(n233), .B(n224), .C(n193), .Z(n232) );
  GTECH_AND_NOT U241 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n229), .B(n231), .C(n234), .Z(N148) );
  GTECH_MUX2 U243 ( .A(n235), .B(n236), .S(n179), .Z(n234) );
  GTECH_NAND3 U244 ( .A(n237), .B(n238), .C(N150), .Z(n236) );
  GTECH_NOT U245 ( .A(n180), .Z(n238) );
  GTECH_AND_NOT U246 ( .A(n239), .B(n240), .Z(n235) );
  GTECH_MUX2 U247 ( .A(n229), .B(n241), .S(n180), .Z(n239) );
  GTECH_NAND3 U248 ( .A(n242), .B(n218), .C(n226), .Z(N147) );
  GTECH_AND_NOT U249 ( .A(n193), .B(n243), .Z(n226) );
  GTECH_AND3 U250 ( .A(n233), .B(n165), .C(n231), .Z(n243) );
  GTECH_NAND4 U251 ( .A(n180), .B(n179), .C(n166), .D(n244), .Z(n231) );
  GTECH_NAND2 U252 ( .A(n14), .B(n245), .Z(n218) );
  GTECH_NOT U253 ( .A(n165), .Z(n245) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n242) );
  GTECH_MUX2 U255 ( .A(n240), .B(n246), .S(n180), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n247), .B(n241), .C(n248), .Z(n246) );
  GTECH_OAI21 U257 ( .A(n237), .B(n241), .C(n249), .Z(n240) );
  GTECH_AO21 U258 ( .A(n244), .B(n166), .C(n229), .Z(n249) );
  GTECH_NOT U259 ( .A(n247), .Z(n237) );
  GTECH_NAND3 U260 ( .A(n250), .B(n251), .C(n252), .Z(n247) );
  GTECH_NOT U261 ( .A(n166), .Z(n250) );
  GTECH_NAND2 U262 ( .A(n253), .B(n248), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n244), .C(n166), .Z(n248) );
  GTECH_MUX2 U264 ( .A(n254), .B(n255), .S(n166), .Z(n253) );
  GTECH_NAND3 U265 ( .A(n252), .B(n251), .C(N150), .Z(n255) );
  GTECH_OA21 U266 ( .A(n229), .B(n244), .C(n256), .Z(n254) );
  GTECH_OAI21 U267 ( .A(n22), .B(n257), .C(N150), .Z(n256) );
  GTECH_NAND2 U268 ( .A(n258), .B(n251), .Z(n244) );
  GTECH_NOT U269 ( .A(n22), .Z(n251) );
  GTECH_OAI21 U270 ( .A(n241), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U271 ( .A(n261), .B(n262), .S(n22), .Z(n260) );
  GTECH_NAND2 U272 ( .A(N152), .B(n258), .Z(n262) );
  GTECH_XOR2 U273 ( .A(n22), .B(n252), .Z(n259) );
  GTECH_NOT U274 ( .A(n257), .Z(n252) );
  GTECH_NAND3 U275 ( .A(n263), .B(n264), .C(sub_85_carry_2_), .Z(n257) );
  GTECH_NOT U276 ( .A(n20), .Z(n264) );
  GTECH_NAND2 U277 ( .A(n265), .B(n261), .Z(N140) );
  GTECH_NAND2 U278 ( .A(n266), .B(N152), .Z(n261) );
  GTECH_NOT U279 ( .A(n229), .Z(N152) );
  GTECH_NOT U280 ( .A(n258), .Z(n266) );
  GTECH_NAND2 U281 ( .A(n20), .B(n267), .Z(n258) );
  GTECH_NOT U282 ( .A(sub_85_carry_2_), .Z(n267) );
  GTECH_MUX2 U283 ( .A(n268), .B(n269), .S(n20), .Z(n265) );
  GTECH_NAND3 U284 ( .A(sub_85_carry_2_), .B(n263), .C(N150), .Z(n269) );
  GTECH_NOT U285 ( .A(n16), .Z(n263) );
  GTECH_AND_NOT U286 ( .A(n270), .B(n271), .Z(n268) );
  GTECH_MUX2 U287 ( .A(n241), .B(n229), .S(sub_85_carry_2_), .Z(n270) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n272), .B(n271), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n273), .Z(n271) );
  GTECH_OAI21 U291 ( .A(n16), .B(n241), .C(n229), .Z(n272) );
  GTECH_OAI21 U292 ( .A(n16), .B(n229), .C(n273), .Z(N136) );
  GTECH_NAND2 U293 ( .A(n16), .B(N150), .Z(n273) );
  GTECH_NOT U294 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U295 ( .A(n274), .B(n193), .Z(n241) );
  GTECH_NOT U296 ( .A(n225), .Z(n274) );
  GTECH_NAND2 U297 ( .A(n165), .B(n275), .Z(n229) );
  GTECH_NOT U298 ( .A(N169), .Z(n275) );
  GTECH_NAND2 U299 ( .A(n193), .B(n233), .Z(N169) );
  GTECH_NOT U300 ( .A(n14), .Z(n233) );
  GTECH_AND_NOT U301 ( .A(n276), .B(n277), .Z(N134) );
  GTECH_OA21 U302 ( .A(n278), .B(n178), .C(n167), .Z(n277) );
  GTECH_NAND2 U303 ( .A(n193), .B(n225), .Z(N133) );
  GTECH_NAND2 U304 ( .A(n165), .B(n14), .Z(n225) );
  GTECH_AND_NOT U305 ( .A(n279), .B(n280), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n278), .B(n178), .Z(n279) );
  GTECH_NAND2 U307 ( .A(n281), .B(n282), .Z(n278) );
  GTECH_NOT U308 ( .A(n283), .Z(n281) );
  GTECH_AND_NOT U309 ( .A(n284), .B(n280), .Z(N130) );
  GTECH_XOR2 U310 ( .A(n283), .B(n168), .Z(n284) );
  GTECH_NAND2 U311 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U312 ( .A(n169), .Z(n286) );
  GTECH_NOT U313 ( .A(n287), .Z(n285) );
  GTECH_AND_NOT U314 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND_NOT U315 ( .A(n288), .B(n280), .Z(N128) );
  GTECH_XOR2 U316 ( .A(n287), .B(n169), .Z(n288) );
  GTECH_NAND2 U317 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U318 ( .A(n291), .Z(n289) );
  GTECH_AND_NOT U319 ( .A(n292), .B(n280), .Z(N126) );
  GTECH_XOR2 U320 ( .A(n291), .B(n170), .Z(n292) );
  GTECH_NAND2 U321 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U322 ( .A(n171), .Z(n294) );
  GTECH_NOT U323 ( .A(n295), .Z(n293) );
  GTECH_AND_NOT U324 ( .A(n296), .B(n280), .Z(N124) );
  GTECH_XOR2 U325 ( .A(n295), .B(n171), .Z(n296) );
  GTECH_NAND2 U326 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U327 ( .A(n172), .Z(n298) );
  GTECH_NOT U328 ( .A(n299), .Z(n297) );
  GTECH_AND_NOT U329 ( .A(n300), .B(n280), .Z(N122) );
  GTECH_XOR2 U330 ( .A(n299), .B(n172), .Z(n300) );
  GTECH_NAND2 U331 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U332 ( .A(n303), .Z(n301) );
  GTECH_AND_NOT U333 ( .A(n304), .B(n280), .Z(N120) );
  GTECH_XOR2 U334 ( .A(n303), .B(n173), .Z(n304) );
  GTECH_NAND2 U335 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U336 ( .A(n307), .Z(n305) );
  GTECH_AO21 U337 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND_NOT U338 ( .A(n308), .B(n280), .Z(N118) );
  GTECH_XOR2 U339 ( .A(n307), .B(n174), .Z(n308) );
  GTECH_NAND3 U340 ( .A(n309), .B(n310), .C(n311), .Z(n307) );
  GTECH_NOT U341 ( .A(n175), .Z(n311) );
  GTECH_OAI22 U342 ( .A(n175), .B(n312), .C(n280), .D(n313), .Z(N116) );
  GTECH_MUX2 U343 ( .A(n309), .B(n314), .S(n175), .Z(n313) );
  GTECH_NAND2 U344 ( .A(n309), .B(n310), .Z(n314) );
  GTECH_NOT U345 ( .A(n177), .Z(n310) );
  GTECH_MUX2 U346 ( .A(N112), .B(n315), .S(n176), .Z(N114) );
  GTECH_AND_NOT U347 ( .A(n276), .B(n177), .Z(n315) );
  GTECH_NOT U348 ( .A(n312), .Z(N112) );
  GTECH_NAND2 U349 ( .A(n276), .B(n177), .Z(n312) );
  GTECH_NOT U350 ( .A(n280), .Z(n276) );
  GTECH_NAND2 U351 ( .A(n224), .B(n193), .Z(n280) );
  GTECH_OAI21 U352 ( .A(n316), .B(n317), .C(n318), .Z(n224) );
  GTECH_AOI2N2 U353 ( .A(n167), .B(update_period[11]), .C(n319), .D(n320), .Z(
        n318) );
  GTECH_AOI222 U354 ( .A(update_period[10]), .B(n178), .C(update_period[9]), 
        .D(n168), .E(n321), .F(update_period[8]), .Z(n320) );
  GTECH_ADD_AB U355 ( .A(n169), .B(n322), .COUT(n321) );
  GTECH_AO21 U356 ( .A(n323), .B(n324), .C(n319), .Z(n317) );
  GTECH_OAI22 U357 ( .A(update_period[10]), .B(n178), .C(update_period[11]), 
        .D(n167), .Z(n319) );
  GTECH_OA21 U358 ( .A(n290), .B(n325), .C(n326), .Z(n324) );
  GTECH_NAND3 U359 ( .A(n327), .B(update_period[6]), .C(n171), .Z(n326) );
  GTECH_AOI2N2 U360 ( .A(n328), .B(n329), .C(n330), .D(n331), .Z(n323) );
  GTECH_OAI21 U361 ( .A(update_period[4]), .B(n173), .C(n328), .Z(n331) );
  GTECH_OAI22 U362 ( .A(update_period[5]), .B(n172), .C(n332), .D(n333), .Z(
        n330) );
  GTECH_OAI21 U363 ( .A(n306), .B(n334), .C(n335), .Z(n333) );
  GTECH_NAND3 U364 ( .A(n336), .B(update_period[2]), .C(n175), .Z(n335) );
  GTECH_AND3 U365 ( .A(n337), .B(n338), .C(n336), .Z(n332) );
  GTECH_NAND2 U366 ( .A(n334), .B(n306), .Z(n336) );
  GTECH_NOT U367 ( .A(n174), .Z(n306) );
  GTECH_NOT U368 ( .A(update_period[3]), .Z(n334) );
  GTECH_OAI21 U369 ( .A(n339), .B(n309), .C(n182), .Z(n338) );
  GTECH_NOT U370 ( .A(n176), .Z(n309) );
  GTECH_OA21 U371 ( .A(n175), .B(update_period[2]), .C(n340), .Z(n337) );
  GTECH_OR_NOT U372 ( .A(n176), .B(n339), .Z(n340) );
  GTECH_NAND2 U373 ( .A(update_period[0]), .B(n177), .Z(n339) );
  GTECH_ADD_ABC U374 ( .A(n341), .B(n172), .C(update_period[5]), .COUT(n329)
         );
  GTECH_AND_NOT U375 ( .A(update_period[4]), .B(n302), .Z(n341) );
  GTECH_NOT U376 ( .A(n173), .Z(n302) );
  GTECH_NOT U377 ( .A(n342), .Z(n328) );
  GTECH_OAI21 U378 ( .A(update_period[6]), .B(n171), .C(n327), .Z(n342) );
  GTECH_NAND2 U379 ( .A(n325), .B(n290), .Z(n327) );
  GTECH_NOT U380 ( .A(n170), .Z(n290) );
  GTECH_NOT U381 ( .A(update_period[7]), .Z(n325) );
  GTECH_OAI21 U382 ( .A(update_period[8]), .B(n169), .C(n322), .Z(n316) );
  GTECH_NAND2 U383 ( .A(n343), .B(n282), .Z(n322) );
  GTECH_NOT U384 ( .A(n168), .Z(n282) );
  GTECH_NOT U385 ( .A(update_period[9]), .Z(n343) );
  GTECH_AO21 U386 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U387 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U388 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U389 ( .A(period_load), .B(n193), .Z(n216) );
  GTECH_NOT U390 ( .A(reset), .Z(n193) );
endmodule

