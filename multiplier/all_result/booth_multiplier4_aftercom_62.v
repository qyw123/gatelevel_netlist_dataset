
module booth_multiplier4 ( Rst, clk, Ld, M, R, Valid, P );
  input [15:0] M;
  input [15:0] R;
  output [31:0] P;
  input Rst, clk, Ld;
  output Valid;
  wire   N14, N15, N16, N17, N18, N19, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N41, N42, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N115, N116, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148,
         N149, N150, N151, N152, N155, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n113, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n113), .K(n113), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n250) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n113), .K(n113), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n113), .K(n113), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n113), .K(n113), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n113), .K(n113), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n113), .K(n113), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]) );
  GTECH_FJK1S A_reg_15_ ( .J(n113), .K(n113), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n266) );
  GTECH_FJK1S A_reg_14_ ( .J(n113), .K(n113), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n265) );
  GTECH_FJK1S A_reg_13_ ( .J(n113), .K(n113), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n264) );
  GTECH_FJK1S A_reg_12_ ( .J(n113), .K(n113), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n263) );
  GTECH_FJK1S A_reg_11_ ( .J(n113), .K(n113), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n262) );
  GTECH_FJK1S A_reg_10_ ( .J(n113), .K(n113), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n261) );
  GTECH_FJK1S A_reg_9_ ( .J(n113), .K(n113), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n260) );
  GTECH_FJK1S A_reg_8_ ( .J(n113), .K(n113), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n259) );
  GTECH_FJK1S A_reg_7_ ( .J(n113), .K(n113), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n258) );
  GTECH_FJK1S A_reg_6_ ( .J(n113), .K(n113), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n257) );
  GTECH_FJK1S A_reg_5_ ( .J(n113), .K(n113), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n256) );
  GTECH_FJK1S A_reg_4_ ( .J(n113), .K(n113), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n255) );
  GTECH_FJK1S A_reg_3_ ( .J(n113), .K(n113), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n254) );
  GTECH_FJK1S A_reg_2_ ( .J(n113), .K(n113), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n253) );
  GTECH_FJK1S A_reg_1_ ( .J(n113), .K(n113), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n252) );
  GTECH_FJK1S A_reg_0_ ( .J(n113), .K(n113), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n251) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n113), .K(n113), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n113), .K(n113), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n113), .K(n113), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n113), .K(n113), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n113), .K(n113), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n113), .K(n113), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n113), .K(n113), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n113), .K(n113), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n113), .K(n113), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n113), .K(n113), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n113), .K(n113), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n113), .K(n113), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n113), .K(n113), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n113), .K(n113), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n113), .K(n113), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n113), .K(n113), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n113), .K(n113), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n113), .K(n113), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n113), .K(n113), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n113), .K(n113), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n113), .K(n113), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n113), .K(n113), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n113), .K(n113), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n113), .K(n113), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n113), .K(n113), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n113), .K(n113), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n113), .K(n113), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n113), .K(n113), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n113), .K(n113), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n113), .K(n113), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n113), .K(n113), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n113), .K(n113), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n113), .K(n113), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n113), .K(n113), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n113), .K(n113), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n113), .K(n113), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n113), .K(n113), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n113), .K(n113), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n113), .K(n113), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n113), .K(n113), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n113), .K(n113), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n113), .K(n113), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n113), .K(n113), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n113), .K(n113), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n113), .K(n113), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n113), .K(n113), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n113), .K(n113), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n113), .K(n113), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n113), .K(n113), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n113), .K(n113), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n113), .K(n113), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n113), .K(n113), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n113), .K(n113), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n113), .K(n113), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n113), .K(n113), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n113), .K(n113), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n113), .K(n113), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n113), .K(n113), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n113), .K(n113), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n113), .K(n113), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n113), .K(n113), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n113), .K(n113), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n113), .K(n113), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n113), .K(n113), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n113), .K(n113), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n113), .K(n113), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U252 ( .Z(n113) );
  GTECH_NOT U253 ( .A(n268), .Z(N99) );
  GTECH_AOI222 U254 ( .A(n269), .B(n270), .C(n271), .D(n272), .E(n273), .F(
        n274), .Z(n268) );
  GTECH_NOT U255 ( .A(n275), .Z(N98) );
  GTECH_AOI222 U256 ( .A(n271), .B(n276), .C(n277), .D(n278), .E(R[15]), .F(
        n279), .Z(n275) );
  GTECH_NAND2 U257 ( .A(n280), .B(n281), .Z(n277) );
  GTECH_OAI2N2 U258 ( .A(n13), .B(n282), .C(R[14]), .D(n279), .Z(N97) );
  GTECH_OAI2N2 U259 ( .A(n14), .B(n282), .C(R[13]), .D(n279), .Z(N96) );
  GTECH_OAI2N2 U260 ( .A(n15), .B(n282), .C(R[12]), .D(n279), .Z(N95) );
  GTECH_OAI2N2 U261 ( .A(n16), .B(n282), .C(R[11]), .D(n279), .Z(N94) );
  GTECH_OAI2N2 U262 ( .A(n17), .B(n282), .C(R[10]), .D(n279), .Z(N93) );
  GTECH_OAI2N2 U263 ( .A(n18), .B(n282), .C(R[9]), .D(n279), .Z(N92) );
  GTECH_OAI2N2 U264 ( .A(n19), .B(n282), .C(R[8]), .D(n279), .Z(N91) );
  GTECH_OAI2N2 U265 ( .A(n20), .B(n282), .C(R[7]), .D(n279), .Z(N90) );
  GTECH_OAI2N2 U266 ( .A(n21), .B(n282), .C(R[6]), .D(n279), .Z(N89) );
  GTECH_OAI2N2 U267 ( .A(n22), .B(n282), .C(R[5]), .D(n279), .Z(N88) );
  GTECH_OAI2N2 U268 ( .A(n23), .B(n282), .C(R[4]), .D(n279), .Z(N87) );
  GTECH_OAI2N2 U269 ( .A(n24), .B(n282), .C(R[3]), .D(n279), .Z(N86) );
  GTECH_OAI2N2 U270 ( .A(n25), .B(n282), .C(R[2]), .D(n279), .Z(N85) );
  GTECH_OAI2N2 U271 ( .A(n26), .B(n282), .C(R[1]), .D(n279), .Z(N84) );
  GTECH_OAI2N2 U272 ( .A(n27), .B(n282), .C(R[0]), .D(n279), .Z(N83) );
  GTECH_AND2 U273 ( .A(M[15]), .B(n279), .Z(N42) );
  GTECH_AND2 U274 ( .A(M[14]), .B(n279), .Z(N39) );
  GTECH_AND2 U275 ( .A(M[13]), .B(n279), .Z(N38) );
  GTECH_AND2 U276 ( .A(M[12]), .B(n279), .Z(N37) );
  GTECH_AND2 U277 ( .A(M[11]), .B(n279), .Z(N36) );
  GTECH_AND2 U278 ( .A(M[10]), .B(n279), .Z(N35) );
  GTECH_AND2 U279 ( .A(M[9]), .B(n279), .Z(N34) );
  GTECH_AND2 U280 ( .A(M[8]), .B(n279), .Z(N33) );
  GTECH_AND2 U281 ( .A(M[7]), .B(n279), .Z(N32) );
  GTECH_AND2 U282 ( .A(M[6]), .B(n279), .Z(N31) );
  GTECH_AND2 U283 ( .A(M[5]), .B(n279), .Z(N30) );
  GTECH_AND2 U284 ( .A(M[4]), .B(n279), .Z(N29) );
  GTECH_AND2 U285 ( .A(M[3]), .B(n279), .Z(N28) );
  GTECH_AND2 U286 ( .A(M[2]), .B(n279), .Z(N27) );
  GTECH_AND2 U287 ( .A(M[1]), .B(n279), .Z(N26) );
  GTECH_AND2 U288 ( .A(M[0]), .B(n279), .Z(N25) );
  GTECH_NOT U289 ( .A(n283), .Z(n279) );
  GTECH_NAND2 U290 ( .A(n283), .B(n284), .Z(N19) );
  GTECH_NAND3 U291 ( .A(n285), .B(n286), .C(n287), .Z(n284) );
  GTECH_NOT U292 ( .A(n9), .Z(n286) );
  GTECH_NAND3 U293 ( .A(n288), .B(n289), .C(n282), .Z(N18) );
  GTECH_OA21 U294 ( .A(n290), .B(n291), .C(n287), .Z(N17) );
  GTECH_AND_NOT U295 ( .A(n292), .B(n8), .Z(n290) );
  GTECH_OA21 U296 ( .A(n293), .B(n294), .C(n287), .Z(N16) );
  GTECH_AND_NOT U297 ( .A(n295), .B(n7), .Z(n293) );
  GTECH_NOT U298 ( .A(n296), .Z(N152) );
  GTECH_AOI222 U299 ( .A(n297), .B(n298), .C(n299), .D(n300), .E(n301), .F(
        n302), .Z(n296) );
  GTECH_NAND2 U300 ( .A(n289), .B(n303), .Z(N151) );
  GTECH_NOT U301 ( .A(n304), .Z(N150) );
  GTECH_AOI222 U302 ( .A(n305), .B(n297), .C(n299), .D(n306), .E(n301), .F(
        n307), .Z(n304) );
  GTECH_OAI22 U303 ( .A(n308), .B(n309), .C(n6), .D(n310), .Z(N15) );
  GTECH_NAND2 U304 ( .A(n287), .B(n311), .Z(n310) );
  GTECH_NOT U305 ( .A(n6), .Z(n308) );
  GTECH_NOT U306 ( .A(n312), .Z(N149) );
  GTECH_AOI222 U307 ( .A(n313), .B(n297), .C(n299), .D(n314), .E(n301), .F(
        n315), .Z(n312) );
  GTECH_NOT U308 ( .A(n316), .Z(N148) );
  GTECH_AOI222 U309 ( .A(n317), .B(n297), .C(n299), .D(n318), .E(n301), .F(
        n319), .Z(n316) );
  GTECH_NOT U310 ( .A(n320), .Z(N147) );
  GTECH_AOI222 U311 ( .A(n321), .B(n297), .C(n299), .D(n322), .E(n301), .F(
        n323), .Z(n320) );
  GTECH_NOT U312 ( .A(n324), .Z(N146) );
  GTECH_AOI222 U313 ( .A(n325), .B(n297), .C(n299), .D(n326), .E(n301), .F(
        n327), .Z(n324) );
  GTECH_NOT U314 ( .A(n328), .Z(N145) );
  GTECH_AOI222 U315 ( .A(n329), .B(n297), .C(n299), .D(n330), .E(n301), .F(
        n331), .Z(n328) );
  GTECH_NOT U316 ( .A(n332), .Z(N144) );
  GTECH_AOI222 U317 ( .A(n333), .B(n297), .C(n299), .D(n334), .E(n301), .F(
        n335), .Z(n332) );
  GTECH_NOT U318 ( .A(n336), .Z(N143) );
  GTECH_AOI222 U319 ( .A(n337), .B(n297), .C(n299), .D(n338), .E(n301), .F(
        n339), .Z(n336) );
  GTECH_NOT U320 ( .A(n340), .Z(N142) );
  GTECH_AOI222 U321 ( .A(n341), .B(n297), .C(n299), .D(n342), .E(n301), .F(
        n343), .Z(n340) );
  GTECH_NOT U322 ( .A(n344), .Z(N141) );
  GTECH_AOI222 U323 ( .A(n345), .B(n297), .C(n299), .D(n346), .E(n301), .F(
        n347), .Z(n344) );
  GTECH_NOT U324 ( .A(n348), .Z(N140) );
  GTECH_AOI222 U325 ( .A(n349), .B(n297), .C(n299), .D(n350), .E(n301), .F(
        n351), .Z(n348) );
  GTECH_NOT U326 ( .A(n309), .Z(N14) );
  GTECH_NAND2 U327 ( .A(n287), .B(n250), .Z(n309) );
  GTECH_NOT U328 ( .A(n352), .Z(N139) );
  GTECH_AOI222 U329 ( .A(n353), .B(n297), .C(n299), .D(n354), .E(n301), .F(
        n355), .Z(n352) );
  GTECH_NOT U330 ( .A(n356), .Z(N138) );
  GTECH_AOI222 U331 ( .A(n357), .B(n297), .C(n299), .D(n358), .E(n301), .F(
        n359), .Z(n356) );
  GTECH_NOT U332 ( .A(n360), .Z(N137) );
  GTECH_AOI222 U333 ( .A(n361), .B(n297), .C(n299), .D(n362), .E(n301), .F(
        n363), .Z(n360) );
  GTECH_NOT U334 ( .A(n364), .Z(N136) );
  GTECH_AOI222 U335 ( .A(n297), .B(n270), .C(n299), .D(n272), .E(n301), .F(
        n274), .Z(n364) );
  GTECH_NOT U336 ( .A(n365), .Z(n274) );
  GTECH_XOR2 U337 ( .A(n366), .B(n367), .Z(n365) );
  GTECH_NOT U338 ( .A(n368), .Z(n301) );
  GTECH_NOT U339 ( .A(n369), .Z(n299) );
  GTECH_NOT U340 ( .A(n370), .Z(n270) );
  GTECH_XOR2 U341 ( .A(n366), .B(n371), .Z(n370) );
  GTECH_NOT U342 ( .A(n372), .Z(n371) );
  GTECH_XOR2 U343 ( .A(n272), .B(n252), .Z(n366) );
  GTECH_NOT U344 ( .A(n11), .Z(n272) );
  GTECH_NOT U345 ( .A(n373), .Z(n297) );
  GTECH_OAI2N2 U346 ( .A(n12), .B(n369), .C(n278), .D(n374), .Z(N135) );
  GTECH_NAND2 U347 ( .A(n373), .B(n368), .Z(n374) );
  GTECH_NAND3 U348 ( .A(n10), .B(n375), .C(N155), .Z(n368) );
  GTECH_NAND3 U349 ( .A(n28), .B(n376), .C(N155), .Z(n373) );
  GTECH_AO21 U350 ( .A(n251), .B(n276), .C(n367), .Z(n278) );
  GTECH_NAND2 U351 ( .A(n377), .B(N155), .Z(n369) );
  GTECH_XOR2 U352 ( .A(n376), .B(n28), .Z(n377) );
  GTECH_AND2 U353 ( .A(N155), .B(n378), .Z(N134) );
  GTECH_NOT U354 ( .A(n13), .Z(n378) );
  GTECH_AND2 U355 ( .A(N155), .B(n379), .Z(N133) );
  GTECH_NOT U356 ( .A(n14), .Z(n379) );
  GTECH_AND2 U357 ( .A(N155), .B(n380), .Z(N132) );
  GTECH_NOT U358 ( .A(n15), .Z(n380) );
  GTECH_AND2 U359 ( .A(N155), .B(n381), .Z(N131) );
  GTECH_NOT U360 ( .A(n16), .Z(n381) );
  GTECH_AND2 U361 ( .A(N155), .B(n382), .Z(N130) );
  GTECH_NOT U362 ( .A(n17), .Z(n382) );
  GTECH_AND2 U363 ( .A(N155), .B(n383), .Z(N129) );
  GTECH_NOT U364 ( .A(n18), .Z(n383) );
  GTECH_AND2 U365 ( .A(N155), .B(n384), .Z(N128) );
  GTECH_NOT U366 ( .A(n19), .Z(n384) );
  GTECH_AND2 U367 ( .A(N155), .B(n385), .Z(N127) );
  GTECH_NOT U368 ( .A(n20), .Z(n385) );
  GTECH_AND2 U369 ( .A(N155), .B(n386), .Z(N126) );
  GTECH_NOT U370 ( .A(n21), .Z(n386) );
  GTECH_AND2 U371 ( .A(N155), .B(n387), .Z(N125) );
  GTECH_NOT U372 ( .A(n22), .Z(n387) );
  GTECH_AND2 U373 ( .A(N155), .B(n388), .Z(N124) );
  GTECH_NOT U374 ( .A(n23), .Z(n388) );
  GTECH_AND2 U375 ( .A(N155), .B(n389), .Z(N123) );
  GTECH_NOT U376 ( .A(n24), .Z(n389) );
  GTECH_AND2 U377 ( .A(N155), .B(n390), .Z(N122) );
  GTECH_NOT U378 ( .A(n25), .Z(n390) );
  GTECH_AND2 U379 ( .A(N155), .B(n391), .Z(N121) );
  GTECH_NOT U380 ( .A(n26), .Z(n391) );
  GTECH_AND2 U381 ( .A(N155), .B(n392), .Z(N120) );
  GTECH_NOT U382 ( .A(n27), .Z(n392) );
  GTECH_NOT U383 ( .A(n303), .Z(N155) );
  GTECH_NAND4 U384 ( .A(n8), .B(n7), .C(n9), .D(n393), .Z(n303) );
  GTECH_AND3 U385 ( .A(n289), .B(n311), .C(n6), .Z(n393) );
  GTECH_NOT U386 ( .A(n250), .Z(n311) );
  GTECH_NOT U387 ( .A(n394), .Z(N116) );
  GTECH_AOI222 U388 ( .A(n271), .B(n300), .C(n273), .D(n302), .E(n298), .F(
        n269), .Z(n394) );
  GTECH_XOR2 U389 ( .A(n395), .B(n396), .Z(n298) );
  GTECH_ADD_ABC U390 ( .A(n31), .B(n266), .C(n397), .COUT(n396) );
  GTECH_XOR2 U391 ( .A(n398), .B(n395), .Z(n302) );
  GTECH_XOR2 U392 ( .A(A[16]), .B(n30), .Z(n395) );
  GTECH_OAI22 U393 ( .A(n399), .B(n31), .C(n400), .D(n401), .Z(n398) );
  GTECH_AND2 U394 ( .A(n31), .B(n399), .Z(n400) );
  GTECH_NOT U395 ( .A(n30), .Z(n300) );
  GTECH_NAND2 U396 ( .A(n282), .B(n402), .Z(N115) );
  GTECH_NOT U397 ( .A(N41), .Z(n402) );
  GTECH_NAND2 U398 ( .A(n289), .B(n283), .Z(N41) );
  GTECH_NAND2 U399 ( .A(Ld), .B(n289), .Z(n283) );
  GTECH_NOT U400 ( .A(n403), .Z(N113) );
  GTECH_AOI222 U401 ( .A(n271), .B(n306), .C(n273), .D(n307), .E(n305), .F(
        n269), .Z(n403) );
  GTECH_XOR2 U402 ( .A(n404), .B(n397), .Z(n305) );
  GTECH_ADD_ABC U403 ( .A(n32), .B(n265), .C(n405), .COUT(n397) );
  GTECH_NOT U404 ( .A(n406), .Z(n307) );
  GTECH_XOR2 U405 ( .A(n404), .B(n401), .Z(n406) );
  GTECH_OA21 U406 ( .A(n32), .B(n407), .C(n408), .Z(n401) );
  GTECH_AO21 U407 ( .A(n32), .B(n407), .C(n409), .Z(n408) );
  GTECH_XOR2 U408 ( .A(n399), .B(n31), .Z(n404) );
  GTECH_NOT U409 ( .A(n266), .Z(n399) );
  GTECH_NOT U410 ( .A(n31), .Z(n306) );
  GTECH_NOT U411 ( .A(n410), .Z(N112) );
  GTECH_AOI222 U412 ( .A(n271), .B(n314), .C(n273), .D(n315), .E(n313), .F(
        n269), .Z(n410) );
  GTECH_XOR2 U413 ( .A(n411), .B(n405), .Z(n313) );
  GTECH_ADD_ABC U414 ( .A(n33), .B(n264), .C(n412), .COUT(n405) );
  GTECH_NOT U415 ( .A(n413), .Z(n315) );
  GTECH_XOR2 U416 ( .A(n411), .B(n409), .Z(n413) );
  GTECH_OA21 U417 ( .A(n33), .B(n414), .C(n415), .Z(n409) );
  GTECH_AO21 U418 ( .A(n33), .B(n414), .C(n416), .Z(n415) );
  GTECH_XOR2 U419 ( .A(n407), .B(n32), .Z(n411) );
  GTECH_NOT U420 ( .A(n265), .Z(n407) );
  GTECH_NOT U421 ( .A(n32), .Z(n314) );
  GTECH_NOT U422 ( .A(n417), .Z(N111) );
  GTECH_AOI222 U423 ( .A(n271), .B(n318), .C(n273), .D(n319), .E(n317), .F(
        n269), .Z(n417) );
  GTECH_XOR2 U424 ( .A(n418), .B(n412), .Z(n317) );
  GTECH_ADD_ABC U425 ( .A(n34), .B(n263), .C(n419), .COUT(n412) );
  GTECH_NOT U426 ( .A(n420), .Z(n319) );
  GTECH_XOR2 U427 ( .A(n418), .B(n416), .Z(n420) );
  GTECH_OA21 U428 ( .A(n34), .B(n421), .C(n422), .Z(n416) );
  GTECH_AO21 U429 ( .A(n34), .B(n421), .C(n423), .Z(n422) );
  GTECH_XOR2 U430 ( .A(n414), .B(n33), .Z(n418) );
  GTECH_NOT U431 ( .A(n264), .Z(n414) );
  GTECH_NOT U432 ( .A(n33), .Z(n318) );
  GTECH_NOT U433 ( .A(n424), .Z(N110) );
  GTECH_AOI222 U434 ( .A(n271), .B(n322), .C(n273), .D(n323), .E(n321), .F(
        n269), .Z(n424) );
  GTECH_XOR2 U435 ( .A(n425), .B(n419), .Z(n321) );
  GTECH_ADD_ABC U436 ( .A(n35), .B(n262), .C(n426), .COUT(n419) );
  GTECH_NOT U437 ( .A(n427), .Z(n323) );
  GTECH_XOR2 U438 ( .A(n425), .B(n423), .Z(n427) );
  GTECH_OA21 U439 ( .A(n35), .B(n428), .C(n429), .Z(n423) );
  GTECH_AO21 U440 ( .A(n35), .B(n428), .C(n430), .Z(n429) );
  GTECH_XOR2 U441 ( .A(n421), .B(n34), .Z(n425) );
  GTECH_NOT U442 ( .A(n263), .Z(n421) );
  GTECH_NOT U443 ( .A(n34), .Z(n322) );
  GTECH_NOT U444 ( .A(n431), .Z(N109) );
  GTECH_AOI222 U445 ( .A(n271), .B(n326), .C(n273), .D(n327), .E(n325), .F(
        n269), .Z(n431) );
  GTECH_XOR2 U446 ( .A(n432), .B(n426), .Z(n325) );
  GTECH_ADD_ABC U447 ( .A(n36), .B(n261), .C(n433), .COUT(n426) );
  GTECH_NOT U448 ( .A(n434), .Z(n327) );
  GTECH_XOR2 U449 ( .A(n432), .B(n430), .Z(n434) );
  GTECH_OA21 U450 ( .A(n36), .B(n435), .C(n436), .Z(n430) );
  GTECH_AO21 U451 ( .A(n36), .B(n435), .C(n437), .Z(n436) );
  GTECH_XOR2 U452 ( .A(n428), .B(n35), .Z(n432) );
  GTECH_NOT U453 ( .A(n262), .Z(n428) );
  GTECH_NOT U454 ( .A(n35), .Z(n326) );
  GTECH_NOT U455 ( .A(n438), .Z(N108) );
  GTECH_AOI222 U456 ( .A(n271), .B(n330), .C(n273), .D(n331), .E(n329), .F(
        n269), .Z(n438) );
  GTECH_XOR2 U457 ( .A(n439), .B(n433), .Z(n329) );
  GTECH_ADD_ABC U458 ( .A(n37), .B(n260), .C(n440), .COUT(n433) );
  GTECH_NOT U459 ( .A(n441), .Z(n331) );
  GTECH_XOR2 U460 ( .A(n439), .B(n437), .Z(n441) );
  GTECH_OA21 U461 ( .A(n37), .B(n442), .C(n443), .Z(n437) );
  GTECH_AO21 U462 ( .A(n37), .B(n442), .C(n444), .Z(n443) );
  GTECH_XOR2 U463 ( .A(n435), .B(n36), .Z(n439) );
  GTECH_NOT U464 ( .A(n261), .Z(n435) );
  GTECH_NOT U465 ( .A(n36), .Z(n330) );
  GTECH_NOT U466 ( .A(n445), .Z(N107) );
  GTECH_AOI222 U467 ( .A(n271), .B(n334), .C(n273), .D(n335), .E(n333), .F(
        n269), .Z(n445) );
  GTECH_XOR2 U468 ( .A(n446), .B(n440), .Z(n333) );
  GTECH_ADD_ABC U469 ( .A(n38), .B(n259), .C(n447), .COUT(n440) );
  GTECH_NOT U470 ( .A(n448), .Z(n335) );
  GTECH_XOR2 U471 ( .A(n446), .B(n444), .Z(n448) );
  GTECH_OA21 U472 ( .A(n38), .B(n449), .C(n450), .Z(n444) );
  GTECH_AO21 U473 ( .A(n38), .B(n449), .C(n451), .Z(n450) );
  GTECH_XOR2 U474 ( .A(n442), .B(n37), .Z(n446) );
  GTECH_NOT U475 ( .A(n260), .Z(n442) );
  GTECH_NOT U476 ( .A(n37), .Z(n334) );
  GTECH_NOT U477 ( .A(n452), .Z(N106) );
  GTECH_AOI222 U478 ( .A(n271), .B(n338), .C(n273), .D(n339), .E(n337), .F(
        n269), .Z(n452) );
  GTECH_XOR2 U479 ( .A(n453), .B(n447), .Z(n337) );
  GTECH_ADD_ABC U480 ( .A(n39), .B(n258), .C(n454), .COUT(n447) );
  GTECH_NOT U481 ( .A(n455), .Z(n339) );
  GTECH_XOR2 U482 ( .A(n453), .B(n451), .Z(n455) );
  GTECH_OA21 U483 ( .A(n39), .B(n456), .C(n457), .Z(n451) );
  GTECH_AO21 U484 ( .A(n39), .B(n456), .C(n458), .Z(n457) );
  GTECH_XOR2 U485 ( .A(n449), .B(n38), .Z(n453) );
  GTECH_NOT U486 ( .A(n259), .Z(n449) );
  GTECH_NOT U487 ( .A(n38), .Z(n338) );
  GTECH_NOT U488 ( .A(n459), .Z(N105) );
  GTECH_AOI222 U489 ( .A(n271), .B(n342), .C(n273), .D(n343), .E(n341), .F(
        n269), .Z(n459) );
  GTECH_XOR2 U490 ( .A(n460), .B(n454), .Z(n341) );
  GTECH_ADD_ABC U491 ( .A(n40), .B(n257), .C(n461), .COUT(n454) );
  GTECH_NOT U492 ( .A(n462), .Z(n343) );
  GTECH_XOR2 U493 ( .A(n460), .B(n458), .Z(n462) );
  GTECH_OA21 U494 ( .A(n40), .B(n463), .C(n464), .Z(n458) );
  GTECH_AO21 U495 ( .A(n40), .B(n463), .C(n465), .Z(n464) );
  GTECH_XOR2 U496 ( .A(n456), .B(n39), .Z(n460) );
  GTECH_NOT U497 ( .A(n258), .Z(n456) );
  GTECH_NOT U498 ( .A(n39), .Z(n342) );
  GTECH_NOT U499 ( .A(n466), .Z(N104) );
  GTECH_AOI222 U500 ( .A(n271), .B(n346), .C(n273), .D(n347), .E(n345), .F(
        n269), .Z(n466) );
  GTECH_XOR2 U501 ( .A(n467), .B(n461), .Z(n345) );
  GTECH_ADD_ABC U502 ( .A(n41), .B(n256), .C(n468), .COUT(n461) );
  GTECH_NOT U503 ( .A(n469), .Z(n347) );
  GTECH_XOR2 U504 ( .A(n467), .B(n465), .Z(n469) );
  GTECH_OA21 U505 ( .A(n41), .B(n470), .C(n471), .Z(n465) );
  GTECH_AO21 U506 ( .A(n41), .B(n470), .C(n472), .Z(n471) );
  GTECH_XOR2 U507 ( .A(n463), .B(n40), .Z(n467) );
  GTECH_NOT U508 ( .A(n257), .Z(n463) );
  GTECH_NOT U509 ( .A(n40), .Z(n346) );
  GTECH_NOT U510 ( .A(n473), .Z(N103) );
  GTECH_AOI222 U511 ( .A(n271), .B(n350), .C(n273), .D(n351), .E(n349), .F(
        n269), .Z(n473) );
  GTECH_XOR2 U512 ( .A(n474), .B(n468), .Z(n349) );
  GTECH_ADD_ABC U513 ( .A(n42), .B(n255), .C(n475), .COUT(n468) );
  GTECH_NOT U514 ( .A(n476), .Z(n351) );
  GTECH_XOR2 U515 ( .A(n474), .B(n472), .Z(n476) );
  GTECH_OA21 U516 ( .A(n42), .B(n477), .C(n478), .Z(n472) );
  GTECH_AO21 U517 ( .A(n42), .B(n477), .C(n479), .Z(n478) );
  GTECH_XOR2 U518 ( .A(n470), .B(n41), .Z(n474) );
  GTECH_NOT U519 ( .A(n256), .Z(n470) );
  GTECH_NOT U520 ( .A(n41), .Z(n350) );
  GTECH_NOT U521 ( .A(n480), .Z(N102) );
  GTECH_AOI222 U522 ( .A(n271), .B(n354), .C(n273), .D(n355), .E(n353), .F(
        n269), .Z(n480) );
  GTECH_XOR2 U523 ( .A(n481), .B(n475), .Z(n353) );
  GTECH_ADD_ABC U524 ( .A(n43), .B(n254), .C(n482), .COUT(n475) );
  GTECH_NOT U525 ( .A(n483), .Z(n355) );
  GTECH_XOR2 U526 ( .A(n481), .B(n479), .Z(n483) );
  GTECH_OA21 U527 ( .A(n43), .B(n484), .C(n485), .Z(n479) );
  GTECH_AO21 U528 ( .A(n43), .B(n484), .C(n486), .Z(n485) );
  GTECH_XOR2 U529 ( .A(n477), .B(n42), .Z(n481) );
  GTECH_NOT U530 ( .A(n255), .Z(n477) );
  GTECH_NOT U531 ( .A(n42), .Z(n354) );
  GTECH_NOT U532 ( .A(n487), .Z(N101) );
  GTECH_AOI222 U533 ( .A(n271), .B(n358), .C(n273), .D(n359), .E(n357), .F(
        n269), .Z(n487) );
  GTECH_XOR2 U534 ( .A(n488), .B(n482), .Z(n357) );
  GTECH_ADD_ABC U535 ( .A(n29), .B(n253), .C(n489), .COUT(n482) );
  GTECH_NOT U536 ( .A(n490), .Z(n359) );
  GTECH_XOR2 U537 ( .A(n488), .B(n486), .Z(n490) );
  GTECH_OA21 U538 ( .A(n29), .B(n491), .C(n492), .Z(n486) );
  GTECH_AO21 U539 ( .A(n29), .B(n491), .C(n493), .Z(n492) );
  GTECH_XOR2 U540 ( .A(n484), .B(n43), .Z(n488) );
  GTECH_NOT U541 ( .A(n254), .Z(n484) );
  GTECH_NOT U542 ( .A(n43), .Z(n358) );
  GTECH_NOT U543 ( .A(n494), .Z(N100) );
  GTECH_AOI222 U544 ( .A(n361), .B(n269), .C(n271), .D(n362), .E(n273), .F(
        n363), .Z(n494) );
  GTECH_NOT U545 ( .A(n495), .Z(n363) );
  GTECH_XOR2 U546 ( .A(n496), .B(n493), .Z(n495) );
  GTECH_OA21 U547 ( .A(n11), .B(n497), .C(n498), .Z(n493) );
  GTECH_AO21 U548 ( .A(n11), .B(n497), .C(n367), .Z(n498) );
  GTECH_NOT U549 ( .A(n499), .Z(n367) );
  GTECH_NAND2 U550 ( .A(n12), .B(n500), .Z(n499) );
  GTECH_NOT U551 ( .A(n252), .Z(n497) );
  GTECH_NOT U552 ( .A(n281), .Z(n273) );
  GTECH_NAND2 U553 ( .A(N82), .B(n10), .Z(n281) );
  GTECH_NOT U554 ( .A(n501), .Z(N82) );
  GTECH_NOT U555 ( .A(n29), .Z(n362) );
  GTECH_OAI22 U556 ( .A(n376), .B(n502), .C(n10), .D(n501), .Z(n271) );
  GTECH_NAND2 U557 ( .A(n287), .B(n375), .Z(n501) );
  GTECH_NOT U558 ( .A(n28), .Z(n375) );
  GTECH_NAND2 U559 ( .A(n28), .B(n287), .Z(n502) );
  GTECH_NOT U560 ( .A(n280), .Z(n269) );
  GTECH_NAND3 U561 ( .A(n287), .B(n376), .C(n28), .Z(n280) );
  GTECH_NOT U562 ( .A(n10), .Z(n376) );
  GTECH_NOT U563 ( .A(n282), .Z(n287) );
  GTECH_AO21 U564 ( .A(n9), .B(n291), .C(n503), .Z(n282) );
  GTECH_NAND2 U565 ( .A(n288), .B(n289), .Z(n503) );
  GTECH_NOT U566 ( .A(Rst), .Z(n289) );
  GTECH_NOT U567 ( .A(Ld), .Z(n288) );
  GTECH_NOT U568 ( .A(n285), .Z(n291) );
  GTECH_NAND2 U569 ( .A(n8), .B(n294), .Z(n285) );
  GTECH_NOT U570 ( .A(n292), .Z(n294) );
  GTECH_NAND2 U571 ( .A(n7), .B(n504), .Z(n292) );
  GTECH_NOT U572 ( .A(n295), .Z(n504) );
  GTECH_NAND2 U573 ( .A(n6), .B(n250), .Z(n295) );
  GTECH_XOR2 U574 ( .A(n496), .B(n489), .Z(n361) );
  GTECH_ADD_ABC U575 ( .A(n252), .B(n11), .C(n372), .COUT(n489) );
  GTECH_NAND2 U576 ( .A(n276), .B(n500), .Z(n372) );
  GTECH_NOT U577 ( .A(n251), .Z(n500) );
  GTECH_NOT U578 ( .A(n12), .Z(n276) );
  GTECH_XOR2 U579 ( .A(n491), .B(n29), .Z(n496) );
  GTECH_NOT U580 ( .A(n253), .Z(n491) );
endmodule

