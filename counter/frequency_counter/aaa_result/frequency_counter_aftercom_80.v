
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n17, n21, n23,
         n26, n27, n28, n30, n31, n32, n79, n157, sub_85_carry_2_, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n79), .K(n79), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n79), .K(n79), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n79), .K(n79), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n79), .K(n79), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n79), .K(n79), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n79), .K(n79), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n79), .K(n79), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n79), .K(n79), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n79), .K(n79), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n79), .K(n79), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n79), .K(n79), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n177) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n79), .K(n79), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n176) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n79), .K(n79), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n175) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n79), .K(n79), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n174) );
  GTECH_FJK1S state_reg_0_ ( .J(n79), .K(n79), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n79), .K(n79), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n79), .K(n79), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n173) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n79), .K(n79), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n172) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n79), .K(n79), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n171) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n79), .K(n79), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n170) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n79), .K(n79), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n169) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n79), .K(n79), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n79), .K(n79), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n79), .K(n79), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n79), .K(n79), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n79), .K(n79), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n79), .K(n79), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n79), .K(n79), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n162) );
  GTECH_FJK1S update_digits_reg ( .J(n79), .K(n79), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n79), .K(n79), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n161) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n79), .K(n79), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n17) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n79), .K(n79), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n79), .K(n79), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n79), .K(n79), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n79), .K(n79), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n21) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n79), .K(n79), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n79), .K(n79), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n23) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n79), .K(n79), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n79), .K(n79), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n79), .K(n79), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n79), .K(n79), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n79), .K(n79), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n26) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n28) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n30) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n32) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n79), .K(n79), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n157) );
  GTECH_ZERO U169 ( .Z(n79) );
  GTECH_OR2 U170 ( .A(reset), .B(update_digits), .Z(seven_segment0_N9) );
  GTECH_AND2 U171 ( .A(ten_count[0]), .B(n188), .Z(seven_segment0_N8) );
  GTECH_AND2 U172 ( .A(n157), .B(n188), .Z(seven_segment0_N6) );
  GTECH_AND2 U173 ( .A(unit_count[3]), .B(n188), .Z(seven_segment0_N22) );
  GTECH_AND2 U174 ( .A(unit_count[2]), .B(n188), .Z(seven_segment0_N20) );
  GTECH_AND2 U175 ( .A(unit_count[1]), .B(n188), .Z(seven_segment0_N18) );
  GTECH_AND2 U176 ( .A(unit_count[0]), .B(n188), .Z(seven_segment0_N16) );
  GTECH_AND2 U177 ( .A(ten_count[3]), .B(n188), .Z(seven_segment0_N14) );
  GTECH_AND2 U178 ( .A(ten_count[2]), .B(n188), .Z(seven_segment0_N12) );
  GTECH_AND2 U179 ( .A(ten_count[1]), .B(n188), .Z(seven_segment0_N10) );
  GTECH_OR2 U180 ( .A(n189), .B(n190), .Z(segments[6]) );
  GTECH_NOT U181 ( .A(n191), .Z(n189) );
  GTECH_NAND3 U182 ( .A(n192), .B(n193), .C(n191), .Z(segments[3]) );
  GTECH_NOT U183 ( .A(segments[4]), .Z(n193) );
  GTECH_OAI21 U184 ( .A(n194), .B(n195), .C(n196), .Z(segments[4]) );
  GTECH_OAI21 U185 ( .A(n197), .B(n194), .C(n198), .Z(segments[2]) );
  GTECH_AND_NOT U186 ( .A(n199), .B(segments[5]), .Z(n198) );
  GTECH_OR2 U187 ( .A(n200), .B(n190), .Z(segments[5]) );
  GTECH_NAND3 U188 ( .A(n201), .B(n192), .C(n202), .Z(n190) );
  GTECH_NAND3 U189 ( .A(n203), .B(n204), .C(n197), .Z(n202) );
  GTECH_NOT U190 ( .A(n196), .Z(n200) );
  GTECH_NAND3 U191 ( .A(n205), .B(n199), .C(n206), .Z(segments[1]) );
  GTECH_NAND3 U192 ( .A(n207), .B(n204), .C(n197), .Z(n205) );
  GTECH_NAND3 U193 ( .A(n196), .B(n192), .C(n206), .Z(segments[0]) );
  GTECH_OA21 U194 ( .A(n197), .B(n194), .C(n208), .Z(n206) );
  GTECH_AND2 U195 ( .A(n201), .B(n191), .Z(n208) );
  GTECH_OR2 U196 ( .A(n203), .B(n194), .Z(n191) );
  GTECH_OR2 U197 ( .A(n204), .B(n199), .Z(n201) );
  GTECH_OR2 U198 ( .A(n209), .B(n207), .Z(n194) );
  GTECH_NAND4 U199 ( .A(n207), .B(n195), .C(n203), .D(n204), .Z(n192) );
  GTECH_NOT U200 ( .A(n209), .Z(n204) );
  GTECH_MUX2 U201 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n157), .Z(n209) );
  GTECH_OR2 U202 ( .A(n199), .B(n195), .Z(n196) );
  GTECH_NOT U203 ( .A(n197), .Z(n195) );
  GTECH_MUX2 U204 ( .A(n30), .B(n26), .S(n157), .Z(n197) );
  GTECH_OR2 U205 ( .A(n203), .B(n210), .Z(n199) );
  GTECH_NOT U206 ( .A(n207), .Z(n210) );
  GTECH_MUX2 U207 ( .A(n31), .B(n27), .S(n157), .Z(n207) );
  GTECH_NOT U208 ( .A(n211), .Z(n203) );
  GTECH_MUX2 U209 ( .A(n32), .B(n28), .S(n157), .Z(n211) );
  GTECH_AO21 U210 ( .A(period[0]), .B(n212), .C(reset), .Z(N9) );
  GTECH_AND2 U211 ( .A(period[11]), .B(n212), .Z(N21) );
  GTECH_OR2 U212 ( .A(n212), .B(reset), .Z(N20) );
  GTECH_AO21 U213 ( .A(period[10]), .B(n212), .C(reset), .Z(N19) );
  GTECH_AND2 U214 ( .A(period[9]), .B(n212), .Z(N18) );
  GTECH_AND2 U215 ( .A(period[8]), .B(n212), .Z(N17) );
  GTECH_AND2 U216 ( .A(N170), .B(n213), .Z(N168) );
  GTECH_OR2 U217 ( .A(n214), .B(n215), .Z(N167) );
  GTECH_NOT U218 ( .A(n216), .Z(n214) );
  GTECH_AND2 U219 ( .A(N170), .B(n217), .Z(N166) );
  GTECH_AND2 U220 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U221 ( .A(N170), .B(n218), .Z(N162) );
  GTECH_NOT U222 ( .A(n219), .Z(N170) );
  GTECH_OR2 U223 ( .A(reset), .B(n216), .Z(n219) );
  GTECH_MUX2 U224 ( .A(n220), .B(n221), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U225 ( .A(ten_count[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U226 ( .A(n224), .Z(n223) );
  GTECH_AND2 U227 ( .A(n225), .B(ten_count[2]), .Z(n220) );
  GTECH_AO21 U228 ( .A(period[7]), .B(n212), .C(reset), .Z(N16) );
  GTECH_OAI21 U229 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U230 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U231 ( .A(ten_count[1]), .B(n222), .C(n229), .Z(n224) );
  GTECH_NOT U232 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U233 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U234 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U235 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U236 ( .A(n229), .Z(N154) );
  GTECH_OR2 U237 ( .A(ten_count[0]), .B(n222), .Z(n229) );
  GTECH_OR3 U238 ( .A(n232), .B(n215), .C(n233), .Z(N151) );
  GTECH_OAI21 U239 ( .A(n234), .B(n226), .C(n188), .Z(n215) );
  GTECH_NOT U240 ( .A(n235), .Z(n226) );
  GTECH_NOR2 U241 ( .A(n14), .B(n236), .Z(n232) );
  GTECH_AND2 U242 ( .A(period[6]), .B(n212), .Z(N15) );
  GTECH_OAI21 U243 ( .A(n222), .B(n236), .C(n237), .Z(N148) );
  GTECH_MUX2 U244 ( .A(n238), .B(n239), .S(n174), .Z(n237) );
  GTECH_OR3 U245 ( .A(n175), .B(n240), .C(n241), .Z(n239) );
  GTECH_AND_NOT U246 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U247 ( .A(n222), .B(n240), .S(n175), .Z(n242) );
  GTECH_NAND3 U248 ( .A(n244), .B(n216), .C(n228), .Z(N147) );
  GTECH_AOI21 U249 ( .A(n245), .B(n15), .C(reset), .Z(n228) );
  GTECH_AND_NOT U250 ( .A(n236), .B(n14), .Z(n245) );
  GTECH_NAND4 U251 ( .A(n175), .B(n174), .C(n161), .D(n246), .Z(n236) );
  GTECH_OR2 U252 ( .A(n15), .B(n234), .Z(n216) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U254 ( .A(n243), .B(n247), .S(n175), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n241), .B(n240), .C(n248), .Z(n247) );
  GTECH_OAI21 U256 ( .A(n249), .B(n240), .C(n250), .Z(n243) );
  GTECH_AO21 U257 ( .A(n246), .B(n161), .C(n222), .Z(n250) );
  GTECH_NOT U258 ( .A(n241), .Z(n249) );
  GTECH_NAND3 U259 ( .A(n251), .B(n213), .C(n252), .Z(n241) );
  GTECH_NOT U260 ( .A(n161), .Z(n251) );
  GTECH_OR2 U261 ( .A(n253), .B(n254), .Z(N144) );
  GTECH_MUX2 U262 ( .A(n255), .B(n256), .S(n161), .Z(n254) );
  GTECH_AND3 U263 ( .A(n252), .B(n213), .C(N150), .Z(n256) );
  GTECH_NOT U264 ( .A(n23), .Z(n213) );
  GTECH_OAI21 U265 ( .A(n222), .B(n246), .C(n257), .Z(n255) );
  GTECH_OAI21 U266 ( .A(n23), .B(n258), .C(N150), .Z(n257) );
  GTECH_NOT U267 ( .A(n248), .Z(n253) );
  GTECH_NAND3 U268 ( .A(N152), .B(n246), .C(n161), .Z(n248) );
  GTECH_OR2 U269 ( .A(n23), .B(n259), .Z(n246) );
  GTECH_OAI21 U270 ( .A(n240), .B(n260), .C(n261), .Z(N142) );
  GTECH_MUX2 U271 ( .A(n262), .B(n263), .S(n23), .Z(n261) );
  GTECH_OR2 U272 ( .A(n259), .B(n222), .Z(n263) );
  GTECH_NOT U273 ( .A(n264), .Z(n259) );
  GTECH_XOR2 U274 ( .A(n23), .B(n252), .Z(n260) );
  GTECH_NOT U275 ( .A(n258), .Z(n252) );
  GTECH_NAND3 U276 ( .A(n218), .B(n217), .C(sub_85_carry_2_), .Z(n258) );
  GTECH_OR2 U277 ( .A(n265), .B(n266), .Z(N140) );
  GTECH_MUX2 U278 ( .A(n267), .B(n268), .S(n21), .Z(n266) );
  GTECH_AND3 U279 ( .A(sub_85_carry_2_), .B(n218), .C(N150), .Z(n268) );
  GTECH_OR2 U280 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_MUX2 U281 ( .A(N150), .B(N152), .S(sub_85_carry_2_), .Z(n270) );
  GTECH_NOT U282 ( .A(n222), .Z(N152) );
  GTECH_NOT U283 ( .A(n240), .Z(N150) );
  GTECH_NOT U284 ( .A(n262), .Z(n265) );
  GTECH_OR2 U285 ( .A(n222), .B(n264), .Z(n262) );
  GTECH_OR2 U286 ( .A(sub_85_carry_2_), .B(n217), .Z(n264) );
  GTECH_NOT U287 ( .A(n21), .Z(n217) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n212), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n271), .B(n269), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n272), .Z(n269) );
  GTECH_OAI21 U291 ( .A(n17), .B(n240), .C(n222), .Z(n271) );
  GTECH_OAI21 U292 ( .A(n17), .B(n222), .C(n272), .Z(N136) );
  GTECH_OR2 U293 ( .A(n240), .B(n218), .Z(n272) );
  GTECH_NOT U294 ( .A(n17), .Z(n218) );
  GTECH_OR2 U295 ( .A(reset), .B(n227), .Z(n240) );
  GTECH_OR2 U296 ( .A(N169), .B(n233), .Z(n222) );
  GTECH_OR2 U297 ( .A(n14), .B(reset), .Z(N169) );
  GTECH_AND2 U298 ( .A(n273), .B(n274), .Z(N134) );
  GTECH_OAI21 U299 ( .A(n173), .B(n275), .C(n162), .Z(n274) );
  GTECH_OR2 U300 ( .A(n276), .B(reset), .Z(N133) );
  GTECH_NOT U301 ( .A(n227), .Z(n276) );
  GTECH_OR2 U302 ( .A(n234), .B(n233), .Z(n227) );
  GTECH_NOT U303 ( .A(n15), .Z(n233) );
  GTECH_NOT U304 ( .A(n14), .Z(n234) );
  GTECH_AND2 U305 ( .A(n277), .B(n273), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n275), .B(n173), .Z(n277) );
  GTECH_OR2 U307 ( .A(n163), .B(n278), .Z(n275) );
  GTECH_AND2 U308 ( .A(n279), .B(n273), .Z(N130) );
  GTECH_XOR2 U309 ( .A(n278), .B(n163), .Z(n279) );
  GTECH_OR2 U310 ( .A(n164), .B(n280), .Z(n278) );
  GTECH_AND2 U311 ( .A(period[4]), .B(n212), .Z(N13) );
  GTECH_AND2 U312 ( .A(n281), .B(n273), .Z(N128) );
  GTECH_XOR2 U313 ( .A(n280), .B(n164), .Z(n281) );
  GTECH_OR2 U314 ( .A(n165), .B(n282), .Z(n280) );
  GTECH_AND2 U315 ( .A(n283), .B(n273), .Z(N126) );
  GTECH_XOR2 U316 ( .A(n282), .B(n165), .Z(n283) );
  GTECH_OR2 U317 ( .A(n166), .B(n284), .Z(n282) );
  GTECH_AND2 U318 ( .A(n285), .B(n273), .Z(N124) );
  GTECH_XOR2 U319 ( .A(n284), .B(n166), .Z(n285) );
  GTECH_OR2 U320 ( .A(n167), .B(n286), .Z(n284) );
  GTECH_AND2 U321 ( .A(n287), .B(n273), .Z(N122) );
  GTECH_XOR2 U322 ( .A(n286), .B(n167), .Z(n287) );
  GTECH_OR2 U323 ( .A(n168), .B(n288), .Z(n286) );
  GTECH_AND2 U324 ( .A(n289), .B(n273), .Z(N120) );
  GTECH_XOR2 U325 ( .A(n288), .B(n168), .Z(n289) );
  GTECH_OR2 U326 ( .A(n169), .B(n290), .Z(n288) );
  GTECH_AO21 U327 ( .A(period[3]), .B(n212), .C(reset), .Z(N12) );
  GTECH_AND2 U328 ( .A(n291), .B(n273), .Z(N118) );
  GTECH_XOR2 U329 ( .A(n290), .B(n169), .Z(n291) );
  GTECH_NAND3 U330 ( .A(n292), .B(n293), .C(n294), .Z(n290) );
  GTECH_NOT U331 ( .A(n170), .Z(n294) );
  GTECH_OAI22 U332 ( .A(n170), .B(n295), .C(n296), .D(n297), .Z(N116) );
  GTECH_MUX2 U333 ( .A(n292), .B(n298), .S(n170), .Z(n297) );
  GTECH_OR2 U334 ( .A(n172), .B(n171), .Z(n298) );
  GTECH_MUX2 U335 ( .A(N112), .B(n299), .S(n171), .Z(N114) );
  GTECH_AND2 U336 ( .A(n273), .B(n293), .Z(n299) );
  GTECH_NOT U337 ( .A(n296), .Z(n273) );
  GTECH_NOT U338 ( .A(n295), .Z(N112) );
  GTECH_OR2 U339 ( .A(n293), .B(n296), .Z(n295) );
  GTECH_OR2 U340 ( .A(n235), .B(reset), .Z(n296) );
  GTECH_AOI222 U341 ( .A(n300), .B(n301), .C(update_period[11]), .D(n162), .E(
        n302), .F(n303), .Z(n235) );
  GTECH_AO22 U342 ( .A(n173), .B(update_period[10]), .C(n304), .D(n305), .Z(
        n302) );
  GTECH_AO22 U343 ( .A(update_period[8]), .B(n306), .C(n163), .D(
        update_period[9]), .Z(n305) );
  GTECH_OA21 U344 ( .A(n163), .B(update_period[9]), .C(n164), .Z(n306) );
  GTECH_OA21 U345 ( .A(n307), .B(n308), .C(n309), .Z(n301) );
  GTECH_AND2 U346 ( .A(n304), .B(n303), .Z(n309) );
  GTECH_OR2 U347 ( .A(update_period[11]), .B(n162), .Z(n303) );
  GTECH_OR2 U348 ( .A(n173), .B(update_period[10]), .Z(n304) );
  GTECH_AO22 U349 ( .A(n310), .B(n166), .C(n165), .D(update_period[7]), .Z(
        n308) );
  GTECH_AND2 U350 ( .A(n311), .B(update_period[6]), .Z(n310) );
  GTECH_OAI2N2 U351 ( .A(n312), .B(n313), .C(n314), .D(n315), .Z(n307) );
  GTECH_ADD_ABC U352 ( .A(n316), .B(n167), .C(update_period[5]), .COUT(n315)
         );
  GTECH_AND2 U353 ( .A(update_period[4]), .B(n168), .Z(n316) );
  GTECH_OAI21 U354 ( .A(update_period[4]), .B(n168), .C(n314), .Z(n313) );
  GTECH_NOT U355 ( .A(n317), .Z(n314) );
  GTECH_OAI21 U356 ( .A(update_period[6]), .B(n166), .C(n311), .Z(n317) );
  GTECH_OR2 U357 ( .A(n165), .B(update_period[7]), .Z(n311) );
  GTECH_OAI22 U358 ( .A(update_period[5]), .B(n167), .C(n318), .D(n319), .Z(
        n312) );
  GTECH_AO22 U359 ( .A(n320), .B(n170), .C(n169), .D(update_period[3]), .Z(
        n319) );
  GTECH_AND2 U360 ( .A(n321), .B(update_period[2]), .Z(n320) );
  GTECH_AND3 U361 ( .A(n322), .B(n323), .C(n321), .Z(n318) );
  GTECH_OR2 U362 ( .A(n169), .B(update_period[3]), .Z(n321) );
  GTECH_OAI21 U363 ( .A(n324), .B(n292), .C(n177), .Z(n323) );
  GTECH_NOT U364 ( .A(n171), .Z(n292) );
  GTECH_OA22 U365 ( .A(n170), .B(update_period[2]), .C(n325), .D(n171), .Z(
        n322) );
  GTECH_NOT U366 ( .A(n324), .Z(n325) );
  GTECH_OR2 U367 ( .A(n293), .B(n176), .Z(n324) );
  GTECH_OA22 U368 ( .A(n164), .B(update_period[8]), .C(n163), .D(
        update_period[9]), .Z(n300) );
  GTECH_NOT U369 ( .A(n172), .Z(n293) );
  GTECH_AO21 U370 ( .A(period[2]), .B(n212), .C(reset), .Z(N11) );
  GTECH_AO21 U371 ( .A(period[1]), .B(n212), .C(reset), .Z(N10) );
  GTECH_AND2 U372 ( .A(period_load), .B(n188), .Z(n212) );
  GTECH_NOT U373 ( .A(reset), .Z(n188) );
endmodule

