
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
         n25, n27, n29, n31, n75, n153, n157, sub_85_carry_2_, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n172, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n75), .K(n75), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n75), .K(n75), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n75), .K(n75), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n75), .K(n75), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n75), .K(n75), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n75), .K(n75), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n75), .K(n75), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n75), .K(n75), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n75), .K(n75), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n75), .K(n75), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n75), .K(n75), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]), .QN(n172) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n75), .K(n75), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n75), .K(n75), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n170) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n75), .K(n75), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n169) );
  GTECH_FJK1S state_reg_0_ ( .J(n75), .K(n75), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n75), .K(n75), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n157) );
  GTECH_FJK1S update_digits_reg ( .J(n75), .K(n75), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n75), .K(n75), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n168) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n75), .K(n75), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n167) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n75), .K(n75), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n75), .K(n75), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n75), .K(n75), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n75), .K(n75), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n75), .K(n75), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n75), .K(n75), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n75), .K(n75), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n75), .K(n75), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n75), .K(n75), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n75), .K(n75), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n184) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n75), .K(n75), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n183) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n75), .K(n75), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n75), .K(n75), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n75), .K(n75), .TI(N138), .TE(N147), 
        .CP(clk), .Q(sub_85_carry_2_) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n75), .K(n75), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n75), .K(n75), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n75), .K(n75), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n75), .K(n75), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n75), .K(n75), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n75), .K(n75), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n75), .K(n75), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n75), .K(n75), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n75), .K(n75), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n75), .K(n75), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n153) );
  GTECH_ZERO U166 ( .Z(n75) );
  GTECH_NAND2 U167 ( .A(n15), .B(n185), .Z(seven_segment0_N9) );
  GTECH_AND2 U168 ( .A(ten_count[0]), .B(n185), .Z(seven_segment0_N8) );
  GTECH_AND2 U169 ( .A(n153), .B(n185), .Z(seven_segment0_N6) );
  GTECH_AND2 U170 ( .A(unit_count[3]), .B(n185), .Z(seven_segment0_N22) );
  GTECH_AND2 U171 ( .A(unit_count[2]), .B(n185), .Z(seven_segment0_N20) );
  GTECH_AND2 U172 ( .A(unit_count[1]), .B(n185), .Z(seven_segment0_N18) );
  GTECH_AND2 U173 ( .A(unit_count[0]), .B(n185), .Z(seven_segment0_N16) );
  GTECH_AND2 U174 ( .A(ten_count[3]), .B(n185), .Z(seven_segment0_N14) );
  GTECH_AND2 U175 ( .A(ten_count[2]), .B(n185), .Z(seven_segment0_N12) );
  GTECH_AND2 U176 ( .A(ten_count[1]), .B(n185), .Z(seven_segment0_N10) );
  GTECH_NAND2 U177 ( .A(n186), .B(n187), .Z(segments[6]) );
  GTECH_NOT U178 ( .A(n188), .Z(segments[4]) );
  GTECH_NAND3 U179 ( .A(n187), .B(n188), .C(n189), .Z(segments[3]) );
  GTECH_OAI21 U180 ( .A(n190), .B(n191), .C(n192), .Z(n188) );
  GTECH_NOT U181 ( .A(n193), .Z(n191) );
  GTECH_NAND2 U182 ( .A(n194), .B(n195), .Z(segments[2]) );
  GTECH_NOT U183 ( .A(segments[5]), .Z(n195) );
  GTECH_OAI21 U184 ( .A(n196), .B(n193), .C(n186), .Z(segments[5]) );
  GTECH_AND2 U185 ( .A(n197), .B(n189), .Z(n186) );
  GTECH_OA21 U186 ( .A(n198), .B(n193), .C(n199), .Z(n197) );
  GTECH_NAND3 U187 ( .A(n192), .B(n198), .C(n200), .Z(n199) );
  GTECH_NAND3 U188 ( .A(n201), .B(n187), .C(n194), .Z(segments[1]) );
  GTECH_NOT U189 ( .A(n202), .Z(n194) );
  GTECH_OAI21 U190 ( .A(n192), .B(n203), .C(n193), .Z(n202) );
  GTECH_NAND3 U191 ( .A(n198), .B(n204), .C(n192), .Z(n201) );
  GTECH_NAND3 U192 ( .A(n189), .B(n187), .C(n205), .Z(segments[0]) );
  GTECH_OA22 U193 ( .A(n206), .B(n193), .C(n192), .D(n203), .Z(n205) );
  GTECH_NOT U194 ( .A(n196), .Z(n192) );
  GTECH_NAND2 U195 ( .A(n207), .B(n204), .Z(n193) );
  GTECH_NAND2 U196 ( .A(n190), .B(n207), .Z(n187) );
  GTECH_NOT U197 ( .A(n200), .Z(n207) );
  GTECH_NOT U198 ( .A(n203), .Z(n190) );
  GTECH_NAND2 U199 ( .A(n208), .B(n198), .Z(n203) );
  GTECH_NOT U200 ( .A(n204), .Z(n208) );
  GTECH_NAND3 U201 ( .A(n200), .B(n204), .C(n206), .Z(n189) );
  GTECH_NOT U202 ( .A(n209), .Z(n206) );
  GTECH_NAND2 U203 ( .A(n196), .B(n198), .Z(n209) );
  GTECH_OAI22 U204 ( .A(seven_segment0_ten_count_reg[3]), .B(n153), .C(
        seven_segment0_unit_count_reg[3]), .D(n210), .Z(n198) );
  GTECH_OAI22 U205 ( .A(n210), .B(n25), .C(n153), .D(n29), .Z(n196) );
  GTECH_OAI22 U206 ( .A(seven_segment0_ten_count_reg[1]), .B(n153), .C(
        seven_segment0_unit_count_reg[1]), .D(n210), .Z(n204) );
  GTECH_OAI22 U207 ( .A(n210), .B(n27), .C(n153), .D(n31), .Z(n200) );
  GTECH_NOT U208 ( .A(n153), .Z(n210) );
  GTECH_AO21 U209 ( .A(period[0]), .B(n211), .C(reset), .Z(N9) );
  GTECH_AND2 U210 ( .A(period[11]), .B(n211), .Z(N21) );
  GTECH_NAND2 U211 ( .A(n185), .B(n212), .Z(N20) );
  GTECH_AO21 U212 ( .A(period[10]), .B(n211), .C(reset), .Z(N19) );
  GTECH_AND2 U213 ( .A(period[9]), .B(n211), .Z(N18) );
  GTECH_AND2 U214 ( .A(period[8]), .B(n211), .Z(N17) );
  GTECH_AND2 U215 ( .A(N170), .B(n213), .Z(N168) );
  GTECH_NAND2 U216 ( .A(n214), .B(n215), .Z(N167) );
  GTECH_AND2 U217 ( .A(N170), .B(n216), .Z(N166) );
  GTECH_AND2 U218 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U219 ( .A(N170), .B(n217), .Z(N162) );
  GTECH_NOT U220 ( .A(n218), .Z(N170) );
  GTECH_NAND2 U221 ( .A(n219), .B(n185), .Z(n218) );
  GTECH_NOT U222 ( .A(n215), .Z(n219) );
  GTECH_OAI22 U223 ( .A(n220), .B(n221), .C(n222), .D(n223), .Z(N160) );
  GTECH_OA21 U224 ( .A(n224), .B(ten_count[2]), .C(n225), .Z(n222) );
  GTECH_NAND2 U225 ( .A(ten_count[2]), .B(n223), .Z(n221) );
  GTECH_NOT U226 ( .A(ten_count[3]), .Z(n223) );
  GTECH_AO21 U227 ( .A(period[7]), .B(n211), .C(reset), .Z(N16) );
  GTECH_OAI21 U228 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_OAI22 U229 ( .A(n225), .B(n229), .C(ten_count[2]), .D(n220), .Z(N158)
         );
  GTECH_NAND3 U230 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n220) );
  GTECH_NOT U231 ( .A(ten_count[2]), .Z(n229) );
  GTECH_NOT U232 ( .A(n230), .Z(n225) );
  GTECH_OAI21 U233 ( .A(ten_count[1]), .B(n224), .C(n231), .Z(n230) );
  GTECH_OAI21 U234 ( .A(n232), .B(n231), .C(n233), .Z(N156) );
  GTECH_NAND3 U235 ( .A(N152), .B(ten_count[0]), .C(n232), .Z(n233) );
  GTECH_NOT U236 ( .A(ten_count[1]), .Z(n232) );
  GTECH_NOT U237 ( .A(n231), .Z(N154) );
  GTECH_NAND2 U238 ( .A(N152), .B(n234), .Z(n231) );
  GTECH_NOT U239 ( .A(ten_count[0]), .Z(n234) );
  GTECH_NAND2 U240 ( .A(n235), .B(n157), .Z(N151) );
  GTECH_OA21 U241 ( .A(n14), .B(n236), .C(n214), .Z(n235) );
  GTECH_NOT U242 ( .A(n237), .Z(n214) );
  GTECH_OAI21 U243 ( .A(n238), .B(n226), .C(n185), .Z(n237) );
  GTECH_AND2 U244 ( .A(period[6]), .B(n211), .Z(N15) );
  GTECH_OAI21 U245 ( .A(n224), .B(n236), .C(n239), .Z(N148) );
  GTECH_AND2 U246 ( .A(n240), .B(n241), .Z(n239) );
  GTECH_NAND4 U247 ( .A(n242), .B(N150), .C(n243), .D(n169), .Z(n241) );
  GTECH_AO21 U248 ( .A(n244), .B(n245), .C(n169), .Z(n240) );
  GTECH_OA22 U249 ( .A(n246), .B(n242), .C(n224), .D(n170), .Z(n244) );
  GTECH_NAND3 U250 ( .A(n247), .B(n215), .C(n228), .Z(N147) );
  GTECH_AND2 U251 ( .A(n185), .B(n248), .Z(n228) );
  GTECH_NAND3 U252 ( .A(n238), .B(n157), .C(n236), .Z(n248) );
  GTECH_NAND4 U253 ( .A(n183), .B(n170), .C(n169), .D(n249), .Z(n236) );
  GTECH_NAND2 U254 ( .A(n14), .B(n250), .Z(n215) );
  GTECH_NOT U255 ( .A(n157), .Z(n250) );
  GTECH_NAND3 U256 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n247) );
  GTECH_OAI22 U257 ( .A(n251), .B(n242), .C(n170), .D(n245), .Z(N146) );
  GTECH_OA21 U258 ( .A(n243), .B(n246), .C(n252), .Z(n245) );
  GTECH_AO21 U259 ( .A(n249), .B(n183), .C(n224), .Z(n252) );
  GTECH_NOT U260 ( .A(n253), .Z(n243) );
  GTECH_NOT U261 ( .A(n170), .Z(n242) );
  GTECH_OA21 U262 ( .A(n253), .B(n246), .C(n254), .Z(n251) );
  GTECH_NAND3 U263 ( .A(n213), .B(n255), .C(n256), .Z(n253) );
  GTECH_NOT U264 ( .A(n183), .Z(n255) );
  GTECH_NAND2 U265 ( .A(n257), .B(n254), .Z(N144) );
  GTECH_NAND3 U266 ( .A(N152), .B(n249), .C(n183), .Z(n254) );
  GTECH_OA21 U267 ( .A(n183), .B(n258), .C(n259), .Z(n257) );
  GTECH_NAND4 U268 ( .A(n256), .B(n213), .C(N150), .D(n183), .Z(n259) );
  GTECH_NOT U269 ( .A(n260), .Z(n256) );
  GTECH_OA21 U270 ( .A(n224), .B(n249), .C(n261), .Z(n258) );
  GTECH_OAI21 U271 ( .A(n22), .B(n260), .C(N150), .Z(n261) );
  GTECH_NAND2 U272 ( .A(n262), .B(n213), .Z(n249) );
  GTECH_NOT U273 ( .A(n22), .Z(n213) );
  GTECH_OAI21 U274 ( .A(n246), .B(n263), .C(n264), .Z(N142) );
  GTECH_OA21 U275 ( .A(n22), .B(n265), .C(n266), .Z(n264) );
  GTECH_NAND3 U276 ( .A(N152), .B(n262), .C(n22), .Z(n266) );
  GTECH_XNOR2 U277 ( .A(n260), .B(n22), .Z(n263) );
  GTECH_NAND3 U278 ( .A(n217), .B(n216), .C(sub_85_carry_2_), .Z(n260) );
  GTECH_NOT U279 ( .A(n20), .Z(n216) );
  GTECH_NAND3 U280 ( .A(n265), .B(n267), .C(n268), .Z(N140) );
  GTECH_NAND4 U281 ( .A(sub_85_carry_2_), .B(n217), .C(N150), .D(n20), .Z(n268) );
  GTECH_NOT U282 ( .A(n16), .Z(n217) );
  GTECH_AO21 U283 ( .A(n269), .B(n270), .C(n20), .Z(n267) );
  GTECH_OA22 U284 ( .A(sub_85_carry_2_), .B(n246), .C(n271), .D(n224), .Z(n270) );
  GTECH_NAND2 U285 ( .A(n272), .B(N152), .Z(n265) );
  GTECH_NOT U286 ( .A(n224), .Z(N152) );
  GTECH_NOT U287 ( .A(n262), .Z(n272) );
  GTECH_NAND2 U288 ( .A(n20), .B(n271), .Z(n262) );
  GTECH_AO21 U289 ( .A(period[5]), .B(n211), .C(reset), .Z(N14) );
  GTECH_OAI22 U290 ( .A(sub_85_carry_2_), .B(n273), .C(n271), .D(n269), .Z(
        N138) );
  GTECH_NOT U291 ( .A(sub_85_carry_2_), .Z(n271) );
  GTECH_OA21 U292 ( .A(n16), .B(n246), .C(n224), .Z(n273) );
  GTECH_OAI21 U293 ( .A(n16), .B(n224), .C(n269), .Z(N136) );
  GTECH_NAND2 U294 ( .A(n16), .B(N150), .Z(n269) );
  GTECH_NOT U295 ( .A(n246), .Z(N150) );
  GTECH_NAND2 U296 ( .A(n274), .B(n185), .Z(n246) );
  GTECH_NOT U297 ( .A(n227), .Z(n274) );
  GTECH_NAND2 U298 ( .A(n157), .B(n275), .Z(n224) );
  GTECH_NOT U299 ( .A(N169), .Z(n275) );
  GTECH_NAND2 U300 ( .A(n185), .B(n238), .Z(N169) );
  GTECH_NOT U301 ( .A(n14), .Z(n238) );
  GTECH_AND2 U302 ( .A(n276), .B(n277), .Z(N134) );
  GTECH_OAI21 U303 ( .A(n168), .B(n278), .C(n184), .Z(n277) );
  GTECH_NAND2 U304 ( .A(n185), .B(n227), .Z(N133) );
  GTECH_NAND2 U305 ( .A(n157), .B(n14), .Z(n227) );
  GTECH_AND2 U306 ( .A(n279), .B(n276), .Z(N132) );
  GTECH_XOR2 U307 ( .A(n278), .B(n168), .Z(n279) );
  GTECH_NAND2 U308 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U309 ( .A(n282), .Z(n280) );
  GTECH_AND2 U310 ( .A(n283), .B(n276), .Z(N130) );
  GTECH_XOR2 U311 ( .A(n282), .B(n158), .Z(n283) );
  GTECH_NAND2 U312 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U313 ( .A(n159), .Z(n285) );
  GTECH_NOT U314 ( .A(n286), .Z(n284) );
  GTECH_AND2 U315 ( .A(period[4]), .B(n211), .Z(N13) );
  GTECH_AND2 U316 ( .A(n287), .B(n276), .Z(N128) );
  GTECH_XOR2 U317 ( .A(n286), .B(n159), .Z(n287) );
  GTECH_NAND2 U318 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U319 ( .A(n290), .Z(n288) );
  GTECH_AND2 U320 ( .A(n291), .B(n276), .Z(N126) );
  GTECH_XOR2 U321 ( .A(n290), .B(n160), .Z(n291) );
  GTECH_NAND2 U322 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U323 ( .A(n161), .Z(n293) );
  GTECH_NOT U324 ( .A(n294), .Z(n292) );
  GTECH_AND2 U325 ( .A(n295), .B(n276), .Z(N124) );
  GTECH_XOR2 U326 ( .A(n294), .B(n161), .Z(n295) );
  GTECH_NAND2 U327 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U328 ( .A(n162), .Z(n297) );
  GTECH_NOT U329 ( .A(n298), .Z(n296) );
  GTECH_AND2 U330 ( .A(n299), .B(n276), .Z(N122) );
  GTECH_XOR2 U331 ( .A(n298), .B(n162), .Z(n299) );
  GTECH_NAND2 U332 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U333 ( .A(n163), .Z(n301) );
  GTECH_NOT U334 ( .A(n302), .Z(n300) );
  GTECH_AND2 U335 ( .A(n303), .B(n276), .Z(N120) );
  GTECH_XOR2 U336 ( .A(n302), .B(n163), .Z(n303) );
  GTECH_NAND2 U337 ( .A(n304), .B(n305), .Z(n302) );
  GTECH_NOT U338 ( .A(n306), .Z(n304) );
  GTECH_AO21 U339 ( .A(period[3]), .B(n211), .C(reset), .Z(N12) );
  GTECH_AND2 U340 ( .A(n307), .B(n276), .Z(N118) );
  GTECH_XOR2 U341 ( .A(n306), .B(n164), .Z(n307) );
  GTECH_NAND3 U342 ( .A(n308), .B(n309), .C(n310), .Z(n306) );
  GTECH_NOT U343 ( .A(n165), .Z(n310) );
  GTECH_OAI22 U344 ( .A(n165), .B(n311), .C(n312), .D(n313), .Z(N116) );
  GTECH_OAI21 U345 ( .A(n166), .B(n165), .C(n314), .Z(n313) );
  GTECH_OAI21 U346 ( .A(n167), .B(n166), .C(n165), .Z(n314) );
  GTECH_OAI21 U347 ( .A(n166), .B(n311), .C(n315), .Z(N114) );
  GTECH_NAND3 U348 ( .A(n276), .B(n309), .C(n166), .Z(n315) );
  GTECH_NOT U349 ( .A(n167), .Z(n309) );
  GTECH_NOT U350 ( .A(n311), .Z(N112) );
  GTECH_NAND2 U351 ( .A(n276), .B(n167), .Z(n311) );
  GTECH_NOT U352 ( .A(n312), .Z(n276) );
  GTECH_NAND2 U353 ( .A(n226), .B(n185), .Z(n312) );
  GTECH_NOT U354 ( .A(n316), .Z(n226) );
  GTECH_AOI222 U355 ( .A(n317), .B(n318), .C(update_period[11]), .D(n184), .E(
        n319), .F(n320), .Z(n316) );
  GTECH_AO22 U356 ( .A(update_period[10]), .B(n168), .C(n321), .D(n322), .Z(
        n319) );
  GTECH_OAI21 U357 ( .A(n323), .B(n281), .C(n324), .Z(n322) );
  GTECH_NAND3 U358 ( .A(n325), .B(update_period[8]), .C(n159), .Z(n324) );
  GTECH_AND3 U359 ( .A(n325), .B(n321), .C(n320), .Z(n318) );
  GTECH_NAND2 U360 ( .A(n326), .B(n327), .Z(n320) );
  GTECH_NOT U361 ( .A(n184), .Z(n327) );
  GTECH_NOT U362 ( .A(update_period[11]), .Z(n326) );
  GTECH_NAND2 U363 ( .A(n328), .B(n329), .Z(n321) );
  GTECH_NOT U364 ( .A(n168), .Z(n329) );
  GTECH_NOT U365 ( .A(update_period[10]), .Z(n328) );
  GTECH_NAND2 U366 ( .A(n281), .B(n323), .Z(n325) );
  GTECH_NOT U367 ( .A(update_period[9]), .Z(n323) );
  GTECH_NOT U368 ( .A(n158), .Z(n281) );
  GTECH_OA22 U369 ( .A(n159), .B(update_period[8]), .C(n330), .D(n331), .Z(
        n317) );
  GTECH_OAI21 U370 ( .A(n289), .B(n332), .C(n333), .Z(n331) );
  GTECH_NAND3 U371 ( .A(n334), .B(update_period[6]), .C(n161), .Z(n333) );
  GTECH_AO22 U372 ( .A(n335), .B(n336), .C(n337), .D(n338), .Z(n330) );
  GTECH_ADD_ABC U373 ( .A(n339), .B(n162), .C(update_period[5]), .COUT(n338)
         );
  GTECH_AND2 U374 ( .A(update_period[4]), .B(n163), .Z(n339) );
  GTECH_OA22 U375 ( .A(n162), .B(update_period[5]), .C(n340), .D(n341), .Z(
        n336) );
  GTECH_AND3 U376 ( .A(n342), .B(n343), .C(n344), .Z(n341) );
  GTECH_OAI21 U377 ( .A(n345), .B(n308), .C(n172), .Z(n343) );
  GTECH_NOT U378 ( .A(n166), .Z(n308) );
  GTECH_OA21 U379 ( .A(n165), .B(update_period[2]), .C(n346), .Z(n342) );
  GTECH_OR_NOT U380 ( .A(n166), .B(n345), .Z(n346) );
  GTECH_NAND2 U381 ( .A(update_period[0]), .B(n167), .Z(n345) );
  GTECH_OAI21 U382 ( .A(n305), .B(n347), .C(n348), .Z(n340) );
  GTECH_NAND3 U383 ( .A(n344), .B(update_period[2]), .C(n165), .Z(n348) );
  GTECH_NAND2 U384 ( .A(n347), .B(n305), .Z(n344) );
  GTECH_NOT U385 ( .A(update_period[3]), .Z(n347) );
  GTECH_NOT U386 ( .A(n164), .Z(n305) );
  GTECH_OA21 U387 ( .A(n163), .B(update_period[4]), .C(n337), .Z(n335) );
  GTECH_NOT U388 ( .A(n349), .Z(n337) );
  GTECH_OAI21 U389 ( .A(update_period[6]), .B(n161), .C(n334), .Z(n349) );
  GTECH_NAND2 U390 ( .A(n332), .B(n289), .Z(n334) );
  GTECH_NOT U391 ( .A(n160), .Z(n289) );
  GTECH_NOT U392 ( .A(update_period[7]), .Z(n332) );
  GTECH_AO21 U393 ( .A(period[2]), .B(n211), .C(reset), .Z(N11) );
  GTECH_AO21 U394 ( .A(period[1]), .B(n211), .C(reset), .Z(N10) );
  GTECH_NOT U395 ( .A(n212), .Z(n211) );
  GTECH_NAND2 U396 ( .A(period_load), .B(n185), .Z(n212) );
  GTECH_NOT U397 ( .A(reset), .Z(n185) );
endmodule

