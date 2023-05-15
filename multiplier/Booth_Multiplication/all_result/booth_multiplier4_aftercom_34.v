
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
         n43, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
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
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n242) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]), .QN(n259) );
  GTECH_FJK1S A_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n258) );
  GTECH_FJK1S A_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n257) );
  GTECH_FJK1S A_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n256) );
  GTECH_FJK1S A_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n255) );
  GTECH_FJK1S A_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n254) );
  GTECH_FJK1S A_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n253) );
  GTECH_FJK1S A_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n252) );
  GTECH_FJK1S A_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n251) );
  GTECH_FJK1S A_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n250) );
  GTECH_FJK1S A_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n249) );
  GTECH_FJK1S A_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n248) );
  GTECH_FJK1S A_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n247) );
  GTECH_FJK1S A_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n246) );
  GTECH_FJK1S A_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n245) );
  GTECH_FJK1S A_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n244) );
  GTECH_FJK1S A_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n243) );
  GTECH_FJK1S Prod_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(1'b0), .K(1'b0), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(1'b0), .K(1'b0), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(1'b0), .K(1'b0), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(1'b0), .K(1'b0), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(1'b0), .K(1'b0), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(1'b0), .K(1'b0), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(1'b0), .K(1'b0), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(1'b0), .K(1'b0), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(1'b0), .K(1'b0), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(1'b0), .K(1'b0), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(1'b0), .K(1'b0), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(1'b0), .K(1'b0), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(1'b0), .K(1'b0), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(1'b0), .K(1'b0), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(1'b0), .K(1'b0), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(1'b0), .K(1'b0), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(1'b0), .K(1'b0), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(1'b0), .K(1'b0), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(1'b0), .K(1'b0), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(1'b0), .K(1'b0), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(1'b0), .K(1'b0), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(1'b0), .K(1'b0), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(1'b0), .K(1'b0), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(1'b0), .K(1'b0), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(1'b0), .K(1'b0), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(1'b0), .K(1'b0), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(1'b0), .K(1'b0), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(1'b0), .K(1'b0), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(1'b0), .K(1'b0), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(1'b0), .K(1'b0), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(1'b0), .K(1'b0), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(1'b0), .K(1'b0), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(1'b0), .K(1'b0), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_AND2 U244 ( .A(n260), .B(n261), .Z(N99) );
  GTECH_OAI2N2 U245 ( .A(n262), .B(n263), .C(R[15]), .D(n264), .Z(N98) );
  GTECH_OAI2N2 U246 ( .A(n13), .B(n263), .C(R[14]), .D(n264), .Z(N97) );
  GTECH_OAI2N2 U247 ( .A(n14), .B(n263), .C(R[13]), .D(n264), .Z(N96) );
  GTECH_OAI2N2 U248 ( .A(n15), .B(n263), .C(R[12]), .D(n264), .Z(N95) );
  GTECH_OAI2N2 U249 ( .A(n16), .B(n263), .C(R[11]), .D(n264), .Z(N94) );
  GTECH_OAI2N2 U250 ( .A(n17), .B(n263), .C(R[10]), .D(n264), .Z(N93) );
  GTECH_OAI2N2 U251 ( .A(n18), .B(n263), .C(R[9]), .D(n264), .Z(N92) );
  GTECH_OAI2N2 U252 ( .A(n19), .B(n263), .C(R[8]), .D(n264), .Z(N91) );
  GTECH_OAI2N2 U253 ( .A(n20), .B(n263), .C(R[7]), .D(n264), .Z(N90) );
  GTECH_OAI2N2 U254 ( .A(n21), .B(n263), .C(R[6]), .D(n264), .Z(N89) );
  GTECH_OAI2N2 U255 ( .A(n22), .B(n263), .C(R[5]), .D(n264), .Z(N88) );
  GTECH_OAI2N2 U256 ( .A(n23), .B(n263), .C(R[4]), .D(n264), .Z(N87) );
  GTECH_OAI2N2 U257 ( .A(n24), .B(n263), .C(R[3]), .D(n264), .Z(N86) );
  GTECH_OAI2N2 U258 ( .A(n25), .B(n263), .C(R[2]), .D(n264), .Z(N85) );
  GTECH_OAI2N2 U259 ( .A(n26), .B(n263), .C(R[1]), .D(n264), .Z(N84) );
  GTECH_OAI2N2 U260 ( .A(n27), .B(n263), .C(R[0]), .D(n264), .Z(N83) );
  GTECH_AND2 U261 ( .A(n260), .B(n265), .Z(N82) );
  GTECH_AND2 U262 ( .A(M[15]), .B(n264), .Z(N42) );
  GTECH_AND2 U263 ( .A(M[14]), .B(n264), .Z(N39) );
  GTECH_AND2 U264 ( .A(M[13]), .B(n264), .Z(N38) );
  GTECH_AND2 U265 ( .A(M[12]), .B(n264), .Z(N37) );
  GTECH_AND2 U266 ( .A(M[11]), .B(n264), .Z(N36) );
  GTECH_AND2 U267 ( .A(M[10]), .B(n264), .Z(N35) );
  GTECH_AND2 U268 ( .A(M[9]), .B(n264), .Z(N34) );
  GTECH_AND2 U269 ( .A(M[8]), .B(n264), .Z(N33) );
  GTECH_AND2 U270 ( .A(M[7]), .B(n264), .Z(N32) );
  GTECH_AND2 U271 ( .A(M[6]), .B(n264), .Z(N31) );
  GTECH_AND2 U272 ( .A(M[5]), .B(n264), .Z(N30) );
  GTECH_AND2 U273 ( .A(M[4]), .B(n264), .Z(N29) );
  GTECH_AND2 U274 ( .A(M[3]), .B(n264), .Z(N28) );
  GTECH_AND2 U275 ( .A(M[2]), .B(n264), .Z(N27) );
  GTECH_AND2 U276 ( .A(M[1]), .B(n264), .Z(N26) );
  GTECH_AND2 U277 ( .A(M[0]), .B(n264), .Z(N25) );
  GTECH_NOT U278 ( .A(n266), .Z(n264) );
  GTECH_NAND2 U279 ( .A(n266), .B(n267), .Z(N19) );
  GTECH_NAND3 U280 ( .A(n268), .B(n269), .C(n260), .Z(n267) );
  GTECH_NAND2 U281 ( .A(n270), .B(n263), .Z(N18) );
  GTECH_AND2 U282 ( .A(n260), .B(n271), .Z(N17) );
  GTECH_OAI21 U283 ( .A(n8), .B(n272), .C(n268), .Z(n271) );
  GTECH_AND2 U284 ( .A(n260), .B(n273), .Z(N16) );
  GTECH_OAI21 U285 ( .A(n7), .B(n274), .C(n275), .Z(n273) );
  GTECH_AND2 U286 ( .A(N155), .B(n276), .Z(N152) );
  GTECH_NAND2 U287 ( .A(n277), .B(n278), .Z(N151) );
  GTECH_AND2 U288 ( .A(N155), .B(n279), .Z(N150) );
  GTECH_MUX2 U289 ( .A(n280), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U290 ( .A(n260), .B(n281), .Z(n280) );
  GTECH_AND2 U291 ( .A(N155), .B(n282), .Z(N149) );
  GTECH_AND2 U292 ( .A(N155), .B(n283), .Z(N148) );
  GTECH_AND2 U293 ( .A(N155), .B(n284), .Z(N147) );
  GTECH_AND2 U294 ( .A(N155), .B(n285), .Z(N146) );
  GTECH_AND2 U295 ( .A(N155), .B(n286), .Z(N145) );
  GTECH_AND2 U296 ( .A(N155), .B(n287), .Z(N144) );
  GTECH_AND2 U297 ( .A(N155), .B(n288), .Z(N143) );
  GTECH_AND2 U298 ( .A(N155), .B(n289), .Z(N142) );
  GTECH_AND2 U299 ( .A(N155), .B(n290), .Z(N141) );
  GTECH_AND2 U300 ( .A(N155), .B(n291), .Z(N140) );
  GTECH_NOT U301 ( .A(n292), .Z(N14) );
  GTECH_NAND2 U302 ( .A(n260), .B(n242), .Z(n292) );
  GTECH_AND2 U303 ( .A(N155), .B(n293), .Z(N139) );
  GTECH_AND2 U304 ( .A(N155), .B(n294), .Z(N138) );
  GTECH_AND2 U305 ( .A(N155), .B(n295), .Z(N137) );
  GTECH_AND2 U306 ( .A(N155), .B(n261), .Z(N136) );
  GTECH_OAI21 U307 ( .A(n11), .B(n296), .C(n297), .Z(n261) );
  GTECH_MUX2 U308 ( .A(n298), .B(n299), .S(n300), .Z(n297) );
  GTECH_XOR2 U309 ( .A(n244), .B(n11), .Z(n300) );
  GTECH_OA22 U310 ( .A(n301), .B(n302), .C(n303), .D(n304), .Z(n299) );
  GTECH_NOT U311 ( .A(n305), .Z(n303) );
  GTECH_NOT U312 ( .A(n306), .Z(n301) );
  GTECH_OA22 U313 ( .A(n306), .B(n302), .C(n304), .D(n305), .Z(n298) );
  GTECH_AND2 U314 ( .A(N155), .B(n307), .Z(N135) );
  GTECH_NOT U315 ( .A(n262), .Z(n307) );
  GTECH_MUX2 U316 ( .A(n12), .B(n308), .S(n296), .Z(n262) );
  GTECH_OA21 U317 ( .A(n309), .B(n12), .C(n306), .Z(n308) );
  GTECH_AND2 U318 ( .A(N155), .B(n310), .Z(N134) );
  GTECH_NOT U319 ( .A(n13), .Z(n310) );
  GTECH_AND2 U320 ( .A(N155), .B(n311), .Z(N133) );
  GTECH_NOT U321 ( .A(n14), .Z(n311) );
  GTECH_AND2 U322 ( .A(N155), .B(n312), .Z(N132) );
  GTECH_NOT U323 ( .A(n15), .Z(n312) );
  GTECH_AND2 U324 ( .A(N155), .B(n313), .Z(N131) );
  GTECH_NOT U325 ( .A(n16), .Z(n313) );
  GTECH_AND2 U326 ( .A(N155), .B(n314), .Z(N130) );
  GTECH_NOT U327 ( .A(n17), .Z(n314) );
  GTECH_AND2 U328 ( .A(N155), .B(n315), .Z(N129) );
  GTECH_NOT U329 ( .A(n18), .Z(n315) );
  GTECH_AND2 U330 ( .A(N155), .B(n316), .Z(N128) );
  GTECH_NOT U331 ( .A(n19), .Z(n316) );
  GTECH_AND2 U332 ( .A(N155), .B(n317), .Z(N127) );
  GTECH_NOT U333 ( .A(n20), .Z(n317) );
  GTECH_AND2 U334 ( .A(N155), .B(n318), .Z(N126) );
  GTECH_NOT U335 ( .A(n21), .Z(n318) );
  GTECH_AND2 U336 ( .A(N155), .B(n319), .Z(N125) );
  GTECH_NOT U337 ( .A(n22), .Z(n319) );
  GTECH_AND2 U338 ( .A(N155), .B(n320), .Z(N124) );
  GTECH_NOT U339 ( .A(n23), .Z(n320) );
  GTECH_AND2 U340 ( .A(N155), .B(n321), .Z(N123) );
  GTECH_NOT U341 ( .A(n24), .Z(n321) );
  GTECH_AND2 U342 ( .A(N155), .B(n322), .Z(N122) );
  GTECH_NOT U343 ( .A(n25), .Z(n322) );
  GTECH_AND2 U344 ( .A(N155), .B(n323), .Z(N121) );
  GTECH_NOT U345 ( .A(n26), .Z(n323) );
  GTECH_AND2 U346 ( .A(N155), .B(n324), .Z(N120) );
  GTECH_NOT U347 ( .A(n27), .Z(n324) );
  GTECH_NOT U348 ( .A(n278), .Z(N155) );
  GTECH_NAND4 U349 ( .A(n8), .B(n7), .C(n9), .D(n325), .Z(n278) );
  GTECH_AND3 U350 ( .A(n277), .B(n281), .C(n6), .Z(n325) );
  GTECH_NOT U351 ( .A(n242), .Z(n281) );
  GTECH_AND2 U352 ( .A(n260), .B(n276), .Z(N116) );
  GTECH_MUX2 U353 ( .A(n326), .B(n327), .S(n30), .Z(n276) );
  GTECH_MUX2 U354 ( .A(n328), .B(n329), .S(n259), .Z(n327) );
  GTECH_NAND2 U355 ( .A(n330), .B(n296), .Z(n326) );
  GTECH_MUX2 U356 ( .A(n331), .B(n332), .S(n259), .Z(n330) );
  GTECH_NOT U357 ( .A(n328), .Z(n332) );
  GTECH_OAI22 U358 ( .A(n304), .B(n333), .C(n334), .D(n302), .Z(n328) );
  GTECH_NOT U359 ( .A(n335), .Z(n334) );
  GTECH_NOT U360 ( .A(n336), .Z(n333) );
  GTECH_NOT U361 ( .A(n329), .Z(n331) );
  GTECH_OAI22 U362 ( .A(n336), .B(n304), .C(n302), .D(n335), .Z(n329) );
  GTECH_OAI2N2 U363 ( .A(n31), .B(n337), .C(n338), .D(n339), .Z(n335) );
  GTECH_OR_NOT U364 ( .A(n258), .B(n31), .Z(n339) );
  GTECH_NOT U365 ( .A(n258), .Z(n337) );
  GTECH_ADD_ABC U366 ( .A(n31), .B(n258), .C(n340), .COUT(n336) );
  GTECH_NAND2 U367 ( .A(n263), .B(n341), .Z(N115) );
  GTECH_NOT U368 ( .A(N41), .Z(n341) );
  GTECH_NAND2 U369 ( .A(n277), .B(n266), .Z(N41) );
  GTECH_NAND2 U370 ( .A(Ld), .B(n277), .Z(n266) );
  GTECH_AND2 U371 ( .A(n260), .B(n279), .Z(N113) );
  GTECH_OAI21 U372 ( .A(n31), .B(n296), .C(n342), .Z(n279) );
  GTECH_MUX2 U373 ( .A(n343), .B(n344), .S(n345), .Z(n342) );
  GTECH_XOR2 U374 ( .A(n31), .B(n258), .Z(n345) );
  GTECH_OA22 U375 ( .A(n346), .B(n302), .C(n304), .D(n347), .Z(n344) );
  GTECH_NOT U376 ( .A(n340), .Z(n347) );
  GTECH_NOT U377 ( .A(n338), .Z(n346) );
  GTECH_OA22 U378 ( .A(n302), .B(n338), .C(n340), .D(n304), .Z(n343) );
  GTECH_ADD_ABC U379 ( .A(n32), .B(n257), .C(n348), .COUT(n340) );
  GTECH_OAI2N2 U380 ( .A(n32), .B(n349), .C(n350), .D(n351), .Z(n338) );
  GTECH_OR_NOT U381 ( .A(n257), .B(n32), .Z(n351) );
  GTECH_NOT U382 ( .A(n257), .Z(n349) );
  GTECH_AND2 U383 ( .A(n260), .B(n282), .Z(N112) );
  GTECH_OAI21 U384 ( .A(n32), .B(n296), .C(n352), .Z(n282) );
  GTECH_MUX2 U385 ( .A(n353), .B(n354), .S(n355), .Z(n352) );
  GTECH_XOR2 U386 ( .A(n32), .B(n257), .Z(n355) );
  GTECH_OA22 U387 ( .A(n356), .B(n302), .C(n304), .D(n357), .Z(n354) );
  GTECH_NOT U388 ( .A(n348), .Z(n357) );
  GTECH_NOT U389 ( .A(n350), .Z(n356) );
  GTECH_OA22 U390 ( .A(n302), .B(n350), .C(n348), .D(n304), .Z(n353) );
  GTECH_ADD_ABC U391 ( .A(n33), .B(n256), .C(n358), .COUT(n348) );
  GTECH_OAI2N2 U392 ( .A(n33), .B(n359), .C(n360), .D(n361), .Z(n350) );
  GTECH_OR_NOT U393 ( .A(n256), .B(n33), .Z(n361) );
  GTECH_NOT U394 ( .A(n256), .Z(n359) );
  GTECH_AND2 U395 ( .A(n260), .B(n283), .Z(N111) );
  GTECH_OAI21 U396 ( .A(n33), .B(n296), .C(n362), .Z(n283) );
  GTECH_MUX2 U397 ( .A(n363), .B(n364), .S(n365), .Z(n362) );
  GTECH_XOR2 U398 ( .A(n33), .B(n256), .Z(n365) );
  GTECH_OA22 U399 ( .A(n366), .B(n302), .C(n304), .D(n367), .Z(n364) );
  GTECH_NOT U400 ( .A(n358), .Z(n367) );
  GTECH_NOT U401 ( .A(n360), .Z(n366) );
  GTECH_OA22 U402 ( .A(n302), .B(n360), .C(n358), .D(n304), .Z(n363) );
  GTECH_ADD_ABC U403 ( .A(n34), .B(n255), .C(n368), .COUT(n358) );
  GTECH_OAI2N2 U404 ( .A(n34), .B(n369), .C(n370), .D(n371), .Z(n360) );
  GTECH_OR_NOT U405 ( .A(n255), .B(n34), .Z(n371) );
  GTECH_NOT U406 ( .A(n255), .Z(n369) );
  GTECH_AND2 U407 ( .A(n260), .B(n284), .Z(N110) );
  GTECH_OAI21 U408 ( .A(n34), .B(n296), .C(n372), .Z(n284) );
  GTECH_MUX2 U409 ( .A(n373), .B(n374), .S(n375), .Z(n372) );
  GTECH_XOR2 U410 ( .A(n34), .B(n255), .Z(n375) );
  GTECH_OA22 U411 ( .A(n376), .B(n302), .C(n304), .D(n377), .Z(n374) );
  GTECH_NOT U412 ( .A(n368), .Z(n377) );
  GTECH_NOT U413 ( .A(n370), .Z(n376) );
  GTECH_OA22 U414 ( .A(n302), .B(n370), .C(n368), .D(n304), .Z(n373) );
  GTECH_ADD_ABC U415 ( .A(n35), .B(n254), .C(n378), .COUT(n368) );
  GTECH_OAI2N2 U416 ( .A(n35), .B(n379), .C(n380), .D(n381), .Z(n370) );
  GTECH_OR_NOT U417 ( .A(n254), .B(n35), .Z(n381) );
  GTECH_NOT U418 ( .A(n254), .Z(n379) );
  GTECH_AND2 U419 ( .A(n260), .B(n285), .Z(N109) );
  GTECH_OAI21 U420 ( .A(n35), .B(n296), .C(n382), .Z(n285) );
  GTECH_MUX2 U421 ( .A(n383), .B(n384), .S(n385), .Z(n382) );
  GTECH_XOR2 U422 ( .A(n35), .B(n254), .Z(n385) );
  GTECH_OA22 U423 ( .A(n386), .B(n302), .C(n304), .D(n387), .Z(n384) );
  GTECH_NOT U424 ( .A(n378), .Z(n387) );
  GTECH_NOT U425 ( .A(n380), .Z(n386) );
  GTECH_OA22 U426 ( .A(n302), .B(n380), .C(n378), .D(n304), .Z(n383) );
  GTECH_ADD_ABC U427 ( .A(n36), .B(n253), .C(n388), .COUT(n378) );
  GTECH_OAI2N2 U428 ( .A(n36), .B(n389), .C(n390), .D(n391), .Z(n380) );
  GTECH_OR_NOT U429 ( .A(n253), .B(n36), .Z(n391) );
  GTECH_NOT U430 ( .A(n253), .Z(n389) );
  GTECH_AND2 U431 ( .A(n260), .B(n286), .Z(N108) );
  GTECH_OAI21 U432 ( .A(n36), .B(n296), .C(n392), .Z(n286) );
  GTECH_MUX2 U433 ( .A(n393), .B(n394), .S(n395), .Z(n392) );
  GTECH_XOR2 U434 ( .A(n36), .B(n253), .Z(n395) );
  GTECH_OA22 U435 ( .A(n396), .B(n302), .C(n304), .D(n397), .Z(n394) );
  GTECH_NOT U436 ( .A(n388), .Z(n397) );
  GTECH_NOT U437 ( .A(n390), .Z(n396) );
  GTECH_OA22 U438 ( .A(n302), .B(n390), .C(n388), .D(n304), .Z(n393) );
  GTECH_ADD_ABC U439 ( .A(n37), .B(n252), .C(n398), .COUT(n388) );
  GTECH_OAI2N2 U440 ( .A(n37), .B(n399), .C(n400), .D(n401), .Z(n390) );
  GTECH_OR_NOT U441 ( .A(n252), .B(n37), .Z(n401) );
  GTECH_NOT U442 ( .A(n252), .Z(n399) );
  GTECH_AND2 U443 ( .A(n260), .B(n287), .Z(N107) );
  GTECH_OAI21 U444 ( .A(n37), .B(n296), .C(n402), .Z(n287) );
  GTECH_MUX2 U445 ( .A(n403), .B(n404), .S(n405), .Z(n402) );
  GTECH_XOR2 U446 ( .A(n37), .B(n252), .Z(n405) );
  GTECH_OA22 U447 ( .A(n406), .B(n302), .C(n304), .D(n407), .Z(n404) );
  GTECH_NOT U448 ( .A(n398), .Z(n407) );
  GTECH_NOT U449 ( .A(n400), .Z(n406) );
  GTECH_OA22 U450 ( .A(n302), .B(n400), .C(n398), .D(n304), .Z(n403) );
  GTECH_ADD_ABC U451 ( .A(n38), .B(n251), .C(n408), .COUT(n398) );
  GTECH_OAI2N2 U452 ( .A(n38), .B(n409), .C(n410), .D(n411), .Z(n400) );
  GTECH_OR_NOT U453 ( .A(n251), .B(n38), .Z(n411) );
  GTECH_NOT U454 ( .A(n251), .Z(n409) );
  GTECH_AND2 U455 ( .A(n260), .B(n288), .Z(N106) );
  GTECH_OAI21 U456 ( .A(n38), .B(n296), .C(n412), .Z(n288) );
  GTECH_MUX2 U457 ( .A(n413), .B(n414), .S(n415), .Z(n412) );
  GTECH_XOR2 U458 ( .A(n38), .B(n251), .Z(n415) );
  GTECH_OA22 U459 ( .A(n416), .B(n302), .C(n304), .D(n417), .Z(n414) );
  GTECH_NOT U460 ( .A(n408), .Z(n417) );
  GTECH_NOT U461 ( .A(n410), .Z(n416) );
  GTECH_OA22 U462 ( .A(n302), .B(n410), .C(n408), .D(n304), .Z(n413) );
  GTECH_ADD_ABC U463 ( .A(n39), .B(n250), .C(n418), .COUT(n408) );
  GTECH_OAI2N2 U464 ( .A(n39), .B(n419), .C(n420), .D(n421), .Z(n410) );
  GTECH_OR_NOT U465 ( .A(n250), .B(n39), .Z(n421) );
  GTECH_NOT U466 ( .A(n250), .Z(n419) );
  GTECH_AND2 U467 ( .A(n260), .B(n289), .Z(N105) );
  GTECH_OAI21 U468 ( .A(n39), .B(n296), .C(n422), .Z(n289) );
  GTECH_MUX2 U469 ( .A(n423), .B(n424), .S(n425), .Z(n422) );
  GTECH_XOR2 U470 ( .A(n39), .B(n250), .Z(n425) );
  GTECH_OA22 U471 ( .A(n426), .B(n302), .C(n304), .D(n427), .Z(n424) );
  GTECH_NOT U472 ( .A(n418), .Z(n427) );
  GTECH_NOT U473 ( .A(n420), .Z(n426) );
  GTECH_OA22 U474 ( .A(n302), .B(n420), .C(n418), .D(n304), .Z(n423) );
  GTECH_ADD_ABC U475 ( .A(n40), .B(n249), .C(n428), .COUT(n418) );
  GTECH_OAI2N2 U476 ( .A(n40), .B(n429), .C(n430), .D(n431), .Z(n420) );
  GTECH_OR_NOT U477 ( .A(n249), .B(n40), .Z(n431) );
  GTECH_NOT U478 ( .A(n249), .Z(n429) );
  GTECH_AND2 U479 ( .A(n260), .B(n290), .Z(N104) );
  GTECH_OAI21 U480 ( .A(n40), .B(n296), .C(n432), .Z(n290) );
  GTECH_MUX2 U481 ( .A(n433), .B(n434), .S(n435), .Z(n432) );
  GTECH_XOR2 U482 ( .A(n40), .B(n249), .Z(n435) );
  GTECH_OA22 U483 ( .A(n436), .B(n302), .C(n304), .D(n437), .Z(n434) );
  GTECH_NOT U484 ( .A(n428), .Z(n437) );
  GTECH_NOT U485 ( .A(n430), .Z(n436) );
  GTECH_OA22 U486 ( .A(n302), .B(n430), .C(n428), .D(n304), .Z(n433) );
  GTECH_ADD_ABC U487 ( .A(n41), .B(n248), .C(n438), .COUT(n428) );
  GTECH_OAI2N2 U488 ( .A(n41), .B(n439), .C(n440), .D(n441), .Z(n430) );
  GTECH_OR_NOT U489 ( .A(n248), .B(n41), .Z(n441) );
  GTECH_NOT U490 ( .A(n248), .Z(n439) );
  GTECH_AND2 U491 ( .A(n260), .B(n291), .Z(N103) );
  GTECH_OAI21 U492 ( .A(n41), .B(n296), .C(n442), .Z(n291) );
  GTECH_MUX2 U493 ( .A(n443), .B(n444), .S(n445), .Z(n442) );
  GTECH_XOR2 U494 ( .A(n41), .B(n248), .Z(n445) );
  GTECH_OA22 U495 ( .A(n446), .B(n302), .C(n304), .D(n447), .Z(n444) );
  GTECH_NOT U496 ( .A(n438), .Z(n447) );
  GTECH_NOT U497 ( .A(n440), .Z(n446) );
  GTECH_OA22 U498 ( .A(n302), .B(n440), .C(n438), .D(n304), .Z(n443) );
  GTECH_ADD_ABC U499 ( .A(n42), .B(n247), .C(n448), .COUT(n438) );
  GTECH_OAI2N2 U500 ( .A(n42), .B(n449), .C(n450), .D(n451), .Z(n440) );
  GTECH_OR_NOT U501 ( .A(n247), .B(n42), .Z(n451) );
  GTECH_NOT U502 ( .A(n247), .Z(n449) );
  GTECH_AND2 U503 ( .A(n260), .B(n293), .Z(N102) );
  GTECH_OAI21 U504 ( .A(n42), .B(n296), .C(n452), .Z(n293) );
  GTECH_MUX2 U505 ( .A(n453), .B(n454), .S(n455), .Z(n452) );
  GTECH_XOR2 U506 ( .A(n42), .B(n247), .Z(n455) );
  GTECH_OA22 U507 ( .A(n456), .B(n302), .C(n304), .D(n457), .Z(n454) );
  GTECH_NOT U508 ( .A(n448), .Z(n457) );
  GTECH_NOT U509 ( .A(n450), .Z(n456) );
  GTECH_OA22 U510 ( .A(n302), .B(n450), .C(n448), .D(n304), .Z(n453) );
  GTECH_ADD_ABC U511 ( .A(n43), .B(n246), .C(n458), .COUT(n448) );
  GTECH_OAI2N2 U512 ( .A(n43), .B(n459), .C(n460), .D(n461), .Z(n450) );
  GTECH_OR_NOT U513 ( .A(n246), .B(n43), .Z(n461) );
  GTECH_NOT U514 ( .A(n246), .Z(n459) );
  GTECH_AND2 U515 ( .A(n260), .B(n294), .Z(N101) );
  GTECH_OAI21 U516 ( .A(n43), .B(n296), .C(n462), .Z(n294) );
  GTECH_MUX2 U517 ( .A(n463), .B(n464), .S(n465), .Z(n462) );
  GTECH_XOR2 U518 ( .A(n43), .B(n246), .Z(n465) );
  GTECH_OA22 U519 ( .A(n466), .B(n302), .C(n304), .D(n467), .Z(n464) );
  GTECH_NOT U520 ( .A(n458), .Z(n467) );
  GTECH_NOT U521 ( .A(n460), .Z(n466) );
  GTECH_OA22 U522 ( .A(n302), .B(n460), .C(n458), .D(n304), .Z(n463) );
  GTECH_ADD_ABC U523 ( .A(n29), .B(n245), .C(n468), .COUT(n458) );
  GTECH_OAI2N2 U524 ( .A(n29), .B(n469), .C(n470), .D(n471), .Z(n460) );
  GTECH_OR_NOT U525 ( .A(n245), .B(n29), .Z(n471) );
  GTECH_NOT U526 ( .A(n245), .Z(n469) );
  GTECH_AND2 U527 ( .A(n260), .B(n295), .Z(N100) );
  GTECH_OAI21 U528 ( .A(n29), .B(n296), .C(n472), .Z(n295) );
  GTECH_MUX2 U529 ( .A(n473), .B(n474), .S(n475), .Z(n472) );
  GTECH_XOR2 U530 ( .A(n29), .B(n245), .Z(n475) );
  GTECH_OA22 U531 ( .A(n476), .B(n302), .C(n304), .D(n477), .Z(n474) );
  GTECH_NOT U532 ( .A(n468), .Z(n477) );
  GTECH_NOT U533 ( .A(n470), .Z(n476) );
  GTECH_OA22 U534 ( .A(n302), .B(n470), .C(n468), .D(n304), .Z(n473) );
  GTECH_ADD_ABC U535 ( .A(n244), .B(n11), .C(n305), .COUT(n468) );
  GTECH_NAND2 U536 ( .A(n478), .B(n309), .Z(n305) );
  GTECH_NOT U537 ( .A(n12), .Z(n478) );
  GTECH_OAI2N2 U538 ( .A(n11), .B(n479), .C(n306), .D(n480), .Z(n470) );
  GTECH_OR_NOT U539 ( .A(n244), .B(n11), .Z(n480) );
  GTECH_NAND2 U540 ( .A(n12), .B(n309), .Z(n306) );
  GTECH_NOT U541 ( .A(n243), .Z(n309) );
  GTECH_NOT U542 ( .A(n244), .Z(n479) );
  GTECH_NAND2 U543 ( .A(n304), .B(n302), .Z(n296) );
  GTECH_NAND2 U544 ( .A(n10), .B(n265), .Z(n302) );
  GTECH_NOT U545 ( .A(n28), .Z(n265) );
  GTECH_NAND2 U546 ( .A(n28), .B(n481), .Z(n304) );
  GTECH_NOT U547 ( .A(n10), .Z(n481) );
  GTECH_NOT U548 ( .A(n263), .Z(n260) );
  GTECH_OAI21 U549 ( .A(n268), .B(n269), .C(n270), .Z(n263) );
  GTECH_NOT U550 ( .A(n482), .Z(n270) );
  GTECH_NAND2 U551 ( .A(n277), .B(n483), .Z(n482) );
  GTECH_NOT U552 ( .A(Ld), .Z(n483) );
  GTECH_NOT U553 ( .A(Rst), .Z(n277) );
  GTECH_NOT U554 ( .A(n9), .Z(n269) );
  GTECH_NAND2 U555 ( .A(n8), .B(n272), .Z(n268) );
  GTECH_NOT U556 ( .A(n275), .Z(n272) );
  GTECH_NAND2 U557 ( .A(n7), .B(n274), .Z(n275) );
  GTECH_NOT U558 ( .A(n484), .Z(n274) );
  GTECH_NAND2 U559 ( .A(n6), .B(n242), .Z(n484) );
endmodule

