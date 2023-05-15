
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
         seven_segment0_N8, seven_segment0_N6, n13, n14, n15, n16, n18, n20,
         n22, n25, n27, n29, n31, n74, n152, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337;
  wire   [8:0] clk_counter;
  wire   [3:0] edge_counter;
  wire   [11:0] update_period;
  wire   [3:0] ten_count;
  wire   [3:0] unit_count;
  wire   [0:3] seven_segment0_unit_count_reg;
  wire   [0:3] seven_segment0_ten_count_reg;

  GTECH_FJK1S update_period_reg_11_ ( .J(n74), .K(n74), .TI(N21), .TE(N20), 
        .CP(clk), .Q(update_period[11]) );
  GTECH_FJK1S update_period_reg_10_ ( .J(n74), .K(n74), .TI(N19), .TE(N20), 
        .CP(clk), .Q(update_period[10]) );
  GTECH_FJK1S update_period_reg_9_ ( .J(n74), .K(n74), .TI(N18), .TE(N20), 
        .CP(clk), .Q(update_period[9]) );
  GTECH_FJK1S update_period_reg_8_ ( .J(n74), .K(n74), .TI(N17), .TE(N20), 
        .CP(clk), .Q(update_period[8]) );
  GTECH_FJK1S update_period_reg_7_ ( .J(n74), .K(n74), .TI(N16), .TE(N20), 
        .CP(clk), .Q(update_period[7]) );
  GTECH_FJK1S update_period_reg_6_ ( .J(n74), .K(n74), .TI(N15), .TE(N20), 
        .CP(clk), .Q(update_period[6]) );
  GTECH_FJK1S update_period_reg_5_ ( .J(n74), .K(n74), .TI(N14), .TE(N20), 
        .CP(clk), .Q(update_period[5]) );
  GTECH_FJK1S update_period_reg_4_ ( .J(n74), .K(n74), .TI(N13), .TE(N20), 
        .CP(clk), .Q(update_period[4]) );
  GTECH_FJK1S update_period_reg_3_ ( .J(n74), .K(n74), .TI(N12), .TE(N20), 
        .CP(clk), .Q(update_period[3]) );
  GTECH_FJK1S update_period_reg_2_ ( .J(n74), .K(n74), .TI(N11), .TE(N20), 
        .CP(clk), .Q(update_period[2]) );
  GTECH_FJK1S update_period_reg_1_ ( .J(n74), .K(n74), .TI(N10), .TE(N20), 
        .CP(clk), .Q(update_period[1]) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n74), .K(n74), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]), .QN(n169) );
  GTECH_FD1 edge_detect0_q0_reg ( .D(signal), .CP(clk), .Q(edge_detect0_q0) );
  GTECH_FD1 edge_detect0_q1_reg ( .D(edge_detect0_q0), .CP(clk), .Q(
        edge_detect0_q1) );
  GTECH_FD1 edge_detect0_q2_reg ( .D(edge_detect0_q1), .CP(clk), .Q(
        edge_detect0_q2), .QN(n13) );
  GTECH_FJK1S edge_counter_reg_5_ ( .J(n74), .K(n74), .TI(N146), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[1]), .QN(n168) );
  GTECH_FJK1S edge_counter_reg_6_ ( .J(n74), .K(n74), .TI(N148), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[2]), .QN(n167) );
  GTECH_FJK1S state_reg_0_ ( .J(n74), .K(n74), .TI(N150), .TE(N151), .CP(clk), 
        .Q(dbg_state[0]), .QN(n14) );
  GTECH_FJK1S state_reg_1_ ( .J(n74), .K(n74), .TI(N152), .TE(N151), .CP(clk), 
        .Q(dbg_state[1]), .QN(n156) );
  GTECH_FJK1S update_digits_reg ( .J(n74), .K(n74), .TI(N170), .TE(N169), .CP(
        clk), .Q(update_digits), .QN(n15) );
  GTECH_FJK1S clk_counter_reg_10_ ( .J(n74), .K(n74), .TI(N132), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[1]), .QN(n166) );
  GTECH_FJK1S clk_counter_reg_0_ ( .J(n74), .K(n74), .TI(N112), .TE(N133), 
        .CP(clk), .Q(clk_counter[0]), .QN(n165) );
  GTECH_FJK1S clk_counter_reg_1_ ( .J(n74), .K(n74), .TI(N114), .TE(N133), 
        .CP(clk), .Q(clk_counter[1]), .QN(n164) );
  GTECH_FJK1S clk_counter_reg_2_ ( .J(n74), .K(n74), .TI(N116), .TE(N133), 
        .CP(clk), .Q(clk_counter[2]), .QN(n163) );
  GTECH_FJK1S clk_counter_reg_3_ ( .J(n74), .K(n74), .TI(N118), .TE(N133), 
        .CP(clk), .Q(clk_counter[3]), .QN(n162) );
  GTECH_FJK1S clk_counter_reg_4_ ( .J(n74), .K(n74), .TI(N120), .TE(N133), 
        .CP(clk), .Q(clk_counter[4]), .QN(n161) );
  GTECH_FJK1S clk_counter_reg_5_ ( .J(n74), .K(n74), .TI(N122), .TE(N133), 
        .CP(clk), .Q(clk_counter[5]), .QN(n160) );
  GTECH_FJK1S clk_counter_reg_6_ ( .J(n74), .K(n74), .TI(N124), .TE(N133), 
        .CP(clk), .Q(clk_counter[6]), .QN(n159) );
  GTECH_FJK1S clk_counter_reg_7_ ( .J(n74), .K(n74), .TI(N126), .TE(N133), 
        .CP(clk), .Q(clk_counter[7]), .QN(n158) );
  GTECH_FJK1S clk_counter_reg_8_ ( .J(n74), .K(n74), .TI(N128), .TE(N133), 
        .CP(clk), .Q(clk_counter[8]), .QN(n157) );
  GTECH_FJK1S clk_counter_reg_9_ ( .J(n74), .K(n74), .TI(N130), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[0]), .QN(n183) );
  GTECH_FJK1S clk_counter_reg_11_ ( .J(n74), .K(n74), .TI(N134), .TE(N133), 
        .CP(clk), .Q(dbg_clk_count[2]), .QN(n182) );
  GTECH_FJK1S edge_counter_reg_4_ ( .J(n74), .K(n74), .TI(N144), .TE(N147), 
        .CP(clk), .Q(dbg_edge_count[0]), .QN(n181) );
  GTECH_FJK1S edge_counter_reg_0_ ( .J(n74), .K(n74), .TI(N136), .TE(N147), 
        .CP(clk), .Q(N62), .QN(n16) );
  GTECH_FJK1S unit_count_reg_0_ ( .J(n74), .K(n74), .TI(N162), .TE(N167), .CP(
        clk), .Q(unit_count[0]) );
  GTECH_FJK1S edge_counter_reg_1_ ( .J(n74), .K(n74), .TI(N138), .TE(N147), 
        .CP(clk), .Q(edge_counter[1]), .QN(n18) );
  GTECH_FJK1S unit_count_reg_1_ ( .J(n74), .K(n74), .TI(N164), .TE(N167), .CP(
        clk), .Q(unit_count[1]) );
  GTECH_FJK1S edge_counter_reg_2_ ( .J(n74), .K(n74), .TI(N140), .TE(N147), 
        .CP(clk), .Q(edge_counter[2]), .QN(n20) );
  GTECH_FJK1S unit_count_reg_2_ ( .J(n74), .K(n74), .TI(N166), .TE(N167), .CP(
        clk), .Q(unit_count[2]) );
  GTECH_FJK1S edge_counter_reg_3_ ( .J(n74), .K(n74), .TI(N142), .TE(N147), 
        .CP(clk), .Q(edge_counter[3]), .QN(n22) );
  GTECH_FJK1S unit_count_reg_3_ ( .J(n74), .K(n74), .TI(N168), .TE(N167), .CP(
        clk), .Q(unit_count[3]) );
  GTECH_FJK1S ten_count_reg_0_ ( .J(n74), .K(n74), .TI(N154), .TE(N159), .CP(
        clk), .Q(ten_count[0]) );
  GTECH_FJK1S ten_count_reg_1_ ( .J(n74), .K(n74), .TI(N156), .TE(N159), .CP(
        clk), .Q(ten_count[1]) );
  GTECH_FJK1S ten_count_reg_2_ ( .J(n74), .K(n74), .TI(N158), .TE(N159), .CP(
        clk), .Q(ten_count[2]) );
  GTECH_FJK1S ten_count_reg_3_ ( .J(n74), .K(n74), .TI(N160), .TE(N159), .CP(
        clk), .Q(ten_count[3]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_0_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N16), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[0]), .QN(n25) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_1_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N18), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[1]) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_2_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N20), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[2]), .QN(n27) );
  GTECH_FJK1S seven_segment0_unit_count_reg_reg_3_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N22), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_unit_count_reg[3]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_0_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N8), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[0]), .QN(n29) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_1_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N10), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[1]) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_2_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N12), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[2]), .QN(n31) );
  GTECH_FJK1S seven_segment0_ten_count_reg_reg_3_ ( .J(n74), .K(n74), .TI(
        seven_segment0_N14), .TE(seven_segment0_N9), .CP(clk), .Q(
        seven_segment0_ten_count_reg[3]) );
  GTECH_FD1 seven_segment0_digit_reg ( .D(seven_segment0_N6), .CP(clk), .Q(
        digit), .QN(n152) );
  GTECH_ZERO U165 ( .Z(n74) );
  GTECH_NAND2 U166 ( .A(n15), .B(n184), .Z(seven_segment0_N9) );
  GTECH_AND2 U167 ( .A(ten_count[0]), .B(n184), .Z(seven_segment0_N8) );
  GTECH_AND2 U168 ( .A(n152), .B(n184), .Z(seven_segment0_N6) );
  GTECH_AND2 U169 ( .A(unit_count[3]), .B(n184), .Z(seven_segment0_N22) );
  GTECH_AND2 U170 ( .A(unit_count[2]), .B(n184), .Z(seven_segment0_N20) );
  GTECH_AND2 U171 ( .A(unit_count[1]), .B(n184), .Z(seven_segment0_N18) );
  GTECH_AND2 U172 ( .A(unit_count[0]), .B(n184), .Z(seven_segment0_N16) );
  GTECH_AND2 U173 ( .A(ten_count[3]), .B(n184), .Z(seven_segment0_N14) );
  GTECH_AND2 U174 ( .A(ten_count[2]), .B(n184), .Z(seven_segment0_N12) );
  GTECH_AND2 U175 ( .A(ten_count[1]), .B(n184), .Z(seven_segment0_N10) );
  GTECH_NAND2 U176 ( .A(n185), .B(n186), .Z(segments[6]) );
  GTECH_NOT U177 ( .A(n187), .Z(segments[4]) );
  GTECH_NAND3 U178 ( .A(n186), .B(n187), .C(n188), .Z(segments[3]) );
  GTECH_OAI21 U179 ( .A(n189), .B(n190), .C(n191), .Z(n187) );
  GTECH_NOT U180 ( .A(n192), .Z(n190) );
  GTECH_NAND2 U181 ( .A(n193), .B(n194), .Z(segments[2]) );
  GTECH_NOT U182 ( .A(segments[5]), .Z(n194) );
  GTECH_OAI21 U183 ( .A(n195), .B(n192), .C(n185), .Z(segments[5]) );
  GTECH_AND2 U184 ( .A(n196), .B(n188), .Z(n185) );
  GTECH_MUX2 U185 ( .A(n192), .B(n197), .S(n198), .Z(n196) );
  GTECH_NAND2 U186 ( .A(n199), .B(n191), .Z(n197) );
  GTECH_NAND3 U187 ( .A(n200), .B(n186), .C(n193), .Z(segments[1]) );
  GTECH_NOT U188 ( .A(n201), .Z(n193) );
  GTECH_OAI21 U189 ( .A(n191), .B(n202), .C(n192), .Z(n201) );
  GTECH_NAND3 U190 ( .A(n198), .B(n203), .C(n191), .Z(n200) );
  GTECH_NAND3 U191 ( .A(n188), .B(n186), .C(n204), .Z(segments[0]) );
  GTECH_OA22 U192 ( .A(n205), .B(n192), .C(n191), .D(n202), .Z(n204) );
  GTECH_NAND2 U193 ( .A(n206), .B(n203), .Z(n192) );
  GTECH_NAND2 U194 ( .A(n189), .B(n206), .Z(n186) );
  GTECH_NOT U195 ( .A(n202), .Z(n189) );
  GTECH_NAND2 U196 ( .A(n207), .B(n198), .Z(n202) );
  GTECH_NAND3 U197 ( .A(n199), .B(n203), .C(n205), .Z(n188) );
  GTECH_NOT U198 ( .A(n208), .Z(n205) );
  GTECH_NAND2 U199 ( .A(n195), .B(n198), .Z(n208) );
  GTECH_NOT U200 ( .A(n209), .Z(n198) );
  GTECH_MUX2 U201 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n152), .Z(n209) );
  GTECH_NOT U202 ( .A(n191), .Z(n195) );
  GTECH_MUX2 U203 ( .A(n29), .B(n25), .S(n152), .Z(n191) );
  GTECH_NOT U204 ( .A(n207), .Z(n203) );
  GTECH_MUX2 U205 ( .A(seven_segment0_ten_count_reg[1]), .B(
        seven_segment0_unit_count_reg[1]), .S(n152), .Z(n207) );
  GTECH_NOT U206 ( .A(n206), .Z(n199) );
  GTECH_MUX2 U207 ( .A(n31), .B(n27), .S(n152), .Z(n206) );
  GTECH_AO21 U208 ( .A(period[0]), .B(n210), .C(reset), .Z(N9) );
  GTECH_AND2 U209 ( .A(period[11]), .B(n210), .Z(N21) );
  GTECH_NAND2 U210 ( .A(n184), .B(n211), .Z(N20) );
  GTECH_AO21 U211 ( .A(period[10]), .B(n210), .C(reset), .Z(N19) );
  GTECH_AND2 U212 ( .A(period[9]), .B(n210), .Z(N18) );
  GTECH_AND2 U213 ( .A(period[8]), .B(n210), .Z(N17) );
  GTECH_AND2 U214 ( .A(N170), .B(n212), .Z(N168) );
  GTECH_NAND2 U215 ( .A(n213), .B(n214), .Z(N167) );
  GTECH_AND2 U216 ( .A(N170), .B(n215), .Z(N166) );
  GTECH_AND2 U217 ( .A(N170), .B(n216), .Z(N164) );
  GTECH_AND2 U218 ( .A(N170), .B(n217), .Z(N162) );
  GTECH_NOT U219 ( .A(n218), .Z(N170) );
  GTECH_NAND2 U220 ( .A(n219), .B(n184), .Z(n218) );
  GTECH_NOT U221 ( .A(n214), .Z(n219) );
  GTECH_MUX2 U222 ( .A(n220), .B(n221), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U223 ( .A(ten_count[2]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U224 ( .A(n224), .Z(n223) );
  GTECH_AND2 U225 ( .A(n225), .B(ten_count[2]), .Z(n220) );
  GTECH_AO21 U226 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U227 ( .A(n226), .B(n227), .C(n228), .Z(N159) );
  GTECH_MUX2 U228 ( .A(n225), .B(n224), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U229 ( .A(ten_count[1]), .B(n222), .C(n229), .Z(n224) );
  GTECH_NOT U230 ( .A(n230), .Z(n225) );
  GTECH_NAND3 U231 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n230) );
  GTECH_MUX2 U232 ( .A(n231), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U233 ( .A(N152), .B(ten_count[0]), .Z(n231) );
  GTECH_NOT U234 ( .A(n229), .Z(N154) );
  GTECH_NAND2 U235 ( .A(N152), .B(n232), .Z(n229) );
  GTECH_NOT U236 ( .A(ten_count[0]), .Z(n232) );
  GTECH_NAND2 U237 ( .A(n233), .B(n156), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n234), .C(n213), .Z(n233) );
  GTECH_NOT U239 ( .A(n235), .Z(n213) );
  GTECH_OAI21 U240 ( .A(n236), .B(n226), .C(n184), .Z(n235) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n222), .B(n234), .C(n237), .Z(N148) );
  GTECH_MUX2 U243 ( .A(n238), .B(n239), .S(n167), .Z(n237) );
  GTECH_OR3 U244 ( .A(n168), .B(n240), .C(n241), .Z(n239) );
  GTECH_AND_NOT U245 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U246 ( .A(n222), .B(n240), .S(n168), .Z(n242) );
  GTECH_NAND3 U247 ( .A(n244), .B(n214), .C(n228), .Z(N147) );
  GTECH_AND2 U248 ( .A(n184), .B(n245), .Z(n228) );
  GTECH_NAND3 U249 ( .A(n236), .B(n156), .C(n234), .Z(n245) );
  GTECH_NAND4 U250 ( .A(n181), .B(n168), .C(n167), .D(n246), .Z(n234) );
  GTECH_NAND2 U251 ( .A(n14), .B(n247), .Z(n214) );
  GTECH_NOT U252 ( .A(n156), .Z(n247) );
  GTECH_NAND3 U253 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U254 ( .A(n243), .B(n248), .S(n168), .Z(N146) );
  GTECH_OAI21 U255 ( .A(n241), .B(n240), .C(n249), .Z(n248) );
  GTECH_OAI21 U256 ( .A(n250), .B(n240), .C(n251), .Z(n243) );
  GTECH_AO21 U257 ( .A(n246), .B(n181), .C(n222), .Z(n251) );
  GTECH_NOT U258 ( .A(n241), .Z(n250) );
  GTECH_NAND3 U259 ( .A(n212), .B(n252), .C(n253), .Z(n241) );
  GTECH_NOT U260 ( .A(n181), .Z(n252) );
  GTECH_NAND2 U261 ( .A(n254), .B(n249), .Z(N144) );
  GTECH_NAND3 U262 ( .A(N152), .B(n246), .C(n181), .Z(n249) );
  GTECH_MUX2 U263 ( .A(n255), .B(n256), .S(n181), .Z(n254) );
  GTECH_NAND3 U264 ( .A(n253), .B(n212), .C(N150), .Z(n256) );
  GTECH_OA21 U265 ( .A(n222), .B(n246), .C(n257), .Z(n255) );
  GTECH_OAI21 U266 ( .A(n22), .B(n258), .C(N150), .Z(n257) );
  GTECH_OAI21 U267 ( .A(n216), .B(n215), .C(n212), .Z(n246) );
  GTECH_NOT U268 ( .A(n22), .Z(n212) );
  GTECH_MUX2 U269 ( .A(n259), .B(n260), .S(n22), .Z(N142) );
  GTECH_OAI21 U270 ( .A(n258), .B(n240), .C(n261), .Z(n260) );
  GTECH_OAI21 U271 ( .A(n216), .B(n215), .C(N152), .Z(n261) );
  GTECH_OAI21 U272 ( .A(n253), .B(n240), .C(n262), .Z(n259) );
  GTECH_NOT U273 ( .A(n258), .Z(n253) );
  GTECH_NAND3 U274 ( .A(n216), .B(n215), .C(n217), .Z(n258) );
  GTECH_NOT U275 ( .A(n20), .Z(n215) );
  GTECH_NAND2 U276 ( .A(n263), .B(n262), .Z(N140) );
  GTECH_NAND3 U277 ( .A(n18), .B(N152), .C(n20), .Z(n262) );
  GTECH_NOT U278 ( .A(n222), .Z(N152) );
  GTECH_MUX2 U279 ( .A(n264), .B(n265), .S(n20), .Z(n263) );
  GTECH_NAND3 U280 ( .A(n217), .B(n216), .C(N150), .Z(n265) );
  GTECH_NOT U281 ( .A(n18), .Z(n216) );
  GTECH_NOT U282 ( .A(n16), .Z(n217) );
  GTECH_AND2 U283 ( .A(n266), .B(n267), .Z(n264) );
  GTECH_MUX2 U284 ( .A(n222), .B(n240), .S(n18), .Z(n266) );
  GTECH_AO21 U285 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U286 ( .A(n268), .B(n269), .S(n18), .Z(N138) );
  GTECH_OAI21 U287 ( .A(n16), .B(n240), .C(n222), .Z(n269) );
  GTECH_NOT U288 ( .A(n267), .Z(n268) );
  GTECH_OAI21 U289 ( .A(n16), .B(n222), .C(n267), .Z(N136) );
  GTECH_NAND2 U290 ( .A(n16), .B(N150), .Z(n267) );
  GTECH_NOT U291 ( .A(n240), .Z(N150) );
  GTECH_NAND2 U292 ( .A(n270), .B(n184), .Z(n240) );
  GTECH_NOT U293 ( .A(n227), .Z(n270) );
  GTECH_NAND2 U294 ( .A(n156), .B(n271), .Z(n222) );
  GTECH_NOT U295 ( .A(N169), .Z(n271) );
  GTECH_NAND2 U296 ( .A(n184), .B(n236), .Z(N169) );
  GTECH_NOT U297 ( .A(n14), .Z(n236) );
  GTECH_AND2 U298 ( .A(n272), .B(n273), .Z(N134) );
  GTECH_OAI21 U299 ( .A(n166), .B(n274), .C(n182), .Z(n273) );
  GTECH_NAND2 U300 ( .A(n184), .B(n227), .Z(N133) );
  GTECH_NAND2 U301 ( .A(n156), .B(n14), .Z(n227) );
  GTECH_AND2 U302 ( .A(n275), .B(n272), .Z(N132) );
  GTECH_XOR2 U303 ( .A(n274), .B(n166), .Z(n275) );
  GTECH_NAND2 U304 ( .A(n276), .B(n277), .Z(n274) );
  GTECH_NOT U305 ( .A(n183), .Z(n277) );
  GTECH_NOT U306 ( .A(n278), .Z(n276) );
  GTECH_AND2 U307 ( .A(n279), .B(n272), .Z(N130) );
  GTECH_XOR2 U308 ( .A(n278), .B(n183), .Z(n279) );
  GTECH_NAND2 U309 ( .A(n280), .B(n281), .Z(n278) );
  GTECH_NOT U310 ( .A(n157), .Z(n281) );
  GTECH_NOT U311 ( .A(n282), .Z(n280) );
  GTECH_AND2 U312 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U313 ( .A(n283), .B(n272), .Z(N128) );
  GTECH_XOR2 U314 ( .A(n282), .B(n157), .Z(n283) );
  GTECH_NAND2 U315 ( .A(n284), .B(n285), .Z(n282) );
  GTECH_NOT U316 ( .A(n158), .Z(n285) );
  GTECH_NOT U317 ( .A(n286), .Z(n284) );
  GTECH_AND2 U318 ( .A(n287), .B(n272), .Z(N126) );
  GTECH_XOR2 U319 ( .A(n286), .B(n158), .Z(n287) );
  GTECH_NAND2 U320 ( .A(n288), .B(n289), .Z(n286) );
  GTECH_NOT U321 ( .A(n290), .Z(n288) );
  GTECH_AND2 U322 ( .A(n291), .B(n272), .Z(N124) );
  GTECH_XOR2 U323 ( .A(n290), .B(n159), .Z(n291) );
  GTECH_NAND2 U324 ( .A(n292), .B(n293), .Z(n290) );
  GTECH_NOT U325 ( .A(n160), .Z(n293) );
  GTECH_NOT U326 ( .A(n294), .Z(n292) );
  GTECH_AND2 U327 ( .A(n295), .B(n272), .Z(N122) );
  GTECH_XOR2 U328 ( .A(n294), .B(n160), .Z(n295) );
  GTECH_NAND2 U329 ( .A(n296), .B(n297), .Z(n294) );
  GTECH_NOT U330 ( .A(n161), .Z(n297) );
  GTECH_NOT U331 ( .A(n298), .Z(n296) );
  GTECH_AND2 U332 ( .A(n299), .B(n272), .Z(N120) );
  GTECH_XOR2 U333 ( .A(n298), .B(n161), .Z(n299) );
  GTECH_NAND2 U334 ( .A(n300), .B(n301), .Z(n298) );
  GTECH_NOT U335 ( .A(n302), .Z(n300) );
  GTECH_AO21 U336 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U337 ( .A(n303), .B(n272), .Z(N118) );
  GTECH_XOR2 U338 ( .A(n302), .B(n162), .Z(n303) );
  GTECH_NAND3 U339 ( .A(n304), .B(n305), .C(n306), .Z(n302) );
  GTECH_OAI2N2 U340 ( .A(n307), .B(n308), .C(N112), .D(n306), .Z(N116) );
  GTECH_NOT U341 ( .A(n163), .Z(n306) );
  GTECH_MUX2 U342 ( .A(n304), .B(n309), .S(n163), .Z(n308) );
  GTECH_NAND2 U343 ( .A(n304), .B(n305), .Z(n309) );
  GTECH_NOT U344 ( .A(n164), .Z(n304) );
  GTECH_MUX2 U345 ( .A(N112), .B(n310), .S(n164), .Z(N114) );
  GTECH_AND2 U346 ( .A(n272), .B(n305), .Z(n310) );
  GTECH_NOT U347 ( .A(n311), .Z(N112) );
  GTECH_NAND2 U348 ( .A(n272), .B(n165), .Z(n311) );
  GTECH_NOT U349 ( .A(n307), .Z(n272) );
  GTECH_NAND2 U350 ( .A(n226), .B(n184), .Z(n307) );
  GTECH_NAND2 U351 ( .A(n312), .B(n313), .Z(n226) );
  GTECH_OR3 U352 ( .A(n314), .B(n315), .C(n316), .Z(n313) );
  GTECH_OAI2N2 U353 ( .A(update_period[8]), .B(n157), .C(n317), .D(n318), .Z(
        n316) );
  GTECH_AOI2N2 U354 ( .A(update_period[7]), .B(n158), .C(n319), .D(n320), .Z(
        n318) );
  GTECH_OAI21 U355 ( .A(update_period[7]), .B(n158), .C(n159), .Z(n320) );
  GTECH_OA21 U356 ( .A(n321), .B(n322), .C(n323), .Z(n317) );
  GTECH_OR3 U357 ( .A(n322), .B(n324), .C(n325), .Z(n323) );
  GTECH_OAI2N2 U358 ( .A(n160), .B(update_period[5]), .C(n326), .D(n327), .Z(
        n325) );
  GTECH_OA21 U359 ( .A(n301), .B(n328), .C(n329), .Z(n327) );
  GTECH_NAND3 U360 ( .A(n330), .B(update_period[2]), .C(n163), .Z(n329) );
  GTECH_NAND3 U361 ( .A(n331), .B(n332), .C(n330), .Z(n326) );
  GTECH_NAND2 U362 ( .A(n328), .B(n301), .Z(n330) );
  GTECH_NOT U363 ( .A(n162), .Z(n301) );
  GTECH_NOT U364 ( .A(update_period[3]), .Z(n328) );
  GTECH_OAI2N2 U365 ( .A(n305), .B(n169), .C(update_period[1]), .D(n164), .Z(
        n332) );
  GTECH_NOT U366 ( .A(n165), .Z(n305) );
  GTECH_OA22 U367 ( .A(n164), .B(update_period[1]), .C(n163), .D(
        update_period[2]), .Z(n331) );
  GTECH_NOR2 U368 ( .A(n161), .B(update_period[4]), .Z(n324) );
  GTECH_OAI2N2 U369 ( .A(update_period[7]), .B(n158), .C(n289), .D(n319), .Z(
        n322) );
  GTECH_NOT U370 ( .A(update_period[6]), .Z(n319) );
  GTECH_NOT U371 ( .A(n159), .Z(n289) );
  GTECH_AOI22 U372 ( .A(n160), .B(update_period[5]), .C(update_period[4]), .D(
        n333), .Z(n321) );
  GTECH_OA21 U373 ( .A(update_period[5]), .B(n160), .C(n161), .Z(n333) );
  GTECH_NOR2 U374 ( .A(update_period[9]), .B(n183), .Z(n314) );
  GTECH_OA22 U375 ( .A(n334), .B(n335), .C(n315), .D(n336), .Z(n312) );
  GTECH_AOI222 U376 ( .A(update_period[9]), .B(n183), .C(n337), .D(
        update_period[8]), .E(update_period[10]), .F(n166), .Z(n336) );
  GTECH_OA21 U377 ( .A(n183), .B(update_period[9]), .C(n157), .Z(n337) );
  GTECH_OAI2N2 U378 ( .A(update_period[10]), .B(n166), .C(n335), .D(n334), .Z(
        n315) );
  GTECH_NOT U379 ( .A(n182), .Z(n335) );
  GTECH_NOT U380 ( .A(update_period[11]), .Z(n334) );
  GTECH_AO21 U381 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U382 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U383 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U384 ( .A(period_load), .B(n184), .Z(n211) );
  GTECH_NOT U385 ( .A(reset), .Z(n184) );
endmodule

