
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
         n23, n27, n28, n29, n32, n33, n76, n155, sub_85_carry_2_, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n76), .K(n76), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n76), .K(n76), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n76), .K(n76), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n76), .K(n76), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n76), .K(n76), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n76), .K(n76), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n76), .K(n76), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n76), .K(n76), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n76), .K(n76), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n76), .K(n76), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n76), .K(n76), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n171) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n76), .K(n76), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n76), .K(n76), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n169) );
  GTECH_FJK1S state_reg_0_ ( .J(n76), .K(n76), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n76), .K(n76), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n76), .K(n76), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n76), .K(n76), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n76), .K(n76), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n76), .K(n76), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n76), .K(n76), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n76), .K(n76), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n76), .K(n76), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n76), .K(n76), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n76), .K(n76), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n76), .K(n76), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n76), .K(n76), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n76), .K(n76), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n157) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n76), .K(n76), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n76), .K(n76), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n76), .K(n76), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n76), .K(n76), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n76), .K(n76), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n76), .K(n76), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n76), .K(n76), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n76), .K(n76), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n76), .K(n76), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n76), .K(n76), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n76), .K(n76), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n76), .K(n76), .TI(N160), .TE(N159), .CP(
        clk), .Q(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n155) );
  GTECH_ZERO U164 ( .Z(n76) );
  GTECH_NAND2 U165 ( .A(n16), .B(n184), .Z(seven_segment0_N9) );
  GTECH_AND2 U166 ( .A(ten_count[0]), .B(n184), .Z(seven_segment0_N8) );
  GTECH_AND2 U167 ( .A(n155), .B(n184), .Z(seven_segment0_N6) );
  GTECH_AND2 U168 ( .A(unit_count[3]), .B(n184), .Z(seven_segment0_N22) );
  GTECH_AND2 U169 ( .A(unit_count[2]), .B(n184), .Z(seven_segment0_N20) );
  GTECH_AND2 U170 ( .A(unit_count[1]), .B(n184), .Z(seven_segment0_N18) );
  GTECH_AND2 U171 ( .A(unit_count[0]), .B(n184), .Z(seven_segment0_N16) );
  GTECH_AND2 U172 ( .A(n27), .B(n184), .Z(seven_segment0_N14) );
  GTECH_AND2 U173 ( .A(ten_count[2]), .B(n184), .Z(seven_segment0_N12) );
  GTECH_AND2 U174 ( .A(ten_count[1]), .B(n184), .Z(seven_segment0_N10) );
  GTECH_NAND2 U175 ( .A(n185), .B(n186), .Z(segments[6]) );
  GTECH_NOT U176 ( .A(n187), .Z(segments[4]) );
  GTECH_NAND3 U177 ( .A(n186), .B(n187), .C(n188), .Z(segments[3]) );
  GTECH_OAI21 U178 ( .A(n189), .B(n190), .C(n191), .Z(n187) );
  GTECH_NOT U179 ( .A(n192), .Z(n189) );
  GTECH_NAND2 U180 ( .A(n193), .B(n194), .Z(segments[2]) );
  GTECH_NOT U181 ( .A(segments[5]), .Z(n194) );
  GTECH_OAI21 U182 ( .A(n195), .B(n192), .C(n185), .Z(segments[5]) );
  GTECH_AND2 U183 ( .A(n196), .B(n188), .Z(n185) );
  GTECH_MUX2 U184 ( .A(n192), .B(n197), .S(n198), .Z(n196) );
  GTECH_NAND2 U185 ( .A(n191), .B(n199), .Z(n197) );
  GTECH_NAND3 U186 ( .A(n200), .B(n186), .C(n193), .Z(segments[1]) );
  GTECH_NOT U187 ( .A(n201), .Z(n193) );
  GTECH_OAI21 U188 ( .A(n191), .B(n202), .C(n192), .Z(n201) );
  GTECH_NAND3 U189 ( .A(n203), .B(n198), .C(n191), .Z(n200) );
  GTECH_NAND3 U190 ( .A(n188), .B(n186), .C(n204), .Z(segments[0]) );
  GTECH_OA22 U191 ( .A(n205), .B(n192), .C(n191), .D(n202), .Z(n204) );
  GTECH_NAND2 U192 ( .A(n203), .B(n206), .Z(n192) );
  GTECH_NAND2 U193 ( .A(n190), .B(n206), .Z(n186) );
  GTECH_NOT U194 ( .A(n199), .Z(n206) );
  GTECH_NOT U195 ( .A(n202), .Z(n190) );
  GTECH_NAND2 U196 ( .A(n207), .B(n198), .Z(n202) );
  GTECH_NOT U197 ( .A(n203), .Z(n207) );
  GTECH_NAND3 U198 ( .A(n203), .B(n199), .C(n205), .Z(n188) );
  GTECH_NOT U199 ( .A(n208), .Z(n205) );
  GTECH_NAND2 U200 ( .A(n195), .B(n198), .Z(n208) );
  GTECH_NOT U201 ( .A(n209), .Z(n198) );
  GTECH_MUX2 U202 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n155), .Z(n209) );
  GTECH_NOT U203 ( .A(n191), .Z(n195) );
  GTECH_MUX2 U204 ( .A(n32), .B(n28), .S(n155), .Z(n191) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n155), .Z(n199) );
  GTECH_MUX2 U206 ( .A(n33), .B(n29), .S(n155), .Z(n203) );
  GTECH_AO21 U207 ( .A(period[0]), .B(n210), .C(reset), .Z(N9) );
  GTECH_AND2 U208 ( .A(period[11]), .B(n210), .Z(N21) );
  GTECH_NAND2 U209 ( .A(n184), .B(n211), .Z(N20) );
  GTECH_AO21 U210 ( .A(period[10]), .B(n210), .C(reset), .Z(N19) );
  GTECH_AND2 U211 ( .A(period[9]), .B(n210), .Z(N18) );
  GTECH_AND2 U212 ( .A(period[8]), .B(n210), .Z(N17) );
  GTECH_AND2 U213 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_NAND2 U214 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U215 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_AND2 U216 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U217 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U218 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U219 ( .A(n218), .B(n184), .Z(n217) );
  GTECH_NOT U220 ( .A(n214), .Z(n218) );
  GTECH_OAI2N2 U221 ( .A(n219), .B(n220), .C(n221), .D(n27), .Z(N160) );
  GTECH_MUX2 U222 ( .A(n222), .B(n223), .S(ten_count[2]), .Z(n220) );
  GTECH_NAND2 U223 ( .A(n224), .B(n222), .Z(n223) );
  GTECH_NOT U224 ( .A(n27), .Z(n222) );
  GTECH_AO21 U225 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U226 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U227 ( .A(n228), .B(n221), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U228 ( .A(n229), .Z(n221) );
  GTECH_NAND2 U229 ( .A(N152), .B(n230), .Z(n229) );
  GTECH_AND2 U230 ( .A(N152), .B(n224), .Z(n228) );
  GTECH_NOT U231 ( .A(n230), .Z(n224) );
  GTECH_NAND2 U232 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n230) );
  GTECH_MUX2 U233 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U234 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U235 ( .A(n232), .Z(N154) );
  GTECH_NAND2 U236 ( .A(N152), .B(n233), .Z(n232) );
  GTECH_NOT U237 ( .A(ten_count[0]), .Z(n233) );
  GTECH_NAND2 U238 ( .A(n234), .B(n15), .Z(N151) );
  GTECH_OA21 U239 ( .A(n14), .B(n235), .C(n213), .Z(n234) );
  GTECH_NOT U240 ( .A(n236), .Z(n213) );
  GTECH_OAI21 U241 ( .A(n237), .B(n225), .C(n184), .Z(n236) );
  GTECH_AND2 U242 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n219), .B(n235), .C(n238), .Z(N148) );
  GTECH_NOT U244 ( .A(n239), .Z(n238) );
  GTECH_MUX2 U245 ( .A(n240), .B(n241), .S(n169), .Z(n239) );
  GTECH_NOR3 U246 ( .A(n242), .B(n170), .C(n243), .Z(n241) );
  GTECH_OR_NOT U247 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U248 ( .A(n219), .B(n243), .S(n170), .Z(n245) );
  GTECH_NAND3 U249 ( .A(n246), .B(n214), .C(n227), .Z(N147) );
  GTECH_AND2 U250 ( .A(n184), .B(n247), .Z(n227) );
  GTECH_NAND3 U251 ( .A(n237), .B(n15), .C(n235), .Z(n247) );
  GTECH_NAND4 U252 ( .A(n183), .B(n170), .C(n169), .D(n248), .Z(n235) );
  GTECH_NAND2 U253 ( .A(n14), .B(n249), .Z(n214) );
  GTECH_NOT U254 ( .A(n15), .Z(n249) );
  GTECH_NAND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n246) );
  GTECH_MUX2 U256 ( .A(n244), .B(n250), .S(n170), .Z(N146) );
  GTECH_OAI21 U257 ( .A(n242), .B(n243), .C(n251), .Z(n250) );
  GTECH_OAI21 U258 ( .A(n252), .B(n243), .C(n253), .Z(n244) );
  GTECH_AO21 U259 ( .A(n248), .B(n183), .C(n219), .Z(n253) );
  GTECH_NOT U260 ( .A(n242), .Z(n252) );
  GTECH_NAND3 U261 ( .A(n212), .B(n254), .C(n255), .Z(n242) );
  GTECH_NOT U262 ( .A(n183), .Z(n254) );
  GTECH_NAND2 U263 ( .A(n256), .B(n251), .Z(N144) );
  GTECH_NAND3 U264 ( .A(N152), .B(n248), .C(n183), .Z(n251) );
  GTECH_MUX2 U265 ( .A(n257), .B(n258), .S(n183), .Z(n256) );
  GTECH_NAND3 U266 ( .A(n255), .B(n212), .C(N150), .Z(n258) );
  GTECH_OA21 U267 ( .A(n219), .B(n248), .C(n259), .Z(n257) );
  GTECH_OAI21 U268 ( .A(n23), .B(n260), .C(N150), .Z(n259) );
  GTECH_NAND2 U269 ( .A(n261), .B(n212), .Z(n248) );
  GTECH_NOT U270 ( .A(n23), .Z(n212) );
  GTECH_OAI21 U271 ( .A(n243), .B(n262), .C(n263), .Z(N142) );
  GTECH_MUX2 U272 ( .A(n264), .B(n265), .S(n23), .Z(n263) );
  GTECH_NAND2 U273 ( .A(N152), .B(n261), .Z(n265) );
  GTECH_XOR2 U274 ( .A(n23), .B(n255), .Z(n262) );
  GTECH_NOT U275 ( .A(n260), .Z(n255) );
  GTECH_NAND3 U276 ( .A(n216), .B(n215), .C(sub_85_carry_2_), .Z(n260) );
  GTECH_NOT U277 ( .A(n21), .Z(n215) );
  GTECH_NAND2 U278 ( .A(n266), .B(n264), .Z(N140) );
  GTECH_NAND2 U279 ( .A(n267), .B(N152), .Z(n264) );
  GTECH_NOT U280 ( .A(n219), .Z(N152) );
  GTECH_NOT U281 ( .A(n261), .Z(n267) );
  GTECH_NAND2 U282 ( .A(n21), .B(n268), .Z(n261) );
  GTECH_NOT U283 ( .A(sub_85_carry_2_), .Z(n268) );
  GTECH_MUX2 U284 ( .A(n269), .B(n270), .S(n21), .Z(n266) );
  GTECH_NAND3 U285 ( .A(sub_85_carry_2_), .B(n216), .C(N150), .Z(n270) );
  GTECH_NOT U286 ( .A(n17), .Z(n216) );
  GTECH_AND2 U287 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_MUX2 U288 ( .A(n243), .B(n219), .S(sub_85_carry_2_), .Z(n271) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U290 ( .A(n273), .B(n274), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U291 ( .A(n272), .Z(n274) );
  GTECH_OAI21 U292 ( .A(n17), .B(n243), .C(n219), .Z(n273) );
  GTECH_OAI21 U293 ( .A(n17), .B(n219), .C(n272), .Z(N136) );
  GTECH_NAND2 U294 ( .A(n17), .B(N150), .Z(n272) );
  GTECH_NOT U295 ( .A(n243), .Z(N150) );
  GTECH_NAND2 U296 ( .A(n275), .B(n184), .Z(n243) );
  GTECH_NOT U297 ( .A(n226), .Z(n275) );
  GTECH_NAND2 U298 ( .A(n15), .B(n276), .Z(n219) );
  GTECH_NOT U299 ( .A(N169), .Z(n276) );
  GTECH_NAND2 U300 ( .A(n184), .B(n237), .Z(N169) );
  GTECH_NOT U301 ( .A(n14), .Z(n237) );
  GTECH_AND2 U302 ( .A(n277), .B(n278), .Z(N134) );
  GTECH_OAI21 U303 ( .A(n168), .B(n279), .C(n157), .Z(n278) );
  GTECH_NAND2 U304 ( .A(n184), .B(n226), .Z(N133) );
  GTECH_NAND2 U305 ( .A(n15), .B(n14), .Z(n226) );
  GTECH_AND2 U306 ( .A(n280), .B(n277), .Z(N132) );
  GTECH_XOR2 U307 ( .A(n279), .B(n168), .Z(n280) );
  GTECH_NAND2 U308 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U309 ( .A(n158), .Z(n282) );
  GTECH_NOT U310 ( .A(n283), .Z(n281) );
  GTECH_AND2 U311 ( .A(n284), .B(n277), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n283), .B(n158), .Z(n284) );
  GTECH_NAND2 U313 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U314 ( .A(n159), .Z(n286) );
  GTECH_NOT U315 ( .A(n287), .Z(n285) );
  GTECH_AND2 U316 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U317 ( .A(n288), .B(n277), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n287), .B(n159), .Z(n288) );
  GTECH_NAND2 U319 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U320 ( .A(n160), .Z(n290) );
  GTECH_NOT U321 ( .A(n291), .Z(n289) );
  GTECH_AND2 U322 ( .A(n292), .B(n277), .Z(N126) );
  GTECH_XOR2 U323 ( .A(n291), .B(n160), .Z(n292) );
  GTECH_NAND2 U324 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U325 ( .A(n295), .Z(n293) );
  GTECH_AND2 U326 ( .A(n296), .B(n277), .Z(N124) );
  GTECH_XOR2 U327 ( .A(n295), .B(n161), .Z(n296) );
  GTECH_NAND2 U328 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U329 ( .A(n162), .Z(n298) );
  GTECH_NOT U330 ( .A(n299), .Z(n297) );
  GTECH_AND2 U331 ( .A(n300), .B(n277), .Z(N122) );
  GTECH_XOR2 U332 ( .A(n299), .B(n162), .Z(n300) );
  GTECH_NAND2 U333 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U334 ( .A(n163), .Z(n302) );
  GTECH_NOT U335 ( .A(n303), .Z(n301) );
  GTECH_AND2 U336 ( .A(n304), .B(n277), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n303), .B(n163), .Z(n304) );
  GTECH_NAND2 U338 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U339 ( .A(n307), .Z(n305) );
  GTECH_AO21 U340 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U341 ( .A(n308), .B(n277), .Z(N118) );
  GTECH_XOR2 U342 ( .A(n307), .B(n164), .Z(n308) );
  GTECH_NAND3 U343 ( .A(n309), .B(n310), .C(n311), .Z(n307) );
  GTECH_OAI2N2 U344 ( .A(n312), .B(n313), .C(N112), .D(n311), .Z(N116) );
  GTECH_NOT U345 ( .A(n165), .Z(n311) );
  GTECH_MUX2 U346 ( .A(n309), .B(n314), .S(n165), .Z(n313) );
  GTECH_NAND2 U347 ( .A(n309), .B(n310), .Z(n314) );
  GTECH_NOT U348 ( .A(n166), .Z(n309) );
  GTECH_MUX2 U349 ( .A(N112), .B(n315), .S(n166), .Z(N114) );
  GTECH_AND2 U350 ( .A(n277), .B(n310), .Z(n315) );
  GTECH_NOT U351 ( .A(n316), .Z(N112) );
  GTECH_NAND2 U352 ( .A(n277), .B(n167), .Z(n316) );
  GTECH_NOT U353 ( .A(n312), .Z(n277) );
  GTECH_NAND2 U354 ( .A(n225), .B(n184), .Z(n312) );
  GTECH_NAND2 U355 ( .A(n317), .B(n318), .Z(n225) );
  GTECH_OR3 U356 ( .A(n319), .B(n320), .C(n321), .Z(n318) );
  GTECH_OAI2N2 U357 ( .A(update_period[9]), .B(n158), .C(n322), .D(n323), .Z(
        n321) );
  GTECH_AOI2N2 U358 ( .A(update_period[7]), .B(n160), .C(n324), .D(n325), .Z(
        n323) );
  GTECH_OAI21 U359 ( .A(update_period[7]), .B(n160), .C(n161), .Z(n325) );
  GTECH_OA21 U360 ( .A(n326), .B(n327), .C(n328), .Z(n322) );
  GTECH_OR3 U361 ( .A(n327), .B(n329), .C(n330), .Z(n328) );
  GTECH_OAI2N2 U362 ( .A(n162), .B(update_period[5]), .C(n331), .D(n332), .Z(
        n330) );
  GTECH_OA21 U363 ( .A(n306), .B(n333), .C(n334), .Z(n332) );
  GTECH_NAND3 U364 ( .A(n335), .B(update_period[2]), .C(n165), .Z(n334) );
  GTECH_NAND3 U365 ( .A(n336), .B(n337), .C(n335), .Z(n331) );
  GTECH_NAND2 U366 ( .A(n333), .B(n306), .Z(n335) );
  GTECH_NOT U367 ( .A(n164), .Z(n306) );
  GTECH_NOT U368 ( .A(update_period[3]), .Z(n333) );
  GTECH_OAI2N2 U369 ( .A(n310), .B(n171), .C(update_period[1]), .D(n166), .Z(
        n337) );
  GTECH_NOT U370 ( .A(n167), .Z(n310) );
  GTECH_OA22 U371 ( .A(n166), .B(update_period[1]), .C(n165), .D(
        update_period[2]), .Z(n336) );
  GTECH_NOR2 U372 ( .A(n163), .B(update_period[4]), .Z(n329) );
  GTECH_OAI2N2 U373 ( .A(update_period[7]), .B(n160), .C(n294), .D(n324), .Z(
        n327) );
  GTECH_NOT U374 ( .A(update_period[6]), .Z(n324) );
  GTECH_NOT U375 ( .A(n161), .Z(n294) );
  GTECH_AOI22 U376 ( .A(n162), .B(update_period[5]), .C(update_period[4]), .D(
        n338), .Z(n326) );
  GTECH_OA21 U377 ( .A(update_period[5]), .B(n162), .C(n163), .Z(n338) );
  GTECH_NOR2 U378 ( .A(update_period[8]), .B(n159), .Z(n319) );
  GTECH_AOI2N2 U379 ( .A(n157), .B(update_period[11]), .C(n320), .D(n339), .Z(
        n317) );
  GTECH_AOI222 U380 ( .A(update_period[9]), .B(n158), .C(n340), .D(
        update_period[8]), .E(update_period[10]), .F(n168), .Z(n339) );
  GTECH_OA21 U381 ( .A(n158), .B(update_period[9]), .C(n159), .Z(n340) );
  GTECH_OAI2N2 U382 ( .A(update_period[11]), .B(n157), .C(n341), .D(n342), .Z(
        n320) );
  GTECH_NOT U383 ( .A(update_period[10]), .Z(n342) );
  GTECH_NOT U384 ( .A(n168), .Z(n341) );
  GTECH_AO21 U385 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U386 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U387 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U388 ( .A(period_load), .B(n184), .Z(n211) );
  GTECH_NOT U389 ( .A(reset), .Z(n184) );
endmodule

