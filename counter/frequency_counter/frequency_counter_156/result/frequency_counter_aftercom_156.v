
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
         n27, n31, n74, n152, n156, sub_85_carry_2_, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n170, n181, n182,
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
         n337, n338, n339, n340, n341, n342;
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
        .CP(clk), .Q(update_period[1]), .QN(n170) );
  GTECH_FJK1S update_period_reg_0_ ( .J(n74), .K(n74), .TI(N9), .TE(N20), .CP(
        clk), .Q(update_period[0]) );
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
        .CP(clk), .Q(sub_85_carry_2_) );
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
        seven_segment0_unit_count_reg[0]) );
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
        seven_segment0_ten_count_reg[0]) );
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
  GTECH_NAND2 U186 ( .A(n191), .B(n199), .Z(n197) );
  GTECH_NAND3 U187 ( .A(n200), .B(n186), .C(n193), .Z(segments[1]) );
  GTECH_NOT U188 ( .A(n201), .Z(n193) );
  GTECH_OAI21 U189 ( .A(n202), .B(n191), .C(n192), .Z(n201) );
  GTECH_NAND3 U190 ( .A(n203), .B(n198), .C(n191), .Z(n200) );
  GTECH_NAND3 U191 ( .A(n188), .B(n186), .C(n204), .Z(segments[0]) );
  GTECH_OA22 U192 ( .A(n205), .B(n192), .C(n202), .D(n191), .Z(n204) );
  GTECH_NOT U193 ( .A(n195), .Z(n191) );
  GTECH_NAND2 U194 ( .A(n206), .B(n203), .Z(n192) );
  GTECH_NAND2 U195 ( .A(n189), .B(n206), .Z(n186) );
  GTECH_NOT U196 ( .A(n202), .Z(n189) );
  GTECH_NAND2 U197 ( .A(n207), .B(n198), .Z(n202) );
  GTECH_NAND3 U198 ( .A(n199), .B(n203), .C(n205), .Z(n188) );
  GTECH_NOT U199 ( .A(n208), .Z(n205) );
  GTECH_NAND2 U200 ( .A(n195), .B(n198), .Z(n208) );
  GTECH_NOT U201 ( .A(n209), .Z(n198) );
  GTECH_MUX2 U202 ( .A(seven_segment0_ten_count_reg[3]), .B(
        seven_segment0_unit_count_reg[3]), .S(n152), .Z(n209) );
  GTECH_MUX2 U203 ( .A(seven_segment0_ten_count_reg[0]), .B(
        seven_segment0_unit_count_reg[0]), .S(n152), .Z(n195) );
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
  GTECH_AND2 U217 ( .A(sub_85_carry_2_), .B(N170), .Z(N164) );
  GTECH_AND2 U218 ( .A(N170), .B(n216), .Z(N162) );
  GTECH_NOT U219 ( .A(n217), .Z(N170) );
  GTECH_NAND2 U220 ( .A(n218), .B(n184), .Z(n217) );
  GTECH_NOT U221 ( .A(n214), .Z(n218) );
  GTECH_MUX2 U222 ( .A(n219), .B(n220), .S(ten_count[3]), .Z(N160) );
  GTECH_OAI21 U223 ( .A(ten_count[2]), .B(n221), .C(n222), .Z(n220) );
  GTECH_NOT U224 ( .A(n223), .Z(n222) );
  GTECH_AND2 U225 ( .A(n224), .B(ten_count[2]), .Z(n219) );
  GTECH_AO21 U226 ( .A(period[7]), .B(n210), .C(reset), .Z(N16) );
  GTECH_OAI21 U227 ( .A(n225), .B(n226), .C(n227), .Z(N159) );
  GTECH_MUX2 U228 ( .A(n224), .B(n223), .S(ten_count[2]), .Z(N158) );
  GTECH_OAI21 U229 ( .A(ten_count[1]), .B(n221), .C(n228), .Z(n223) );
  GTECH_NOT U230 ( .A(n229), .Z(n224) );
  GTECH_NAND3 U231 ( .A(ten_count[1]), .B(ten_count[0]), .C(N152), .Z(n229) );
  GTECH_MUX2 U232 ( .A(n230), .B(N154), .S(ten_count[1]), .Z(N156) );
  GTECH_AND2 U233 ( .A(N152), .B(ten_count[0]), .Z(n230) );
  GTECH_NOT U234 ( .A(n228), .Z(N154) );
  GTECH_NAND2 U235 ( .A(N152), .B(n231), .Z(n228) );
  GTECH_NOT U236 ( .A(ten_count[0]), .Z(n231) );
  GTECH_NAND2 U237 ( .A(n232), .B(n156), .Z(N151) );
  GTECH_OA21 U238 ( .A(n14), .B(n233), .C(n213), .Z(n232) );
  GTECH_NOT U239 ( .A(n234), .Z(n213) );
  GTECH_OAI21 U240 ( .A(n235), .B(n225), .C(n184), .Z(n234) );
  GTECH_AND2 U241 ( .A(period[6]), .B(n210), .Z(N15) );
  GTECH_OAI21 U242 ( .A(n221), .B(n233), .C(n236), .Z(N148) );
  GTECH_NOT U243 ( .A(n237), .Z(n236) );
  GTECH_MUX2 U244 ( .A(n238), .B(n239), .S(n167), .Z(n237) );
  GTECH_NOR3 U245 ( .A(n240), .B(n168), .C(n241), .Z(n239) );
  GTECH_OR_NOT U246 ( .A(n242), .B(n243), .Z(n238) );
  GTECH_MUX2 U247 ( .A(n221), .B(n241), .S(n168), .Z(n243) );
  GTECH_NAND3 U248 ( .A(n244), .B(n214), .C(n227), .Z(N147) );
  GTECH_AND2 U249 ( .A(n184), .B(n245), .Z(n227) );
  GTECH_NAND3 U250 ( .A(n235), .B(n156), .C(n233), .Z(n245) );
  GTECH_NAND4 U251 ( .A(n181), .B(n168), .C(n167), .D(n246), .Z(n233) );
  GTECH_NAND2 U252 ( .A(n14), .B(n247), .Z(n214) );
  GTECH_NOT U253 ( .A(n156), .Z(n247) );
  GTECH_NAND3 U254 ( .A(n14), .B(edge_detect0_q1), .C(n13), .Z(n244) );
  GTECH_MUX2 U255 ( .A(n242), .B(n248), .S(n168), .Z(N146) );
  GTECH_OAI21 U256 ( .A(n240), .B(n241), .C(n249), .Z(n248) );
  GTECH_OAI21 U257 ( .A(n250), .B(n241), .C(n251), .Z(n242) );
  GTECH_AO21 U258 ( .A(n246), .B(n181), .C(n221), .Z(n251) );
  GTECH_NOT U259 ( .A(n240), .Z(n250) );
  GTECH_NAND3 U260 ( .A(n212), .B(n252), .C(n253), .Z(n240) );
  GTECH_NOT U261 ( .A(n181), .Z(n252) );
  GTECH_NAND2 U262 ( .A(n254), .B(n249), .Z(N144) );
  GTECH_NAND3 U263 ( .A(N152), .B(n246), .C(n181), .Z(n249) );
  GTECH_MUX2 U264 ( .A(n255), .B(n256), .S(n181), .Z(n254) );
  GTECH_NAND3 U265 ( .A(n253), .B(n212), .C(N150), .Z(n256) );
  GTECH_OA21 U266 ( .A(n221), .B(n246), .C(n257), .Z(n255) );
  GTECH_OAI21 U267 ( .A(n22), .B(n258), .C(N150), .Z(n257) );
  GTECH_NAND2 U268 ( .A(n259), .B(n212), .Z(n246) );
  GTECH_NOT U269 ( .A(n22), .Z(n212) );
  GTECH_OAI21 U270 ( .A(n241), .B(n260), .C(n261), .Z(N142) );
  GTECH_MUX2 U271 ( .A(n262), .B(n263), .S(n22), .Z(n261) );
  GTECH_NAND2 U272 ( .A(N152), .B(n259), .Z(n263) );
  GTECH_XOR2 U273 ( .A(n22), .B(n253), .Z(n260) );
  GTECH_NOT U274 ( .A(n258), .Z(n253) );
  GTECH_NAND3 U275 ( .A(n216), .B(n215), .C(sub_85_carry_2_), .Z(n258) );
  GTECH_NOT U276 ( .A(n20), .Z(n215) );
  GTECH_NAND2 U277 ( .A(n264), .B(n262), .Z(N140) );
  GTECH_NAND2 U278 ( .A(n265), .B(N152), .Z(n262) );
  GTECH_NOT U279 ( .A(n221), .Z(N152) );
  GTECH_NOT U280 ( .A(n259), .Z(n265) );
  GTECH_NAND2 U281 ( .A(n20), .B(n266), .Z(n259) );
  GTECH_NOT U282 ( .A(sub_85_carry_2_), .Z(n266) );
  GTECH_MUX2 U283 ( .A(n267), .B(n268), .S(n20), .Z(n264) );
  GTECH_NAND3 U284 ( .A(sub_85_carry_2_), .B(n216), .C(N150), .Z(n268) );
  GTECH_NOT U285 ( .A(n16), .Z(n216) );
  GTECH_AND2 U286 ( .A(n269), .B(n270), .Z(n267) );
  GTECH_MUX2 U287 ( .A(n241), .B(n221), .S(sub_85_carry_2_), .Z(n269) );
  GTECH_AO21 U288 ( .A(period[5]), .B(n210), .C(reset), .Z(N14) );
  GTECH_MUX2 U289 ( .A(n271), .B(n272), .S(sub_85_carry_2_), .Z(N138) );
  GTECH_NOT U290 ( .A(n270), .Z(n272) );
  GTECH_OAI21 U291 ( .A(n16), .B(n241), .C(n221), .Z(n271) );
  GTECH_OAI21 U292 ( .A(n16), .B(n221), .C(n270), .Z(N136) );
  GTECH_NAND2 U293 ( .A(n16), .B(N150), .Z(n270) );
  GTECH_NOT U294 ( .A(n241), .Z(N150) );
  GTECH_NAND2 U295 ( .A(n273), .B(n184), .Z(n241) );
  GTECH_NOT U296 ( .A(n226), .Z(n273) );
  GTECH_NAND2 U297 ( .A(n156), .B(n274), .Z(n221) );
  GTECH_NOT U298 ( .A(N169), .Z(n274) );
  GTECH_NAND2 U299 ( .A(n184), .B(n235), .Z(N169) );
  GTECH_NOT U300 ( .A(n14), .Z(n235) );
  GTECH_AND2 U301 ( .A(n275), .B(n276), .Z(N134) );
  GTECH_OAI21 U302 ( .A(n166), .B(n277), .C(n182), .Z(n276) );
  GTECH_NAND2 U303 ( .A(n184), .B(n226), .Z(N133) );
  GTECH_NAND2 U304 ( .A(n156), .B(n14), .Z(n226) );
  GTECH_AND2 U305 ( .A(n278), .B(n275), .Z(N132) );
  GTECH_XOR2 U306 ( .A(n277), .B(n166), .Z(n278) );
  GTECH_NAND2 U307 ( .A(n279), .B(n280), .Z(n277) );
  GTECH_NOT U308 ( .A(n281), .Z(n279) );
  GTECH_AND2 U309 ( .A(n282), .B(n275), .Z(N130) );
  GTECH_XOR2 U310 ( .A(n281), .B(n183), .Z(n282) );
  GTECH_NAND2 U311 ( .A(n283), .B(n284), .Z(n281) );
  GTECH_NOT U312 ( .A(n157), .Z(n284) );
  GTECH_NOT U313 ( .A(n285), .Z(n283) );
  GTECH_AND2 U314 ( .A(period[4]), .B(n210), .Z(N13) );
  GTECH_AND2 U315 ( .A(n286), .B(n275), .Z(N128) );
  GTECH_XOR2 U316 ( .A(n285), .B(n157), .Z(n286) );
  GTECH_NAND2 U317 ( .A(n287), .B(n288), .Z(n285) );
  GTECH_NOT U318 ( .A(n289), .Z(n287) );
  GTECH_AND2 U319 ( .A(n290), .B(n275), .Z(N126) );
  GTECH_XOR2 U320 ( .A(n289), .B(n158), .Z(n290) );
  GTECH_NAND2 U321 ( .A(n291), .B(n292), .Z(n289) );
  GTECH_NOT U322 ( .A(n159), .Z(n292) );
  GTECH_NOT U323 ( .A(n293), .Z(n291) );
  GTECH_AND2 U324 ( .A(n294), .B(n275), .Z(N124) );
  GTECH_XOR2 U325 ( .A(n293), .B(n159), .Z(n294) );
  GTECH_NAND2 U326 ( .A(n295), .B(n296), .Z(n293) );
  GTECH_NOT U327 ( .A(n160), .Z(n296) );
  GTECH_NOT U328 ( .A(n297), .Z(n295) );
  GTECH_AND2 U329 ( .A(n298), .B(n275), .Z(N122) );
  GTECH_XOR2 U330 ( .A(n297), .B(n160), .Z(n298) );
  GTECH_NAND2 U331 ( .A(n299), .B(n300), .Z(n297) );
  GTECH_NOT U332 ( .A(n161), .Z(n300) );
  GTECH_NOT U333 ( .A(n301), .Z(n299) );
  GTECH_AND2 U334 ( .A(n302), .B(n275), .Z(N120) );
  GTECH_XOR2 U335 ( .A(n301), .B(n161), .Z(n302) );
  GTECH_NAND2 U336 ( .A(n303), .B(n304), .Z(n301) );
  GTECH_NOT U337 ( .A(n305), .Z(n303) );
  GTECH_AO21 U338 ( .A(period[3]), .B(n210), .C(reset), .Z(N12) );
  GTECH_AND2 U339 ( .A(n306), .B(n275), .Z(N118) );
  GTECH_XOR2 U340 ( .A(n305), .B(n162), .Z(n306) );
  GTECH_NAND3 U341 ( .A(n307), .B(n308), .C(n309), .Z(n305) );
  GTECH_NOT U342 ( .A(n163), .Z(n309) );
  GTECH_OAI22 U343 ( .A(n163), .B(n310), .C(n311), .D(n312), .Z(N116) );
  GTECH_MUX2 U344 ( .A(n307), .B(n313), .S(n163), .Z(n312) );
  GTECH_NAND2 U345 ( .A(n307), .B(n308), .Z(n313) );
  GTECH_MUX2 U346 ( .A(N112), .B(n314), .S(n164), .Z(N114) );
  GTECH_AND2 U347 ( .A(n275), .B(n308), .Z(n314) );
  GTECH_NOT U348 ( .A(n165), .Z(n308) );
  GTECH_NOT U349 ( .A(n310), .Z(N112) );
  GTECH_NAND2 U350 ( .A(n275), .B(n165), .Z(n310) );
  GTECH_NOT U351 ( .A(n311), .Z(n275) );
  GTECH_NAND2 U352 ( .A(n225), .B(n184), .Z(n311) );
  GTECH_OAI21 U353 ( .A(n315), .B(n316), .C(n317), .Z(n225) );
  GTECH_AOI2N2 U354 ( .A(n182), .B(update_period[11]), .C(n318), .D(n319), .Z(
        n317) );
  GTECH_AOI222 U355 ( .A(update_period[9]), .B(n183), .C(update_period[10]), 
        .D(n166), .E(n320), .F(update_period[8]), .Z(n319) );
  GTECH_AND2 U356 ( .A(n157), .B(n321), .Z(n320) );
  GTECH_AO21 U357 ( .A(n322), .B(n323), .C(n318), .Z(n316) );
  GTECH_OAI22 U358 ( .A(update_period[11]), .B(n182), .C(update_period[10]), 
        .D(n166), .Z(n318) );
  GTECH_OA21 U359 ( .A(n288), .B(n324), .C(n325), .Z(n323) );
  GTECH_NAND3 U360 ( .A(n326), .B(update_period[6]), .C(n159), .Z(n325) );
  GTECH_AOI2N2 U361 ( .A(n327), .B(n328), .C(n329), .D(n330), .Z(n322) );
  GTECH_OAI21 U362 ( .A(n161), .B(update_period[4]), .C(n327), .Z(n330) );
  GTECH_OAI22 U363 ( .A(n331), .B(n332), .C(n160), .D(update_period[5]), .Z(
        n329) );
  GTECH_AND3 U364 ( .A(n333), .B(n334), .C(n335), .Z(n332) );
  GTECH_OAI21 U365 ( .A(n336), .B(n307), .C(n170), .Z(n334) );
  GTECH_NOT U366 ( .A(n164), .Z(n307) );
  GTECH_OA21 U367 ( .A(n163), .B(update_period[2]), .C(n337), .Z(n333) );
  GTECH_OR_NOT U368 ( .A(n164), .B(n336), .Z(n337) );
  GTECH_NAND2 U369 ( .A(update_period[0]), .B(n165), .Z(n336) );
  GTECH_OAI21 U370 ( .A(n304), .B(n338), .C(n339), .Z(n331) );
  GTECH_NAND3 U371 ( .A(n335), .B(update_period[2]), .C(n163), .Z(n339) );
  GTECH_NAND2 U372 ( .A(n338), .B(n304), .Z(n335) );
  GTECH_NOT U373 ( .A(update_period[3]), .Z(n338) );
  GTECH_NOT U374 ( .A(n162), .Z(n304) );
  GTECH_ADD_ABC U375 ( .A(n340), .B(n160), .C(update_period[5]), .COUT(n328)
         );
  GTECH_AND2 U376 ( .A(update_period[4]), .B(n161), .Z(n340) );
  GTECH_NOT U377 ( .A(n341), .Z(n327) );
  GTECH_OAI21 U378 ( .A(update_period[6]), .B(n159), .C(n326), .Z(n341) );
  GTECH_NAND2 U379 ( .A(n324), .B(n288), .Z(n326) );
  GTECH_NOT U380 ( .A(n158), .Z(n288) );
  GTECH_NOT U381 ( .A(update_period[7]), .Z(n324) );
  GTECH_OAI21 U382 ( .A(update_period[8]), .B(n157), .C(n321), .Z(n315) );
  GTECH_NAND2 U383 ( .A(n342), .B(n280), .Z(n321) );
  GTECH_NOT U384 ( .A(n183), .Z(n280) );
  GTECH_NOT U385 ( .A(update_period[9]), .Z(n342) );
  GTECH_AO21 U386 ( .A(period[2]), .B(n210), .C(reset), .Z(N11) );
  GTECH_AO21 U387 ( .A(period[1]), .B(n210), .C(reset), .Z(N10) );
  GTECH_NOT U388 ( .A(n211), .Z(n210) );
  GTECH_NAND2 U389 ( .A(period_load), .B(n184), .Z(n211) );
  GTECH_NOT U390 ( .A(reset), .Z(n184) );
endmodule

