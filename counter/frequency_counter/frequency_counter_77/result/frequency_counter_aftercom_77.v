
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
         n26, n28, n30, n32, n159, n161, sub_85_carry_2_, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n178, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n178) );
  GTECH_FJK1S update_period_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N9), .TE(N20), 
        .CP(clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n176) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n175) );
  GTECH_FJK1S state_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N150), .TE(N151), .CP(clk), .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N152), .TE(N151), .CP(clk), .Q(dbg_state[1]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n174) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n163) );
  GTECH_FJK1S update_digits_reg ( .J(1'b0), .K(1'b0), .TI(N170), .TE(N169), 
        .CP(clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n162) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N162), .TE(N167), 
        .CP(clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N164), .TE(N167), 
        .CP(clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N166), .TE(N167), 
        .CP(clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N168), .TE(N167), 
        .CP(clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N154), .TE(N159), 
        .CP(clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N156), .TE(N159), 
        .CP(clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N158), .TE(N159), 
        .CP(clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N160), .TE(N159), 
        .CP(clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n28) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(1'b0), .K(1'b0), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n32) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_NAND2 U170 ( .A(n15), .B(n189), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(ten_count[0]), .B(n189), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n159), .B(n189), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n189), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n189), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n189), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n189), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(ten_count[3]), .B(n189), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n189), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n189), .Z(seven_segment0_N10) );
  GTECH_NAND2 U180 ( .A(n190), .B(n191), .Z(segments[6]) );
  GTECH_NAND2 U181 ( .A(n192), .B(n190), .Z(segments[5]) );
  GTECH_OA21 U182 ( .A(n193), .B(n194), .C(n195), .Z(n192) );
  GTECH_NAND3 U183 ( .A(n196), .B(n197), .C(n198), .Z(segments[3]) );
  GTECH_NOT U184 ( .A(segments[4]), .Z(n197) );
  GTECH_OAI21 U185 ( .A(n199), .B(n200), .C(n195), .Z(segments[4]) );
  GTECH_NAND3 U186 ( .A(n190), .B(n194), .C(n201), .Z(segments[2]) );
  GTECH_AND3 U187 ( .A(n202), .B(n203), .C(n198), .Z(n190) );
  GTECH_NAND3 U188 ( .A(n204), .B(n205), .C(n206), .Z(n203) );
  GTECH_NAND3 U189 ( .A(n202), .B(n194), .C(n207), .Z(segments[1]) );
  GTECH_OA21 U190 ( .A(n204), .B(n200), .C(n196), .Z(n207) );
  GTECH_OR4 U191 ( .A(n208), .B(n209), .C(n199), .D(n210), .Z(n202) );
  GTECH_NAND3 U192 ( .A(n191), .B(n198), .C(n201), .Z(segments[0]) );
  GTECH_NOT U193 ( .A(n211), .Z(n201) );
  GTECH_OAI21 U194 ( .A(n204), .B(n200), .C(n195), .Z(n211) );
  GTECH_NAND2 U195 ( .A(n212), .B(n204), .Z(n195) );
  GTECH_NOT U196 ( .A(n194), .Z(n212) );
  GTECH_OR4 U197 ( .A(n208), .B(n204), .C(n209), .D(n210), .Z(n198) );
  GTECH_NOT U198 ( .A(n199), .Z(n204) );
  GTECH_MUX2 U199 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n199) );
  GTECH_NOT U200 ( .A(n193), .Z(n208) );
  GTECH_NOT U201 ( .A(n213), .Z(n191) );
  GTECH_OAI21 U202 ( .A(n193), .B(n194), .C(n196), .Z(n213) );
  GTECH_NAND2 U203 ( .A(n205), .B(n209), .Z(n196) );
  GTECH_NOT U204 ( .A(n200), .Z(n205) );
  GTECH_NAND2 U205 ( .A(n193), .B(n210), .Z(n200) );
  GTECH_NOT U206 ( .A(n214), .Z(n210) );
  GTECH_NAND2 U207 ( .A(n214), .B(n209), .Z(n194) );
  GTECH_NOT U208 ( .A(n206), .Z(n209) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n206) );
  GTECH_MUX2 U210 ( .A(n30), .B(n26), .S(n159), .Z(n214) );
  GTECH_MUX2 U211 ( .A(n32), .B(n28), .S(n159), .Z(n193) );
  GTECH_AO21 U212 ( .A(period[0]), .B(n215), .C(reset), .Z(N9) );
  GTECH_AND2 U213 ( .A(period[11]), .B(n215), .Z(N21) );
  GTECH_NAND2 U214 ( .A(n189), .B(n216), .Z(N20) );
  GTECH_AO21 U215 ( .A(period[10]), .B(n215), .C(reset), .Z(N19) );
  GTECH_AND2 U216 ( .A(period[9]), .B(n215), .Z(N18) );
  GTECH_AND2 U217 ( .A(period[8]), .B(n215), .Z(N17) );
  GTECH_AND2 U218 ( .A(N170), .B(n217), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n218), .B(n219), .Z(N167) );
  GTECH_AND2 U220 ( .A(N170), .B(n220), .Z(N166) );
  GTECH_AND2 U221 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U222 ( .A(N170), .B(n221), .Z(N162) );
  GTECH_NOT U223 ( .A(n222), .Z(N170) );
  GTECH_NAND2 U224 ( .A(n223), .B(n189), .Z(n222) );
  GTECH_NOT U225 ( .A(n219), .Z(n223) );
  GTECH_MUX2 U226 ( .A(n224), .B(n225), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U227 ( .A(ten_count[2]), .B(n226), .C(n227), .Z(n225) );
  GTECH_NOT U228 ( .A(n228), .Z(n227) );
  GTECH_AND2 U229 ( .A(n229), .B(ten_count[2]), .Z(n224) );
  GTECH_AO21 U230 ( .A(period[7]), .B(n215), .C(reset), .Z(N16) );
  GTECH_OAI21 U231 ( .A(n230), .B(n231), .C(n232), .Z(N159) );
  GTECH_MUX2 U232 ( .A(n229), .B(n228), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U233 ( .A(ten_count[1]), .B(n226), .C(n233), .Z(n228) );
  GTECH_NOT U234 ( .A(n234), .Z(n229) );
  GTECH_NAND3 U235 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n234) );
  GTECH_MUX2 U236 ( .A(n235), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U237 ( .A(N152), .B(ten_count[0]), .Z(n235) );
  GTECH_NOT U238 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U239 ( .A(N152), .B(n236), .Z(n233) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n236) );
  GTECH_NAND2 U241 ( .A(n237), .B(n161), .Z(N151) );
  GTECH_OA21 U242 ( .A(n14), .B(n238), .C(n218), .Z(n237) );
  GTECH_NOT U243 ( .A(n239), .Z(n218) );
  GTECH_OAI21 U244 ( .A(n240), .B(n230), .C(n189), .Z(n239) );
  GTECH_AND2 U245 ( .A(period[6]), .B(n215), .Z(N15) );
  GTECH_OAI21 U246 ( .A(n226), .B(n238), .C(n241), .Z(N148) );
  GTECH_MUX2 U247 ( .A(n242), .B(n243), .S(n175), .Z(n241) );
  GTECH_NAND3 U248 ( .A(n244), .B(N150), .C(n245), .Z(n243) );
  GTECH_AND_NOT U249 ( .A(n246), .B(n247), .Z(n242) );
  GTECH_MUX2 U250 ( .A(n226), .B(n248), .S(n176), .Z(n246) );
  GTECH_NAND3 U251 ( .A(n249), .B(n219), .C(n232), .Z(N147) );
  GTECH_AND2 U252 ( .A(n189), .B(n250), .Z(n232) );
  GTECH_NAND3 U253 ( .A(n240), .B(n161), .C(n238), .Z(n250) );
  GTECH_OR4 U254 ( .A(n251), .B(n244), .C(n252), .D(n253), .Z(n238) );
  GTECH_NOT U255 ( .A(n176), .Z(n244) );
  GTECH_NOT U256 ( .A(n175), .Z(n251) );
  GTECH_NAND2 U257 ( .A(n14), .B(n254), .Z(n219) );
  GTECH_NOT U258 ( .A(n161), .Z(n254) );
  GTECH_NAND3 U259 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n249) );
  GTECH_MUX2 U260 ( .A(n247), .B(n255), .S(n176), .Z(N146) );
  GTECH_OAI21 U261 ( .A(n256), .B(n248), .C(n257), .Z(n255) );
  GTECH_OAI21 U262 ( .A(n245), .B(n248), .C(n258), .Z(n247) );
  GTECH_OAI21 U263 ( .A(n252), .B(n253), .C(N152), .Z(n258) );
  GTECH_NOT U264 ( .A(n259), .Z(n252) );
  GTECH_NOT U265 ( .A(n256), .Z(n245) );
  GTECH_NAND3 U266 ( .A(n253), .B(n217), .C(n260), .Z(n256) );
  GTECH_NOT U267 ( .A(n162), .Z(n253) );
  GTECH_NAND2 U268 ( .A(n261), .B(n257), .Z(N144) );
  GTECH_NAND3 U269 ( .A(N152), .B(n259), .C(n162), .Z(n257) );
  GTECH_MUX2 U270 ( .A(n262), .B(n263), .S(n162), .Z(n261) );
  GTECH_NAND3 U271 ( .A(n260), .B(n217), .C(N150), .Z(n263) );
  GTECH_OA21 U272 ( .A(n226), .B(n259), .C(n264), .Z(n262) );
  GTECH_OAI21 U273 ( .A(n22), .B(n265), .C(N150), .Z(n264) );
  GTECH_NAND2 U274 ( .A(n266), .B(n217), .Z(n259) );
  GTECH_NOT U275 ( .A(n22), .Z(n217) );
  GTECH_OAI21 U276 ( .A(n248), .B(n267), .C(n268), .Z(N142) );
  GTECH_MUX2 U277 ( .A(n269), .B(n270), .S(n22), .Z(n268) );
  GTECH_NAND2 U278 ( .A(N152), .B(n266), .Z(n270) );
  GTECH_XOR2 U279 ( .A(n22), .B(n260), .Z(n267) );
  GTECH_NOT U280 ( .A(n265), .Z(n260) );
  GTECH_NAND3 U281 ( .A(n221), .B(n220), .C(sub_85_carry_2_), .Z(n265) );
  GTECH_NOT U282 ( .A(n20), .Z(n220) );
  GTECH_NAND2 U283 ( .A(n271), .B(n269), .Z(N140) );
  GTECH_NAND2 U284 ( .A(n272), .B(N152), .Z(n269) );
  GTECH_NOT U285 ( .A(n226), .Z(N152) );
  GTECH_NOT U286 ( .A(n266), .Z(n272) );
  GTECH_NAND2 U287 ( .A(n20), .B(n273), .Z(n266) );
  GTECH_NOT U288 ( .A(sub_85_carry_2_), .Z(n273) );
  GTECH_MUX2 U289 ( .A(n274), .B(n275), .S(n20), .Z(n271) );
  GTECH_NAND3 U290 ( .A(sub_85_carry_2_), .B(n221), .C(N150), .Z(n275) );
  GTECH_NOT U291 ( .A(n16), .Z(n221) );
  GTECH_AND2 U292 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_MUX2 U293 ( .A(n248), .B(n226), .S(sub_85_carry_2_), .Z(n276) );
  GTECH_AO21 U294 ( .A(period[5]), .B(n215), .C(reset), .Z(N14) );
  GTECH_MUX2 U295 ( .A(n278), .B(n279), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U296 ( .A(n277), .Z(n279) );
  GTECH_OAI21 U297 ( .A(n16), .B(n248), .C(n226), .Z(n278) );
  GTECH_OAI21 U298 ( .A(n16), .B(n226), .C(n277), .Z(N136) );
  GTECH_NAND2 U299 ( .A(n16), .B(N150), .Z(n277) );
  GTECH_NOT U300 ( .A(n248), .Z(N150) );
  GTECH_NAND2 U301 ( .A(n280), .B(n189), .Z(n248) );
  GTECH_NOT U302 ( .A(n231), .Z(n280) );
  GTECH_NAND2 U303 ( .A(n161), .B(n281), .Z(n226) );
  GTECH_NOT U304 ( .A(N169), .Z(n281) );
  GTECH_NAND2 U305 ( .A(n189), .B(n240), .Z(N169) );
  GTECH_NOT U306 ( .A(n14), .Z(n240) );
  GTECH_AND2 U307 ( .A(n282), .B(n283), .Z(N134) );
  GTECH_OAI21 U308 ( .A(n174), .B(n284), .C(n163), .Z(n283) );
  GTECH_NAND2 U309 ( .A(n189), .B(n231), .Z(N133) );
  GTECH_NAND2 U310 ( .A(n161), .B(n14), .Z(n231) );
  GTECH_AND2 U311 ( .A(n285), .B(n282), .Z(N132) );
  GTECH_XOR2 U312 ( .A(n284), .B(n174), .Z(n285) );
  GTECH_NAND2 U313 ( .A(n286), .B(n287), .Z(n284) );
  GTECH_NOT U314 ( .A(n288), .Z(n286) );
  GTECH_AND2 U315 ( .A(n289), .B(n282), .Z(N130) );
  GTECH_XOR2 U316 ( .A(n288), .B(n164), .Z(n289) );
  GTECH_NAND2 U317 ( .A(n290), .B(n291), .Z(n288) );
  GTECH_NOT U318 ( .A(n165), .Z(n291) );
  GTECH_NOT U319 ( .A(n292), .Z(n290) );
  GTECH_AND2 U320 ( .A(period[4]), .B(n215), .Z(N13) );
  GTECH_AND2 U321 ( .A(n293), .B(n282), .Z(N128) );
  GTECH_XOR2 U322 ( .A(n292), .B(n165), .Z(n293) );
  GTECH_NAND2 U323 ( .A(n294), .B(n295), .Z(n292) );
  GTECH_NOT U324 ( .A(n296), .Z(n294) );
  GTECH_AND2 U325 ( .A(n297), .B(n282), .Z(N126) );
  GTECH_XOR2 U326 ( .A(n296), .B(n166), .Z(n297) );
  GTECH_NAND2 U327 ( .A(n298), .B(n299), .Z(n296) );
  GTECH_NOT U328 ( .A(n167), .Z(n299) );
  GTECH_NOT U329 ( .A(n300), .Z(n298) );
  GTECH_AND2 U330 ( .A(n301), .B(n282), .Z(N124) );
  GTECH_XOR2 U331 ( .A(n300), .B(n167), .Z(n301) );
  GTECH_NAND2 U332 ( .A(n302), .B(n303), .Z(n300) );
  GTECH_NOT U333 ( .A(n168), .Z(n303) );
  GTECH_NOT U334 ( .A(n304), .Z(n302) );
  GTECH_AND2 U335 ( .A(n305), .B(n282), .Z(N122) );
  GTECH_XOR2 U336 ( .A(n304), .B(n168), .Z(n305) );
  GTECH_NAND2 U337 ( .A(n306), .B(n307), .Z(n304) );
  GTECH_NOT U338 ( .A(n169), .Z(n307) );
  GTECH_NOT U339 ( .A(n308), .Z(n306) );
  GTECH_AND2 U340 ( .A(n309), .B(n282), .Z(N120) );
  GTECH_XOR2 U341 ( .A(n308), .B(n169), .Z(n309) );
  GTECH_NAND2 U342 ( .A(n310), .B(n311), .Z(n308) );
  GTECH_NOT U343 ( .A(n312), .Z(n310) );
  GTECH_AO21 U344 ( .A(period[3]), .B(n215), .C(reset), .Z(N12) );
  GTECH_AND2 U345 ( .A(n313), .B(n282), .Z(N118) );
  GTECH_XOR2 U346 ( .A(n312), .B(n170), .Z(n313) );
  GTECH_NAND3 U347 ( .A(n314), .B(n315), .C(n316), .Z(n312) );
  GTECH_NOT U348 ( .A(n171), .Z(n316) );
  GTECH_OAI22 U349 ( .A(n171), .B(n317), .C(n318), .D(n319), .Z(N116) );
  GTECH_MUX2 U350 ( .A(n314), .B(n320), .S(n171), .Z(n319) );
  GTECH_NAND2 U351 ( .A(n314), .B(n315), .Z(n320) );
  GTECH_MUX2 U352 ( .A(N112), .B(n321), .S(n172), .Z(N114) );
  GTECH_AND2 U353 ( .A(n282), .B(n315), .Z(n321) );
  GTECH_NOT U354 ( .A(n173), .Z(n315) );
  GTECH_NOT U355 ( .A(n317), .Z(N112) );
  GTECH_NAND2 U356 ( .A(n282), .B(n173), .Z(n317) );
  GTECH_NOT U357 ( .A(n318), .Z(n282) );
  GTECH_NAND2 U358 ( .A(n230), .B(n189), .Z(n318) );
  GTECH_NOT U359 ( .A(n322), .Z(n230) );
  GTECH_AOI222 U360 ( .A(n323), .B(n324), .C(update_period[11]), .D(n163), .E(
        n325), .F(n326), .Z(n322) );
  GTECH_OAI2N2 U361 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n325) );
  GTECH_OAI21 U362 ( .A(n331), .B(n287), .C(n332), .Z(n330) );
  GTECH_NAND3 U363 ( .A(n333), .B(update_period[8]), .C(n165), .Z(n332) );
  GTECH_AND3 U364 ( .A(n333), .B(n329), .C(n326), .Z(n324) );
  GTECH_NAND2 U365 ( .A(n334), .B(n335), .Z(n326) );
  GTECH_NOT U366 ( .A(n163), .Z(n335) );
  GTECH_NOT U367 ( .A(update_period[11]), .Z(n334) );
  GTECH_NAND2 U368 ( .A(n328), .B(n327), .Z(n329) );
  GTECH_NOT U369 ( .A(n174), .Z(n327) );
  GTECH_NOT U370 ( .A(update_period[10]), .Z(n328) );
  GTECH_NAND2 U371 ( .A(n287), .B(n331), .Z(n333) );
  GTECH_NOT U372 ( .A(update_period[9]), .Z(n331) );
  GTECH_NOT U373 ( .A(n164), .Z(n287) );
  GTECH_OA22 U374 ( .A(n165), .B(update_period[8]), .C(n336), .D(n337), .Z(
        n323) );
  GTECH_OAI21 U375 ( .A(n295), .B(n338), .C(n339), .Z(n337) );
  GTECH_NAND3 U376 ( .A(n340), .B(update_period[6]), .C(n167), .Z(n339) );
  GTECH_OAI2N2 U377 ( .A(n341), .B(n342), .C(n343), .D(n344), .Z(n336) );
  GTECH_ADD_ABC U378 ( .A(n345), .B(n168), .C(update_period[5]), .COUT(n344)
         );
  GTECH_AND2 U379 ( .A(update_period[4]), .B(n169), .Z(n345) );
  GTECH_OAI21 U380 ( .A(update_period[4]), .B(n169), .C(n343), .Z(n342) );
  GTECH_NOT U381 ( .A(n346), .Z(n343) );
  GTECH_OAI21 U382 ( .A(update_period[6]), .B(n167), .C(n340), .Z(n346) );
  GTECH_NAND2 U383 ( .A(n338), .B(n295), .Z(n340) );
  GTECH_NOT U384 ( .A(n166), .Z(n295) );
  GTECH_NOT U385 ( .A(update_period[7]), .Z(n338) );
  GTECH_OAI22 U386 ( .A(update_period[5]), .B(n168), .C(n347), .D(n348), .Z(
        n341) );
  GTECH_OAI21 U387 ( .A(n311), .B(n349), .C(n350), .Z(n348) );
  GTECH_NAND3 U388 ( .A(n351), .B(update_period[2]), .C(n171), .Z(n350) );
  GTECH_AND3 U389 ( .A(n352), .B(n353), .C(n351), .Z(n347) );
  GTECH_NAND2 U390 ( .A(n349), .B(n311), .Z(n351) );
  GTECH_NOT U391 ( .A(n170), .Z(n311) );
  GTECH_NOT U392 ( .A(update_period[3]), .Z(n349) );
  GTECH_OAI21 U393 ( .A(n354), .B(n314), .C(n178), .Z(n353) );
  GTECH_NOT U394 ( .A(n172), .Z(n314) );
  GTECH_OA21 U395 ( .A(n171), .B(update_period[2]), .C(n355), .Z(n352) );
  GTECH_OR_NOT U396 ( .A(n172), .B(n354), .Z(n355) );
  GTECH_NAND2 U397 ( .A(update_period[0]), .B(n173), .Z(n354) );
  GTECH_AO21 U398 ( .A(period[2]), .B(n215), .C(reset), .Z(N11) );
  GTECH_AO21 U399 ( .A(period[1]), .B(n215), .C(reset), .Z(N10) );
  GTECH_NOT U400 ( .A(n216), .Z(n215) );
  GTECH_NAND2 U401 ( .A(period_load), .B(n189), .Z(n216) );
  GTECH_NOT U402 ( .A(reset), .Z(n189) );
endmodule

