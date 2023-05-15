
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
         n23, n26, n28, n30, n32, n34, n83, n162, sub_85_carry_2_, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n181, n192, n193, n194, n195, n196, n197, n198, n199,
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
         n343, n344, n345;
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
        .CP(clk), .Q(sub_85_carry_2_) );
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
  GTECH_NAND3 U192 ( .A(n194), .B(n207), .C(n204), .Z(segments[1]) );
  GTECH_NOT U193 ( .A(n208), .Z(n204) );
  GTECH_OAI21 U194 ( .A(n200), .B(n209), .C(n197), .Z(n208) );
  GTECH_NAND3 U195 ( .A(n210), .B(n209), .C(n196), .Z(n207) );
  GTECH_NAND3 U196 ( .A(n202), .B(n198), .C(n211), .Z(segments[0]) );
  GTECH_OA21 U197 ( .A(n200), .B(n209), .C(n194), .Z(n211) );
  GTECH_NOT U198 ( .A(n212), .Z(n194) );
  GTECH_OAI22 U199 ( .A(n199), .B(n200), .C(n196), .D(n197), .Z(n212) );
  GTECH_OR_NOT U200 ( .A(n210), .B(n196), .Z(n200) );
  GTECH_OR_NOT U201 ( .A(n203), .B(n213), .Z(n198) );
  GTECH_NOT U202 ( .A(n197), .Z(n213) );
  GTECH_OR_NOT U203 ( .A(n199), .B(n210), .Z(n197) );
  GTECH_NAND4 U204 ( .A(n199), .B(n203), .C(n210), .D(n196), .Z(n202) );
  GTECH_NOT U205 ( .A(n214), .Z(n196) );
  GTECH_OAI22 U206 ( .A(n215), .B(n30), .C(n162), .D(n34), .Z(n214) );
  GTECH_NOT U207 ( .A(n216), .Z(n210) );
  GTECH_OAI22 U208 ( .A(n215), .B(n28), .C(n162), .D(n32), .Z(n216) );
  GTECH_NOT U209 ( .A(n209), .Z(n203) );
  GTECH_OAI22 U210 ( .A(seven_segment0_ten_count_reg[0]), .B(n162), .C(
        seven_segment0_unit_count_reg[0]), .D(n215), .Z(n209) );
  GTECH_NOT U211 ( .A(n205), .Z(n199) );
  GTECH_OAI22 U212 ( .A(seven_segment0_ten_count_reg[2]), .B(n162), .C(
        seven_segment0_unit_count_reg[2]), .D(n215), .Z(n205) );
  GTECH_NOT U213 ( .A(n162), .Z(n215) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n217), .C(reset), .Z(N9) );
  GTECH_AND2 U215 ( .A(period[11]), .B(n217), .Z(N21) );
  GTECH_OR_NOT U216 ( .A(n217), .B(n192), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n217), .C(reset), .Z(N19) );
  GTECH_AND2 U218 ( .A(period[9]), .B(n217), .Z(N18) );
  GTECH_AND2 U219 ( .A(period[8]), .B(n217), .Z(N17) );
  GTECH_AND2 U220 ( .A(N170), .B(n218), .Z(N168) );
  GTECH_OR_NOT U221 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_AND2 U222 ( .A(N170), .B(n221), .Z(N166) );
  GTECH_AND2 U223 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U224 ( .A(N170), .B(n222), .Z(N162) );
  GTECH_NOT U225 ( .A(n223), .Z(N170) );
  GTECH_OR_NOT U226 ( .A(reset), .B(n219), .Z(n223) );
  GTECH_NOT U227 ( .A(n224), .Z(n219) );
  GTECH_OAI22 U228 ( .A(n225), .B(n226), .C(n227), .D(n228), .Z(N160) );
  GTECH_NOT U229 ( .A(n26), .Z(n228) );
  GTECH_OA21 U230 ( .A(n229), .B(ten_count[2]), .C(n230), .Z(n227) );
  GTECH_OR_NOT U231 ( .A(n26), .B(ten_count[2]), .Z(n226) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n217), .C(reset), .Z(N16) );
  GTECH_OAI21 U233 ( .A(n231), .B(n232), .C(n233), .Z(N159) );
  GTECH_OAI22 U234 ( .A(n230), .B(n234), .C(ten_count[2]), .D(n225), .Z(N158)
         );
  GTECH_NAND3 U235 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n225) );
  GTECH_NOT U236 ( .A(ten_count[2]), .Z(n234) );
  GTECH_NOT U237 ( .A(n235), .Z(n230) );
  GTECH_OAI21 U238 ( .A(ten_count[1]), .B(n229), .C(n236), .Z(n235) );
  GTECH_OAI21 U239 ( .A(n237), .B(n236), .C(n238), .Z(N156) );
  GTECH_NAND3 U240 ( .A(N152), .B(ten_count[0]), .C(n237), .Z(n238) );
  GTECH_NOT U241 ( .A(ten_count[1]), .Z(n237) );
  GTECH_NOT U242 ( .A(n236), .Z(N154) );
  GTECH_OR_NOT U243 ( .A(ten_count[0]), .B(N152), .Z(n236) );
  GTECH_OR_NOT U244 ( .A(n239), .B(n240), .Z(N151) );
  GTECH_OA21 U245 ( .A(n14), .B(n241), .C(n220), .Z(n240) );
  GTECH_NOT U246 ( .A(n242), .Z(n220) );
  GTECH_OAI21 U247 ( .A(n243), .B(n231), .C(n192), .Z(n242) );
  GTECH_AND2 U248 ( .A(period[6]), .B(n217), .Z(N15) );
  GTECH_OAI21 U249 ( .A(n229), .B(n241), .C(n244), .Z(N148) );
  GTECH_OA21 U250 ( .A(n178), .B(n245), .C(n246), .Z(n244) );
  GTECH_NAND4 U251 ( .A(n247), .B(N150), .C(n248), .D(n178), .Z(n246) );
  GTECH_AND_NOT U252 ( .A(n249), .B(n250), .Z(n245) );
  GTECH_OA22 U253 ( .A(n251), .B(n247), .C(n229), .D(n179), .Z(n249) );
  GTECH_NAND3 U254 ( .A(n252), .B(n224), .C(n233), .Z(N147) );
  GTECH_OA21 U255 ( .A(n239), .B(n253), .C(n192), .Z(n233) );
  GTECH_OR_NOT U256 ( .A(n14), .B(n241), .Z(n253) );
  GTECH_NAND4 U257 ( .A(n179), .B(n178), .C(n165), .D(n254), .Z(n241) );
  GTECH_NOT U258 ( .A(n15), .Z(n239) );
  GTECH_OR_NOT U259 ( .A(n15), .B(n14), .Z(n224) );
  GTECH_NAND3 U260 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n252) );
  GTECH_OAI22 U261 ( .A(n255), .B(n247), .C(n179), .D(n256), .Z(N146) );
  GTECH_NOT U262 ( .A(n250), .Z(n256) );
  GTECH_OAI21 U263 ( .A(n248), .B(n251), .C(n257), .Z(n250) );
  GTECH_AO21 U264 ( .A(n254), .B(n165), .C(n229), .Z(n257) );
  GTECH_NOT U265 ( .A(n258), .Z(n248) );
  GTECH_NOT U266 ( .A(n179), .Z(n247) );
  GTECH_OA21 U267 ( .A(n258), .B(n251), .C(n259), .Z(n255) );
  GTECH_NAND3 U268 ( .A(n260), .B(n218), .C(n261), .Z(n258) );
  GTECH_NOT U269 ( .A(n165), .Z(n260) );
  GTECH_OR_NOT U270 ( .A(n262), .B(n259), .Z(N144) );
  GTECH_NAND3 U271 ( .A(N152), .B(n254), .C(n165), .Z(n259) );
  GTECH_OAI21 U272 ( .A(n263), .B(n165), .C(n264), .Z(n262) );
  GTECH_NAND4 U273 ( .A(n261), .B(n218), .C(N150), .D(n165), .Z(n264) );
  GTECH_NOT U274 ( .A(n23), .Z(n218) );
  GTECH_NOT U275 ( .A(n265), .Z(n261) );
  GTECH_OA21 U276 ( .A(n254), .B(n229), .C(n266), .Z(n263) );
  GTECH_OAI21 U277 ( .A(n23), .B(n265), .C(N150), .Z(n266) );
  GTECH_OR_NOT U278 ( .A(n23), .B(n267), .Z(n254) );
  GTECH_OAI21 U279 ( .A(n251), .B(n268), .C(n269), .Z(N142) );
  GTECH_OA21 U280 ( .A(n23), .B(n270), .C(n271), .Z(n269) );
  GTECH_NAND3 U281 ( .A(N152), .B(n267), .C(n23), .Z(n271) );
  GTECH_NOT U282 ( .A(n229), .Z(N152) );
  GTECH_XNOR2 U283 ( .A(n265), .B(n23), .Z(n268) );
  GTECH_NAND3 U284 ( .A(n222), .B(n221), .C(sub_85_carry_2_), .Z(n265) );
  GTECH_NOT U285 ( .A(n21), .Z(n221) );
  GTECH_NAND3 U286 ( .A(n270), .B(n272), .C(n273), .Z(N140) );
  GTECH_NAND4 U287 ( .A(sub_85_carry_2_), .B(n222), .C(N150), .D(n21), .Z(n273) );
  GTECH_NOT U288 ( .A(n251), .Z(N150) );
  GTECH_NOT U289 ( .A(n17), .Z(n222) );
  GTECH_AO21 U290 ( .A(n274), .B(n275), .C(n21), .Z(n272) );
  GTECH_OA22 U291 ( .A(sub_85_carry_2_), .B(n251), .C(n276), .D(n229), .Z(n275) );
  GTECH_OR_NOT U292 ( .A(n229), .B(n277), .Z(n270) );
  GTECH_NOT U293 ( .A(n267), .Z(n277) );
  GTECH_OR_NOT U294 ( .A(sub_85_carry_2_), .B(n21), .Z(n267) );
  GTECH_AO21 U295 ( .A(period[5]), .B(n217), .C(reset), .Z(N14) );
  GTECH_OAI22 U296 ( .A(sub_85_carry_2_), .B(n278), .C(n276), .D(n274), .Z(
        N138) );
  GTECH_NOT U297 ( .A(sub_85_carry_2_), .Z(n276) );
  GTECH_OA21 U298 ( .A(n17), .B(n251), .C(n229), .Z(n278) );
  GTECH_OAI21 U299 ( .A(n17), .B(n229), .C(n274), .Z(N136) );
  GTECH_OR_NOT U300 ( .A(n251), .B(n17), .Z(n274) );
  GTECH_OR_NOT U301 ( .A(reset), .B(n279), .Z(n251) );
  GTECH_OR_NOT U302 ( .A(N169), .B(n15), .Z(n229) );
  GTECH_OR_NOT U303 ( .A(n14), .B(n192), .Z(N169) );
  GTECH_AND2 U304 ( .A(n280), .B(n281), .Z(N134) );
  GTECH_OAI21 U305 ( .A(n177), .B(n282), .C(n166), .Z(n281) );
  GTECH_OR_NOT U306 ( .A(n279), .B(n192), .Z(N133) );
  GTECH_NOT U307 ( .A(reset), .Z(n192) );
  GTECH_NOT U308 ( .A(n232), .Z(n279) );
  GTECH_OR_NOT U309 ( .A(n243), .B(n15), .Z(n232) );
  GTECH_NOT U310 ( .A(n14), .Z(n243) );
  GTECH_AND2 U311 ( .A(n283), .B(n280), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n282), .B(n177), .Z(n283) );
  GTECH_OR_NOT U313 ( .A(n167), .B(n284), .Z(n282) );
  GTECH_NOT U314 ( .A(n285), .Z(n284) );
  GTECH_AND2 U315 ( .A(n286), .B(n280), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n285), .B(n167), .Z(n286) );
  GTECH_OR_NOT U317 ( .A(n168), .B(n287), .Z(n285) );
  GTECH_NOT U318 ( .A(n288), .Z(n287) );
  GTECH_AND2 U319 ( .A(period[4]), .B(n217), .Z(N13) );
  GTECH_AND2 U320 ( .A(n289), .B(n280), .Z(N128) );
  GTECH_XOR2 U321 ( .A(n288), .B(n168), .Z(n289) );
  GTECH_OR_NOT U322 ( .A(n169), .B(n290), .Z(n288) );
  GTECH_NOT U323 ( .A(n291), .Z(n290) );
  GTECH_AND2 U324 ( .A(n292), .B(n280), .Z(N126) );
  GTECH_XOR2 U325 ( .A(n291), .B(n169), .Z(n292) );
  GTECH_OR_NOT U326 ( .A(n170), .B(n293), .Z(n291) );
  GTECH_NOT U327 ( .A(n294), .Z(n293) );
  GTECH_AND2 U328 ( .A(n295), .B(n280), .Z(N124) );
  GTECH_XOR2 U329 ( .A(n294), .B(n170), .Z(n295) );
  GTECH_OR_NOT U330 ( .A(n171), .B(n296), .Z(n294) );
  GTECH_NOT U331 ( .A(n297), .Z(n296) );
  GTECH_AND2 U332 ( .A(n298), .B(n280), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n297), .B(n171), .Z(n298) );
  GTECH_OR_NOT U334 ( .A(n172), .B(n299), .Z(n297) );
  GTECH_NOT U335 ( .A(n300), .Z(n299) );
  GTECH_AND2 U336 ( .A(n301), .B(n280), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n300), .B(n172), .Z(n301) );
  GTECH_OR_NOT U338 ( .A(n173), .B(n302), .Z(n300) );
  GTECH_NOT U339 ( .A(n303), .Z(n302) );
  GTECH_AO21 U340 ( .A(period[3]), .B(n217), .C(reset), .Z(N12) );
  GTECH_AND2 U341 ( .A(n304), .B(n280), .Z(N118) );
  GTECH_XOR2 U342 ( .A(n303), .B(n173), .Z(n304) );
  GTECH_NAND3 U343 ( .A(n305), .B(n306), .C(n307), .Z(n303) );
  GTECH_NOT U344 ( .A(n174), .Z(n307) );
  GTECH_OAI22 U345 ( .A(n174), .B(n308), .C(n309), .D(n310), .Z(N116) );
  GTECH_OAI21 U346 ( .A(n175), .B(n174), .C(n311), .Z(n310) );
  GTECH_OAI21 U347 ( .A(n176), .B(n175), .C(n174), .Z(n311) );
  GTECH_OAI21 U348 ( .A(n175), .B(n308), .C(n312), .Z(N114) );
  GTECH_NAND3 U349 ( .A(n280), .B(n306), .C(n175), .Z(n312) );
  GTECH_NOT U350 ( .A(n308), .Z(N112) );
  GTECH_OR_NOT U351 ( .A(n306), .B(n280), .Z(n308) );
  GTECH_NOT U352 ( .A(n309), .Z(n280) );
  GTECH_OR_NOT U353 ( .A(reset), .B(n231), .Z(n309) );
  GTECH_NOT U354 ( .A(n313), .Z(n231) );
  GTECH_AOI222 U355 ( .A(n314), .B(n315), .C(update_period[11]), .D(n166), .E(
        n316), .F(n317), .Z(n313) );
  GTECH_AO22 U356 ( .A(n177), .B(update_period[10]), .C(n318), .D(n319), .Z(
        n316) );
  GTECH_AO22 U357 ( .A(n167), .B(update_period[9]), .C(n320), .D(n168), .Z(
        n319) );
  GTECH_AND2 U358 ( .A(n321), .B(update_period[8]), .Z(n320) );
  GTECH_AND3 U359 ( .A(n317), .B(n321), .C(n318), .Z(n315) );
  GTECH_OR_NOT U360 ( .A(n177), .B(n322), .Z(n318) );
  GTECH_NOT U361 ( .A(update_period[10]), .Z(n322) );
  GTECH_OR_NOT U362 ( .A(n167), .B(n323), .Z(n321) );
  GTECH_NOT U363 ( .A(update_period[9]), .Z(n323) );
  GTECH_OR_NOT U364 ( .A(n166), .B(n324), .Z(n317) );
  GTECH_NOT U365 ( .A(update_period[11]), .Z(n324) );
  GTECH_OA22 U366 ( .A(n168), .B(update_period[8]), .C(n325), .D(n326), .Z(
        n314) );
  GTECH_AO22 U367 ( .A(n327), .B(n170), .C(n169), .D(update_period[7]), .Z(
        n326) );
  GTECH_AND2 U368 ( .A(n328), .B(update_period[6]), .Z(n327) );
  GTECH_OAI2N2 U369 ( .A(n329), .B(n330), .C(n331), .D(n332), .Z(n325) );
  GTECH_ADD_ABC U370 ( .A(n333), .B(n171), .C(update_period[5]), .COUT(n332)
         );
  GTECH_AND2 U371 ( .A(update_period[4]), .B(n172), .Z(n333) );
  GTECH_OAI21 U372 ( .A(update_period[4]), .B(n172), .C(n331), .Z(n330) );
  GTECH_NOT U373 ( .A(n334), .Z(n331) );
  GTECH_OAI21 U374 ( .A(update_period[6]), .B(n170), .C(n328), .Z(n334) );
  GTECH_OR_NOT U375 ( .A(n169), .B(n335), .Z(n328) );
  GTECH_NOT U376 ( .A(update_period[7]), .Z(n335) );
  GTECH_OAI22 U377 ( .A(update_period[5]), .B(n171), .C(n336), .D(n337), .Z(
        n329) );
  GTECH_AO22 U378 ( .A(n338), .B(n174), .C(n173), .D(update_period[3]), .Z(
        n337) );
  GTECH_AND2 U379 ( .A(n339), .B(update_period[2]), .Z(n338) );
  GTECH_AND3 U380 ( .A(n340), .B(n341), .C(n339), .Z(n336) );
  GTECH_OR_NOT U381 ( .A(n173), .B(n342), .Z(n339) );
  GTECH_NOT U382 ( .A(update_period[3]), .Z(n342) );
  GTECH_OAI21 U383 ( .A(n343), .B(n305), .C(n181), .Z(n341) );
  GTECH_NOT U384 ( .A(n175), .Z(n305) );
  GTECH_OA21 U385 ( .A(n174), .B(update_period[2]), .C(n344), .Z(n340) );
  GTECH_OR_NOT U386 ( .A(n175), .B(n343), .Z(n344) );
  GTECH_OR_NOT U387 ( .A(n306), .B(update_period[0]), .Z(n343) );
  GTECH_NOT U388 ( .A(n176), .Z(n306) );
  GTECH_AO21 U389 ( .A(period[2]), .B(n217), .C(reset), .Z(N11) );
  GTECH_AO21 U390 ( .A(period[1]), .B(n217), .C(reset), .Z(N10) );
  GTECH_NOT U391 ( .A(n345), .Z(n217) );
  GTECH_OR_NOT U392 ( .A(reset), .B(period_load), .Z(n345) );
endmodule

