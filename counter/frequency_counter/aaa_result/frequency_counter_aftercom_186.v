
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
         n26, n27, n29, n30, n31, n33, n76, n154, n157, sub_85_carry_2_, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n172, n183, n184, n185, n186, n187, n188, n189, n190, n191,
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
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348;
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
        .CP(clk), .Q(update_period[1]), .QN(n172) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n76), .K(n76), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
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
        .Q(dbg_state[1]), .QN(n157) );
  GTECH_FJK1S update_digits_reg ( .J(n76), .K(n76), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
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
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n184) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n76), .K(n76), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n76), .K(n76), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n76), .K(n76), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n76), .K(n76), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n76), .K(n76), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n76), .K(n76), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n76), .K(n76), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n76), .K(n76), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n76), .K(n76), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n76), .K(n76), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n76), .K(n76), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n76), .K(n76), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n76), .K(n76), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n76), .K(n76), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n33) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n154) );
  GTECH_ZERO U166 ( .Z(n76) );
  GTECH_NAND2 U167 ( .A(n15), .B(n185), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n154), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_NAND2 U177 ( .A(n186), .B(n187), .Z(segments[6]) );
  GTECH_OAI21 U178 ( .A(n188), .B(n189), .C(n190), .Z(segments[3]) );
  GTECH_AND_NOT U179 ( .A(n191), .B(segments[4]), .Z(n190) );
  GTECH_OAI21 U180 ( .A(n189), .B(n192), .C(n193), .Z(segments[4]) );
  GTECH_NAND2 U181 ( .A(n194), .B(n195), .Z(segments[2]) );
  GTECH_NOT U182 ( .A(segments[5]), .Z(n195) );
  GTECH_NAND2 U183 ( .A(n196), .B(n187), .Z(segments[5]) );
  GTECH_AND_NOT U184 ( .A(n191), .B(n197), .Z(n187) );
  GTECH_AND3 U185 ( .A(n188), .B(n198), .C(n199), .Z(n197) );
  GTECH_OA21 U186 ( .A(n199), .B(n200), .C(n193), .Z(n196) );
  GTECH_NOT U187 ( .A(n201), .Z(n194) );
  GTECH_OR3 U188 ( .A(n202), .B(n203), .C(n201), .Z(segments[1]) );
  GTECH_NAND2 U189 ( .A(n204), .B(n200), .Z(n201) );
  GTECH_AND3 U190 ( .A(n205), .B(n199), .C(n198), .Z(n202) );
  GTECH_NAND4 U191 ( .A(n186), .B(n191), .C(n204), .D(n193), .Z(segments[0])
         );
  GTECH_NAND2 U192 ( .A(n198), .B(n206), .Z(n193) );
  GTECH_NOT U193 ( .A(n200), .Z(n206) );
  GTECH_NAND2 U194 ( .A(n207), .B(n192), .Z(n204) );
  GTECH_NOT U195 ( .A(n189), .Z(n207) );
  GTECH_NAND4 U196 ( .A(n205), .B(n188), .C(n199), .D(n192), .Z(n191) );
  GTECH_NOT U197 ( .A(n198), .Z(n192) );
  GTECH_MUX2 U198 ( .A(n30), .B(n26), .S(n154), .Z(n198) );
  GTECH_NOT U199 ( .A(n203), .Z(n186) );
  GTECH_OAI22 U200 ( .A(n199), .B(n200), .C(n188), .D(n189), .Z(n203) );
  GTECH_NAND2 U201 ( .A(n199), .B(n208), .Z(n189) );
  GTECH_NOT U202 ( .A(n205), .Z(n208) );
  GTECH_NAND2 U203 ( .A(n205), .B(n209), .Z(n200) );
  GTECH_NOT U204 ( .A(n188), .Z(n209) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n154), .Z(n188) );
  GTECH_MUX2 U206 ( .A(n31), .B(n27), .S(n154), .Z(n205) );
  GTECH_MUX2 U207 ( .A(n33), .B(n29), .S(n154), .Z(n199) );
  GTECH_AO21 U208 ( .A(period[0]), .B(n210), .C(reset), .Z(N9) );
  GTECH_AND2 U209 ( .A(period[11]), .B(n210), .Z(N21) );
  GTECH_NAND2 U210 ( .A(n185), .B(n211), .Z(N20) );
  GTECH_AO21 U211 ( .A(period[10]), .B(n210), .C(reset), .Z(N19) );
  GTECH_AND2 U212 ( .A(period[9]), .B(n210), .Z(N18) );
  GTECH_AND2 U213 ( .A(period[8]), .B(n210), .Z(N17) );
  GTECH_AND2 U214 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_NAND2 U215 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U216 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_NOT U217 ( .A(n20), .Z(n215) );
  GTECH_AND2 U218 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U220 ( .A(n16), .Z(n216) );
  GTECH_NOT U221 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U222 ( .A(n218), .B(n185), .Z(n217) );
  GTECH_OAI22 U223 ( .A(n219), .B(n220), .C(n221), .D(n222), .Z(N160) );
  GTECH_MUX2 U224 ( .A(n219), .B(n223), .S(ten_count[2]), .Z(n222) );
  GTECH_NAND2 U225 ( .A(n224), .B(n219), .Z(n223) );
  GTECH_NOT U226 ( .A(ten_count[3]), .Z(n219) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U228 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_NOT U229 ( .A(n228), .Z(n227) );
  GTECH_MUX2 U230 ( .A(n229), .B(n230), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U231 ( .A(n220), .Z(n230) );
  GTECH_NAND2 U232 ( .A(N152), .B(n231), .Z(n220) );
  GTECH_AND2 U233 ( .A(N152), .B(n224), .Z(n229) );
  GTECH_NOT U234 ( .A(n231), .Z(n224) );
  GTECH_NAND2 U235 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n231) );
  GTECH_MUX2 U236 ( .A(n232), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U237 ( .A(N152), .B(ten_count[0]), .Z(n232) );
  GTECH_NOT U238 ( .A(n233), .Z(N154) );
  GTECH_NAND2 U239 ( .A(N152), .B(n234), .Z(n233) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n234) );
  GTECH_NAND2 U241 ( .A(n235), .B(n157), .Z(N151) );
  GTECH_OA21 U242 ( .A(n14), .B(n236), .C(n213), .Z(n235) );
  GTECH_NOT U243 ( .A(n237), .Z(n213) );
  GTECH_OAI21 U244 ( .A(n238), .B(n225), .C(n185), .Z(n237) );
  GTECH_AND2 U245 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U246 ( .A(n221), .B(n236), .C(n239), .Z(N148) );
  GTECH_MUX2 U247 ( .A(n240), .B(n241), .S(n169), .Z(n239) );
  GTECH_OR3 U248 ( .A(n242), .B(n243), .C(n170), .Z(n241) );
  GTECH_AND_NOT U249 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U250 ( .A(n221), .B(n243), .S(n170), .Z(n244) );
  GTECH_OR3 U251 ( .A(n218), .B(n246), .C(n228), .Z(N147) );
  GTECH_OAI21 U252 ( .A(n14), .B(n247), .C(n185), .Z(n228) );
  GTECH_NAND2 U253 ( .A(n236), .B(n157), .Z(n247) );
  GTECH_NAND4 U254 ( .A(n183), .B(n170), .C(n169), .D(n248), .Z(n236) );
  GTECH_AND3 U255 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n246) );
  GTECH_NOT U256 ( .A(n214), .Z(n218) );
  GTECH_NAND2 U257 ( .A(n14), .B(n249), .Z(n214) );
  GTECH_NOT U258 ( .A(n157), .Z(n249) );
  GTECH_MUX2 U259 ( .A(n245), .B(n250), .S(n170), .Z(N146) );
  GTECH_OAI21 U260 ( .A(n242), .B(n243), .C(n251), .Z(n250) );
  GTECH_OAI21 U261 ( .A(n252), .B(n243), .C(n253), .Z(n245) );
  GTECH_OAI21 U262 ( .A(n254), .B(n255), .C(N152), .Z(n253) );
  GTECH_NOT U263 ( .A(n242), .Z(n252) );
  GTECH_OR3 U264 ( .A(n183), .B(n22), .C(n256), .Z(n242) );
  GTECH_NAND2 U265 ( .A(n257), .B(n251), .Z(N144) );
  GTECH_OR3 U266 ( .A(n254), .B(n221), .C(n255), .Z(n251) );
  GTECH_NOT U267 ( .A(n183), .Z(n255) );
  GTECH_NOT U268 ( .A(n248), .Z(n254) );
  GTECH_MUX2 U269 ( .A(n258), .B(n259), .S(n183), .Z(n257) );
  GTECH_OR3 U270 ( .A(n22), .B(n256), .C(n243), .Z(n259) );
  GTECH_OA21 U271 ( .A(n221), .B(n248), .C(n260), .Z(n258) );
  GTECH_OAI21 U272 ( .A(n22), .B(n256), .C(N150), .Z(n260) );
  GTECH_NAND2 U273 ( .A(n261), .B(n212), .Z(n248) );
  GTECH_NOT U274 ( .A(n22), .Z(n212) );
  GTECH_OAI21 U275 ( .A(n243), .B(n262), .C(n263), .Z(N142) );
  GTECH_MUX2 U276 ( .A(n264), .B(n265), .S(n22), .Z(n263) );
  GTECH_NAND2 U277 ( .A(N152), .B(n261), .Z(n265) );
  GTECH_XNOR2 U278 ( .A(n22), .B(n256), .Z(n262) );
  GTECH_OR3 U279 ( .A(n20), .B(n16), .C(n266), .Z(n256) );
  GTECH_NAND2 U280 ( .A(n267), .B(n264), .Z(N140) );
  GTECH_NAND2 U281 ( .A(n268), .B(N152), .Z(n264) );
  GTECH_NOT U282 ( .A(n221), .Z(N152) );
  GTECH_NOT U283 ( .A(n261), .Z(n268) );
  GTECH_NAND2 U284 ( .A(n20), .B(n266), .Z(n261) );
  GTECH_MUX2 U285 ( .A(n269), .B(n270), .S(n20), .Z(n267) );
  GTECH_OR3 U286 ( .A(n16), .B(n266), .C(n243), .Z(n270) );
  GTECH_NOT U287 ( .A(sub_85_carry_2_), .Z(n266) );
  GTECH_AND2 U288 ( .A(n271), .B(n272), .Z(n269) );
  GTECH_MUX2 U289 ( .A(n243), .B(n221), .S(sub_85_carry_2_), .Z(n271) );
  GTECH_AO21 U290 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U291 ( .A(n273), .B(n274), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U292 ( .A(n272), .Z(n274) );
  GTECH_OAI21 U293 ( .A(n16), .B(n243), .C(n221), .Z(n273) );
  GTECH_OAI21 U294 ( .A(n16), .B(n221), .C(n272), .Z(N136) );
  GTECH_NAND2 U295 ( .A(n16), .B(N150), .Z(n272) );
  GTECH_NOT U296 ( .A(n243), .Z(N150) );
  GTECH_NAND2 U297 ( .A(n275), .B(n185), .Z(n243) );
  GTECH_NOT U298 ( .A(n226), .Z(n275) );
  GTECH_NAND2 U299 ( .A(n157), .B(n276), .Z(n221) );
  GTECH_NOT U300 ( .A(N169), .Z(n276) );
  GTECH_NAND2 U301 ( .A(n185), .B(n238), .Z(N169) );
  GTECH_NOT U302 ( .A(n14), .Z(n238) );
  GTECH_AND2 U303 ( .A(n277), .B(n278), .Z(N134) );
  GTECH_OAI21 U304 ( .A(n168), .B(n279), .C(n184), .Z(n278) );
  GTECH_NAND2 U305 ( .A(n185), .B(n226), .Z(N133) );
  GTECH_NAND2 U306 ( .A(n157), .B(n14), .Z(n226) );
  GTECH_AND2 U307 ( .A(n280), .B(n277), .Z(N132) );
  GTECH_XOR2 U308 ( .A(n279), .B(n168), .Z(n280) );
  GTECH_NAND2 U309 ( .A(n281), .B(n282), .Z(n279) );
  GTECH_NOT U310 ( .A(n158), .Z(n282) );
  GTECH_NOT U311 ( .A(n283), .Z(n281) );
  GTECH_AND2 U312 ( .A(n284), .B(n277), .Z(N130) );
  GTECH_XOR2 U313 ( .A(n283), .B(n158), .Z(n284) );
  GTECH_NAND2 U314 ( .A(n285), .B(n286), .Z(n283) );
  GTECH_NOT U315 ( .A(n159), .Z(n286) );
  GTECH_NOT U316 ( .A(n287), .Z(n285) );
  GTECH_AND2 U317 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U318 ( .A(n288), .B(n277), .Z(N128) );
  GTECH_XOR2 U319 ( .A(n287), .B(n159), .Z(n288) );
  GTECH_NAND2 U320 ( .A(n289), .B(n290), .Z(n287) );
  GTECH_NOT U321 ( .A(n291), .Z(n289) );
  GTECH_AND2 U322 ( .A(n292), .B(n277), .Z(N126) );
  GTECH_XOR2 U323 ( .A(n291), .B(n160), .Z(n292) );
  GTECH_NAND2 U324 ( .A(n293), .B(n294), .Z(n291) );
  GTECH_NOT U325 ( .A(n161), .Z(n294) );
  GTECH_NOT U326 ( .A(n295), .Z(n293) );
  GTECH_AND2 U327 ( .A(n296), .B(n277), .Z(N124) );
  GTECH_XOR2 U328 ( .A(n295), .B(n161), .Z(n296) );
  GTECH_NAND2 U329 ( .A(n297), .B(n298), .Z(n295) );
  GTECH_NOT U330 ( .A(n162), .Z(n298) );
  GTECH_NOT U331 ( .A(n299), .Z(n297) );
  GTECH_AND2 U332 ( .A(n300), .B(n277), .Z(N122) );
  GTECH_XOR2 U333 ( .A(n299), .B(n162), .Z(n300) );
  GTECH_NAND2 U334 ( .A(n301), .B(n302), .Z(n299) );
  GTECH_NOT U335 ( .A(n163), .Z(n302) );
  GTECH_NOT U336 ( .A(n303), .Z(n301) );
  GTECH_AND2 U337 ( .A(n304), .B(n277), .Z(N120) );
  GTECH_XOR2 U338 ( .A(n303), .B(n163), .Z(n304) );
  GTECH_NAND2 U339 ( .A(n305), .B(n306), .Z(n303) );
  GTECH_NOT U340 ( .A(n307), .Z(n305) );
  GTECH_AO21 U341 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U342 ( .A(n308), .B(n277), .Z(N118) );
  GTECH_XOR2 U343 ( .A(n307), .B(n164), .Z(n308) );
  GTECH_OR3 U344 ( .A(n167), .B(n166), .C(n165), .Z(n307) );
  GTECH_OAI22 U345 ( .A(n165), .B(n309), .C(n310), .D(n311), .Z(N116) );
  GTECH_MUX2 U346 ( .A(n312), .B(n313), .S(n165), .Z(n311) );
  GTECH_NAND2 U347 ( .A(n312), .B(n314), .Z(n313) );
  GTECH_MUX2 U348 ( .A(N112), .B(n315), .S(n166), .Z(N114) );
  GTECH_AND2 U349 ( .A(n277), .B(n314), .Z(n315) );
  GTECH_NOT U350 ( .A(n167), .Z(n314) );
  GTECH_NOT U351 ( .A(n309), .Z(N112) );
  GTECH_NAND2 U352 ( .A(n277), .B(n167), .Z(n309) );
  GTECH_NOT U353 ( .A(n310), .Z(n277) );
  GTECH_NAND2 U354 ( .A(n225), .B(n185), .Z(n310) );
  GTECH_NOT U355 ( .A(n316), .Z(n225) );
  GTECH_AOI222 U356 ( .A(n317), .B(n318), .C(update_period[11]), .D(n184), .E(
        n319), .F(n320), .Z(n316) );
  GTECH_AO22 U357 ( .A(update_period[10]), .B(n168), .C(n321), .D(n322), .Z(
        n319) );
  GTECH_AO22 U358 ( .A(update_period[8]), .B(n323), .C(n158), .D(
        update_period[9]), .Z(n322) );
  GTECH_OA21 U359 ( .A(n158), .B(update_period[9]), .C(n159), .Z(n323) );
  GTECH_OA21 U360 ( .A(n324), .B(n325), .C(n326), .Z(n318) );
  GTECH_AND2 U361 ( .A(n321), .B(n320), .Z(n326) );
  GTECH_NAND2 U362 ( .A(n327), .B(n328), .Z(n320) );
  GTECH_NOT U363 ( .A(update_period[11]), .Z(n328) );
  GTECH_NOT U364 ( .A(n184), .Z(n327) );
  GTECH_NAND2 U365 ( .A(n329), .B(n330), .Z(n321) );
  GTECH_NOT U366 ( .A(n168), .Z(n330) );
  GTECH_NOT U367 ( .A(update_period[10]), .Z(n329) );
  GTECH_AO22 U368 ( .A(n331), .B(n332), .C(update_period[7]), .D(n160), .Z(
        n325) );
  GTECH_AND2 U369 ( .A(update_period[6]), .B(n161), .Z(n331) );
  GTECH_AO22 U370 ( .A(n333), .B(n334), .C(n335), .D(n336), .Z(n324) );
  GTECH_ADD_ABC U371 ( .A(n337), .B(n162), .C(update_period[5]), .COUT(n336)
         );
  GTECH_AND2 U372 ( .A(update_period[4]), .B(n163), .Z(n337) );
  GTECH_OA22 U373 ( .A(n162), .B(update_period[5]), .C(n338), .D(n339), .Z(
        n334) );
  GTECH_AND3 U374 ( .A(n340), .B(n341), .C(n342), .Z(n339) );
  GTECH_OAI21 U375 ( .A(n343), .B(n312), .C(n172), .Z(n341) );
  GTECH_NOT U376 ( .A(n166), .Z(n312) );
  GTECH_OA21 U377 ( .A(n165), .B(update_period[2]), .C(n344), .Z(n340) );
  GTECH_OR_NOT U378 ( .A(n166), .B(n343), .Z(n344) );
  GTECH_NAND2 U379 ( .A(update_period[0]), .B(n167), .Z(n343) );
  GTECH_AO22 U380 ( .A(n345), .B(n342), .C(update_period[3]), .D(n164), .Z(
        n338) );
  GTECH_NAND2 U381 ( .A(n346), .B(n306), .Z(n342) );
  GTECH_NOT U382 ( .A(n164), .Z(n306) );
  GTECH_NOT U383 ( .A(update_period[3]), .Z(n346) );
  GTECH_AND2 U384 ( .A(n165), .B(update_period[2]), .Z(n345) );
  GTECH_OA21 U385 ( .A(n163), .B(update_period[4]), .C(n335), .Z(n333) );
  GTECH_NOT U386 ( .A(n347), .Z(n335) );
  GTECH_OAI21 U387 ( .A(update_period[6]), .B(n161), .C(n332), .Z(n347) );
  GTECH_NAND2 U388 ( .A(n348), .B(n290), .Z(n332) );
  GTECH_NOT U389 ( .A(n160), .Z(n290) );
  GTECH_NOT U390 ( .A(update_period[7]), .Z(n348) );
  GTECH_OA22 U391 ( .A(n159), .B(update_period[8]), .C(n158), .D(
        update_period[9]), .Z(n317) );
  GTECH_AO21 U392 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U393 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U394 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U395 ( .A(period_load), .B(n185), .Z(n211) );
  GTECH_NOT U396 ( .A(reset), .Z(n185) );
endmodule

