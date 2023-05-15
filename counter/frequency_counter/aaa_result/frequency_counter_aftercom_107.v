
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
         n23, n26, n30, n81, n159, sub_85_carry_2_, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
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
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345;
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
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n81), .K(n81), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n81), .K(n81), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n178) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n81), .K(n81), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n177) );
  GTECH_FJK1S state_reg_0_ ( .J(n81), .K(n81), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n81), .K(n81), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n81), .K(n81), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n176) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n81), .K(n81), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n175) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n81), .K(n81), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n81), .K(n81), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n81), .K(n81), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n81), .K(n81), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n81), .K(n81), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n81), .K(n81), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n81), .K(n81), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n81), .K(n81), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n81), .K(n81), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n81), .K(n81), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n165) );
  GTECH_FJK1S update_digits_reg ( .J(n81), .K(n81), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n81), .K(n81), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n164) );
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
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n81), .K(n81), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U172 ( .Z(n81) );
  GTECH_OR_NOT U173 ( .A(reset), .B(n16), .Z(seven_segment0_N9) );
  GTECH_AND2 U174 ( .A(ten_count[0]), .B(n191), .Z(seven_segment0_N8) );
  GTECH_AND2 U175 ( .A(n159), .B(n191), .Z(seven_segment0_N6) );
  GTECH_AND2 U176 ( .A(unit_count[3]), .B(n191), .Z(seven_segment0_N22) );
  GTECH_AND2 U177 ( .A(unit_count[2]), .B(n191), .Z(seven_segment0_N20) );
  GTECH_AND2 U178 ( .A(unit_count[1]), .B(n191), .Z(seven_segment0_N18) );
  GTECH_AND2 U179 ( .A(unit_count[0]), .B(n191), .Z(seven_segment0_N16) );
  GTECH_AND2 U180 ( .A(ten_count[3]), .B(n191), .Z(seven_segment0_N14) );
  GTECH_AND2 U181 ( .A(ten_count[2]), .B(n191), .Z(seven_segment0_N12) );
  GTECH_AND2 U182 ( .A(ten_count[1]), .B(n191), .Z(seven_segment0_N10) );
  GTECH_OR_NOT U183 ( .A(n192), .B(n193), .Z(segments[6]) );
  GTECH_OAI21 U184 ( .A(n194), .B(n195), .C(n196), .Z(segments[3]) );
  GTECH_AND_NOT U185 ( .A(n197), .B(segments[4]), .Z(n196) );
  GTECH_OAI21 U186 ( .A(n198), .B(n195), .C(n199), .Z(segments[4]) );
  GTECH_OAI21 U187 ( .A(n195), .B(n200), .C(n201), .Z(segments[2]) );
  GTECH_AND_NOT U188 ( .A(n202), .B(segments[5]), .Z(n201) );
  GTECH_OR_NOT U189 ( .A(n192), .B(n203), .Z(segments[5]) );
  GTECH_OA21 U190 ( .A(n204), .B(n202), .C(n199), .Z(n203) );
  GTECH_NAND3 U191 ( .A(n205), .B(n197), .C(n206), .Z(n192) );
  GTECH_NAND3 U192 ( .A(n207), .B(n200), .C(n194), .Z(n206) );
  GTECH_NOT U193 ( .A(n195), .Z(n207) );
  GTECH_NAND3 U194 ( .A(n202), .B(n205), .C(n208), .Z(segments[1]) );
  GTECH_OR_NOT U195 ( .A(n198), .B(n209), .Z(n205) );
  GTECH_NAND3 U196 ( .A(n199), .B(n197), .C(n208), .Z(segments[0]) );
  GTECH_NOT U197 ( .A(n210), .Z(n208) );
  GTECH_OAI21 U198 ( .A(n195), .B(n200), .C(n193), .Z(n210) );
  GTECH_NOT U199 ( .A(n211), .Z(n193) );
  GTECH_OAI22 U200 ( .A(n194), .B(n195), .C(n204), .D(n202), .Z(n211) );
  GTECH_OR_NOT U201 ( .A(n212), .B(n204), .Z(n195) );
  GTECH_OR_NOT U202 ( .A(n200), .B(n209), .Z(n197) );
  GTECH_NOT U203 ( .A(n213), .Z(n209) );
  GTECH_NAND3 U204 ( .A(n212), .B(n204), .C(n194), .Z(n213) );
  GTECH_NOT U205 ( .A(n214), .Z(n204) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n159), .Z(n214) );
  GTECH_NOT U207 ( .A(n198), .Z(n200) );
  GTECH_OR_NOT U208 ( .A(n198), .B(n215), .Z(n199) );
  GTECH_NOT U209 ( .A(n202), .Z(n215) );
  GTECH_OR_NOT U210 ( .A(n194), .B(n212), .Z(n202) );
  GTECH_MUX2 U211 ( .A(n30), .B(n26), .S(n159), .Z(n212) );
  GTECH_MUX2 U212 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n194) );
  GTECH_MUX2 U213 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n198) );
  GTECH_AO21 U214 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_AND2 U215 ( .A(period[11]), .B(n216), .Z(N21) );
  GTECH_OR_NOT U216 ( .A(n216), .B(n191), .Z(N20) );
  GTECH_AO21 U217 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_AND2 U218 ( .A(period[9]), .B(n216), .Z(N18) );
  GTECH_AND2 U219 ( .A(period[8]), .B(n216), .Z(N17) );
  GTECH_AND2 U220 ( .A(N170), .B(n217), .Z(N168) );
  GTECH_OR_NOT U221 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_AND2 U222 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U223 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U224 ( .A(N170), .B(n221), .Z(N162) );
  GTECH_NOT U225 ( .A(n222), .Z(N170) );
  GTECH_OR_NOT U226 ( .A(reset), .B(n218), .Z(n222) );
  GTECH_NOT U227 ( .A(n223), .Z(n218) );
  GTECH_OAI22 U228 ( .A(n224), .B(n225), .C(n226), .D(n227), .Z(N160) );
  GTECH_MUX2 U229 ( .A(n224), .B(n228), .S(ten_count[2]), .Z(n227) );
  GTECH_OR_NOT U230 ( .A(ten_count[3]), .B(n229), .Z(n228) );
  GTECH_NOT U231 ( .A(ten_count[3]), .Z(n224) );
  GTECH_AO21 U232 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U233 ( .A(n230), .B(n231), .C(n232), .Z(N159) );
  GTECH_MUX2 U234 ( .A(n233), .B(n234), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U235 ( .A(n225), .Z(n234) );
  GTECH_OR_NOT U236 ( .A(n229), .B(N152), .Z(n225) );
  GTECH_AND2 U237 ( .A(N152), .B(n229), .Z(n233) );
  GTECH_NOT U238 ( .A(n235), .Z(n229) );
  GTECH_OR_NOT U239 ( .A(n236), .B(ten_count[1]), .Z(n235) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n236) );
  GTECH_MUX2 U241 ( .A(n237), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U242 ( .A(N152), .B(ten_count[0]), .Z(n237) );
  GTECH_NOT U243 ( .A(n238), .Z(N154) );
  GTECH_OR_NOT U244 ( .A(ten_count[0]), .B(N152), .Z(n238) );
  GTECH_OR_NOT U245 ( .A(n239), .B(n240), .Z(N151) );
  GTECH_OA21 U246 ( .A(n14), .B(n241), .C(n219), .Z(n240) );
  GTECH_NOT U247 ( .A(n242), .Z(n219) );
  GTECH_OAI21 U248 ( .A(n243), .B(n230), .C(n191), .Z(n242) );
  GTECH_AND2 U249 ( .A(period[6]), .B(n216), .Z(N15) );
  GTECH_OAI21 U250 ( .A(n226), .B(n241), .C(n244), .Z(N148) );
  GTECH_MUX2 U251 ( .A(n245), .B(n246), .S(n177), .Z(n244) );
  GTECH_OR3 U252 ( .A(n178), .B(n247), .C(n248), .Z(n246) );
  GTECH_AND_NOT U253 ( .A(n249), .B(n250), .Z(n245) );
  GTECH_MUX2 U254 ( .A(n226), .B(n247), .S(n178), .Z(n249) );
  GTECH_NAND3 U255 ( .A(n251), .B(n223), .C(n232), .Z(N147) );
  GTECH_OA21 U256 ( .A(n239), .B(n252), .C(n191), .Z(n232) );
  GTECH_OR_NOT U257 ( .A(n14), .B(n241), .Z(n252) );
  GTECH_NAND4 U258 ( .A(n178), .B(n177), .C(n164), .D(n253), .Z(n241) );
  GTECH_NOT U259 ( .A(n15), .Z(n239) );
  GTECH_OR_NOT U260 ( .A(n15), .B(n14), .Z(n223) );
  GTECH_NAND3 U261 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n251) );
  GTECH_MUX2 U262 ( .A(n250), .B(n254), .S(n178), .Z(N146) );
  GTECH_OAI21 U263 ( .A(n248), .B(n247), .C(n255), .Z(n254) );
  GTECH_OAI21 U264 ( .A(n256), .B(n247), .C(n257), .Z(n250) );
  GTECH_AO21 U265 ( .A(n253), .B(n164), .C(n226), .Z(n257) );
  GTECH_NOT U266 ( .A(n248), .Z(n256) );
  GTECH_NAND3 U267 ( .A(n258), .B(n217), .C(n259), .Z(n248) );
  GTECH_NOT U268 ( .A(n23), .Z(n217) );
  GTECH_NOT U269 ( .A(n164), .Z(n258) );
  GTECH_OR_NOT U270 ( .A(n260), .B(n255), .Z(N144) );
  GTECH_NAND3 U271 ( .A(N152), .B(n253), .C(n164), .Z(n255) );
  GTECH_MUX2 U272 ( .A(n261), .B(n262), .S(n164), .Z(n260) );
  GTECH_NOR3 U273 ( .A(n263), .B(n247), .C(n23), .Z(n262) );
  GTECH_OAI21 U274 ( .A(n253), .B(n226), .C(n264), .Z(n261) );
  GTECH_OAI21 U275 ( .A(n23), .B(n263), .C(N150), .Z(n264) );
  GTECH_OR_NOT U276 ( .A(n23), .B(n265), .Z(n253) );
  GTECH_OAI21 U277 ( .A(n247), .B(n266), .C(n267), .Z(N142) );
  GTECH_MUX2 U278 ( .A(n268), .B(n269), .S(n23), .Z(n267) );
  GTECH_OR_NOT U279 ( .A(n270), .B(N152), .Z(n269) );
  GTECH_NOT U280 ( .A(n226), .Z(N152) );
  GTECH_XOR2 U281 ( .A(n23), .B(n259), .Z(n266) );
  GTECH_NOT U282 ( .A(n263), .Z(n259) );
  GTECH_NAND3 U283 ( .A(n221), .B(n220), .C(sub_85_carry_2_), .Z(n263) );
  GTECH_NOT U284 ( .A(n21), .Z(n220) );
  GTECH_OR_NOT U285 ( .A(n271), .B(n272), .Z(N140) );
  GTECH_MUX2 U286 ( .A(n273), .B(n274), .S(n21), .Z(n272) );
  GTECH_NAND3 U287 ( .A(sub_85_carry_2_), .B(n221), .C(N150), .Z(n274) );
  GTECH_NOT U288 ( .A(n247), .Z(N150) );
  GTECH_NOT U289 ( .A(n17), .Z(n221) );
  GTECH_AND2 U290 ( .A(n275), .B(n276), .Z(n273) );
  GTECH_MUX2 U291 ( .A(n247), .B(n226), .S(sub_85_carry_2_), .Z(n275) );
  GTECH_NOT U292 ( .A(n268), .Z(n271) );
  GTECH_OR_NOT U293 ( .A(n226), .B(n270), .Z(n268) );
  GTECH_NOT U294 ( .A(n265), .Z(n270) );
  GTECH_OR_NOT U295 ( .A(sub_85_carry_2_), .B(n21), .Z(n265) );
  GTECH_AO21 U296 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U297 ( .A(n277), .B(n278), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U298 ( .A(n276), .Z(n278) );
  GTECH_OAI21 U299 ( .A(n17), .B(n247), .C(n226), .Z(n277) );
  GTECH_OAI21 U300 ( .A(n17), .B(n226), .C(n276), .Z(N136) );
  GTECH_OR_NOT U301 ( .A(n247), .B(n17), .Z(n276) );
  GTECH_OR_NOT U302 ( .A(reset), .B(n279), .Z(n247) );
  GTECH_OR_NOT U303 ( .A(N169), .B(n15), .Z(n226) );
  GTECH_OR_NOT U304 ( .A(n14), .B(n191), .Z(N169) );
  GTECH_AND2 U305 ( .A(n280), .B(n281), .Z(N134) );
  GTECH_OAI21 U306 ( .A(n176), .B(n282), .C(n165), .Z(n281) );
  GTECH_OR_NOT U307 ( .A(n279), .B(n191), .Z(N133) );
  GTECH_NOT U308 ( .A(reset), .Z(n191) );
  GTECH_NOT U309 ( .A(n231), .Z(n279) );
  GTECH_OR_NOT U310 ( .A(n243), .B(n15), .Z(n231) );
  GTECH_NOT U311 ( .A(n14), .Z(n243) );
  GTECH_AND2 U312 ( .A(n283), .B(n280), .Z(N132) );
  GTECH_XOR2 U313 ( .A(n282), .B(n176), .Z(n283) );
  GTECH_OR_NOT U314 ( .A(n166), .B(n284), .Z(n282) );
  GTECH_NOT U315 ( .A(n285), .Z(n284) );
  GTECH_AND2 U316 ( .A(n286), .B(n280), .Z(N130) );
  GTECH_XOR2 U317 ( .A(n285), .B(n166), .Z(n286) );
  GTECH_OR_NOT U318 ( .A(n167), .B(n287), .Z(n285) );
  GTECH_NOT U319 ( .A(n288), .Z(n287) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n216), .Z(N13) );
  GTECH_AND2 U321 ( .A(n289), .B(n280), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n288), .B(n167), .Z(n289) );
  GTECH_OR_NOT U323 ( .A(n168), .B(n290), .Z(n288) );
  GTECH_NOT U324 ( .A(n291), .Z(n290) );
  GTECH_AND2 U325 ( .A(n292), .B(n280), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n291), .B(n168), .Z(n292) );
  GTECH_OR_NOT U327 ( .A(n169), .B(n293), .Z(n291) );
  GTECH_NOT U328 ( .A(n294), .Z(n293) );
  GTECH_AND2 U329 ( .A(n295), .B(n280), .Z(N124) );
  GTECH_XOR2 U330 ( .A(n294), .B(n169), .Z(n295) );
  GTECH_OR_NOT U331 ( .A(n170), .B(n296), .Z(n294) );
  GTECH_NOT U332 ( .A(n297), .Z(n296) );
  GTECH_AND2 U333 ( .A(n298), .B(n280), .Z(N122) );
  GTECH_XOR2 U334 ( .A(n297), .B(n170), .Z(n298) );
  GTECH_OR_NOT U335 ( .A(n171), .B(n299), .Z(n297) );
  GTECH_NOT U336 ( .A(n300), .Z(n299) );
  GTECH_AND2 U337 ( .A(n301), .B(n280), .Z(N120) );
  GTECH_XOR2 U338 ( .A(n300), .B(n171), .Z(n301) );
  GTECH_OR_NOT U339 ( .A(n172), .B(n302), .Z(n300) );
  GTECH_NOT U340 ( .A(n303), .Z(n302) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_AND2 U342 ( .A(n304), .B(n280), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n303), .B(n172), .Z(n304) );
  GTECH_NAND3 U344 ( .A(n305), .B(n306), .C(n307), .Z(n303) );
  GTECH_NOT U345 ( .A(n173), .Z(n307) );
  GTECH_OAI22 U346 ( .A(n173), .B(n308), .C(n309), .D(n310), .Z(N116) );
  GTECH_MUX2 U347 ( .A(n305), .B(n311), .S(n173), .Z(n310) );
  GTECH_OR_NOT U348 ( .A(n175), .B(n305), .Z(n311) );
  GTECH_NOT U349 ( .A(n174), .Z(n305) );
  GTECH_MUX2 U350 ( .A(N112), .B(n312), .S(n174), .Z(N114) );
  GTECH_AND2 U351 ( .A(n280), .B(n306), .Z(n312) );
  GTECH_NOT U352 ( .A(n308), .Z(N112) );
  GTECH_OR_NOT U353 ( .A(n306), .B(n280), .Z(n308) );
  GTECH_NOT U354 ( .A(n309), .Z(n280) );
  GTECH_OR_NOT U355 ( .A(reset), .B(n230), .Z(n309) );
  GTECH_NOT U356 ( .A(n313), .Z(n230) );
  GTECH_AOI222 U357 ( .A(n314), .B(n315), .C(update_period[11]), .D(n165), .E(
        n316), .F(n317), .Z(n313) );
  GTECH_OAI2N2 U358 ( .A(n318), .B(n319), .C(n176), .D(update_period[10]), .Z(
        n316) );
  GTECH_AOI22 U359 ( .A(n166), .B(update_period[9]), .C(update_period[8]), .D(
        n320), .Z(n319) );
  GTECH_OA21 U360 ( .A(n166), .B(update_period[9]), .C(n167), .Z(n320) );
  GTECH_NOT U361 ( .A(n321), .Z(n318) );
  GTECH_AND2 U362 ( .A(n322), .B(n317), .Z(n315) );
  GTECH_OR_NOT U363 ( .A(update_period[11]), .B(n323), .Z(n317) );
  GTECH_NOT U364 ( .A(n165), .Z(n323) );
  GTECH_AND_NOT U365 ( .A(n321), .B(n324), .Z(n322) );
  GTECH_AOI222 U366 ( .A(update_period[7]), .B(n168), .C(n325), .D(n326), .E(
        n327), .F(n328), .Z(n324) );
  GTECH_AO22 U367 ( .A(update_period[6]), .B(n329), .C(n330), .D(n169), .Z(
        n327) );
  GTECH_OR2 U368 ( .A(n169), .B(n330), .Z(n329) );
  GTECH_AO22 U369 ( .A(n331), .B(n171), .C(n170), .D(update_period[5]), .Z(
        n330) );
  GTECH_AND2 U370 ( .A(n332), .B(update_period[4]), .Z(n331) );
  GTECH_OA21 U371 ( .A(n333), .B(n334), .C(n335), .Z(n326) );
  GTECH_AND2 U372 ( .A(n332), .B(n328), .Z(n335) );
  GTECH_OR_NOT U373 ( .A(update_period[7]), .B(n336), .Z(n328) );
  GTECH_NOT U374 ( .A(n168), .Z(n336) );
  GTECH_OR_NOT U375 ( .A(n170), .B(n337), .Z(n332) );
  GTECH_NOT U376 ( .A(update_period[5]), .Z(n337) );
  GTECH_OA21 U377 ( .A(n173), .B(update_period[2]), .C(n338), .Z(n334) );
  GTECH_OA21 U378 ( .A(n169), .B(update_period[6]), .C(n339), .Z(n325) );
  GTECH_OA22 U379 ( .A(n333), .B(n340), .C(n171), .D(update_period[4]), .Z(
        n339) );
  GTECH_ADD_ABC U380 ( .A(update_period[1]), .B(n341), .C(n174), .COUT(n340)
         );
  GTECH_AND2 U381 ( .A(update_period[0]), .B(n175), .Z(n341) );
  GTECH_AO22 U382 ( .A(n342), .B(n173), .C(n172), .D(update_period[3]), .Z(
        n333) );
  GTECH_AND2 U383 ( .A(n338), .B(update_period[2]), .Z(n342) );
  GTECH_OR_NOT U384 ( .A(n172), .B(n343), .Z(n338) );
  GTECH_NOT U385 ( .A(update_period[3]), .Z(n343) );
  GTECH_OR_NOT U386 ( .A(n176), .B(n344), .Z(n321) );
  GTECH_NOT U387 ( .A(update_period[10]), .Z(n344) );
  GTECH_OA22 U388 ( .A(n167), .B(update_period[8]), .C(n166), .D(
        update_period[9]), .Z(n314) );
  GTECH_NOT U389 ( .A(n175), .Z(n306) );
  GTECH_AO21 U390 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U391 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U392 ( .A(n345), .Z(n216) );
  GTECH_OR_NOT U393 ( .A(reset), .B(period_load), .Z(n345) );
endmodule

