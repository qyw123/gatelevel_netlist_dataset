
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
         n43, n108, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n108), .K(n108), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n245) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n108), .K(n108), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n108), .K(n108), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n108), .K(n108), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n108), .K(n108), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n108), .K(n108), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]), .QN(n262) );
  GTECH_FJK1S A_reg_15_ ( .J(n108), .K(n108), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n261) );
  GTECH_FJK1S A_reg_14_ ( .J(n108), .K(n108), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n260) );
  GTECH_FJK1S A_reg_13_ ( .J(n108), .K(n108), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n259) );
  GTECH_FJK1S A_reg_12_ ( .J(n108), .K(n108), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n258) );
  GTECH_FJK1S A_reg_11_ ( .J(n108), .K(n108), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n257) );
  GTECH_FJK1S A_reg_10_ ( .J(n108), .K(n108), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n256) );
  GTECH_FJK1S A_reg_9_ ( .J(n108), .K(n108), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n255) );
  GTECH_FJK1S A_reg_8_ ( .J(n108), .K(n108), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n254) );
  GTECH_FJK1S A_reg_7_ ( .J(n108), .K(n108), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n253) );
  GTECH_FJK1S A_reg_6_ ( .J(n108), .K(n108), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n252) );
  GTECH_FJK1S A_reg_5_ ( .J(n108), .K(n108), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n251) );
  GTECH_FJK1S A_reg_4_ ( .J(n108), .K(n108), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n250) );
  GTECH_FJK1S A_reg_3_ ( .J(n108), .K(n108), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n249) );
  GTECH_FJK1S A_reg_2_ ( .J(n108), .K(n108), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n248) );
  GTECH_FJK1S A_reg_1_ ( .J(n108), .K(n108), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n247) );
  GTECH_FJK1S A_reg_0_ ( .J(n108), .K(n108), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n246) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n108), .K(n108), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n108), .K(n108), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n108), .K(n108), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n108), .K(n108), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n108), .K(n108), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n108), .K(n108), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n108), .K(n108), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n108), .K(n108), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n108), .K(n108), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n108), .K(n108), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n108), .K(n108), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n108), .K(n108), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n108), .K(n108), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n108), .K(n108), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n108), .K(n108), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n108), .K(n108), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n108), .K(n108), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n108), .K(n108), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n108), .K(n108), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n108), .K(n108), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n108), .K(n108), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n108), .K(n108), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n108), .K(n108), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n108), .K(n108), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n108), .K(n108), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n108), .K(n108), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n108), .K(n108), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n108), .K(n108), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n108), .K(n108), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n108), .K(n108), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n108), .K(n108), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n108), .K(n108), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n108), .K(n108), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n108), .K(n108), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n108), .K(n108), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n108), .K(n108), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n108), .K(n108), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n108), .K(n108), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n108), .K(n108), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n108), .K(n108), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n108), .K(n108), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n108), .K(n108), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n108), .K(n108), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n108), .K(n108), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n108), .K(n108), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n108), .K(n108), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n108), .K(n108), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n108), .K(n108), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n108), .K(n108), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n108), .K(n108), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n108), .K(n108), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n108), .K(n108), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n108), .K(n108), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n108), .K(n108), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n108), .K(n108), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n108), .K(n108), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n108), .K(n108), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n108), .K(n108), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n108), .K(n108), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n108), .K(n108), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n108), .K(n108), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n108), .K(n108), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n108), .K(n108), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n108), .K(n108), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n108), .K(n108), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n108), .K(n108), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U247 ( .Z(n108) );
  GTECH_AND2 U248 ( .A(n263), .B(n264), .Z(N99) );
  GTECH_OAI2N2 U249 ( .A(n265), .B(n266), .C(R[15]), .D(n267), .Z(N98) );
  GTECH_OAI2N2 U250 ( .A(n13), .B(n266), .C(R[14]), .D(n267), .Z(N97) );
  GTECH_OAI2N2 U251 ( .A(n14), .B(n266), .C(R[13]), .D(n267), .Z(N96) );
  GTECH_OAI2N2 U252 ( .A(n15), .B(n266), .C(R[12]), .D(n267), .Z(N95) );
  GTECH_OAI2N2 U253 ( .A(n16), .B(n266), .C(R[11]), .D(n267), .Z(N94) );
  GTECH_OAI2N2 U254 ( .A(n17), .B(n266), .C(R[10]), .D(n267), .Z(N93) );
  GTECH_OAI2N2 U255 ( .A(n18), .B(n266), .C(R[9]), .D(n267), .Z(N92) );
  GTECH_OAI2N2 U256 ( .A(n19), .B(n266), .C(R[8]), .D(n267), .Z(N91) );
  GTECH_OAI2N2 U257 ( .A(n20), .B(n266), .C(R[7]), .D(n267), .Z(N90) );
  GTECH_OAI2N2 U258 ( .A(n21), .B(n266), .C(R[6]), .D(n267), .Z(N89) );
  GTECH_OAI2N2 U259 ( .A(n22), .B(n266), .C(R[5]), .D(n267), .Z(N88) );
  GTECH_OAI2N2 U260 ( .A(n23), .B(n266), .C(R[4]), .D(n267), .Z(N87) );
  GTECH_OAI2N2 U261 ( .A(n24), .B(n266), .C(R[3]), .D(n267), .Z(N86) );
  GTECH_OAI2N2 U262 ( .A(n25), .B(n266), .C(R[2]), .D(n267), .Z(N85) );
  GTECH_OAI2N2 U263 ( .A(n26), .B(n266), .C(R[1]), .D(n267), .Z(N84) );
  GTECH_OAI2N2 U264 ( .A(n27), .B(n266), .C(R[0]), .D(n267), .Z(N83) );
  GTECH_AND2 U265 ( .A(n263), .B(n268), .Z(N82) );
  GTECH_AND2 U266 ( .A(M[15]), .B(n267), .Z(N42) );
  GTECH_AND2 U267 ( .A(M[14]), .B(n267), .Z(N39) );
  GTECH_AND2 U268 ( .A(M[13]), .B(n267), .Z(N38) );
  GTECH_AND2 U269 ( .A(M[12]), .B(n267), .Z(N37) );
  GTECH_AND2 U270 ( .A(M[11]), .B(n267), .Z(N36) );
  GTECH_AND2 U271 ( .A(M[10]), .B(n267), .Z(N35) );
  GTECH_AND2 U272 ( .A(M[9]), .B(n267), .Z(N34) );
  GTECH_AND2 U273 ( .A(M[8]), .B(n267), .Z(N33) );
  GTECH_AND2 U274 ( .A(M[7]), .B(n267), .Z(N32) );
  GTECH_AND2 U275 ( .A(M[6]), .B(n267), .Z(N31) );
  GTECH_AND2 U276 ( .A(M[5]), .B(n267), .Z(N30) );
  GTECH_AND2 U277 ( .A(M[4]), .B(n267), .Z(N29) );
  GTECH_AND2 U278 ( .A(M[3]), .B(n267), .Z(N28) );
  GTECH_AND2 U279 ( .A(M[2]), .B(n267), .Z(N27) );
  GTECH_AND2 U280 ( .A(M[1]), .B(n267), .Z(N26) );
  GTECH_AND2 U281 ( .A(M[0]), .B(n267), .Z(N25) );
  GTECH_NOT U282 ( .A(n269), .Z(n267) );
  GTECH_NAND2 U283 ( .A(n269), .B(n270), .Z(N19) );
  GTECH_NAND3 U284 ( .A(n271), .B(n272), .C(n263), .Z(n270) );
  GTECH_NAND3 U285 ( .A(n273), .B(n274), .C(n266), .Z(N18) );
  GTECH_AND2 U286 ( .A(n263), .B(n275), .Z(N17) );
  GTECH_OAI21 U287 ( .A(n8), .B(n276), .C(n271), .Z(n275) );
  GTECH_AND2 U288 ( .A(n263), .B(n277), .Z(N16) );
  GTECH_OAI21 U289 ( .A(n7), .B(n278), .C(n279), .Z(n277) );
  GTECH_AND2 U290 ( .A(N155), .B(n280), .Z(N152) );
  GTECH_NAND2 U291 ( .A(n274), .B(n281), .Z(N151) );
  GTECH_AND2 U292 ( .A(N155), .B(n282), .Z(N150) );
  GTECH_MUX2 U293 ( .A(n283), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U294 ( .A(n263), .B(n284), .Z(n283) );
  GTECH_AND2 U295 ( .A(N155), .B(n285), .Z(N149) );
  GTECH_AND2 U296 ( .A(N155), .B(n286), .Z(N148) );
  GTECH_AND2 U297 ( .A(N155), .B(n287), .Z(N147) );
  GTECH_AND2 U298 ( .A(N155), .B(n288), .Z(N146) );
  GTECH_AND2 U299 ( .A(N155), .B(n289), .Z(N145) );
  GTECH_AND2 U300 ( .A(N155), .B(n290), .Z(N144) );
  GTECH_AND2 U301 ( .A(N155), .B(n291), .Z(N143) );
  GTECH_AND2 U302 ( .A(N155), .B(n292), .Z(N142) );
  GTECH_AND2 U303 ( .A(N155), .B(n293), .Z(N141) );
  GTECH_AND2 U304 ( .A(N155), .B(n294), .Z(N140) );
  GTECH_NOT U305 ( .A(n295), .Z(N14) );
  GTECH_NAND2 U306 ( .A(n263), .B(n245), .Z(n295) );
  GTECH_AND2 U307 ( .A(N155), .B(n296), .Z(N139) );
  GTECH_AND2 U308 ( .A(N155), .B(n297), .Z(N138) );
  GTECH_AND2 U309 ( .A(N155), .B(n298), .Z(N137) );
  GTECH_AND2 U310 ( .A(N155), .B(n264), .Z(N136) );
  GTECH_OAI21 U311 ( .A(n11), .B(n299), .C(n300), .Z(n264) );
  GTECH_MUX2 U312 ( .A(n301), .B(n302), .S(n303), .Z(n300) );
  GTECH_XNOR2 U313 ( .A(n247), .B(n304), .Z(n303) );
  GTECH_OA22 U314 ( .A(n305), .B(n306), .C(n307), .D(n308), .Z(n302) );
  GTECH_NOT U315 ( .A(n309), .Z(n307) );
  GTECH_NOT U316 ( .A(n310), .Z(n305) );
  GTECH_OA22 U317 ( .A(n310), .B(n306), .C(n308), .D(n309), .Z(n301) );
  GTECH_AND2 U318 ( .A(N155), .B(n311), .Z(N135) );
  GTECH_NOT U319 ( .A(n265), .Z(n311) );
  GTECH_MUX2 U320 ( .A(n12), .B(n312), .S(n299), .Z(n265) );
  GTECH_OA21 U321 ( .A(n313), .B(n12), .C(n310), .Z(n312) );
  GTECH_AND2 U322 ( .A(N155), .B(n314), .Z(N134) );
  GTECH_NOT U323 ( .A(n13), .Z(n314) );
  GTECH_AND2 U324 ( .A(N155), .B(n315), .Z(N133) );
  GTECH_NOT U325 ( .A(n14), .Z(n315) );
  GTECH_AND2 U326 ( .A(N155), .B(n316), .Z(N132) );
  GTECH_NOT U327 ( .A(n15), .Z(n316) );
  GTECH_AND2 U328 ( .A(N155), .B(n317), .Z(N131) );
  GTECH_NOT U329 ( .A(n16), .Z(n317) );
  GTECH_AND2 U330 ( .A(N155), .B(n318), .Z(N130) );
  GTECH_NOT U331 ( .A(n17), .Z(n318) );
  GTECH_AND2 U332 ( .A(N155), .B(n319), .Z(N129) );
  GTECH_NOT U333 ( .A(n18), .Z(n319) );
  GTECH_AND2 U334 ( .A(N155), .B(n320), .Z(N128) );
  GTECH_NOT U335 ( .A(n19), .Z(n320) );
  GTECH_AND2 U336 ( .A(N155), .B(n321), .Z(N127) );
  GTECH_NOT U337 ( .A(n20), .Z(n321) );
  GTECH_AND2 U338 ( .A(N155), .B(n322), .Z(N126) );
  GTECH_NOT U339 ( .A(n21), .Z(n322) );
  GTECH_AND2 U340 ( .A(N155), .B(n323), .Z(N125) );
  GTECH_NOT U341 ( .A(n22), .Z(n323) );
  GTECH_AND2 U342 ( .A(N155), .B(n324), .Z(N124) );
  GTECH_NOT U343 ( .A(n23), .Z(n324) );
  GTECH_AND2 U344 ( .A(N155), .B(n325), .Z(N123) );
  GTECH_NOT U345 ( .A(n24), .Z(n325) );
  GTECH_AND2 U346 ( .A(N155), .B(n326), .Z(N122) );
  GTECH_NOT U347 ( .A(n25), .Z(n326) );
  GTECH_AND2 U348 ( .A(N155), .B(n327), .Z(N121) );
  GTECH_NOT U349 ( .A(n26), .Z(n327) );
  GTECH_AND2 U350 ( .A(N155), .B(n328), .Z(N120) );
  GTECH_NOT U351 ( .A(n27), .Z(n328) );
  GTECH_NOT U352 ( .A(n281), .Z(N155) );
  GTECH_NAND4 U353 ( .A(n8), .B(n7), .C(n9), .D(n329), .Z(n281) );
  GTECH_AND3 U354 ( .A(n274), .B(n284), .C(n6), .Z(n329) );
  GTECH_NOT U355 ( .A(n245), .Z(n284) );
  GTECH_AND2 U356 ( .A(n263), .B(n280), .Z(N116) );
  GTECH_MUX2 U357 ( .A(n330), .B(n331), .S(n30), .Z(n280) );
  GTECH_MUX2 U358 ( .A(n332), .B(n333), .S(n262), .Z(n331) );
  GTECH_NAND2 U359 ( .A(n334), .B(n299), .Z(n330) );
  GTECH_MUX2 U360 ( .A(n335), .B(n336), .S(n262), .Z(n334) );
  GTECH_NOT U361 ( .A(n332), .Z(n336) );
  GTECH_OAI22 U362 ( .A(n308), .B(n337), .C(n338), .D(n306), .Z(n332) );
  GTECH_NOT U363 ( .A(n339), .Z(n338) );
  GTECH_NOT U364 ( .A(n340), .Z(n337) );
  GTECH_NOT U365 ( .A(n333), .Z(n335) );
  GTECH_OAI22 U366 ( .A(n340), .B(n308), .C(n306), .D(n339), .Z(n333) );
  GTECH_OAI2N2 U367 ( .A(n31), .B(n341), .C(n342), .D(n343), .Z(n339) );
  GTECH_OR_NOT U368 ( .A(n261), .B(n31), .Z(n343) );
  GTECH_ADD_ABC U369 ( .A(n31), .B(n261), .C(n344), .COUT(n340) );
  GTECH_NAND2 U370 ( .A(n266), .B(n345), .Z(N115) );
  GTECH_NOT U371 ( .A(N41), .Z(n345) );
  GTECH_NAND2 U372 ( .A(n274), .B(n269), .Z(N41) );
  GTECH_NAND2 U373 ( .A(Ld), .B(n274), .Z(n269) );
  GTECH_AND2 U374 ( .A(n263), .B(n282), .Z(N113) );
  GTECH_OAI21 U375 ( .A(n31), .B(n299), .C(n346), .Z(n282) );
  GTECH_MUX2 U376 ( .A(n347), .B(n348), .S(n349), .Z(n346) );
  GTECH_XNOR2 U377 ( .A(n31), .B(n341), .Z(n349) );
  GTECH_NOT U378 ( .A(n261), .Z(n341) );
  GTECH_OA22 U379 ( .A(n350), .B(n306), .C(n308), .D(n351), .Z(n348) );
  GTECH_NOT U380 ( .A(n344), .Z(n351) );
  GTECH_NOT U381 ( .A(n342), .Z(n350) );
  GTECH_OA22 U382 ( .A(n306), .B(n342), .C(n344), .D(n308), .Z(n347) );
  GTECH_ADD_ABC U383 ( .A(n32), .B(n260), .C(n352), .COUT(n344) );
  GTECH_OAI2N2 U384 ( .A(n32), .B(n353), .C(n354), .D(n355), .Z(n342) );
  GTECH_OR_NOT U385 ( .A(n260), .B(n32), .Z(n355) );
  GTECH_AND2 U386 ( .A(n263), .B(n285), .Z(N112) );
  GTECH_OAI21 U387 ( .A(n32), .B(n299), .C(n356), .Z(n285) );
  GTECH_MUX2 U388 ( .A(n357), .B(n358), .S(n359), .Z(n356) );
  GTECH_XNOR2 U389 ( .A(n32), .B(n353), .Z(n359) );
  GTECH_NOT U390 ( .A(n260), .Z(n353) );
  GTECH_OA22 U391 ( .A(n360), .B(n306), .C(n308), .D(n361), .Z(n358) );
  GTECH_NOT U392 ( .A(n352), .Z(n361) );
  GTECH_NOT U393 ( .A(n354), .Z(n360) );
  GTECH_OA22 U394 ( .A(n306), .B(n354), .C(n352), .D(n308), .Z(n357) );
  GTECH_ADD_ABC U395 ( .A(n33), .B(n259), .C(n362), .COUT(n352) );
  GTECH_OAI2N2 U396 ( .A(n33), .B(n363), .C(n364), .D(n365), .Z(n354) );
  GTECH_OR_NOT U397 ( .A(n259), .B(n33), .Z(n365) );
  GTECH_AND2 U398 ( .A(n263), .B(n286), .Z(N111) );
  GTECH_OAI21 U399 ( .A(n33), .B(n299), .C(n366), .Z(n286) );
  GTECH_MUX2 U400 ( .A(n367), .B(n368), .S(n369), .Z(n366) );
  GTECH_XNOR2 U401 ( .A(n33), .B(n363), .Z(n369) );
  GTECH_NOT U402 ( .A(n259), .Z(n363) );
  GTECH_OA22 U403 ( .A(n370), .B(n306), .C(n308), .D(n371), .Z(n368) );
  GTECH_NOT U404 ( .A(n362), .Z(n371) );
  GTECH_NOT U405 ( .A(n364), .Z(n370) );
  GTECH_OA22 U406 ( .A(n306), .B(n364), .C(n362), .D(n308), .Z(n367) );
  GTECH_ADD_ABC U407 ( .A(n34), .B(n258), .C(n372), .COUT(n362) );
  GTECH_OAI2N2 U408 ( .A(n34), .B(n373), .C(n374), .D(n375), .Z(n364) );
  GTECH_OR_NOT U409 ( .A(n258), .B(n34), .Z(n375) );
  GTECH_AND2 U410 ( .A(n263), .B(n287), .Z(N110) );
  GTECH_OAI21 U411 ( .A(n34), .B(n299), .C(n376), .Z(n287) );
  GTECH_MUX2 U412 ( .A(n377), .B(n378), .S(n379), .Z(n376) );
  GTECH_XNOR2 U413 ( .A(n34), .B(n373), .Z(n379) );
  GTECH_NOT U414 ( .A(n258), .Z(n373) );
  GTECH_OA22 U415 ( .A(n380), .B(n306), .C(n308), .D(n381), .Z(n378) );
  GTECH_NOT U416 ( .A(n372), .Z(n381) );
  GTECH_NOT U417 ( .A(n374), .Z(n380) );
  GTECH_OA22 U418 ( .A(n306), .B(n374), .C(n372), .D(n308), .Z(n377) );
  GTECH_ADD_ABC U419 ( .A(n35), .B(n257), .C(n382), .COUT(n372) );
  GTECH_OAI2N2 U420 ( .A(n35), .B(n383), .C(n384), .D(n385), .Z(n374) );
  GTECH_OR_NOT U421 ( .A(n257), .B(n35), .Z(n385) );
  GTECH_AND2 U422 ( .A(n263), .B(n288), .Z(N109) );
  GTECH_OAI21 U423 ( .A(n35), .B(n299), .C(n386), .Z(n288) );
  GTECH_MUX2 U424 ( .A(n387), .B(n388), .S(n389), .Z(n386) );
  GTECH_XNOR2 U425 ( .A(n35), .B(n383), .Z(n389) );
  GTECH_NOT U426 ( .A(n257), .Z(n383) );
  GTECH_OA22 U427 ( .A(n390), .B(n306), .C(n308), .D(n391), .Z(n388) );
  GTECH_NOT U428 ( .A(n382), .Z(n391) );
  GTECH_NOT U429 ( .A(n384), .Z(n390) );
  GTECH_OA22 U430 ( .A(n306), .B(n384), .C(n382), .D(n308), .Z(n387) );
  GTECH_ADD_ABC U431 ( .A(n36), .B(n256), .C(n392), .COUT(n382) );
  GTECH_OAI2N2 U432 ( .A(n36), .B(n393), .C(n394), .D(n395), .Z(n384) );
  GTECH_OR_NOT U433 ( .A(n256), .B(n36), .Z(n395) );
  GTECH_AND2 U434 ( .A(n263), .B(n289), .Z(N108) );
  GTECH_OAI21 U435 ( .A(n36), .B(n299), .C(n396), .Z(n289) );
  GTECH_MUX2 U436 ( .A(n397), .B(n398), .S(n399), .Z(n396) );
  GTECH_XNOR2 U437 ( .A(n36), .B(n393), .Z(n399) );
  GTECH_NOT U438 ( .A(n256), .Z(n393) );
  GTECH_OA22 U439 ( .A(n400), .B(n306), .C(n308), .D(n401), .Z(n398) );
  GTECH_NOT U440 ( .A(n392), .Z(n401) );
  GTECH_NOT U441 ( .A(n394), .Z(n400) );
  GTECH_OA22 U442 ( .A(n306), .B(n394), .C(n392), .D(n308), .Z(n397) );
  GTECH_ADD_ABC U443 ( .A(n37), .B(n255), .C(n402), .COUT(n392) );
  GTECH_OAI2N2 U444 ( .A(n37), .B(n403), .C(n404), .D(n405), .Z(n394) );
  GTECH_OR_NOT U445 ( .A(n255), .B(n37), .Z(n405) );
  GTECH_AND2 U446 ( .A(n263), .B(n290), .Z(N107) );
  GTECH_OAI21 U447 ( .A(n37), .B(n299), .C(n406), .Z(n290) );
  GTECH_MUX2 U448 ( .A(n407), .B(n408), .S(n409), .Z(n406) );
  GTECH_XNOR2 U449 ( .A(n37), .B(n403), .Z(n409) );
  GTECH_NOT U450 ( .A(n255), .Z(n403) );
  GTECH_OA22 U451 ( .A(n410), .B(n306), .C(n308), .D(n411), .Z(n408) );
  GTECH_NOT U452 ( .A(n402), .Z(n411) );
  GTECH_NOT U453 ( .A(n404), .Z(n410) );
  GTECH_OA22 U454 ( .A(n306), .B(n404), .C(n402), .D(n308), .Z(n407) );
  GTECH_ADD_ABC U455 ( .A(n38), .B(n254), .C(n412), .COUT(n402) );
  GTECH_OAI2N2 U456 ( .A(n38), .B(n413), .C(n414), .D(n415), .Z(n404) );
  GTECH_OR_NOT U457 ( .A(n254), .B(n38), .Z(n415) );
  GTECH_AND2 U458 ( .A(n263), .B(n291), .Z(N106) );
  GTECH_OAI21 U459 ( .A(n38), .B(n299), .C(n416), .Z(n291) );
  GTECH_MUX2 U460 ( .A(n417), .B(n418), .S(n419), .Z(n416) );
  GTECH_XNOR2 U461 ( .A(n38), .B(n413), .Z(n419) );
  GTECH_NOT U462 ( .A(n254), .Z(n413) );
  GTECH_OA22 U463 ( .A(n420), .B(n306), .C(n308), .D(n421), .Z(n418) );
  GTECH_NOT U464 ( .A(n412), .Z(n421) );
  GTECH_NOT U465 ( .A(n414), .Z(n420) );
  GTECH_OA22 U466 ( .A(n306), .B(n414), .C(n412), .D(n308), .Z(n417) );
  GTECH_ADD_ABC U467 ( .A(n39), .B(n253), .C(n422), .COUT(n412) );
  GTECH_OAI2N2 U468 ( .A(n39), .B(n423), .C(n424), .D(n425), .Z(n414) );
  GTECH_OR_NOT U469 ( .A(n253), .B(n39), .Z(n425) );
  GTECH_AND2 U470 ( .A(n263), .B(n292), .Z(N105) );
  GTECH_OAI21 U471 ( .A(n39), .B(n299), .C(n426), .Z(n292) );
  GTECH_MUX2 U472 ( .A(n427), .B(n428), .S(n429), .Z(n426) );
  GTECH_XNOR2 U473 ( .A(n39), .B(n423), .Z(n429) );
  GTECH_NOT U474 ( .A(n253), .Z(n423) );
  GTECH_OA22 U475 ( .A(n430), .B(n306), .C(n308), .D(n431), .Z(n428) );
  GTECH_NOT U476 ( .A(n422), .Z(n431) );
  GTECH_NOT U477 ( .A(n424), .Z(n430) );
  GTECH_OA22 U478 ( .A(n306), .B(n424), .C(n422), .D(n308), .Z(n427) );
  GTECH_ADD_ABC U479 ( .A(n40), .B(n252), .C(n432), .COUT(n422) );
  GTECH_OAI2N2 U480 ( .A(n40), .B(n433), .C(n434), .D(n435), .Z(n424) );
  GTECH_OR_NOT U481 ( .A(n252), .B(n40), .Z(n435) );
  GTECH_AND2 U482 ( .A(n263), .B(n293), .Z(N104) );
  GTECH_OAI21 U483 ( .A(n40), .B(n299), .C(n436), .Z(n293) );
  GTECH_MUX2 U484 ( .A(n437), .B(n438), .S(n439), .Z(n436) );
  GTECH_XNOR2 U485 ( .A(n40), .B(n433), .Z(n439) );
  GTECH_NOT U486 ( .A(n252), .Z(n433) );
  GTECH_OA22 U487 ( .A(n440), .B(n306), .C(n308), .D(n441), .Z(n438) );
  GTECH_NOT U488 ( .A(n432), .Z(n441) );
  GTECH_NOT U489 ( .A(n434), .Z(n440) );
  GTECH_OA22 U490 ( .A(n306), .B(n434), .C(n432), .D(n308), .Z(n437) );
  GTECH_ADD_ABC U491 ( .A(n41), .B(n251), .C(n442), .COUT(n432) );
  GTECH_OAI2N2 U492 ( .A(n41), .B(n443), .C(n444), .D(n445), .Z(n434) );
  GTECH_OR_NOT U493 ( .A(n251), .B(n41), .Z(n445) );
  GTECH_AND2 U494 ( .A(n263), .B(n294), .Z(N103) );
  GTECH_OAI21 U495 ( .A(n41), .B(n299), .C(n446), .Z(n294) );
  GTECH_MUX2 U496 ( .A(n447), .B(n448), .S(n449), .Z(n446) );
  GTECH_XNOR2 U497 ( .A(n41), .B(n443), .Z(n449) );
  GTECH_NOT U498 ( .A(n251), .Z(n443) );
  GTECH_OA22 U499 ( .A(n450), .B(n306), .C(n308), .D(n451), .Z(n448) );
  GTECH_NOT U500 ( .A(n442), .Z(n451) );
  GTECH_NOT U501 ( .A(n444), .Z(n450) );
  GTECH_OA22 U502 ( .A(n306), .B(n444), .C(n442), .D(n308), .Z(n447) );
  GTECH_ADD_ABC U503 ( .A(n42), .B(n250), .C(n452), .COUT(n442) );
  GTECH_OAI2N2 U504 ( .A(n42), .B(n453), .C(n454), .D(n455), .Z(n444) );
  GTECH_OR_NOT U505 ( .A(n250), .B(n42), .Z(n455) );
  GTECH_AND2 U506 ( .A(n263), .B(n296), .Z(N102) );
  GTECH_OAI21 U507 ( .A(n42), .B(n299), .C(n456), .Z(n296) );
  GTECH_MUX2 U508 ( .A(n457), .B(n458), .S(n459), .Z(n456) );
  GTECH_XNOR2 U509 ( .A(n42), .B(n453), .Z(n459) );
  GTECH_NOT U510 ( .A(n250), .Z(n453) );
  GTECH_OA22 U511 ( .A(n460), .B(n306), .C(n308), .D(n461), .Z(n458) );
  GTECH_NOT U512 ( .A(n452), .Z(n461) );
  GTECH_NOT U513 ( .A(n454), .Z(n460) );
  GTECH_OA22 U514 ( .A(n306), .B(n454), .C(n452), .D(n308), .Z(n457) );
  GTECH_ADD_ABC U515 ( .A(n43), .B(n249), .C(n462), .COUT(n452) );
  GTECH_OAI2N2 U516 ( .A(n43), .B(n463), .C(n464), .D(n465), .Z(n454) );
  GTECH_OR_NOT U517 ( .A(n249), .B(n43), .Z(n465) );
  GTECH_AND2 U518 ( .A(n263), .B(n297), .Z(N101) );
  GTECH_OAI21 U519 ( .A(n43), .B(n299), .C(n466), .Z(n297) );
  GTECH_MUX2 U520 ( .A(n467), .B(n468), .S(n469), .Z(n466) );
  GTECH_XNOR2 U521 ( .A(n43), .B(n463), .Z(n469) );
  GTECH_NOT U522 ( .A(n249), .Z(n463) );
  GTECH_OA22 U523 ( .A(n470), .B(n306), .C(n308), .D(n471), .Z(n468) );
  GTECH_NOT U524 ( .A(n462), .Z(n471) );
  GTECH_NOT U525 ( .A(n464), .Z(n470) );
  GTECH_OA22 U526 ( .A(n306), .B(n464), .C(n462), .D(n308), .Z(n467) );
  GTECH_ADD_ABC U527 ( .A(n29), .B(n248), .C(n472), .COUT(n462) );
  GTECH_OAI2N2 U528 ( .A(n29), .B(n473), .C(n474), .D(n475), .Z(n464) );
  GTECH_OR_NOT U529 ( .A(n248), .B(n29), .Z(n475) );
  GTECH_AND2 U530 ( .A(n263), .B(n298), .Z(N100) );
  GTECH_OAI21 U531 ( .A(n29), .B(n299), .C(n476), .Z(n298) );
  GTECH_MUX2 U532 ( .A(n477), .B(n478), .S(n479), .Z(n476) );
  GTECH_XNOR2 U533 ( .A(n29), .B(n473), .Z(n479) );
  GTECH_NOT U534 ( .A(n248), .Z(n473) );
  GTECH_OA22 U535 ( .A(n480), .B(n306), .C(n308), .D(n481), .Z(n478) );
  GTECH_NOT U536 ( .A(n472), .Z(n481) );
  GTECH_NOT U537 ( .A(n474), .Z(n480) );
  GTECH_OA22 U538 ( .A(n306), .B(n474), .C(n472), .D(n308), .Z(n477) );
  GTECH_ADD_ABC U539 ( .A(n247), .B(n11), .C(n309), .COUT(n472) );
  GTECH_NAND2 U540 ( .A(n482), .B(n313), .Z(n309) );
  GTECH_NOT U541 ( .A(n12), .Z(n482) );
  GTECH_OAI21 U542 ( .A(n11), .B(n483), .C(n484), .Z(n474) );
  GTECH_OAI21 U543 ( .A(n247), .B(n304), .C(n310), .Z(n484) );
  GTECH_NAND2 U544 ( .A(n12), .B(n313), .Z(n310) );
  GTECH_NOT U545 ( .A(n246), .Z(n313) );
  GTECH_NOT U546 ( .A(n11), .Z(n304) );
  GTECH_NOT U547 ( .A(n247), .Z(n483) );
  GTECH_NAND2 U548 ( .A(n308), .B(n306), .Z(n299) );
  GTECH_NAND2 U549 ( .A(n10), .B(n268), .Z(n306) );
  GTECH_NOT U550 ( .A(n28), .Z(n268) );
  GTECH_NAND2 U551 ( .A(n28), .B(n485), .Z(n308) );
  GTECH_NOT U552 ( .A(n10), .Z(n485) );
  GTECH_NOT U553 ( .A(n266), .Z(n263) );
  GTECH_OAI21 U554 ( .A(n271), .B(n272), .C(n486), .Z(n266) );
  GTECH_AND2 U555 ( .A(n273), .B(n274), .Z(n486) );
  GTECH_NOT U556 ( .A(Rst), .Z(n274) );
  GTECH_NOT U557 ( .A(Ld), .Z(n273) );
  GTECH_NOT U558 ( .A(n9), .Z(n272) );
  GTECH_NAND2 U559 ( .A(n8), .B(n276), .Z(n271) );
  GTECH_NOT U560 ( .A(n279), .Z(n276) );
  GTECH_NAND2 U561 ( .A(n7), .B(n278), .Z(n279) );
  GTECH_NOT U562 ( .A(n487), .Z(n278) );
  GTECH_NAND2 U563 ( .A(n6), .B(n245), .Z(n487) );
endmodule

