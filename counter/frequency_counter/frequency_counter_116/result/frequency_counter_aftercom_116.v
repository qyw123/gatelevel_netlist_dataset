
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n17, n18,
         n20, n21, n22, n23, n24, n27, n29, n31, n33, n35, n80, n159,
         sub_85_carry_2_, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n177, n188, n189, n190, n191,
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
         n346, n347, n348, n349, n350, n351, n352;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n80), .K(n80), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n80), .K(n80), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n80), .K(n80), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n80), .K(n80), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n80), .K(n80), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n80), .K(n80), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n80), .K(n80), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n80), .K(n80), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n80), .K(n80), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n80), .K(n80), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n80), .K(n80), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n177) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n80), .K(n80), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n80), .K(n80), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n175) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n80), .K(n80), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n174) );
  GTECH_FJK1S state_reg_0_ ( .J(n80), .K(n80), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n80), .K(n80), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n80), .K(n80), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n80), .K(n80), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n80), .K(n80), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n80), .K(n80), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n80), .K(n80), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n80), .K(n80), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n80), .K(n80), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n80), .K(n80), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n80), .K(n80), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n80), .K(n80), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n80), .K(n80), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n80), .K(n80), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n162) );
  GTECH_FJK1S update_digits_reg ( .J(n80), .K(n80), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n16) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n80), .K(n80), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n161) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n80), .K(n80), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n80), .K(n80), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]), .QN(n18) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n80), .K(n80), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n80), .K(n80), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]), .QN(n20) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n80), .K(n80), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n80), .K(n80), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]), .QN(n22) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n80), .K(n80), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n80), .K(n80), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]), .QN(n24) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n80), .K(n80), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n80), .K(n80), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n80), .K(n80), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n80), .K(n80), .TI(N160), .TE(N159), .CP(
        clk), .Q(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n29) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n33) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n80), .K(n80), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]), .QN(n35) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n159) );
  GTECH_ZERO U168 ( .Z(n80) );
  GTECH_NAND2 U169 ( .A(n16), .B(n188), .Z(seven_segment0_N9) );
  GTECH_NOR2 U170 ( .A(reset), .B(n189), .Z(seven_segment0_N8) );
  GTECH_NOR2 U171 ( .A(reset), .B(n190), .Z(seven_segment0_N6) );
  GTECH_NOT U172 ( .A(n159), .Z(n190) );
  GTECH_NOR2 U173 ( .A(reset), .B(n24), .Z(seven_segment0_N22) );
  GTECH_NOR2 U174 ( .A(reset), .B(n22), .Z(seven_segment0_N20) );
  GTECH_NOR2 U175 ( .A(reset), .B(n20), .Z(seven_segment0_N18) );
  GTECH_NOR2 U176 ( .A(reset), .B(n18), .Z(seven_segment0_N16) );
  GTECH_NOR2 U177 ( .A(reset), .B(n191), .Z(seven_segment0_N14) );
  GTECH_NOR2 U178 ( .A(reset), .B(n192), .Z(seven_segment0_N12) );
  GTECH_NOT U179 ( .A(ten_count[2]), .Z(n192) );
  GTECH_NOR2 U180 ( .A(reset), .B(n193), .Z(seven_segment0_N10) );
  GTECH_NOT U181 ( .A(ten_count[1]), .Z(n193) );
  GTECH_NAND2 U182 ( .A(n194), .B(n195), .Z(segments[6]) );
  GTECH_OAI21 U183 ( .A(n196), .B(n197), .C(n198), .Z(segments[3]) );
  GTECH_NOR2 U184 ( .A(segments[4]), .B(n199), .Z(n198) );
  GTECH_NOT U185 ( .A(n200), .Z(n199) );
  GTECH_OAI22 U186 ( .A(n201), .B(n202), .C(n203), .D(n204), .Z(segments[4])
         );
  GTECH_NAND3 U187 ( .A(n202), .B(n205), .C(n197), .Z(segments[2]) );
  GTECH_NOT U188 ( .A(segments[5]), .Z(n205) );
  GTECH_OAI21 U189 ( .A(n206), .B(n202), .C(n194), .Z(segments[5]) );
  GTECH_NOT U190 ( .A(n207), .Z(n194) );
  GTECH_OAI21 U191 ( .A(n208), .B(n204), .C(n200), .Z(n207) );
  GTECH_NAND3 U192 ( .A(n197), .B(n202), .C(n209), .Z(segments[1]) );
  GTECH_OA21 U193 ( .A(n204), .B(n210), .C(n195), .Z(n209) );
  GTECH_NAND2 U194 ( .A(n211), .B(n212), .Z(n204) );
  GTECH_NOT U195 ( .A(n201), .Z(n212) );
  GTECH_NAND3 U196 ( .A(n200), .B(n197), .C(n213), .Z(segments[0]) );
  GTECH_OA21 U197 ( .A(n201), .B(n202), .C(n195), .Z(n213) );
  GTECH_MUX2 U198 ( .A(n202), .B(n214), .S(n211), .Z(n195) );
  GTECH_NAND2 U199 ( .A(n210), .B(n208), .Z(n214) );
  GTECH_NAND2 U200 ( .A(n203), .B(n208), .Z(n202) );
  GTECH_NOT U201 ( .A(n196), .Z(n208) );
  GTECH_NAND2 U202 ( .A(n206), .B(n210), .Z(n197) );
  GTECH_NOT U203 ( .A(n203), .Z(n210) );
  GTECH_NAND3 U204 ( .A(n203), .B(n196), .C(n206), .Z(n200) );
  GTECH_NOT U205 ( .A(n215), .Z(n206) );
  GTECH_NAND2 U206 ( .A(n201), .B(n211), .Z(n215) );
  GTECH_MUX2 U207 ( .A(n35), .B(n31), .S(n159), .Z(n211) );
  GTECH_MUX2 U208 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n159), .Z(n201) );
  GTECH_MUX2 U209 ( .A(seven_segment0_ten_count_reg[2]), .B(
        seven_segment0_unit_count_reg[2]), .S(n159), .Z(n196) );
  GTECH_MUX2 U210 ( .A(n33), .B(n29), .S(n159), .Z(n203) );
  GTECH_AO21 U211 ( .A(period[0]), .B(n216), .C(reset), .Z(N9) );
  GTECH_ADD_AB U212 ( .A(period[11]), .B(n216), .COUT(N21) );
  GTECH_NAND2 U213 ( .A(n188), .B(n217), .Z(N20) );
  GTECH_AO21 U214 ( .A(period[10]), .B(n216), .C(reset), .Z(N19) );
  GTECH_ADD_AB U215 ( .A(period[9]), .B(n216), .COUT(N18) );
  GTECH_NOT U216 ( .A(n218), .Z(N170) );
  GTECH_ADD_AB U217 ( .A(period[8]), .B(n216), .COUT(N17) );
  GTECH_NOR2 U218 ( .A(n23), .B(n218), .Z(N168) );
  GTECH_NAND2 U219 ( .A(n219), .B(n220), .Z(N167) );
  GTECH_NOR2 U220 ( .A(n21), .B(n218), .Z(N166) );
  GTECH_NOR2 U221 ( .A(n218), .B(n221), .Z(N164) );
  GTECH_NOR2 U222 ( .A(n17), .B(n218), .Z(N162) );
  GTECH_NAND2 U223 ( .A(n222), .B(n188), .Z(n218) );
  GTECH_NOT U224 ( .A(n220), .Z(n222) );
  GTECH_OAI22 U225 ( .A(n191), .B(n223), .C(n224), .D(n225), .Z(N160) );
  GTECH_MUX2 U226 ( .A(n191), .B(n226), .S(ten_count[2]), .Z(n225) );
  GTECH_OR_NOT U227 ( .A(n227), .B(n191), .Z(n226) );
  GTECH_NOT U228 ( .A(n27), .Z(n191) );
  GTECH_AO21 U229 ( .A(period[7]), .B(n216), .C(reset), .Z(N16) );
  GTECH_OAI21 U230 ( .A(n228), .B(n229), .C(n230), .Z(N159) );
  GTECH_MUX2 U231 ( .A(n231), .B(n232), .S(ten_count[2]), .Z(N158) );
  GTECH_NOT U232 ( .A(n223), .Z(n232) );
  GTECH_NAND2 U233 ( .A(N152), .B(n227), .Z(n223) );
  GTECH_NOR2 U234 ( .A(n227), .B(n224), .Z(n231) );
  GTECH_NAND2 U235 ( .A(ten_count[1]), .B(ten_count[0]), .Z(n227) );
  GTECH_MUX2 U236 ( .A(n233), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_NOR2 U237 ( .A(n189), .B(n224), .Z(n233) );
  GTECH_NOT U238 ( .A(n234), .Z(N154) );
  GTECH_NAND2 U239 ( .A(N152), .B(n189), .Z(n234) );
  GTECH_NOT U240 ( .A(ten_count[0]), .Z(n189) );
  GTECH_NAND2 U241 ( .A(n235), .B(n15), .Z(N151) );
  GTECH_OA21 U242 ( .A(n14), .B(n236), .C(n219), .Z(n235) );
  GTECH_NOT U243 ( .A(n237), .Z(n219) );
  GTECH_OAI21 U244 ( .A(n238), .B(n228), .C(n188), .Z(n237) );
  GTECH_ADD_AB U245 ( .A(period[6]), .B(n216), .COUT(N15) );
  GTECH_OAI21 U246 ( .A(n224), .B(n236), .C(n239), .Z(N148) );
  GTECH_MUX2 U247 ( .A(n240), .B(n241), .S(n174), .Z(n239) );
  GTECH_OR3 U248 ( .A(n175), .B(n242), .C(n243), .Z(n241) );
  GTECH_NOR2 U249 ( .A(n244), .B(n245), .Z(n240) );
  GTECH_MUX2 U250 ( .A(N152), .B(N150), .S(n175), .Z(n245) );
  GTECH_NAND3 U251 ( .A(n246), .B(n220), .C(n230), .Z(N147) );
  GTECH_NOR2 U252 ( .A(n247), .B(reset), .Z(n230) );
  GTECH_AND3 U253 ( .A(n238), .B(n15), .C(n236), .Z(n247) );
  GTECH_NAND4 U254 ( .A(n175), .B(n174), .C(n161), .D(n248), .Z(n236) );
  GTECH_NAND2 U255 ( .A(n14), .B(n249), .Z(n220) );
  GTECH_NOT U256 ( .A(n15), .Z(n249) );
  GTECH_NAND3 U257 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n246) );
  GTECH_MUX2 U258 ( .A(n244), .B(n250), .S(n175), .Z(N146) );
  GTECH_OAI21 U259 ( .A(n243), .B(n242), .C(n251), .Z(n250) );
  GTECH_OAI21 U260 ( .A(n252), .B(n242), .C(n253), .Z(n244) );
  GTECH_AO21 U261 ( .A(n248), .B(n161), .C(n224), .Z(n253) );
  GTECH_NOT U262 ( .A(n243), .Z(n252) );
  GTECH_NAND3 U263 ( .A(n254), .B(n255), .C(n256), .Z(n243) );
  GTECH_NOT U264 ( .A(n161), .Z(n254) );
  GTECH_NAND2 U265 ( .A(n257), .B(n251), .Z(N144) );
  GTECH_NAND3 U266 ( .A(N152), .B(n248), .C(n161), .Z(n251) );
  GTECH_MUX2 U267 ( .A(n258), .B(n259), .S(n161), .Z(n257) );
  GTECH_NAND3 U268 ( .A(n256), .B(n255), .C(N150), .Z(n259) );
  GTECH_OA21 U269 ( .A(n224), .B(n248), .C(n260), .Z(n258) );
  GTECH_OAI21 U270 ( .A(n23), .B(n261), .C(N150), .Z(n260) );
  GTECH_NAND2 U271 ( .A(n262), .B(n255), .Z(n248) );
  GTECH_NOT U272 ( .A(n23), .Z(n255) );
  GTECH_OAI21 U273 ( .A(n242), .B(n263), .C(n264), .Z(N142) );
  GTECH_MUX2 U274 ( .A(n265), .B(n266), .S(n23), .Z(n264) );
  GTECH_NAND2 U275 ( .A(N152), .B(n262), .Z(n266) );
  GTECH_XOR2 U276 ( .A(n23), .B(n256), .Z(n263) );
  GTECH_NOT U277 ( .A(n261), .Z(n256) );
  GTECH_NAND3 U278 ( .A(n267), .B(n268), .C(sub_85_carry_2_), .Z(n261) );
  GTECH_NOT U279 ( .A(n21), .Z(n268) );
  GTECH_NAND2 U280 ( .A(n269), .B(n265), .Z(N140) );
  GTECH_NAND2 U281 ( .A(n270), .B(N152), .Z(n265) );
  GTECH_NOT U282 ( .A(n262), .Z(n270) );
  GTECH_NAND2 U283 ( .A(n21), .B(n221), .Z(n262) );
  GTECH_NOT U284 ( .A(sub_85_carry_2_), .Z(n221) );
  GTECH_MUX2 U285 ( .A(n271), .B(n272), .S(n21), .Z(n269) );
  GTECH_NAND3 U286 ( .A(sub_85_carry_2_), .B(n267), .C(N150), .Z(n272) );
  GTECH_NOT U287 ( .A(n17), .Z(n267) );
  GTECH_NOR2 U288 ( .A(n273), .B(n274), .Z(n271) );
  GTECH_MUX2 U289 ( .A(N150), .B(N152), .S(sub_85_carry_2_), .Z(n274) );
  GTECH_NOT U290 ( .A(n224), .Z(N152) );
  GTECH_AO21 U291 ( .A(period[5]), .B(n216), .C(reset), .Z(N14) );
  GTECH_MUX2 U292 ( .A(n275), .B(n273), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U293 ( .A(n276), .Z(n273) );
  GTECH_OAI21 U294 ( .A(n17), .B(n242), .C(n224), .Z(n275) );
  GTECH_OAI21 U295 ( .A(n17), .B(n224), .C(n276), .Z(N136) );
  GTECH_NAND2 U296 ( .A(n17), .B(N150), .Z(n276) );
  GTECH_NOT U297 ( .A(n242), .Z(N150) );
  GTECH_NAND2 U298 ( .A(n277), .B(n188), .Z(n242) );
  GTECH_NOT U299 ( .A(n229), .Z(n277) );
  GTECH_NAND2 U300 ( .A(n15), .B(n278), .Z(n224) );
  GTECH_NOT U301 ( .A(N169), .Z(n278) );
  GTECH_NAND2 U302 ( .A(n188), .B(n238), .Z(N169) );
  GTECH_NOT U303 ( .A(n14), .Z(n238) );
  GTECH_OA21 U304 ( .A(n279), .B(n280), .C(n281), .Z(N134) );
  GTECH_NOR2 U305 ( .A(n173), .B(n282), .Z(n279) );
  GTECH_NAND2 U306 ( .A(n188), .B(n229), .Z(N133) );
  GTECH_NAND2 U307 ( .A(n15), .B(n14), .Z(n229) );
  GTECH_NOR2 U308 ( .A(n283), .B(n284), .Z(N132) );
  GTECH_XNOR2 U309 ( .A(n173), .B(n282), .Z(n284) );
  GTECH_NAND2 U310 ( .A(n285), .B(n286), .Z(n282) );
  GTECH_NOR2 U311 ( .A(n283), .B(n287), .Z(N130) );
  GTECH_XOR2 U312 ( .A(n163), .B(n285), .Z(n287) );
  GTECH_NOT U313 ( .A(n288), .Z(n285) );
  GTECH_NAND2 U314 ( .A(n289), .B(n290), .Z(n288) );
  GTECH_NOT U315 ( .A(n164), .Z(n290) );
  GTECH_ADD_AB U316 ( .A(period[4]), .B(n216), .COUT(N13) );
  GTECH_NOR2 U317 ( .A(n283), .B(n291), .Z(N128) );
  GTECH_XOR2 U318 ( .A(n164), .B(n289), .Z(n291) );
  GTECH_NOT U319 ( .A(n292), .Z(n289) );
  GTECH_NAND2 U320 ( .A(n293), .B(n294), .Z(n292) );
  GTECH_NOR2 U321 ( .A(n283), .B(n295), .Z(N126) );
  GTECH_XOR2 U322 ( .A(n165), .B(n293), .Z(n295) );
  GTECH_NOT U323 ( .A(n296), .Z(n293) );
  GTECH_NAND2 U324 ( .A(n297), .B(n298), .Z(n296) );
  GTECH_NOT U325 ( .A(n166), .Z(n298) );
  GTECH_NOR2 U326 ( .A(n283), .B(n299), .Z(N124) );
  GTECH_XOR2 U327 ( .A(n166), .B(n297), .Z(n299) );
  GTECH_NOT U328 ( .A(n300), .Z(n297) );
  GTECH_NAND2 U329 ( .A(n301), .B(n302), .Z(n300) );
  GTECH_NOT U330 ( .A(n167), .Z(n302) );
  GTECH_NOR2 U331 ( .A(n283), .B(n303), .Z(N122) );
  GTECH_XOR2 U332 ( .A(n167), .B(n301), .Z(n303) );
  GTECH_NOT U333 ( .A(n304), .Z(n301) );
  GTECH_NAND2 U334 ( .A(n305), .B(n306), .Z(n304) );
  GTECH_NOT U335 ( .A(n168), .Z(n306) );
  GTECH_NOR2 U336 ( .A(n283), .B(n307), .Z(N120) );
  GTECH_XOR2 U337 ( .A(n168), .B(n305), .Z(n307) );
  GTECH_NOT U338 ( .A(n308), .Z(n305) );
  GTECH_NAND2 U339 ( .A(n309), .B(n310), .Z(n308) );
  GTECH_AO21 U340 ( .A(period[3]), .B(n216), .C(reset), .Z(N12) );
  GTECH_NOR2 U341 ( .A(n283), .B(n311), .Z(N118) );
  GTECH_XOR2 U342 ( .A(n169), .B(n309), .Z(n311) );
  GTECH_NOT U343 ( .A(n312), .Z(n309) );
  GTECH_NAND3 U344 ( .A(n313), .B(n314), .C(n315), .Z(n312) );
  GTECH_NOT U345 ( .A(n170), .Z(n315) );
  GTECH_OAI22 U346 ( .A(n170), .B(n316), .C(n283), .D(n317), .Z(N116) );
  GTECH_MUX2 U347 ( .A(n313), .B(n318), .S(n170), .Z(n317) );
  GTECH_NAND2 U348 ( .A(n313), .B(n314), .Z(n318) );
  GTECH_NOT U349 ( .A(n172), .Z(n314) );
  GTECH_MUX2 U350 ( .A(N112), .B(n319), .S(n171), .Z(N114) );
  GTECH_NOR2 U351 ( .A(n172), .B(n283), .Z(n319) );
  GTECH_NOT U352 ( .A(n316), .Z(N112) );
  GTECH_NAND2 U353 ( .A(n281), .B(n172), .Z(n316) );
  GTECH_NOT U354 ( .A(n283), .Z(n281) );
  GTECH_NAND2 U355 ( .A(n228), .B(n188), .Z(n283) );
  GTECH_NOT U356 ( .A(n320), .Z(n228) );
  GTECH_AOI222 U357 ( .A(n321), .B(n322), .C(update_period[11]), .D(n162), .E(
        n323), .F(n324), .Z(n320) );
  GTECH_OAI2N2 U358 ( .A(n325), .B(n326), .C(n327), .D(n328), .Z(n323) );
  GTECH_OAI21 U359 ( .A(n329), .B(n286), .C(n330), .Z(n328) );
  GTECH_NAND3 U360 ( .A(n331), .B(update_period[8]), .C(n164), .Z(n330) );
  GTECH_AND3 U361 ( .A(n331), .B(n327), .C(n324), .Z(n322) );
  GTECH_NAND2 U362 ( .A(n332), .B(n280), .Z(n324) );
  GTECH_NOT U363 ( .A(n162), .Z(n280) );
  GTECH_NOT U364 ( .A(update_period[11]), .Z(n332) );
  GTECH_NAND2 U365 ( .A(n326), .B(n325), .Z(n327) );
  GTECH_NOT U366 ( .A(n173), .Z(n325) );
  GTECH_NOT U367 ( .A(update_period[10]), .Z(n326) );
  GTECH_NAND2 U368 ( .A(n286), .B(n329), .Z(n331) );
  GTECH_NOT U369 ( .A(update_period[9]), .Z(n329) );
  GTECH_NOT U370 ( .A(n163), .Z(n286) );
  GTECH_OA22 U371 ( .A(n164), .B(update_period[8]), .C(n333), .D(n334), .Z(
        n321) );
  GTECH_OAI21 U372 ( .A(n294), .B(n335), .C(n336), .Z(n334) );
  GTECH_NAND3 U373 ( .A(n337), .B(update_period[6]), .C(n166), .Z(n336) );
  GTECH_OAI2N2 U374 ( .A(n338), .B(n339), .C(n340), .D(n341), .Z(n333) );
  GTECH_ADD_ABC U375 ( .A(n342), .B(n167), .C(update_period[5]), .COUT(n341)
         );
  GTECH_ADD_AB U376 ( .A(update_period[4]), .B(n168), .COUT(n342) );
  GTECH_OAI21 U377 ( .A(update_period[4]), .B(n168), .C(n340), .Z(n339) );
  GTECH_NOT U378 ( .A(n343), .Z(n340) );
  GTECH_OAI21 U379 ( .A(update_period[6]), .B(n166), .C(n337), .Z(n343) );
  GTECH_NAND2 U380 ( .A(n335), .B(n294), .Z(n337) );
  GTECH_NOT U381 ( .A(n165), .Z(n294) );
  GTECH_NOT U382 ( .A(update_period[7]), .Z(n335) );
  GTECH_OAI22 U383 ( .A(update_period[5]), .B(n167), .C(n344), .D(n345), .Z(
        n338) );
  GTECH_OAI21 U384 ( .A(n310), .B(n346), .C(n347), .Z(n345) );
  GTECH_NAND3 U385 ( .A(n348), .B(update_period[2]), .C(n170), .Z(n347) );
  GTECH_AND3 U386 ( .A(n349), .B(n350), .C(n348), .Z(n344) );
  GTECH_NAND2 U387 ( .A(n346), .B(n310), .Z(n348) );
  GTECH_NOT U388 ( .A(n169), .Z(n310) );
  GTECH_NOT U389 ( .A(update_period[3]), .Z(n346) );
  GTECH_OAI21 U390 ( .A(n351), .B(n313), .C(n177), .Z(n350) );
  GTECH_NOT U391 ( .A(n171), .Z(n313) );
  GTECH_OA21 U392 ( .A(n170), .B(update_period[2]), .C(n352), .Z(n349) );
  GTECH_OR_NOT U393 ( .A(n171), .B(n351), .Z(n352) );
  GTECH_NAND2 U394 ( .A(update_period[0]), .B(n172), .Z(n351) );
  GTECH_AO21 U395 ( .A(period[2]), .B(n216), .C(reset), .Z(N11) );
  GTECH_AO21 U396 ( .A(period[1]), .B(n216), .C(reset), .Z(N10) );
  GTECH_NOT U397 ( .A(n217), .Z(n216) );
  GTECH_NAND2 U398 ( .A(period_load), .B(n188), .Z(n217) );
  GTECH_NOT U399 ( .A(reset), .Z(n188) );
endmodule

