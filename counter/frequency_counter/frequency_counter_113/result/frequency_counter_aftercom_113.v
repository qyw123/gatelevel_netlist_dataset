
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
         n25, n29, n77, n155, n159, sub_85_carry_2_, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
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
         n341, n342, n343, n344, n345, n346;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n77), .K(n77), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n77), .K(n77), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n77), .K(n77), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n77), .K(n77), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n77), .K(n77), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n77), .K(n77), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n77), .K(n77), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n77), .K(n77), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n77), .K(n77), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n77), .K(n77), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n77), .K(n77), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n77), .K(n77), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n77), .K(n77), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n173) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n77), .K(n77), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n172) );
  GTECH_FJK1S state_reg_0_ ( .J(n77), .K(n77), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n77), .K(n77), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n77), .K(n77), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n77), .K(n77), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n77), .K(n77), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n77), .K(n77), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n77), .K(n77), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n77), .K(n77), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n77), .K(n77), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n77), .K(n77), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n77), .K(n77), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n77), .K(n77), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n77), .K(n77), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n77), .K(n77), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n160) );
  GTECH_FJK1S update_digits_reg ( .J(n77), .K(n77), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n77), .K(n77), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n186) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n77), .K(n77), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n77), .K(n77), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n77), .K(n77), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n77), .K(n77), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n77), .K(n77), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n77), .K(n77), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n77), .K(n77), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n77), .K(n77), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n77), .K(n77), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n77), .K(n77), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n77), .K(n77), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n77), .K(n77), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n77), .K(n77), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n155) );
  GTECH_ZERO U168 ( .Z(n77) );
  GTECH_NAND2 U169 ( .A(n15), .B(n187), .Z(seven_segment0_N9) );
  GTECH_AND_NOT U170 ( .A(ten_count[0]), .B(reset), .Z(seven_segment0_N8) );
  GTECH_AND_NOT U171 ( .A(n155), .B(reset), .Z(seven_segment0_N6) );
  GTECH_AND_NOT U172 ( .A(unit_count[3]), .B(reset), .Z(seven_segment0_N22) );
  GTECH_AND_NOT U173 ( .A(unit_count[2]), .B(reset), .Z(seven_segment0_N20) );
  GTECH_AND_NOT U174 ( .A(unit_count[1]), .B(reset), .Z(seven_segment0_N18) );
  GTECH_AND_NOT U175 ( .A(unit_count[0]), .B(reset), .Z(seven_segment0_N16) );
  GTECH_AND_NOT U176 ( .A(ten_count[3]), .B(reset), .Z(seven_segment0_N14) );
  GTECH_AND_NOT U177 ( .A(ten_count[2]), .B(reset), .Z(seven_segment0_N12) );
  GTECH_AND_NOT U178 ( .A(ten_count[1]), .B(reset), .Z(seven_segment0_N10) );
  GTECH_NAND2 U179 ( .A(n188), .B(n189), .Z(segments[6]) );
  GTECH_NAND3 U180 ( .A(n190), .B(n191), .C(n189), .Z(segments[3]) );
  GTECH_NOT U181 ( .A(segments[4]), .Z(n191) );
  GTECH_OAI21 U182 ( .A(n192), .B(n193), .C(n194), .Z(segments[4]) );
  GTECH_NAND2 U183 ( .A(n195), .B(n196), .Z(segments[2]) );
  GTECH_NOT U184 ( .A(segments[5]), .Z(n196) );
  GTECH_NAND2 U185 ( .A(n188), .B(n194), .Z(segments[5]) );
  GTECH_AND_NOT U186 ( .A(n197), .B(n198), .Z(n188) );
  GTECH_NAND3 U187 ( .A(n199), .B(n200), .C(n201), .Z(n197) );
  GTECH_NAND3 U188 ( .A(n202), .B(n189), .C(n195), .Z(segments[1]) );
  GTECH_NOT U189 ( .A(n203), .Z(n195) );
  GTECH_OAI21 U190 ( .A(n200), .B(n192), .C(n204), .Z(n203) );
  GTECH_NAND3 U191 ( .A(n199), .B(n205), .C(n200), .Z(n202) );
  GTECH_NAND3 U192 ( .A(n194), .B(n189), .C(n206), .Z(segments[0]) );
  GTECH_AOI21 U193 ( .A(n207), .B(n193), .C(n198), .Z(n206) );
  GTECH_OAI21 U194 ( .A(n199), .B(n204), .C(n190), .Z(n198) );
  GTECH_NAND4 U195 ( .A(n201), .B(n193), .C(n199), .D(n205), .Z(n190) );
  GTECH_NOT U196 ( .A(n200), .Z(n193) );
  GTECH_NAND2 U197 ( .A(n207), .B(n208), .Z(n189) );
  GTECH_NOT U198 ( .A(n192), .Z(n207) );
  GTECH_NAND2 U199 ( .A(n209), .B(n199), .Z(n192) );
  GTECH_NOT U200 ( .A(n210), .Z(n199) );
  GTECH_MUX2 U201 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n155), .Z(n210) );
  GTECH_NAND2 U202 ( .A(n200), .B(n211), .Z(n194) );
  GTECH_NOT U203 ( .A(n204), .Z(n211) );
  GTECH_NAND2 U204 ( .A(n208), .B(n205), .Z(n204) );
  GTECH_NOT U205 ( .A(n209), .Z(n205) );
  GTECH_MUX2 U206 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n155), .Z(n209) );
  GTECH_NOT U207 ( .A(n201), .Z(n208) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n155), .Z(n201) );
  GTECH_MUX2 U209 ( .A(n29), .B(n25), .S(n155), .Z(n200) );
  GTECH_AO21 U210 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND_NOT U211 ( .A(period[11]), .B(n213), .Z(N21) );
  GTECH_NAND2 U212 ( .A(n187), .B(n213), .Z(N20) );
  GTECH_AO21 U213 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND_NOT U214 ( .A(period[9]), .B(n213), .Z(N18) );
  GTECH_AND_NOT U215 ( .A(period[8]), .B(n213), .Z(N17) );
  GTECH_AND_NOT U216 ( .A(N170), .B(n22), .Z(N168) );
  GTECH_NAND2 U217 ( .A(n214), .B(n215), .Z(N167) );
  GTECH_NOT U218 ( .A(n216), .Z(n214) );
  GTECH_AND_NOT U219 ( .A(N170), .B(n20), .Z(N166) );
  GTECH_AND_NOT U220 ( .A(sub_85_carry_2_), .B(n217), .Z(N164) );
  GTECH_AND_NOT U221 ( .A(N170), .B(n16), .Z(N162) );
  GTECH_NOT U222 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U223 ( .A(n218), .B(n187), .Z(n217) );
  GTECH_NOT U224 ( .A(n215), .Z(n218) );
  GTECH_MUX2 U225 ( .A(n219), .B(n220), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U226 ( .A(ten_count[2]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U227 ( .A(n223), .Z(n222) );
  GTECH_AND_NOT U228 ( .A(ten_count[2]), .B(n224), .Z(n219) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U231 ( .A(n228), .B(n223), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U232 ( .A(ten_count[1]), .B(n221), .C(n229), .Z(n223) );
  GTECH_NOT U233 ( .A(n224), .Z(n228) );
  GTECH_NAND3 U234 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n224) );
  GTECH_MUX2 U235 ( .A(n230), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND_NOT U236 ( .A(N152), .B(n231), .Z(n230) );
  GTECH_NOT U237 ( .A(n229), .Z(N154) );
  GTECH_NAND2 U238 ( .A(N152), .B(n231), .Z(n229) );
  GTECH_NOT U239 ( .A(ten_count[0]), .Z(n231) );
  GTECH_NAND2 U240 ( .A(n232), .B(n159), .Z(N151) );
  GTECH_AOI21 U241 ( .A(n233), .B(n234), .C(n216), .Z(n232) );
  GTECH_OAI21 U242 ( .A(n234), .B(n225), .C(n187), .Z(n216) );
  GTECH_NOT U243 ( .A(n235), .Z(n233) );
  GTECH_AND_NOT U244 ( .A(period[6]), .B(n213), .Z(N15) );
  GTECH_OAI21 U245 ( .A(n221), .B(n235), .C(n236), .Z(N148) );
  GTECH_MUX2 U246 ( .A(n237), .B(n238), .S(n172), .Z(n236) );
  GTECH_OR3 U247 ( .A(n173), .B(n239), .C(n240), .Z(n238) );
  GTECH_AND_NOT U248 ( .A(n241), .B(n242), .Z(n237) );
  GTECH_MUX2 U249 ( .A(n221), .B(n239), .S(n173), .Z(n241) );
  GTECH_NAND3 U250 ( .A(n243), .B(n215), .C(n227), .Z(N147) );
  GTECH_AND_NOT U251 ( .A(n187), .B(n244), .Z(n227) );
  GTECH_AND3 U252 ( .A(n234), .B(n159), .C(n235), .Z(n244) );
  GTECH_NAND4 U253 ( .A(n186), .B(n173), .C(n172), .D(n245), .Z(n235) );
  GTECH_NAND2 U254 ( .A(n14), .B(n246), .Z(n215) );
  GTECH_NOT U255 ( .A(n159), .Z(n246) );
  GTECH_NAND3 U256 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n243) );
  GTECH_MUX2 U257 ( .A(n242), .B(n247), .S(n173), .Z(N146) );
  GTECH_OAI21 U258 ( .A(n240), .B(n239), .C(n248), .Z(n247) );
  GTECH_OAI21 U259 ( .A(n249), .B(n239), .C(n250), .Z(n242) );
  GTECH_AO21 U260 ( .A(n245), .B(n186), .C(n221), .Z(n250) );
  GTECH_NOT U261 ( .A(n240), .Z(n249) );
  GTECH_NAND3 U262 ( .A(n251), .B(n252), .C(n253), .Z(n240) );
  GTECH_NOT U263 ( .A(n186), .Z(n252) );
  GTECH_NAND2 U264 ( .A(n254), .B(n248), .Z(N144) );
  GTECH_NAND3 U265 ( .A(N152), .B(n245), .C(n186), .Z(n248) );
  GTECH_MUX2 U266 ( .A(n255), .B(n256), .S(n186), .Z(n254) );
  GTECH_NAND3 U267 ( .A(n253), .B(n251), .C(N150), .Z(n256) );
  GTECH_OA22 U268 ( .A(n257), .B(n239), .C(n221), .D(n245), .Z(n255) );
  GTECH_NAND2 U269 ( .A(n258), .B(n251), .Z(n245) );
  GTECH_NOT U270 ( .A(n22), .Z(n251) );
  GTECH_AND_NOT U271 ( .A(n253), .B(n22), .Z(n257) );
  GTECH_OAI21 U272 ( .A(n239), .B(n259), .C(n260), .Z(N142) );
  GTECH_MUX2 U273 ( .A(n261), .B(n262), .S(n22), .Z(n260) );
  GTECH_NAND2 U274 ( .A(N152), .B(n258), .Z(n262) );
  GTECH_XOR2 U275 ( .A(n22), .B(n253), .Z(n259) );
  GTECH_NOT U276 ( .A(n263), .Z(n253) );
  GTECH_NAND3 U277 ( .A(n264), .B(n265), .C(sub_85_carry_2_), .Z(n263) );
  GTECH_NOT U278 ( .A(n20), .Z(n265) );
  GTECH_NAND2 U279 ( .A(n266), .B(n261), .Z(N140) );
  GTECH_NAND2 U280 ( .A(n267), .B(N152), .Z(n261) );
  GTECH_NOT U281 ( .A(n221), .Z(N152) );
  GTECH_NOT U282 ( .A(n258), .Z(n267) );
  GTECH_NAND2 U283 ( .A(n20), .B(n268), .Z(n258) );
  GTECH_NOT U284 ( .A(sub_85_carry_2_), .Z(n268) );
  GTECH_MUX2 U285 ( .A(n269), .B(n270), .S(n20), .Z(n266) );
  GTECH_NAND3 U286 ( .A(sub_85_carry_2_), .B(n264), .C(N150), .Z(n270) );
  GTECH_NOT U287 ( .A(n16), .Z(n264) );
  GTECH_AND_NOT U288 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_MUX2 U289 ( .A(n239), .B(n221), .S(sub_85_carry_2_), .Z(n271) );
  GTECH_AO21 U290 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U291 ( .A(n273), .B(n272), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U292 ( .A(n274), .Z(n272) );
  GTECH_OAI21 U293 ( .A(n16), .B(n239), .C(n221), .Z(n273) );
  GTECH_OAI21 U294 ( .A(n16), .B(n221), .C(n274), .Z(N136) );
  GTECH_NAND2 U295 ( .A(n16), .B(N150), .Z(n274) );
  GTECH_NOT U296 ( .A(n239), .Z(N150) );
  GTECH_NAND2 U297 ( .A(n275), .B(n187), .Z(n239) );
  GTECH_NOT U298 ( .A(n226), .Z(n275) );
  GTECH_NAND2 U299 ( .A(n159), .B(n276), .Z(n221) );
  GTECH_NOT U300 ( .A(N169), .Z(n276) );
  GTECH_NAND2 U301 ( .A(n187), .B(n234), .Z(N169) );
  GTECH_NOT U302 ( .A(n14), .Z(n234) );
  GTECH_AND_NOT U303 ( .A(n277), .B(n278), .Z(N134) );
  GTECH_OAI21 U304 ( .A(n171), .B(n279), .C(n160), .Z(n277) );
  GTECH_NAND2 U305 ( .A(n187), .B(n226), .Z(N133) );
  GTECH_NAND2 U306 ( .A(n159), .B(n14), .Z(n226) );
  GTECH_AND_NOT U307 ( .A(n280), .B(n278), .Z(N132) );
  GTECH_XOR2 U308 ( .A(n279), .B(n171), .Z(n280) );
  GTECH_NAND2 U309 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U310 ( .A(n283), .Z(n281) );
  GTECH_AND_NOT U311 ( .A(n284), .B(n278), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n283), .B(n161), .Z(n284) );
  GTECH_NAND2 U313 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U314 ( .A(n162), .Z(n286) );
  GTECH_NOT U315 ( .A(n287), .Z(n285) );
  GTECH_AND_NOT U316 ( .A(period[4]), .B(n213), .Z(N13) );
  GTECH_AND_NOT U317 ( .A(n288), .B(n278), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n287), .B(n162), .Z(n288) );
  GTECH_NAND2 U319 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U320 ( .A(n163), .Z(n290) );
  GTECH_NOT U321 ( .A(n291), .Z(n289) );
  GTECH_AND_NOT U322 ( .A(n292), .B(n278), .Z(N126) );
  GTECH_XOR2 U323 ( .A(n291), .B(n163), .Z(n292) );
  GTECH_NAND2 U324 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U325 ( .A(n164), .Z(n294) );
  GTECH_NOT U326 ( .A(n295), .Z(n293) );
  GTECH_AND_NOT U327 ( .A(n296), .B(n278), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n295), .B(n164), .Z(n296) );
  GTECH_NAND2 U329 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U330 ( .A(n165), .Z(n298) );
  GTECH_NOT U331 ( .A(n299), .Z(n297) );
  GTECH_AND_NOT U332 ( .A(n300), .B(n278), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n299), .B(n165), .Z(n300) );
  GTECH_NAND2 U334 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U335 ( .A(n303), .Z(n301) );
  GTECH_AND_NOT U336 ( .A(n304), .B(n278), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n303), .B(n166), .Z(n304) );
  GTECH_NAND2 U338 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U339 ( .A(n167), .Z(n306) );
  GTECH_NOT U340 ( .A(n307), .Z(n305) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND_NOT U342 ( .A(n308), .B(n278), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n307), .B(n167), .Z(n308) );
  GTECH_NAND3 U344 ( .A(n309), .B(n310), .C(n311), .Z(n307) );
  GTECH_OAI22 U345 ( .A(n168), .B(n312), .C(n278), .D(n313), .Z(N116) );
  GTECH_MUX2 U346 ( .A(n309), .B(n314), .S(n168), .Z(n313) );
  GTECH_NAND2 U347 ( .A(n309), .B(n310), .Z(n314) );
  GTECH_NOT U348 ( .A(n169), .Z(n309) );
  GTECH_MUX2 U349 ( .A(N112), .B(n315), .S(n169), .Z(N114) );
  GTECH_AND_NOT U350 ( .A(n316), .B(n170), .Z(n315) );
  GTECH_NOT U351 ( .A(n312), .Z(N112) );
  GTECH_NAND2 U352 ( .A(n316), .B(n170), .Z(n312) );
  GTECH_NOT U353 ( .A(n278), .Z(n316) );
  GTECH_NAND2 U354 ( .A(n225), .B(n187), .Z(n278) );
  GTECH_NOT U355 ( .A(n317), .Z(n225) );
  GTECH_AOI222 U356 ( .A(n318), .B(n319), .C(update_period[11]), .D(n160), .E(
        n320), .F(n321), .Z(n317) );
  GTECH_OAI2N2 U357 ( .A(n322), .B(n323), .C(n324), .D(n325), .Z(n320) );
  GTECH_OAI21 U358 ( .A(n326), .B(n282), .C(n327), .Z(n325) );
  GTECH_NAND3 U359 ( .A(n162), .B(n328), .C(update_period[8]), .Z(n327) );
  GTECH_AND3 U360 ( .A(n328), .B(n324), .C(n321), .Z(n319) );
  GTECH_NAND2 U361 ( .A(n329), .B(n330), .Z(n321) );
  GTECH_NOT U362 ( .A(n160), .Z(n330) );
  GTECH_NOT U363 ( .A(update_period[11]), .Z(n329) );
  GTECH_NAND2 U364 ( .A(n323), .B(n322), .Z(n324) );
  GTECH_NOT U365 ( .A(n171), .Z(n322) );
  GTECH_NOT U366 ( .A(update_period[10]), .Z(n323) );
  GTECH_NAND2 U367 ( .A(n282), .B(n326), .Z(n328) );
  GTECH_NOT U368 ( .A(update_period[9]), .Z(n326) );
  GTECH_NOT U369 ( .A(n161), .Z(n282) );
  GTECH_OA22 U370 ( .A(n162), .B(update_period[8]), .C(n331), .D(n332), .Z(
        n318) );
  GTECH_OAI2N2 U371 ( .A(n333), .B(n334), .C(n335), .D(n336), .Z(n332) );
  GTECH_ADD_ABC U372 ( .A(n337), .B(n165), .C(update_period[5]), .COUT(n336)
         );
  GTECH_AND_NOT U373 ( .A(update_period[4]), .B(n302), .Z(n337) );
  GTECH_NOT U374 ( .A(n166), .Z(n302) );
  GTECH_NOT U375 ( .A(update_period[6]), .Z(n334) );
  GTECH_OAI21 U376 ( .A(update_period[7]), .B(n163), .C(n164), .Z(n333) );
  GTECH_OAI2N2 U377 ( .A(n338), .B(n339), .C(update_period[7]), .D(n163), .Z(
        n331) );
  GTECH_OAI21 U378 ( .A(update_period[4]), .B(n166), .C(n335), .Z(n339) );
  GTECH_NOT U379 ( .A(n340), .Z(n335) );
  GTECH_OAI22 U380 ( .A(update_period[6]), .B(n164), .C(update_period[7]), .D(
        n163), .Z(n340) );
  GTECH_OAI21 U381 ( .A(update_period[5]), .B(n165), .C(n341), .Z(n338) );
  GTECH_AO21 U382 ( .A(n342), .B(n343), .C(n344), .Z(n341) );
  GTECH_ADD_ABC U383 ( .A(n345), .B(n167), .C(update_period[3]), .COUT(n344)
         );
  GTECH_AND_NOT U384 ( .A(update_period[2]), .B(n311), .Z(n345) );
  GTECH_NOT U385 ( .A(n168), .Z(n311) );
  GTECH_ADD_ABC U386 ( .A(update_period[1]), .B(n346), .C(n169), .COUT(n343)
         );
  GTECH_AND_NOT U387 ( .A(update_period[0]), .B(n310), .Z(n346) );
  GTECH_NOT U388 ( .A(n170), .Z(n310) );
  GTECH_OA22 U389 ( .A(n168), .B(update_period[2]), .C(n167), .D(
        update_period[3]), .Z(n342) );
  GTECH_AO21 U390 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U391 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_NOT U392 ( .A(n213), .Z(n212) );
  GTECH_NAND2 U393 ( .A(period_load), .B(n187), .Z(n213) );
  GTECH_NOT U394 ( .A(reset), .Z(n187) );
endmodule

