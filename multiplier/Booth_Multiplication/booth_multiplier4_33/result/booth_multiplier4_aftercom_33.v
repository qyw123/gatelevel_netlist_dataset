
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
         n43, n104, n106, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n106), .K(n106), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n243) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n106), .K(n106), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n106), .K(n106), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n106), .K(n106), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n106), .K(n106), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n106), .K(n106), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]), .QN(n260) );
  GTECH_FJK1S A_reg_15_ ( .J(n106), .K(n106), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n259) );
  GTECH_FJK1S A_reg_14_ ( .J(n106), .K(n106), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n258) );
  GTECH_FJK1S A_reg_13_ ( .J(n106), .K(n106), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n257) );
  GTECH_FJK1S A_reg_12_ ( .J(n106), .K(n106), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n256) );
  GTECH_FJK1S A_reg_11_ ( .J(n106), .K(n106), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n255) );
  GTECH_FJK1S A_reg_10_ ( .J(n106), .K(n106), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n254) );
  GTECH_FJK1S A_reg_9_ ( .J(n106), .K(n106), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n253) );
  GTECH_FJK1S A_reg_8_ ( .J(n106), .K(n106), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n252) );
  GTECH_FJK1S A_reg_7_ ( .J(n106), .K(n106), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n251) );
  GTECH_FJK1S A_reg_6_ ( .J(n106), .K(n106), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n250) );
  GTECH_FJK1S A_reg_5_ ( .J(n106), .K(n106), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n249) );
  GTECH_FJK1S A_reg_4_ ( .J(n106), .K(n106), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n248) );
  GTECH_FJK1S A_reg_3_ ( .J(n106), .K(n106), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n247) );
  GTECH_FJK1S A_reg_2_ ( .J(n106), .K(n106), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n246) );
  GTECH_FJK1S A_reg_1_ ( .J(n106), .K(n106), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n245) );
  GTECH_FJK1S A_reg_0_ ( .J(n106), .K(n106), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n244) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n106), .K(n106), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n106), .K(n106), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n106), .K(n106), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n106), .K(n106), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n106), .K(n106), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n106), .K(n106), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n106), .K(n106), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n106), .K(n106), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n106), .K(n106), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n106), .K(n106), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n106), .K(n106), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n106), .K(n106), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n106), .K(n106), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n106), .K(n106), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n106), .K(n106), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n106), .K(n106), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n106), .K(n106), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n106), .K(n106), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n106), .K(n106), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n106), .K(n106), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n106), .K(n106), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n106), .K(n106), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n106), .K(n106), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n106), .K(n106), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n106), .K(n106), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n106), .K(n106), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n106), .K(n106), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n106), .K(n106), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n106), .K(n106), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n106), .K(n106), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n106), .K(n106), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n106), .K(n106), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n106), .K(n106), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n106), .K(n106), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n106), .K(n106), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n106), .K(n106), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n106), .K(n106), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n106), .K(n106), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n106), .K(n106), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n106), .K(n106), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n106), .K(n106), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n106), .K(n106), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n106), .K(n106), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n106), .K(n106), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n106), .K(n106), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n106), .K(n106), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n106), .K(n106), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n106), .K(n106), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n106), .K(n106), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n106), .K(n106), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n106), .K(n106), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n106), .K(n106), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n106), .K(n106), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n106), .K(n106), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n106), .K(n106), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n106), .K(n106), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n106), .K(n106), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n106), .K(n106), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n106), .K(n106), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n106), .K(n106), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n106), .K(n106), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n106), .K(n106), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n106), .K(n106), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n106), .K(n106), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n106), .K(n106), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n106), .K(n106), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD2 Valid_reg ( .D(N155), .CP(clk), .CD(n104), .Q(Valid) );
  GTECH_ZERO U245 ( .Z(n106) );
  GTECH_ONE U246 ( .Z(n104) );
  GTECH_AND2 U247 ( .A(n261), .B(n262), .Z(N99) );
  GTECH_OAI2N2 U248 ( .A(n263), .B(n264), .C(R[15]), .D(n265), .Z(N98) );
  GTECH_OAI2N2 U249 ( .A(n13), .B(n264), .C(R[14]), .D(n265), .Z(N97) );
  GTECH_OAI2N2 U250 ( .A(n14), .B(n264), .C(R[13]), .D(n265), .Z(N96) );
  GTECH_OAI2N2 U251 ( .A(n15), .B(n264), .C(R[12]), .D(n265), .Z(N95) );
  GTECH_OAI2N2 U252 ( .A(n16), .B(n264), .C(R[11]), .D(n265), .Z(N94) );
  GTECH_OAI2N2 U253 ( .A(n17), .B(n264), .C(R[10]), .D(n265), .Z(N93) );
  GTECH_OAI2N2 U254 ( .A(n18), .B(n264), .C(R[9]), .D(n265), .Z(N92) );
  GTECH_OAI2N2 U255 ( .A(n19), .B(n264), .C(R[8]), .D(n265), .Z(N91) );
  GTECH_OAI2N2 U256 ( .A(n20), .B(n264), .C(R[7]), .D(n265), .Z(N90) );
  GTECH_OAI2N2 U257 ( .A(n21), .B(n264), .C(R[6]), .D(n265), .Z(N89) );
  GTECH_OAI2N2 U258 ( .A(n22), .B(n264), .C(R[5]), .D(n265), .Z(N88) );
  GTECH_OAI2N2 U259 ( .A(n23), .B(n264), .C(R[4]), .D(n265), .Z(N87) );
  GTECH_OAI2N2 U260 ( .A(n24), .B(n264), .C(R[3]), .D(n265), .Z(N86) );
  GTECH_OAI2N2 U261 ( .A(n25), .B(n264), .C(R[2]), .D(n265), .Z(N85) );
  GTECH_OAI2N2 U262 ( .A(n26), .B(n264), .C(R[1]), .D(n265), .Z(N84) );
  GTECH_OAI2N2 U263 ( .A(n27), .B(n264), .C(R[0]), .D(n265), .Z(N83) );
  GTECH_AND2 U264 ( .A(n261), .B(n266), .Z(N82) );
  GTECH_AND2 U265 ( .A(M[15]), .B(n265), .Z(N42) );
  GTECH_AND2 U266 ( .A(M[14]), .B(n265), .Z(N39) );
  GTECH_AND2 U267 ( .A(M[13]), .B(n265), .Z(N38) );
  GTECH_AND2 U268 ( .A(M[12]), .B(n265), .Z(N37) );
  GTECH_AND2 U269 ( .A(M[11]), .B(n265), .Z(N36) );
  GTECH_AND2 U270 ( .A(M[10]), .B(n265), .Z(N35) );
  GTECH_AND2 U271 ( .A(M[9]), .B(n265), .Z(N34) );
  GTECH_AND2 U272 ( .A(M[8]), .B(n265), .Z(N33) );
  GTECH_AND2 U273 ( .A(M[7]), .B(n265), .Z(N32) );
  GTECH_AND2 U274 ( .A(M[6]), .B(n265), .Z(N31) );
  GTECH_AND2 U275 ( .A(M[5]), .B(n265), .Z(N30) );
  GTECH_AND2 U276 ( .A(M[4]), .B(n265), .Z(N29) );
  GTECH_AND2 U277 ( .A(M[3]), .B(n265), .Z(N28) );
  GTECH_AND2 U278 ( .A(M[2]), .B(n265), .Z(N27) );
  GTECH_AND2 U279 ( .A(M[1]), .B(n265), .Z(N26) );
  GTECH_AND2 U280 ( .A(M[0]), .B(n265), .Z(N25) );
  GTECH_NOT U281 ( .A(n267), .Z(n265) );
  GTECH_NAND2 U282 ( .A(n267), .B(n268), .Z(N19) );
  GTECH_NAND3 U283 ( .A(n269), .B(n270), .C(n261), .Z(n268) );
  GTECH_NAND2 U284 ( .A(n271), .B(n264), .Z(N18) );
  GTECH_AND2 U285 ( .A(n261), .B(n272), .Z(N17) );
  GTECH_OAI21 U286 ( .A(n8), .B(n273), .C(n269), .Z(n272) );
  GTECH_AND2 U287 ( .A(n261), .B(n274), .Z(N16) );
  GTECH_OAI21 U288 ( .A(n7), .B(n275), .C(n276), .Z(n274) );
  GTECH_AND2 U289 ( .A(N155), .B(n277), .Z(N152) );
  GTECH_NAND2 U290 ( .A(n278), .B(n279), .Z(N151) );
  GTECH_AND2 U291 ( .A(N155), .B(n280), .Z(N150) );
  GTECH_MUX2 U292 ( .A(n281), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U293 ( .A(n261), .B(n282), .Z(n281) );
  GTECH_AND2 U294 ( .A(N155), .B(n283), .Z(N149) );
  GTECH_AND2 U295 ( .A(N155), .B(n284), .Z(N148) );
  GTECH_AND2 U296 ( .A(N155), .B(n285), .Z(N147) );
  GTECH_AND2 U297 ( .A(N155), .B(n286), .Z(N146) );
  GTECH_AND2 U298 ( .A(N155), .B(n287), .Z(N145) );
  GTECH_AND2 U299 ( .A(N155), .B(n288), .Z(N144) );
  GTECH_AND2 U300 ( .A(N155), .B(n289), .Z(N143) );
  GTECH_AND2 U301 ( .A(N155), .B(n290), .Z(N142) );
  GTECH_AND2 U302 ( .A(N155), .B(n291), .Z(N141) );
  GTECH_AND2 U303 ( .A(N155), .B(n292), .Z(N140) );
  GTECH_NOT U304 ( .A(n293), .Z(N14) );
  GTECH_NAND2 U305 ( .A(n261), .B(n243), .Z(n293) );
  GTECH_AND2 U306 ( .A(N155), .B(n294), .Z(N139) );
  GTECH_AND2 U307 ( .A(N155), .B(n295), .Z(N138) );
  GTECH_AND2 U308 ( .A(N155), .B(n296), .Z(N137) );
  GTECH_AND2 U309 ( .A(N155), .B(n262), .Z(N136) );
  GTECH_OAI21 U310 ( .A(n11), .B(n297), .C(n298), .Z(n262) );
  GTECH_MUX2 U311 ( .A(n299), .B(n300), .S(n301), .Z(n298) );
  GTECH_XOR2 U312 ( .A(n245), .B(n11), .Z(n301) );
  GTECH_OA22 U313 ( .A(n302), .B(n303), .C(n304), .D(n305), .Z(n300) );
  GTECH_NOT U314 ( .A(n306), .Z(n304) );
  GTECH_NOT U315 ( .A(n307), .Z(n302) );
  GTECH_OA22 U316 ( .A(n307), .B(n303), .C(n305), .D(n306), .Z(n299) );
  GTECH_AND2 U317 ( .A(N155), .B(n308), .Z(N135) );
  GTECH_NOT U318 ( .A(n263), .Z(n308) );
  GTECH_MUX2 U319 ( .A(n12), .B(n309), .S(n297), .Z(n263) );
  GTECH_OA21 U320 ( .A(n310), .B(n12), .C(n307), .Z(n309) );
  GTECH_AND2 U321 ( .A(N155), .B(n311), .Z(N134) );
  GTECH_NOT U322 ( .A(n13), .Z(n311) );
  GTECH_AND2 U323 ( .A(N155), .B(n312), .Z(N133) );
  GTECH_NOT U324 ( .A(n14), .Z(n312) );
  GTECH_AND2 U325 ( .A(N155), .B(n313), .Z(N132) );
  GTECH_NOT U326 ( .A(n15), .Z(n313) );
  GTECH_AND2 U327 ( .A(N155), .B(n314), .Z(N131) );
  GTECH_NOT U328 ( .A(n16), .Z(n314) );
  GTECH_AND2 U329 ( .A(N155), .B(n315), .Z(N130) );
  GTECH_NOT U330 ( .A(n17), .Z(n315) );
  GTECH_AND2 U331 ( .A(N155), .B(n316), .Z(N129) );
  GTECH_NOT U332 ( .A(n18), .Z(n316) );
  GTECH_AND2 U333 ( .A(N155), .B(n317), .Z(N128) );
  GTECH_NOT U334 ( .A(n19), .Z(n317) );
  GTECH_AND2 U335 ( .A(N155), .B(n318), .Z(N127) );
  GTECH_NOT U336 ( .A(n20), .Z(n318) );
  GTECH_AND2 U337 ( .A(N155), .B(n319), .Z(N126) );
  GTECH_NOT U338 ( .A(n21), .Z(n319) );
  GTECH_AND2 U339 ( .A(N155), .B(n320), .Z(N125) );
  GTECH_NOT U340 ( .A(n22), .Z(n320) );
  GTECH_AND2 U341 ( .A(N155), .B(n321), .Z(N124) );
  GTECH_NOT U342 ( .A(n23), .Z(n321) );
  GTECH_AND2 U343 ( .A(N155), .B(n322), .Z(N123) );
  GTECH_NOT U344 ( .A(n24), .Z(n322) );
  GTECH_AND2 U345 ( .A(N155), .B(n323), .Z(N122) );
  GTECH_NOT U346 ( .A(n25), .Z(n323) );
  GTECH_AND2 U347 ( .A(N155), .B(n324), .Z(N121) );
  GTECH_NOT U348 ( .A(n26), .Z(n324) );
  GTECH_AND2 U349 ( .A(N155), .B(n325), .Z(N120) );
  GTECH_NOT U350 ( .A(n27), .Z(n325) );
  GTECH_NOT U351 ( .A(n279), .Z(N155) );
  GTECH_NAND4 U352 ( .A(n8), .B(n7), .C(n9), .D(n326), .Z(n279) );
  GTECH_AND3 U353 ( .A(n278), .B(n282), .C(n6), .Z(n326) );
  GTECH_NOT U354 ( .A(n243), .Z(n282) );
  GTECH_AND2 U355 ( .A(n261), .B(n277), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n327), .B(n328), .S(n30), .Z(n277) );
  GTECH_MUX2 U357 ( .A(n329), .B(n330), .S(n260), .Z(n328) );
  GTECH_NAND2 U358 ( .A(n331), .B(n297), .Z(n327) );
  GTECH_MUX2 U359 ( .A(n332), .B(n333), .S(n260), .Z(n331) );
  GTECH_NOT U360 ( .A(n329), .Z(n333) );
  GTECH_OAI22 U361 ( .A(n305), .B(n334), .C(n335), .D(n303), .Z(n329) );
  GTECH_NOT U362 ( .A(n336), .Z(n335) );
  GTECH_NOT U363 ( .A(n337), .Z(n334) );
  GTECH_NOT U364 ( .A(n330), .Z(n332) );
  GTECH_OAI22 U365 ( .A(n337), .B(n305), .C(n303), .D(n336), .Z(n330) );
  GTECH_OAI2N2 U366 ( .A(n31), .B(n338), .C(n339), .D(n340), .Z(n336) );
  GTECH_OR_NOT U367 ( .A(n259), .B(n31), .Z(n340) );
  GTECH_NOT U368 ( .A(n259), .Z(n338) );
  GTECH_ADD_ABC U369 ( .A(n31), .B(n259), .C(n341), .COUT(n337) );
  GTECH_NAND2 U370 ( .A(n264), .B(n342), .Z(N115) );
  GTECH_NOT U371 ( .A(N41), .Z(n342) );
  GTECH_NAND2 U372 ( .A(n278), .B(n267), .Z(N41) );
  GTECH_NAND2 U373 ( .A(Ld), .B(n278), .Z(n267) );
  GTECH_AND2 U374 ( .A(n261), .B(n280), .Z(N113) );
  GTECH_OAI21 U375 ( .A(n31), .B(n297), .C(n343), .Z(n280) );
  GTECH_MUX2 U376 ( .A(n344), .B(n345), .S(n346), .Z(n343) );
  GTECH_XOR2 U377 ( .A(n31), .B(n259), .Z(n346) );
  GTECH_OA22 U378 ( .A(n347), .B(n303), .C(n305), .D(n348), .Z(n345) );
  GTECH_NOT U379 ( .A(n341), .Z(n348) );
  GTECH_NOT U380 ( .A(n339), .Z(n347) );
  GTECH_OA22 U381 ( .A(n303), .B(n339), .C(n341), .D(n305), .Z(n344) );
  GTECH_ADD_ABC U382 ( .A(n32), .B(n258), .C(n349), .COUT(n341) );
  GTECH_OAI2N2 U383 ( .A(n32), .B(n350), .C(n351), .D(n352), .Z(n339) );
  GTECH_OR_NOT U384 ( .A(n258), .B(n32), .Z(n352) );
  GTECH_NOT U385 ( .A(n258), .Z(n350) );
  GTECH_AND2 U386 ( .A(n261), .B(n283), .Z(N112) );
  GTECH_OAI21 U387 ( .A(n32), .B(n297), .C(n353), .Z(n283) );
  GTECH_MUX2 U388 ( .A(n354), .B(n355), .S(n356), .Z(n353) );
  GTECH_XOR2 U389 ( .A(n32), .B(n258), .Z(n356) );
  GTECH_OA22 U390 ( .A(n357), .B(n303), .C(n305), .D(n358), .Z(n355) );
  GTECH_NOT U391 ( .A(n349), .Z(n358) );
  GTECH_NOT U392 ( .A(n351), .Z(n357) );
  GTECH_OA22 U393 ( .A(n303), .B(n351), .C(n349), .D(n305), .Z(n354) );
  GTECH_ADD_ABC U394 ( .A(n33), .B(n257), .C(n359), .COUT(n349) );
  GTECH_OAI2N2 U395 ( .A(n33), .B(n360), .C(n361), .D(n362), .Z(n351) );
  GTECH_OR_NOT U396 ( .A(n257), .B(n33), .Z(n362) );
  GTECH_NOT U397 ( .A(n257), .Z(n360) );
  GTECH_AND2 U398 ( .A(n261), .B(n284), .Z(N111) );
  GTECH_OAI21 U399 ( .A(n33), .B(n297), .C(n363), .Z(n284) );
  GTECH_MUX2 U400 ( .A(n364), .B(n365), .S(n366), .Z(n363) );
  GTECH_XOR2 U401 ( .A(n33), .B(n257), .Z(n366) );
  GTECH_OA22 U402 ( .A(n367), .B(n303), .C(n305), .D(n368), .Z(n365) );
  GTECH_NOT U403 ( .A(n359), .Z(n368) );
  GTECH_NOT U404 ( .A(n361), .Z(n367) );
  GTECH_OA22 U405 ( .A(n303), .B(n361), .C(n359), .D(n305), .Z(n364) );
  GTECH_ADD_ABC U406 ( .A(n34), .B(n256), .C(n369), .COUT(n359) );
  GTECH_OAI2N2 U407 ( .A(n34), .B(n370), .C(n371), .D(n372), .Z(n361) );
  GTECH_OR_NOT U408 ( .A(n256), .B(n34), .Z(n372) );
  GTECH_NOT U409 ( .A(n256), .Z(n370) );
  GTECH_AND2 U410 ( .A(n261), .B(n285), .Z(N110) );
  GTECH_OAI21 U411 ( .A(n34), .B(n297), .C(n373), .Z(n285) );
  GTECH_MUX2 U412 ( .A(n374), .B(n375), .S(n376), .Z(n373) );
  GTECH_XOR2 U413 ( .A(n34), .B(n256), .Z(n376) );
  GTECH_OA22 U414 ( .A(n377), .B(n303), .C(n305), .D(n378), .Z(n375) );
  GTECH_NOT U415 ( .A(n369), .Z(n378) );
  GTECH_NOT U416 ( .A(n371), .Z(n377) );
  GTECH_OA22 U417 ( .A(n303), .B(n371), .C(n369), .D(n305), .Z(n374) );
  GTECH_ADD_ABC U418 ( .A(n35), .B(n255), .C(n379), .COUT(n369) );
  GTECH_OAI2N2 U419 ( .A(n35), .B(n380), .C(n381), .D(n382), .Z(n371) );
  GTECH_OR_NOT U420 ( .A(n255), .B(n35), .Z(n382) );
  GTECH_NOT U421 ( .A(n255), .Z(n380) );
  GTECH_AND2 U422 ( .A(n261), .B(n286), .Z(N109) );
  GTECH_OAI21 U423 ( .A(n35), .B(n297), .C(n383), .Z(n286) );
  GTECH_MUX2 U424 ( .A(n384), .B(n385), .S(n386), .Z(n383) );
  GTECH_XOR2 U425 ( .A(n35), .B(n255), .Z(n386) );
  GTECH_OA22 U426 ( .A(n387), .B(n303), .C(n305), .D(n388), .Z(n385) );
  GTECH_NOT U427 ( .A(n379), .Z(n388) );
  GTECH_NOT U428 ( .A(n381), .Z(n387) );
  GTECH_OA22 U429 ( .A(n303), .B(n381), .C(n379), .D(n305), .Z(n384) );
  GTECH_ADD_ABC U430 ( .A(n36), .B(n254), .C(n389), .COUT(n379) );
  GTECH_OAI2N2 U431 ( .A(n36), .B(n390), .C(n391), .D(n392), .Z(n381) );
  GTECH_OR_NOT U432 ( .A(n254), .B(n36), .Z(n392) );
  GTECH_NOT U433 ( .A(n254), .Z(n390) );
  GTECH_AND2 U434 ( .A(n261), .B(n287), .Z(N108) );
  GTECH_OAI21 U435 ( .A(n36), .B(n297), .C(n393), .Z(n287) );
  GTECH_MUX2 U436 ( .A(n394), .B(n395), .S(n396), .Z(n393) );
  GTECH_XOR2 U437 ( .A(n36), .B(n254), .Z(n396) );
  GTECH_OA22 U438 ( .A(n397), .B(n303), .C(n305), .D(n398), .Z(n395) );
  GTECH_NOT U439 ( .A(n389), .Z(n398) );
  GTECH_NOT U440 ( .A(n391), .Z(n397) );
  GTECH_OA22 U441 ( .A(n303), .B(n391), .C(n389), .D(n305), .Z(n394) );
  GTECH_ADD_ABC U442 ( .A(n37), .B(n253), .C(n399), .COUT(n389) );
  GTECH_OAI2N2 U443 ( .A(n37), .B(n400), .C(n401), .D(n402), .Z(n391) );
  GTECH_OR_NOT U444 ( .A(n253), .B(n37), .Z(n402) );
  GTECH_NOT U445 ( .A(n253), .Z(n400) );
  GTECH_AND2 U446 ( .A(n261), .B(n288), .Z(N107) );
  GTECH_OAI21 U447 ( .A(n37), .B(n297), .C(n403), .Z(n288) );
  GTECH_MUX2 U448 ( .A(n404), .B(n405), .S(n406), .Z(n403) );
  GTECH_XOR2 U449 ( .A(n37), .B(n253), .Z(n406) );
  GTECH_OA22 U450 ( .A(n407), .B(n303), .C(n305), .D(n408), .Z(n405) );
  GTECH_NOT U451 ( .A(n399), .Z(n408) );
  GTECH_NOT U452 ( .A(n401), .Z(n407) );
  GTECH_OA22 U453 ( .A(n303), .B(n401), .C(n399), .D(n305), .Z(n404) );
  GTECH_ADD_ABC U454 ( .A(n38), .B(n252), .C(n409), .COUT(n399) );
  GTECH_OAI2N2 U455 ( .A(n38), .B(n410), .C(n411), .D(n412), .Z(n401) );
  GTECH_OR_NOT U456 ( .A(n252), .B(n38), .Z(n412) );
  GTECH_NOT U457 ( .A(n252), .Z(n410) );
  GTECH_AND2 U458 ( .A(n261), .B(n289), .Z(N106) );
  GTECH_OAI21 U459 ( .A(n38), .B(n297), .C(n413), .Z(n289) );
  GTECH_MUX2 U460 ( .A(n414), .B(n415), .S(n416), .Z(n413) );
  GTECH_XOR2 U461 ( .A(n38), .B(n252), .Z(n416) );
  GTECH_OA22 U462 ( .A(n417), .B(n303), .C(n305), .D(n418), .Z(n415) );
  GTECH_NOT U463 ( .A(n409), .Z(n418) );
  GTECH_NOT U464 ( .A(n411), .Z(n417) );
  GTECH_OA22 U465 ( .A(n303), .B(n411), .C(n409), .D(n305), .Z(n414) );
  GTECH_ADD_ABC U466 ( .A(n39), .B(n251), .C(n419), .COUT(n409) );
  GTECH_OAI2N2 U467 ( .A(n39), .B(n420), .C(n421), .D(n422), .Z(n411) );
  GTECH_OR_NOT U468 ( .A(n251), .B(n39), .Z(n422) );
  GTECH_NOT U469 ( .A(n251), .Z(n420) );
  GTECH_AND2 U470 ( .A(n261), .B(n290), .Z(N105) );
  GTECH_OAI21 U471 ( .A(n39), .B(n297), .C(n423), .Z(n290) );
  GTECH_MUX2 U472 ( .A(n424), .B(n425), .S(n426), .Z(n423) );
  GTECH_XOR2 U473 ( .A(n39), .B(n251), .Z(n426) );
  GTECH_OA22 U474 ( .A(n427), .B(n303), .C(n305), .D(n428), .Z(n425) );
  GTECH_NOT U475 ( .A(n419), .Z(n428) );
  GTECH_NOT U476 ( .A(n421), .Z(n427) );
  GTECH_OA22 U477 ( .A(n303), .B(n421), .C(n419), .D(n305), .Z(n424) );
  GTECH_ADD_ABC U478 ( .A(n40), .B(n250), .C(n429), .COUT(n419) );
  GTECH_OAI2N2 U479 ( .A(n40), .B(n430), .C(n431), .D(n432), .Z(n421) );
  GTECH_OR_NOT U480 ( .A(n250), .B(n40), .Z(n432) );
  GTECH_NOT U481 ( .A(n250), .Z(n430) );
  GTECH_AND2 U482 ( .A(n261), .B(n291), .Z(N104) );
  GTECH_OAI21 U483 ( .A(n40), .B(n297), .C(n433), .Z(n291) );
  GTECH_MUX2 U484 ( .A(n434), .B(n435), .S(n436), .Z(n433) );
  GTECH_XOR2 U485 ( .A(n40), .B(n250), .Z(n436) );
  GTECH_OA22 U486 ( .A(n437), .B(n303), .C(n305), .D(n438), .Z(n435) );
  GTECH_NOT U487 ( .A(n429), .Z(n438) );
  GTECH_NOT U488 ( .A(n431), .Z(n437) );
  GTECH_OA22 U489 ( .A(n303), .B(n431), .C(n429), .D(n305), .Z(n434) );
  GTECH_ADD_ABC U490 ( .A(n41), .B(n249), .C(n439), .COUT(n429) );
  GTECH_OAI2N2 U491 ( .A(n41), .B(n440), .C(n441), .D(n442), .Z(n431) );
  GTECH_OR_NOT U492 ( .A(n249), .B(n41), .Z(n442) );
  GTECH_NOT U493 ( .A(n249), .Z(n440) );
  GTECH_AND2 U494 ( .A(n261), .B(n292), .Z(N103) );
  GTECH_OAI21 U495 ( .A(n41), .B(n297), .C(n443), .Z(n292) );
  GTECH_MUX2 U496 ( .A(n444), .B(n445), .S(n446), .Z(n443) );
  GTECH_XOR2 U497 ( .A(n41), .B(n249), .Z(n446) );
  GTECH_OA22 U498 ( .A(n447), .B(n303), .C(n305), .D(n448), .Z(n445) );
  GTECH_NOT U499 ( .A(n439), .Z(n448) );
  GTECH_NOT U500 ( .A(n441), .Z(n447) );
  GTECH_OA22 U501 ( .A(n303), .B(n441), .C(n439), .D(n305), .Z(n444) );
  GTECH_ADD_ABC U502 ( .A(n42), .B(n248), .C(n449), .COUT(n439) );
  GTECH_OAI2N2 U503 ( .A(n42), .B(n450), .C(n451), .D(n452), .Z(n441) );
  GTECH_OR_NOT U504 ( .A(n248), .B(n42), .Z(n452) );
  GTECH_NOT U505 ( .A(n248), .Z(n450) );
  GTECH_AND2 U506 ( .A(n261), .B(n294), .Z(N102) );
  GTECH_OAI21 U507 ( .A(n42), .B(n297), .C(n453), .Z(n294) );
  GTECH_MUX2 U508 ( .A(n454), .B(n455), .S(n456), .Z(n453) );
  GTECH_XOR2 U509 ( .A(n42), .B(n248), .Z(n456) );
  GTECH_OA22 U510 ( .A(n457), .B(n303), .C(n305), .D(n458), .Z(n455) );
  GTECH_NOT U511 ( .A(n449), .Z(n458) );
  GTECH_NOT U512 ( .A(n451), .Z(n457) );
  GTECH_OA22 U513 ( .A(n303), .B(n451), .C(n449), .D(n305), .Z(n454) );
  GTECH_ADD_ABC U514 ( .A(n43), .B(n247), .C(n459), .COUT(n449) );
  GTECH_OAI2N2 U515 ( .A(n43), .B(n460), .C(n461), .D(n462), .Z(n451) );
  GTECH_OR_NOT U516 ( .A(n247), .B(n43), .Z(n462) );
  GTECH_NOT U517 ( .A(n247), .Z(n460) );
  GTECH_AND2 U518 ( .A(n261), .B(n295), .Z(N101) );
  GTECH_OAI21 U519 ( .A(n43), .B(n297), .C(n463), .Z(n295) );
  GTECH_MUX2 U520 ( .A(n464), .B(n465), .S(n466), .Z(n463) );
  GTECH_XOR2 U521 ( .A(n43), .B(n247), .Z(n466) );
  GTECH_OA22 U522 ( .A(n467), .B(n303), .C(n305), .D(n468), .Z(n465) );
  GTECH_NOT U523 ( .A(n459), .Z(n468) );
  GTECH_NOT U524 ( .A(n461), .Z(n467) );
  GTECH_OA22 U525 ( .A(n303), .B(n461), .C(n459), .D(n305), .Z(n464) );
  GTECH_ADD_ABC U526 ( .A(n29), .B(n246), .C(n469), .COUT(n459) );
  GTECH_OAI2N2 U527 ( .A(n29), .B(n470), .C(n471), .D(n472), .Z(n461) );
  GTECH_OR_NOT U528 ( .A(n246), .B(n29), .Z(n472) );
  GTECH_NOT U529 ( .A(n246), .Z(n470) );
  GTECH_AND2 U530 ( .A(n261), .B(n296), .Z(N100) );
  GTECH_OAI21 U531 ( .A(n29), .B(n297), .C(n473), .Z(n296) );
  GTECH_MUX2 U532 ( .A(n474), .B(n475), .S(n476), .Z(n473) );
  GTECH_XOR2 U533 ( .A(n29), .B(n246), .Z(n476) );
  GTECH_OA22 U534 ( .A(n477), .B(n303), .C(n305), .D(n478), .Z(n475) );
  GTECH_NOT U535 ( .A(n469), .Z(n478) );
  GTECH_NOT U536 ( .A(n471), .Z(n477) );
  GTECH_OA22 U537 ( .A(n303), .B(n471), .C(n469), .D(n305), .Z(n474) );
  GTECH_ADD_ABC U538 ( .A(n245), .B(n11), .C(n306), .COUT(n469) );
  GTECH_NAND2 U539 ( .A(n479), .B(n310), .Z(n306) );
  GTECH_NOT U540 ( .A(n12), .Z(n479) );
  GTECH_OAI2N2 U541 ( .A(n11), .B(n480), .C(n307), .D(n481), .Z(n471) );
  GTECH_OR_NOT U542 ( .A(n245), .B(n11), .Z(n481) );
  GTECH_NAND2 U543 ( .A(n12), .B(n310), .Z(n307) );
  GTECH_NOT U544 ( .A(n244), .Z(n310) );
  GTECH_NOT U545 ( .A(n245), .Z(n480) );
  GTECH_NAND2 U546 ( .A(n305), .B(n303), .Z(n297) );
  GTECH_NAND2 U547 ( .A(n10), .B(n266), .Z(n303) );
  GTECH_NOT U548 ( .A(n28), .Z(n266) );
  GTECH_NAND2 U549 ( .A(n28), .B(n482), .Z(n305) );
  GTECH_NOT U550 ( .A(n10), .Z(n482) );
  GTECH_NOT U551 ( .A(n264), .Z(n261) );
  GTECH_OAI21 U552 ( .A(n269), .B(n270), .C(n271), .Z(n264) );
  GTECH_NOT U553 ( .A(n483), .Z(n271) );
  GTECH_NAND2 U554 ( .A(n278), .B(n484), .Z(n483) );
  GTECH_NOT U555 ( .A(Ld), .Z(n484) );
  GTECH_NOT U556 ( .A(Rst), .Z(n278) );
  GTECH_NOT U557 ( .A(n9), .Z(n270) );
  GTECH_NAND2 U558 ( .A(n8), .B(n273), .Z(n269) );
  GTECH_NOT U559 ( .A(n276), .Z(n273) );
  GTECH_NAND2 U560 ( .A(n7), .B(n275), .Z(n276) );
  GTECH_NOT U561 ( .A(n485), .Z(n275) );
  GTECH_NAND2 U562 ( .A(n6), .B(n243), .Z(n485) );
endmodule

