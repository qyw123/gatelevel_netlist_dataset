
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
         n481, n482, n483, n484, n485, n486, n487, n488;
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
  GTECH_NOT U273 ( .A(n283), .Z(n279) );
  GTECH_AND_NOT U274 ( .A(M[15]), .B(n283), .Z(N42) );
  GTECH_AND_NOT U275 ( .A(M[14]), .B(n283), .Z(N39) );
  GTECH_AND_NOT U276 ( .A(M[13]), .B(n283), .Z(N38) );
  GTECH_AND_NOT U277 ( .A(M[12]), .B(n283), .Z(N37) );
  GTECH_AND_NOT U278 ( .A(M[11]), .B(n283), .Z(N36) );
  GTECH_AND_NOT U279 ( .A(M[10]), .B(n283), .Z(N35) );
  GTECH_AND_NOT U280 ( .A(M[9]), .B(n283), .Z(N34) );
  GTECH_AND_NOT U281 ( .A(M[8]), .B(n283), .Z(N33) );
  GTECH_AND_NOT U282 ( .A(M[7]), .B(n283), .Z(N32) );
  GTECH_AND_NOT U283 ( .A(M[6]), .B(n283), .Z(N31) );
  GTECH_AND_NOT U284 ( .A(M[5]), .B(n283), .Z(N30) );
  GTECH_AND_NOT U285 ( .A(M[4]), .B(n283), .Z(N29) );
  GTECH_AND_NOT U286 ( .A(M[3]), .B(n283), .Z(N28) );
  GTECH_AND_NOT U287 ( .A(M[2]), .B(n283), .Z(N27) );
  GTECH_AND_NOT U288 ( .A(M[1]), .B(n283), .Z(N26) );
  GTECH_AND_NOT U289 ( .A(M[0]), .B(n283), .Z(N25) );
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
  GTECH_MUX2 U303 ( .A(n308), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND_NOT U304 ( .A(n287), .B(n250), .Z(n308) );
  GTECH_NOT U305 ( .A(n309), .Z(N149) );
  GTECH_AOI222 U306 ( .A(n310), .B(n297), .C(n299), .D(n311), .E(n301), .F(
        n312), .Z(n309) );
  GTECH_NOT U307 ( .A(n313), .Z(N148) );
  GTECH_AOI222 U308 ( .A(n314), .B(n297), .C(n299), .D(n315), .E(n301), .F(
        n316), .Z(n313) );
  GTECH_NOT U309 ( .A(n317), .Z(N147) );
  GTECH_AOI222 U310 ( .A(n318), .B(n297), .C(n299), .D(n319), .E(n301), .F(
        n320), .Z(n317) );
  GTECH_NOT U311 ( .A(n321), .Z(N146) );
  GTECH_AOI222 U312 ( .A(n322), .B(n297), .C(n299), .D(n323), .E(n301), .F(
        n324), .Z(n321) );
  GTECH_NOT U313 ( .A(n325), .Z(N145) );
  GTECH_AOI222 U314 ( .A(n326), .B(n297), .C(n299), .D(n327), .E(n301), .F(
        n328), .Z(n325) );
  GTECH_NOT U315 ( .A(n329), .Z(N144) );
  GTECH_AOI222 U316 ( .A(n330), .B(n297), .C(n299), .D(n331), .E(n301), .F(
        n332), .Z(n329) );
  GTECH_NOT U317 ( .A(n333), .Z(N143) );
  GTECH_AOI222 U318 ( .A(n334), .B(n297), .C(n299), .D(n335), .E(n301), .F(
        n336), .Z(n333) );
  GTECH_NOT U319 ( .A(n337), .Z(N142) );
  GTECH_AOI222 U320 ( .A(n338), .B(n297), .C(n299), .D(n339), .E(n301), .F(
        n340), .Z(n337) );
  GTECH_NOT U321 ( .A(n341), .Z(N141) );
  GTECH_AOI222 U322 ( .A(n342), .B(n297), .C(n299), .D(n343), .E(n301), .F(
        n344), .Z(n341) );
  GTECH_NOT U323 ( .A(n345), .Z(N140) );
  GTECH_AOI222 U324 ( .A(n346), .B(n297), .C(n299), .D(n347), .E(n301), .F(
        n348), .Z(n345) );
  GTECH_NOT U325 ( .A(n349), .Z(N14) );
  GTECH_NAND2 U326 ( .A(n287), .B(n250), .Z(n349) );
  GTECH_NOT U327 ( .A(n350), .Z(N139) );
  GTECH_AOI222 U328 ( .A(n351), .B(n297), .C(n299), .D(n352), .E(n301), .F(
        n353), .Z(n350) );
  GTECH_NOT U329 ( .A(n354), .Z(N138) );
  GTECH_AOI222 U330 ( .A(n355), .B(n297), .C(n299), .D(n356), .E(n301), .F(
        n357), .Z(n354) );
  GTECH_NOT U331 ( .A(n358), .Z(N137) );
  GTECH_AOI222 U332 ( .A(n359), .B(n297), .C(n299), .D(n360), .E(n301), .F(
        n361), .Z(n358) );
  GTECH_NOT U333 ( .A(n362), .Z(N136) );
  GTECH_AOI222 U334 ( .A(n297), .B(n270), .C(n299), .D(n272), .E(n301), .F(
        n274), .Z(n362) );
  GTECH_NOT U335 ( .A(n363), .Z(n274) );
  GTECH_XOR2 U336 ( .A(n364), .B(n365), .Z(n363) );
  GTECH_NOT U337 ( .A(n366), .Z(n301) );
  GTECH_NOT U338 ( .A(n367), .Z(n299) );
  GTECH_NOT U339 ( .A(n368), .Z(n270) );
  GTECH_XOR2 U340 ( .A(n364), .B(n369), .Z(n368) );
  GTECH_NOT U341 ( .A(n370), .Z(n369) );
  GTECH_XOR2 U342 ( .A(n272), .B(n252), .Z(n364) );
  GTECH_NOT U343 ( .A(n11), .Z(n272) );
  GTECH_NOT U344 ( .A(n371), .Z(n297) );
  GTECH_OAI2N2 U345 ( .A(n12), .B(n367), .C(n278), .D(n372), .Z(N135) );
  GTECH_NAND2 U346 ( .A(n371), .B(n366), .Z(n372) );
  GTECH_NAND3 U347 ( .A(n10), .B(n373), .C(N155), .Z(n366) );
  GTECH_NAND3 U348 ( .A(n28), .B(n374), .C(N155), .Z(n371) );
  GTECH_AO21 U349 ( .A(n251), .B(n276), .C(n365), .Z(n278) );
  GTECH_NAND2 U350 ( .A(n375), .B(N155), .Z(n367) );
  GTECH_XOR2 U351 ( .A(n374), .B(n28), .Z(n375) );
  GTECH_AND_NOT U352 ( .A(N155), .B(n13), .Z(N134) );
  GTECH_AND_NOT U353 ( .A(N155), .B(n14), .Z(N133) );
  GTECH_AND_NOT U354 ( .A(N155), .B(n15), .Z(N132) );
  GTECH_AND_NOT U355 ( .A(N155), .B(n16), .Z(N131) );
  GTECH_AND_NOT U356 ( .A(N155), .B(n17), .Z(N130) );
  GTECH_AND_NOT U357 ( .A(N155), .B(n18), .Z(N129) );
  GTECH_AND_NOT U358 ( .A(N155), .B(n19), .Z(N128) );
  GTECH_AND_NOT U359 ( .A(N155), .B(n20), .Z(N127) );
  GTECH_AND_NOT U360 ( .A(N155), .B(n21), .Z(N126) );
  GTECH_AND_NOT U361 ( .A(N155), .B(n22), .Z(N125) );
  GTECH_AND_NOT U362 ( .A(N155), .B(n23), .Z(N124) );
  GTECH_AND_NOT U363 ( .A(N155), .B(n24), .Z(N123) );
  GTECH_AND_NOT U364 ( .A(N155), .B(n25), .Z(N122) );
  GTECH_AND_NOT U365 ( .A(N155), .B(n26), .Z(N121) );
  GTECH_AND_NOT U366 ( .A(N155), .B(n27), .Z(N120) );
  GTECH_NOT U367 ( .A(n303), .Z(N155) );
  GTECH_NAND5 U368 ( .A(n376), .B(n289), .C(n9), .D(n8), .E(n7), .Z(n303) );
  GTECH_AND_NOT U369 ( .A(n6), .B(n250), .Z(n376) );
  GTECH_NOT U370 ( .A(n377), .Z(N116) );
  GTECH_AOI222 U371 ( .A(n271), .B(n300), .C(n273), .D(n302), .E(n298), .F(
        n269), .Z(n377) );
  GTECH_XOR2 U372 ( .A(n378), .B(n379), .Z(n298) );
  GTECH_ADD_ABC U373 ( .A(n31), .B(n266), .C(n380), .COUT(n379) );
  GTECH_XOR2 U374 ( .A(n381), .B(n378), .Z(n302) );
  GTECH_XOR2 U375 ( .A(A[16]), .B(n30), .Z(n378) );
  GTECH_OAI22 U376 ( .A(n382), .B(n31), .C(n383), .D(n384), .Z(n381) );
  GTECH_AND_NOT U377 ( .A(n31), .B(n266), .Z(n383) );
  GTECH_NOT U378 ( .A(n30), .Z(n300) );
  GTECH_NAND2 U379 ( .A(n282), .B(n385), .Z(N115) );
  GTECH_NOT U380 ( .A(N41), .Z(n385) );
  GTECH_NAND2 U381 ( .A(n289), .B(n283), .Z(N41) );
  GTECH_NAND2 U382 ( .A(Ld), .B(n289), .Z(n283) );
  GTECH_NOT U383 ( .A(n386), .Z(N113) );
  GTECH_AOI222 U384 ( .A(n271), .B(n306), .C(n273), .D(n307), .E(n305), .F(
        n269), .Z(n386) );
  GTECH_XOR2 U385 ( .A(n387), .B(n380), .Z(n305) );
  GTECH_ADD_ABC U386 ( .A(n32), .B(n265), .C(n388), .COUT(n380) );
  GTECH_NOT U387 ( .A(n389), .Z(n307) );
  GTECH_XOR2 U388 ( .A(n387), .B(n384), .Z(n389) );
  GTECH_OA22 U389 ( .A(n390), .B(n391), .C(n32), .D(n392), .Z(n384) );
  GTECH_AND_NOT U390 ( .A(n32), .B(n265), .Z(n391) );
  GTECH_XOR2 U391 ( .A(n382), .B(n31), .Z(n387) );
  GTECH_NOT U392 ( .A(n266), .Z(n382) );
  GTECH_NOT U393 ( .A(n31), .Z(n306) );
  GTECH_NOT U394 ( .A(n393), .Z(N112) );
  GTECH_AOI222 U395 ( .A(n271), .B(n311), .C(n273), .D(n312), .E(n310), .F(
        n269), .Z(n393) );
  GTECH_XOR2 U396 ( .A(n394), .B(n388), .Z(n310) );
  GTECH_ADD_ABC U397 ( .A(n33), .B(n264), .C(n395), .COUT(n388) );
  GTECH_NOT U398 ( .A(n396), .Z(n312) );
  GTECH_XOR2 U399 ( .A(n394), .B(n390), .Z(n396) );
  GTECH_OA22 U400 ( .A(n397), .B(n398), .C(n33), .D(n399), .Z(n390) );
  GTECH_AND_NOT U401 ( .A(n33), .B(n264), .Z(n398) );
  GTECH_XOR2 U402 ( .A(n392), .B(n32), .Z(n394) );
  GTECH_NOT U403 ( .A(n265), .Z(n392) );
  GTECH_NOT U404 ( .A(n32), .Z(n311) );
  GTECH_NOT U405 ( .A(n400), .Z(N111) );
  GTECH_AOI222 U406 ( .A(n271), .B(n315), .C(n273), .D(n316), .E(n314), .F(
        n269), .Z(n400) );
  GTECH_XOR2 U407 ( .A(n401), .B(n395), .Z(n314) );
  GTECH_ADD_ABC U408 ( .A(n34), .B(n263), .C(n402), .COUT(n395) );
  GTECH_NOT U409 ( .A(n403), .Z(n316) );
  GTECH_XOR2 U410 ( .A(n401), .B(n397), .Z(n403) );
  GTECH_OA22 U411 ( .A(n404), .B(n405), .C(n34), .D(n406), .Z(n397) );
  GTECH_AND_NOT U412 ( .A(n34), .B(n263), .Z(n405) );
  GTECH_XOR2 U413 ( .A(n399), .B(n33), .Z(n401) );
  GTECH_NOT U414 ( .A(n264), .Z(n399) );
  GTECH_NOT U415 ( .A(n33), .Z(n315) );
  GTECH_NOT U416 ( .A(n407), .Z(N110) );
  GTECH_AOI222 U417 ( .A(n271), .B(n319), .C(n273), .D(n320), .E(n318), .F(
        n269), .Z(n407) );
  GTECH_XOR2 U418 ( .A(n408), .B(n402), .Z(n318) );
  GTECH_ADD_ABC U419 ( .A(n35), .B(n262), .C(n409), .COUT(n402) );
  GTECH_NOT U420 ( .A(n410), .Z(n320) );
  GTECH_XOR2 U421 ( .A(n408), .B(n404), .Z(n410) );
  GTECH_OA22 U422 ( .A(n411), .B(n412), .C(n35), .D(n413), .Z(n404) );
  GTECH_AND_NOT U423 ( .A(n35), .B(n262), .Z(n412) );
  GTECH_XOR2 U424 ( .A(n406), .B(n34), .Z(n408) );
  GTECH_NOT U425 ( .A(n263), .Z(n406) );
  GTECH_NOT U426 ( .A(n34), .Z(n319) );
  GTECH_NOT U427 ( .A(n414), .Z(N109) );
  GTECH_AOI222 U428 ( .A(n271), .B(n323), .C(n273), .D(n324), .E(n322), .F(
        n269), .Z(n414) );
  GTECH_XOR2 U429 ( .A(n415), .B(n409), .Z(n322) );
  GTECH_ADD_ABC U430 ( .A(n36), .B(n261), .C(n416), .COUT(n409) );
  GTECH_NOT U431 ( .A(n417), .Z(n324) );
  GTECH_XOR2 U432 ( .A(n415), .B(n411), .Z(n417) );
  GTECH_OA22 U433 ( .A(n418), .B(n419), .C(n36), .D(n420), .Z(n411) );
  GTECH_AND_NOT U434 ( .A(n36), .B(n261), .Z(n419) );
  GTECH_XOR2 U435 ( .A(n413), .B(n35), .Z(n415) );
  GTECH_NOT U436 ( .A(n262), .Z(n413) );
  GTECH_NOT U437 ( .A(n35), .Z(n323) );
  GTECH_NOT U438 ( .A(n421), .Z(N108) );
  GTECH_AOI222 U439 ( .A(n271), .B(n327), .C(n273), .D(n328), .E(n326), .F(
        n269), .Z(n421) );
  GTECH_XOR2 U440 ( .A(n422), .B(n416), .Z(n326) );
  GTECH_ADD_ABC U441 ( .A(n37), .B(n260), .C(n423), .COUT(n416) );
  GTECH_NOT U442 ( .A(n424), .Z(n328) );
  GTECH_XOR2 U443 ( .A(n422), .B(n418), .Z(n424) );
  GTECH_OA22 U444 ( .A(n425), .B(n426), .C(n37), .D(n427), .Z(n418) );
  GTECH_AND_NOT U445 ( .A(n37), .B(n260), .Z(n426) );
  GTECH_XOR2 U446 ( .A(n420), .B(n36), .Z(n422) );
  GTECH_NOT U447 ( .A(n261), .Z(n420) );
  GTECH_NOT U448 ( .A(n36), .Z(n327) );
  GTECH_NOT U449 ( .A(n428), .Z(N107) );
  GTECH_AOI222 U450 ( .A(n271), .B(n331), .C(n273), .D(n332), .E(n330), .F(
        n269), .Z(n428) );
  GTECH_XOR2 U451 ( .A(n429), .B(n423), .Z(n330) );
  GTECH_ADD_ABC U452 ( .A(n38), .B(n259), .C(n430), .COUT(n423) );
  GTECH_NOT U453 ( .A(n431), .Z(n332) );
  GTECH_XOR2 U454 ( .A(n429), .B(n425), .Z(n431) );
  GTECH_OA22 U455 ( .A(n432), .B(n433), .C(n38), .D(n434), .Z(n425) );
  GTECH_AND_NOT U456 ( .A(n38), .B(n259), .Z(n433) );
  GTECH_XOR2 U457 ( .A(n427), .B(n37), .Z(n429) );
  GTECH_NOT U458 ( .A(n260), .Z(n427) );
  GTECH_NOT U459 ( .A(n37), .Z(n331) );
  GTECH_NOT U460 ( .A(n435), .Z(N106) );
  GTECH_AOI222 U461 ( .A(n271), .B(n335), .C(n273), .D(n336), .E(n334), .F(
        n269), .Z(n435) );
  GTECH_XOR2 U462 ( .A(n436), .B(n430), .Z(n334) );
  GTECH_ADD_ABC U463 ( .A(n39), .B(n258), .C(n437), .COUT(n430) );
  GTECH_NOT U464 ( .A(n438), .Z(n336) );
  GTECH_XOR2 U465 ( .A(n436), .B(n432), .Z(n438) );
  GTECH_OA22 U466 ( .A(n439), .B(n440), .C(n39), .D(n441), .Z(n432) );
  GTECH_AND_NOT U467 ( .A(n39), .B(n258), .Z(n440) );
  GTECH_XOR2 U468 ( .A(n434), .B(n38), .Z(n436) );
  GTECH_NOT U469 ( .A(n259), .Z(n434) );
  GTECH_NOT U470 ( .A(n38), .Z(n335) );
  GTECH_NOT U471 ( .A(n442), .Z(N105) );
  GTECH_AOI222 U472 ( .A(n271), .B(n339), .C(n273), .D(n340), .E(n338), .F(
        n269), .Z(n442) );
  GTECH_XOR2 U473 ( .A(n443), .B(n437), .Z(n338) );
  GTECH_ADD_ABC U474 ( .A(n40), .B(n257), .C(n444), .COUT(n437) );
  GTECH_NOT U475 ( .A(n445), .Z(n340) );
  GTECH_XOR2 U476 ( .A(n443), .B(n439), .Z(n445) );
  GTECH_OA22 U477 ( .A(n446), .B(n447), .C(n40), .D(n448), .Z(n439) );
  GTECH_AND_NOT U478 ( .A(n40), .B(n257), .Z(n447) );
  GTECH_XOR2 U479 ( .A(n441), .B(n39), .Z(n443) );
  GTECH_NOT U480 ( .A(n258), .Z(n441) );
  GTECH_NOT U481 ( .A(n39), .Z(n339) );
  GTECH_NOT U482 ( .A(n449), .Z(N104) );
  GTECH_AOI222 U483 ( .A(n271), .B(n343), .C(n273), .D(n344), .E(n342), .F(
        n269), .Z(n449) );
  GTECH_XOR2 U484 ( .A(n450), .B(n444), .Z(n342) );
  GTECH_ADD_ABC U485 ( .A(n41), .B(n256), .C(n451), .COUT(n444) );
  GTECH_NOT U486 ( .A(n452), .Z(n344) );
  GTECH_XOR2 U487 ( .A(n450), .B(n446), .Z(n452) );
  GTECH_OA22 U488 ( .A(n453), .B(n454), .C(n41), .D(n455), .Z(n446) );
  GTECH_AND_NOT U489 ( .A(n41), .B(n256), .Z(n454) );
  GTECH_XOR2 U490 ( .A(n448), .B(n40), .Z(n450) );
  GTECH_NOT U491 ( .A(n257), .Z(n448) );
  GTECH_NOT U492 ( .A(n40), .Z(n343) );
  GTECH_NOT U493 ( .A(n456), .Z(N103) );
  GTECH_AOI222 U494 ( .A(n271), .B(n347), .C(n273), .D(n348), .E(n346), .F(
        n269), .Z(n456) );
  GTECH_XOR2 U495 ( .A(n457), .B(n451), .Z(n346) );
  GTECH_ADD_ABC U496 ( .A(n42), .B(n255), .C(n458), .COUT(n451) );
  GTECH_NOT U497 ( .A(n459), .Z(n348) );
  GTECH_XOR2 U498 ( .A(n457), .B(n453), .Z(n459) );
  GTECH_OA22 U499 ( .A(n460), .B(n461), .C(n42), .D(n462), .Z(n453) );
  GTECH_AND_NOT U500 ( .A(n42), .B(n255), .Z(n461) );
  GTECH_XOR2 U501 ( .A(n455), .B(n41), .Z(n457) );
  GTECH_NOT U502 ( .A(n256), .Z(n455) );
  GTECH_NOT U503 ( .A(n41), .Z(n347) );
  GTECH_NOT U504 ( .A(n463), .Z(N102) );
  GTECH_AOI222 U505 ( .A(n271), .B(n352), .C(n273), .D(n353), .E(n351), .F(
        n269), .Z(n463) );
  GTECH_XOR2 U506 ( .A(n464), .B(n458), .Z(n351) );
  GTECH_ADD_ABC U507 ( .A(n43), .B(n254), .C(n465), .COUT(n458) );
  GTECH_NOT U508 ( .A(n466), .Z(n353) );
  GTECH_XOR2 U509 ( .A(n464), .B(n460), .Z(n466) );
  GTECH_OA22 U510 ( .A(n467), .B(n468), .C(n43), .D(n469), .Z(n460) );
  GTECH_AND_NOT U511 ( .A(n43), .B(n254), .Z(n468) );
  GTECH_XOR2 U512 ( .A(n462), .B(n42), .Z(n464) );
  GTECH_NOT U513 ( .A(n255), .Z(n462) );
  GTECH_NOT U514 ( .A(n42), .Z(n352) );
  GTECH_NOT U515 ( .A(n470), .Z(N101) );
  GTECH_AOI222 U516 ( .A(n271), .B(n356), .C(n273), .D(n357), .E(n355), .F(
        n269), .Z(n470) );
  GTECH_XOR2 U517 ( .A(n471), .B(n465), .Z(n355) );
  GTECH_ADD_ABC U518 ( .A(n29), .B(n253), .C(n472), .COUT(n465) );
  GTECH_NOT U519 ( .A(n473), .Z(n357) );
  GTECH_XOR2 U520 ( .A(n471), .B(n467), .Z(n473) );
  GTECH_OA22 U521 ( .A(n474), .B(n475), .C(n29), .D(n476), .Z(n467) );
  GTECH_AND_NOT U522 ( .A(n29), .B(n253), .Z(n475) );
  GTECH_XOR2 U523 ( .A(n469), .B(n43), .Z(n471) );
  GTECH_NOT U524 ( .A(n254), .Z(n469) );
  GTECH_NOT U525 ( .A(n43), .Z(n356) );
  GTECH_NOT U526 ( .A(n477), .Z(N100) );
  GTECH_AOI222 U527 ( .A(n359), .B(n269), .C(n271), .D(n360), .E(n273), .F(
        n361), .Z(n477) );
  GTECH_NOT U528 ( .A(n478), .Z(n361) );
  GTECH_XOR2 U529 ( .A(n479), .B(n474), .Z(n478) );
  GTECH_OA21 U530 ( .A(n365), .B(n480), .C(n481), .Z(n474) );
  GTECH_OR_NOT U531 ( .A(n11), .B(n252), .Z(n481) );
  GTECH_AND_NOT U532 ( .A(n11), .B(n252), .Z(n480) );
  GTECH_NOT U533 ( .A(n482), .Z(n365) );
  GTECH_NAND2 U534 ( .A(n12), .B(n483), .Z(n482) );
  GTECH_NOT U535 ( .A(n281), .Z(n273) );
  GTECH_NAND2 U536 ( .A(N82), .B(n10), .Z(n281) );
  GTECH_NOT U537 ( .A(n484), .Z(N82) );
  GTECH_NOT U538 ( .A(n29), .Z(n360) );
  GTECH_NOT U539 ( .A(n485), .Z(n271) );
  GTECH_MUX2 U540 ( .A(n484), .B(n486), .S(n10), .Z(n485) );
  GTECH_NAND2 U541 ( .A(n28), .B(n287), .Z(n486) );
  GTECH_NAND2 U542 ( .A(n287), .B(n373), .Z(n484) );
  GTECH_NOT U543 ( .A(n28), .Z(n373) );
  GTECH_NOT U544 ( .A(n280), .Z(n269) );
  GTECH_NAND3 U545 ( .A(n287), .B(n374), .C(n28), .Z(n280) );
  GTECH_NOT U546 ( .A(n10), .Z(n374) );
  GTECH_NOT U547 ( .A(n282), .Z(n287) );
  GTECH_AO21 U548 ( .A(n9), .B(n291), .C(n487), .Z(n282) );
  GTECH_NAND2 U549 ( .A(n288), .B(n289), .Z(n487) );
  GTECH_NOT U550 ( .A(Rst), .Z(n289) );
  GTECH_NOT U551 ( .A(Ld), .Z(n288) );
  GTECH_NOT U552 ( .A(n285), .Z(n291) );
  GTECH_NAND2 U553 ( .A(n8), .B(n294), .Z(n285) );
  GTECH_NOT U554 ( .A(n292), .Z(n294) );
  GTECH_NAND2 U555 ( .A(n7), .B(n488), .Z(n292) );
  GTECH_NOT U556 ( .A(n295), .Z(n488) );
  GTECH_NAND2 U557 ( .A(n6), .B(n250), .Z(n295) );
  GTECH_XOR2 U558 ( .A(n479), .B(n472), .Z(n359) );
  GTECH_ADD_ABC U559 ( .A(n252), .B(n11), .C(n370), .COUT(n472) );
  GTECH_NAND2 U560 ( .A(n276), .B(n483), .Z(n370) );
  GTECH_NOT U561 ( .A(n251), .Z(n483) );
  GTECH_NOT U562 ( .A(n12), .Z(n276) );
  GTECH_XOR2 U563 ( .A(n476), .B(n29), .Z(n479) );
  GTECH_NOT U564 ( .A(n253), .Z(n476) );
endmodule

