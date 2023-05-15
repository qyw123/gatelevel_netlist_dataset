
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
         n43, n105, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n105), .K(n105), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n242) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n105), .K(n105), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n105), .K(n105), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n105), .K(n105), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n105), .K(n105), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n105), .K(n105), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]) );
  GTECH_FJK1S A_reg_15_ ( .J(n105), .K(n105), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n258) );
  GTECH_FJK1S A_reg_14_ ( .J(n105), .K(n105), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n257) );
  GTECH_FJK1S A_reg_13_ ( .J(n105), .K(n105), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n256) );
  GTECH_FJK1S A_reg_12_ ( .J(n105), .K(n105), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n255) );
  GTECH_FJK1S A_reg_11_ ( .J(n105), .K(n105), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n254) );
  GTECH_FJK1S A_reg_10_ ( .J(n105), .K(n105), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n253) );
  GTECH_FJK1S A_reg_9_ ( .J(n105), .K(n105), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n252) );
  GTECH_FJK1S A_reg_8_ ( .J(n105), .K(n105), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n251) );
  GTECH_FJK1S A_reg_7_ ( .J(n105), .K(n105), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n250) );
  GTECH_FJK1S A_reg_6_ ( .J(n105), .K(n105), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n249) );
  GTECH_FJK1S A_reg_5_ ( .J(n105), .K(n105), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n248) );
  GTECH_FJK1S A_reg_4_ ( .J(n105), .K(n105), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n247) );
  GTECH_FJK1S A_reg_3_ ( .J(n105), .K(n105), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n246) );
  GTECH_FJK1S A_reg_2_ ( .J(n105), .K(n105), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n245) );
  GTECH_FJK1S A_reg_1_ ( .J(n105), .K(n105), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n244) );
  GTECH_FJK1S A_reg_0_ ( .J(n105), .K(n105), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n243) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n105), .K(n105), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n105), .K(n105), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n105), .K(n105), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n105), .K(n105), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n105), .K(n105), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n105), .K(n105), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n105), .K(n105), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n105), .K(n105), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n105), .K(n105), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n105), .K(n105), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n105), .K(n105), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n105), .K(n105), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n105), .K(n105), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n105), .K(n105), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n105), .K(n105), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n105), .K(n105), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n105), .K(n105), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n105), .K(n105), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n105), .K(n105), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n105), .K(n105), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n105), .K(n105), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n105), .K(n105), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n105), .K(n105), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n105), .K(n105), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n105), .K(n105), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n105), .K(n105), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n105), .K(n105), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n105), .K(n105), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n105), .K(n105), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n105), .K(n105), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n105), .K(n105), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n105), .K(n105), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n105), .K(n105), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n105), .K(n105), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n105), .K(n105), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n105), .K(n105), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n105), .K(n105), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n105), .K(n105), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n105), .K(n105), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n105), .K(n105), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n105), .K(n105), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n105), .K(n105), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n105), .K(n105), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n105), .K(n105), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n105), .K(n105), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n105), .K(n105), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n105), .K(n105), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n105), .K(n105), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n105), .K(n105), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n105), .K(n105), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n105), .K(n105), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n105), .K(n105), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n105), .K(n105), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n105), .K(n105), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n105), .K(n105), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n105), .K(n105), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n105), .K(n105), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n105), .K(n105), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n105), .K(n105), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n105), .K(n105), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n105), .K(n105), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n105), .K(n105), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n105), .K(n105), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n105), .K(n105), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n105), .K(n105), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n105), .K(n105), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U244 ( .Z(n105) );
  GTECH_AND_NOT U245 ( .A(n260), .B(n261), .Z(N99) );
  GTECH_OAI2N2 U246 ( .A(n262), .B(n263), .C(R[15]), .D(n264), .Z(N98) );
  GTECH_OAI2N2 U247 ( .A(n13), .B(n263), .C(R[14]), .D(n264), .Z(N97) );
  GTECH_OAI2N2 U248 ( .A(n14), .B(n263), .C(R[13]), .D(n264), .Z(N96) );
  GTECH_OAI2N2 U249 ( .A(n15), .B(n263), .C(R[12]), .D(n264), .Z(N95) );
  GTECH_OAI2N2 U250 ( .A(n16), .B(n263), .C(R[11]), .D(n264), .Z(N94) );
  GTECH_OAI2N2 U251 ( .A(n17), .B(n263), .C(R[10]), .D(n264), .Z(N93) );
  GTECH_OAI2N2 U252 ( .A(n18), .B(n263), .C(R[9]), .D(n264), .Z(N92) );
  GTECH_OAI2N2 U253 ( .A(n19), .B(n263), .C(R[8]), .D(n264), .Z(N91) );
  GTECH_OAI2N2 U254 ( .A(n20), .B(n263), .C(R[7]), .D(n264), .Z(N90) );
  GTECH_OAI2N2 U255 ( .A(n21), .B(n263), .C(R[6]), .D(n264), .Z(N89) );
  GTECH_OAI2N2 U256 ( .A(n22), .B(n263), .C(R[5]), .D(n264), .Z(N88) );
  GTECH_OAI2N2 U257 ( .A(n23), .B(n263), .C(R[4]), .D(n264), .Z(N87) );
  GTECH_OAI2N2 U258 ( .A(n24), .B(n263), .C(R[3]), .D(n264), .Z(N86) );
  GTECH_OAI2N2 U259 ( .A(n25), .B(n263), .C(R[2]), .D(n264), .Z(N85) );
  GTECH_OAI2N2 U260 ( .A(n26), .B(n263), .C(R[1]), .D(n264), .Z(N84) );
  GTECH_OAI2N2 U261 ( .A(n27), .B(n263), .C(R[0]), .D(n264), .Z(N83) );
  GTECH_NOT U262 ( .A(n265), .Z(n264) );
  GTECH_AND_NOT U263 ( .A(n260), .B(n28), .Z(N82) );
  GTECH_AND_NOT U264 ( .A(M[15]), .B(n265), .Z(N42) );
  GTECH_AND_NOT U265 ( .A(M[14]), .B(n265), .Z(N39) );
  GTECH_AND_NOT U266 ( .A(M[13]), .B(n265), .Z(N38) );
  GTECH_AND_NOT U267 ( .A(M[12]), .B(n265), .Z(N37) );
  GTECH_AND_NOT U268 ( .A(M[11]), .B(n265), .Z(N36) );
  GTECH_AND_NOT U269 ( .A(M[10]), .B(n265), .Z(N35) );
  GTECH_AND_NOT U270 ( .A(M[9]), .B(n265), .Z(N34) );
  GTECH_AND_NOT U271 ( .A(M[8]), .B(n265), .Z(N33) );
  GTECH_AND_NOT U272 ( .A(M[7]), .B(n265), .Z(N32) );
  GTECH_AND_NOT U273 ( .A(M[6]), .B(n265), .Z(N31) );
  GTECH_AND_NOT U274 ( .A(M[5]), .B(n265), .Z(N30) );
  GTECH_AND_NOT U275 ( .A(M[4]), .B(n265), .Z(N29) );
  GTECH_AND_NOT U276 ( .A(M[3]), .B(n265), .Z(N28) );
  GTECH_AND_NOT U277 ( .A(M[2]), .B(n265), .Z(N27) );
  GTECH_AND_NOT U278 ( .A(M[1]), .B(n265), .Z(N26) );
  GTECH_AND_NOT U279 ( .A(M[0]), .B(n265), .Z(N25) );
  GTECH_NAND2 U280 ( .A(n265), .B(n266), .Z(N19) );
  GTECH_NAND3 U281 ( .A(n267), .B(n268), .C(n260), .Z(n266) );
  GTECH_NAND2 U282 ( .A(n269), .B(n263), .Z(N18) );
  GTECH_AOI21 U283 ( .A(n270), .B(n267), .C(n263), .Z(N17) );
  GTECH_OR_NOT U284 ( .A(n8), .B(n271), .Z(n270) );
  GTECH_OA21 U285 ( .A(n272), .B(n273), .C(n260), .Z(N16) );
  GTECH_AND_NOT U286 ( .A(n274), .B(n7), .Z(n272) );
  GTECH_AND_NOT U287 ( .A(N155), .B(n275), .Z(N152) );
  GTECH_NAND2 U288 ( .A(n276), .B(n277), .Z(N151) );
  GTECH_AND_NOT U289 ( .A(N155), .B(n278), .Z(N150) );
  GTECH_MUX2 U290 ( .A(n279), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND_NOT U291 ( .A(n260), .B(n242), .Z(n279) );
  GTECH_AND_NOT U292 ( .A(N155), .B(n280), .Z(N149) );
  GTECH_AND_NOT U293 ( .A(N155), .B(n281), .Z(N148) );
  GTECH_AND_NOT U294 ( .A(N155), .B(n282), .Z(N147) );
  GTECH_AND_NOT U295 ( .A(N155), .B(n283), .Z(N146) );
  GTECH_AND_NOT U296 ( .A(N155), .B(n284), .Z(N145) );
  GTECH_AND_NOT U297 ( .A(N155), .B(n285), .Z(N144) );
  GTECH_AND_NOT U298 ( .A(N155), .B(n286), .Z(N143) );
  GTECH_AND_NOT U299 ( .A(N155), .B(n287), .Z(N142) );
  GTECH_AND_NOT U300 ( .A(N155), .B(n288), .Z(N141) );
  GTECH_AND_NOT U301 ( .A(N155), .B(n289), .Z(N140) );
  GTECH_NOT U302 ( .A(n290), .Z(N14) );
  GTECH_NAND2 U303 ( .A(n260), .B(n242), .Z(n290) );
  GTECH_AND_NOT U304 ( .A(N155), .B(n291), .Z(N139) );
  GTECH_AND_NOT U305 ( .A(N155), .B(n292), .Z(N138) );
  GTECH_AND_NOT U306 ( .A(N155), .B(n293), .Z(N137) );
  GTECH_AND_NOT U307 ( .A(N155), .B(n261), .Z(N136) );
  GTECH_OA21 U308 ( .A(n11), .B(n294), .C(n295), .Z(n261) );
  GTECH_OA22 U309 ( .A(n296), .B(n297), .C(n298), .D(n299), .Z(n295) );
  GTECH_XNOR2 U310 ( .A(n300), .B(n301), .Z(n299) );
  GTECH_XNOR2 U311 ( .A(n300), .B(n302), .Z(n297) );
  GTECH_XOR2 U312 ( .A(n303), .B(n244), .Z(n300) );
  GTECH_AND_NOT U313 ( .A(N155), .B(n262), .Z(N135) );
  GTECH_AOI2N2 U314 ( .A(n304), .B(n302), .C(n305), .D(n306), .Z(n262) );
  GTECH_OA21 U315 ( .A(n243), .B(n298), .C(n12), .Z(n306) );
  GTECH_AND_NOT U316 ( .A(n294), .B(n302), .Z(n305) );
  GTECH_AND_NOT U317 ( .A(n307), .B(n296), .Z(n304) );
  GTECH_AND_NOT U318 ( .A(N155), .B(n13), .Z(N134) );
  GTECH_AND_NOT U319 ( .A(N155), .B(n14), .Z(N133) );
  GTECH_AND_NOT U320 ( .A(N155), .B(n15), .Z(N132) );
  GTECH_AND_NOT U321 ( .A(N155), .B(n16), .Z(N131) );
  GTECH_AND_NOT U322 ( .A(N155), .B(n17), .Z(N130) );
  GTECH_AND_NOT U323 ( .A(N155), .B(n18), .Z(N129) );
  GTECH_AND_NOT U324 ( .A(N155), .B(n19), .Z(N128) );
  GTECH_AND_NOT U325 ( .A(N155), .B(n20), .Z(N127) );
  GTECH_AND_NOT U326 ( .A(N155), .B(n21), .Z(N126) );
  GTECH_AND_NOT U327 ( .A(N155), .B(n22), .Z(N125) );
  GTECH_AND_NOT U328 ( .A(N155), .B(n23), .Z(N124) );
  GTECH_AND_NOT U329 ( .A(N155), .B(n24), .Z(N123) );
  GTECH_AND_NOT U330 ( .A(N155), .B(n25), .Z(N122) );
  GTECH_AND_NOT U331 ( .A(N155), .B(n26), .Z(N121) );
  GTECH_AND_NOT U332 ( .A(N155), .B(n27), .Z(N120) );
  GTECH_NOT U333 ( .A(n277), .Z(N155) );
  GTECH_NAND5 U334 ( .A(n308), .B(n276), .C(n9), .D(n8), .E(n7), .Z(n277) );
  GTECH_AND_NOT U335 ( .A(n6), .B(n242), .Z(n308) );
  GTECH_AND_NOT U336 ( .A(n260), .B(n275), .Z(N116) );
  GTECH_OA21 U337 ( .A(n30), .B(n294), .C(n309), .Z(n275) );
  GTECH_OA22 U338 ( .A(n310), .B(n296), .C(n298), .D(n311), .Z(n309) );
  GTECH_XOR2 U339 ( .A(n312), .B(n313), .Z(n311) );
  GTECH_AOI2N2 U340 ( .A(n314), .B(n315), .C(n316), .D(n31), .Z(n313) );
  GTECH_OR_NOT U341 ( .A(n258), .B(n31), .Z(n315) );
  GTECH_XNOR2 U342 ( .A(n312), .B(n317), .Z(n310) );
  GTECH_ADD_ABC U343 ( .A(n318), .B(n258), .C(n31), .COUT(n317) );
  GTECH_XOR2 U344 ( .A(A[16]), .B(n30), .Z(n312) );
  GTECH_NAND2 U345 ( .A(n263), .B(n319), .Z(N115) );
  GTECH_NOT U346 ( .A(N41), .Z(n319) );
  GTECH_NAND2 U347 ( .A(n276), .B(n265), .Z(N41) );
  GTECH_NAND2 U348 ( .A(Ld), .B(n276), .Z(n265) );
  GTECH_AND_NOT U349 ( .A(n260), .B(n278), .Z(N113) );
  GTECH_OA21 U350 ( .A(n31), .B(n294), .C(n320), .Z(n278) );
  GTECH_OA22 U351 ( .A(n321), .B(n296), .C(n298), .D(n322), .Z(n320) );
  GTECH_XNOR2 U352 ( .A(n323), .B(n314), .Z(n322) );
  GTECH_OAI2N2 U353 ( .A(n32), .B(n324), .C(n325), .D(n326), .Z(n314) );
  GTECH_OR_NOT U354 ( .A(n257), .B(n32), .Z(n326) );
  GTECH_XNOR2 U355 ( .A(n318), .B(n323), .Z(n321) );
  GTECH_XOR2 U356 ( .A(n316), .B(n31), .Z(n323) );
  GTECH_NOT U357 ( .A(n258), .Z(n316) );
  GTECH_ADD_ABC U358 ( .A(n32), .B(n257), .C(n327), .COUT(n318) );
  GTECH_AND_NOT U359 ( .A(n260), .B(n280), .Z(N112) );
  GTECH_OA21 U360 ( .A(n32), .B(n294), .C(n328), .Z(n280) );
  GTECH_OA22 U361 ( .A(n329), .B(n296), .C(n298), .D(n330), .Z(n328) );
  GTECH_XNOR2 U362 ( .A(n331), .B(n325), .Z(n330) );
  GTECH_OAI2N2 U363 ( .A(n33), .B(n332), .C(n333), .D(n334), .Z(n325) );
  GTECH_OR_NOT U364 ( .A(n256), .B(n33), .Z(n334) );
  GTECH_XNOR2 U365 ( .A(n327), .B(n331), .Z(n329) );
  GTECH_XOR2 U366 ( .A(n324), .B(n32), .Z(n331) );
  GTECH_NOT U367 ( .A(n257), .Z(n324) );
  GTECH_ADD_ABC U368 ( .A(n33), .B(n256), .C(n335), .COUT(n327) );
  GTECH_AND_NOT U369 ( .A(n260), .B(n281), .Z(N111) );
  GTECH_OA21 U370 ( .A(n33), .B(n294), .C(n336), .Z(n281) );
  GTECH_OA22 U371 ( .A(n337), .B(n296), .C(n298), .D(n338), .Z(n336) );
  GTECH_XNOR2 U372 ( .A(n339), .B(n333), .Z(n338) );
  GTECH_OAI2N2 U373 ( .A(n34), .B(n340), .C(n341), .D(n342), .Z(n333) );
  GTECH_OR_NOT U374 ( .A(n255), .B(n34), .Z(n342) );
  GTECH_XNOR2 U375 ( .A(n335), .B(n339), .Z(n337) );
  GTECH_XOR2 U376 ( .A(n332), .B(n33), .Z(n339) );
  GTECH_NOT U377 ( .A(n256), .Z(n332) );
  GTECH_ADD_ABC U378 ( .A(n34), .B(n255), .C(n343), .COUT(n335) );
  GTECH_AND_NOT U379 ( .A(n260), .B(n282), .Z(N110) );
  GTECH_OA21 U380 ( .A(n34), .B(n294), .C(n344), .Z(n282) );
  GTECH_OA22 U381 ( .A(n345), .B(n296), .C(n298), .D(n346), .Z(n344) );
  GTECH_XNOR2 U382 ( .A(n347), .B(n341), .Z(n346) );
  GTECH_OAI2N2 U383 ( .A(n35), .B(n348), .C(n349), .D(n350), .Z(n341) );
  GTECH_OR_NOT U384 ( .A(n254), .B(n35), .Z(n350) );
  GTECH_XNOR2 U385 ( .A(n343), .B(n347), .Z(n345) );
  GTECH_XOR2 U386 ( .A(n340), .B(n34), .Z(n347) );
  GTECH_NOT U387 ( .A(n255), .Z(n340) );
  GTECH_ADD_ABC U388 ( .A(n35), .B(n254), .C(n351), .COUT(n343) );
  GTECH_AND_NOT U389 ( .A(n260), .B(n283), .Z(N109) );
  GTECH_OA21 U390 ( .A(n35), .B(n294), .C(n352), .Z(n283) );
  GTECH_OA22 U391 ( .A(n353), .B(n296), .C(n298), .D(n354), .Z(n352) );
  GTECH_XNOR2 U392 ( .A(n355), .B(n349), .Z(n354) );
  GTECH_OAI2N2 U393 ( .A(n36), .B(n356), .C(n357), .D(n358), .Z(n349) );
  GTECH_OR_NOT U394 ( .A(n253), .B(n36), .Z(n358) );
  GTECH_XNOR2 U395 ( .A(n351), .B(n355), .Z(n353) );
  GTECH_XOR2 U396 ( .A(n348), .B(n35), .Z(n355) );
  GTECH_NOT U397 ( .A(n254), .Z(n348) );
  GTECH_ADD_ABC U398 ( .A(n36), .B(n253), .C(n359), .COUT(n351) );
  GTECH_AND_NOT U399 ( .A(n260), .B(n284), .Z(N108) );
  GTECH_OA21 U400 ( .A(n36), .B(n294), .C(n360), .Z(n284) );
  GTECH_OA22 U401 ( .A(n361), .B(n296), .C(n298), .D(n362), .Z(n360) );
  GTECH_XNOR2 U402 ( .A(n363), .B(n357), .Z(n362) );
  GTECH_OAI2N2 U403 ( .A(n37), .B(n364), .C(n365), .D(n366), .Z(n357) );
  GTECH_OR_NOT U404 ( .A(n252), .B(n37), .Z(n366) );
  GTECH_XNOR2 U405 ( .A(n359), .B(n363), .Z(n361) );
  GTECH_XOR2 U406 ( .A(n356), .B(n36), .Z(n363) );
  GTECH_NOT U407 ( .A(n253), .Z(n356) );
  GTECH_ADD_ABC U408 ( .A(n37), .B(n252), .C(n367), .COUT(n359) );
  GTECH_AND_NOT U409 ( .A(n260), .B(n285), .Z(N107) );
  GTECH_OA21 U410 ( .A(n37), .B(n294), .C(n368), .Z(n285) );
  GTECH_OA22 U411 ( .A(n369), .B(n296), .C(n298), .D(n370), .Z(n368) );
  GTECH_XNOR2 U412 ( .A(n371), .B(n365), .Z(n370) );
  GTECH_OAI2N2 U413 ( .A(n38), .B(n372), .C(n373), .D(n374), .Z(n365) );
  GTECH_OR_NOT U414 ( .A(n251), .B(n38), .Z(n374) );
  GTECH_XNOR2 U415 ( .A(n367), .B(n371), .Z(n369) );
  GTECH_XOR2 U416 ( .A(n364), .B(n37), .Z(n371) );
  GTECH_NOT U417 ( .A(n252), .Z(n364) );
  GTECH_ADD_ABC U418 ( .A(n38), .B(n251), .C(n375), .COUT(n367) );
  GTECH_AND_NOT U419 ( .A(n260), .B(n286), .Z(N106) );
  GTECH_OA21 U420 ( .A(n38), .B(n294), .C(n376), .Z(n286) );
  GTECH_OA22 U421 ( .A(n377), .B(n296), .C(n298), .D(n378), .Z(n376) );
  GTECH_XNOR2 U422 ( .A(n379), .B(n373), .Z(n378) );
  GTECH_OAI2N2 U423 ( .A(n39), .B(n380), .C(n381), .D(n382), .Z(n373) );
  GTECH_OR_NOT U424 ( .A(n250), .B(n39), .Z(n382) );
  GTECH_XNOR2 U425 ( .A(n375), .B(n379), .Z(n377) );
  GTECH_XOR2 U426 ( .A(n372), .B(n38), .Z(n379) );
  GTECH_NOT U427 ( .A(n251), .Z(n372) );
  GTECH_ADD_ABC U428 ( .A(n39), .B(n250), .C(n383), .COUT(n375) );
  GTECH_AND_NOT U429 ( .A(n260), .B(n287), .Z(N105) );
  GTECH_OA21 U430 ( .A(n39), .B(n294), .C(n384), .Z(n287) );
  GTECH_OA22 U431 ( .A(n385), .B(n296), .C(n298), .D(n386), .Z(n384) );
  GTECH_XNOR2 U432 ( .A(n387), .B(n381), .Z(n386) );
  GTECH_OAI2N2 U433 ( .A(n40), .B(n388), .C(n389), .D(n390), .Z(n381) );
  GTECH_OR_NOT U434 ( .A(n249), .B(n40), .Z(n390) );
  GTECH_XNOR2 U435 ( .A(n383), .B(n387), .Z(n385) );
  GTECH_XOR2 U436 ( .A(n380), .B(n39), .Z(n387) );
  GTECH_NOT U437 ( .A(n250), .Z(n380) );
  GTECH_ADD_ABC U438 ( .A(n40), .B(n249), .C(n391), .COUT(n383) );
  GTECH_AND_NOT U439 ( .A(n260), .B(n288), .Z(N104) );
  GTECH_OA21 U440 ( .A(n40), .B(n294), .C(n392), .Z(n288) );
  GTECH_OA22 U441 ( .A(n393), .B(n296), .C(n298), .D(n394), .Z(n392) );
  GTECH_XNOR2 U442 ( .A(n395), .B(n389), .Z(n394) );
  GTECH_OAI2N2 U443 ( .A(n41), .B(n396), .C(n397), .D(n398), .Z(n389) );
  GTECH_OR_NOT U444 ( .A(n248), .B(n41), .Z(n398) );
  GTECH_XNOR2 U445 ( .A(n391), .B(n395), .Z(n393) );
  GTECH_XOR2 U446 ( .A(n388), .B(n40), .Z(n395) );
  GTECH_NOT U447 ( .A(n249), .Z(n388) );
  GTECH_ADD_ABC U448 ( .A(n41), .B(n248), .C(n399), .COUT(n391) );
  GTECH_AND_NOT U449 ( .A(n260), .B(n289), .Z(N103) );
  GTECH_OA21 U450 ( .A(n41), .B(n294), .C(n400), .Z(n289) );
  GTECH_OA22 U451 ( .A(n401), .B(n296), .C(n298), .D(n402), .Z(n400) );
  GTECH_XNOR2 U452 ( .A(n403), .B(n397), .Z(n402) );
  GTECH_OAI2N2 U453 ( .A(n42), .B(n404), .C(n405), .D(n406), .Z(n397) );
  GTECH_OR_NOT U454 ( .A(n247), .B(n42), .Z(n406) );
  GTECH_XNOR2 U455 ( .A(n399), .B(n403), .Z(n401) );
  GTECH_XOR2 U456 ( .A(n396), .B(n41), .Z(n403) );
  GTECH_NOT U457 ( .A(n248), .Z(n396) );
  GTECH_ADD_ABC U458 ( .A(n42), .B(n247), .C(n407), .COUT(n399) );
  GTECH_AND_NOT U459 ( .A(n260), .B(n291), .Z(N102) );
  GTECH_OA21 U460 ( .A(n42), .B(n294), .C(n408), .Z(n291) );
  GTECH_OA22 U461 ( .A(n409), .B(n296), .C(n298), .D(n410), .Z(n408) );
  GTECH_XNOR2 U462 ( .A(n411), .B(n405), .Z(n410) );
  GTECH_OAI2N2 U463 ( .A(n43), .B(n412), .C(n413), .D(n414), .Z(n405) );
  GTECH_OR_NOT U464 ( .A(n246), .B(n43), .Z(n414) );
  GTECH_XNOR2 U465 ( .A(n407), .B(n411), .Z(n409) );
  GTECH_XOR2 U466 ( .A(n404), .B(n42), .Z(n411) );
  GTECH_NOT U467 ( .A(n247), .Z(n404) );
  GTECH_ADD_ABC U468 ( .A(n43), .B(n246), .C(n415), .COUT(n407) );
  GTECH_AND_NOT U469 ( .A(n260), .B(n292), .Z(N101) );
  GTECH_OA21 U470 ( .A(n43), .B(n294), .C(n416), .Z(n292) );
  GTECH_OA22 U471 ( .A(n417), .B(n296), .C(n298), .D(n418), .Z(n416) );
  GTECH_XNOR2 U472 ( .A(n419), .B(n413), .Z(n418) );
  GTECH_OAI2N2 U473 ( .A(n29), .B(n420), .C(n421), .D(n422), .Z(n413) );
  GTECH_OR_NOT U474 ( .A(n245), .B(n29), .Z(n422) );
  GTECH_XNOR2 U475 ( .A(n415), .B(n419), .Z(n417) );
  GTECH_XOR2 U476 ( .A(n412), .B(n43), .Z(n419) );
  GTECH_NOT U477 ( .A(n246), .Z(n412) );
  GTECH_ADD_ABC U478 ( .A(n29), .B(n245), .C(n423), .COUT(n415) );
  GTECH_AND_NOT U479 ( .A(n260), .B(n293), .Z(N100) );
  GTECH_OA21 U480 ( .A(n29), .B(n294), .C(n424), .Z(n293) );
  GTECH_OA22 U481 ( .A(n425), .B(n296), .C(n298), .D(n426), .Z(n424) );
  GTECH_XNOR2 U482 ( .A(n427), .B(n421), .Z(n426) );
  GTECH_OAI21 U483 ( .A(n11), .B(n428), .C(n429), .Z(n421) );
  GTECH_OAI21 U484 ( .A(n244), .B(n303), .C(n301), .Z(n429) );
  GTECH_NAND2 U485 ( .A(n12), .B(n307), .Z(n301) );
  GTECH_NOT U486 ( .A(n11), .Z(n303) );
  GTECH_NOT U487 ( .A(n244), .Z(n428) );
  GTECH_XNOR2 U488 ( .A(n423), .B(n427), .Z(n425) );
  GTECH_XOR2 U489 ( .A(n420), .B(n29), .Z(n427) );
  GTECH_NOT U490 ( .A(n245), .Z(n420) );
  GTECH_ADD_ABC U491 ( .A(n244), .B(n11), .C(n302), .COUT(n423) );
  GTECH_NAND2 U492 ( .A(n430), .B(n307), .Z(n302) );
  GTECH_NOT U493 ( .A(n243), .Z(n307) );
  GTECH_NOT U494 ( .A(n12), .Z(n430) );
  GTECH_NAND2 U495 ( .A(n296), .B(n298), .Z(n294) );
  GTECH_NAND2 U496 ( .A(n10), .B(n431), .Z(n298) );
  GTECH_NOT U497 ( .A(n28), .Z(n431) );
  GTECH_NAND2 U498 ( .A(n28), .B(n432), .Z(n296) );
  GTECH_NOT U499 ( .A(n10), .Z(n432) );
  GTECH_NOT U500 ( .A(n263), .Z(n260) );
  GTECH_OAI21 U501 ( .A(n267), .B(n268), .C(n269), .Z(n263) );
  GTECH_NOT U502 ( .A(n433), .Z(n269) );
  GTECH_NAND2 U503 ( .A(n434), .B(n276), .Z(n433) );
  GTECH_NOT U504 ( .A(Rst), .Z(n276) );
  GTECH_NOT U505 ( .A(Ld), .Z(n434) );
  GTECH_NOT U506 ( .A(n9), .Z(n268) );
  GTECH_NAND2 U507 ( .A(n8), .B(n273), .Z(n267) );
  GTECH_NOT U508 ( .A(n271), .Z(n273) );
  GTECH_NAND2 U509 ( .A(n7), .B(n435), .Z(n271) );
  GTECH_NOT U510 ( .A(n274), .Z(n435) );
  GTECH_NAND2 U511 ( .A(n6), .B(n242), .Z(n274) );
endmodule

