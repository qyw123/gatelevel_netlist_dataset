
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
         n43, n107, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n107), .K(n107), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n244) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n107), .K(n107), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n107), .K(n107), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n107), .K(n107), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n107), .K(n107), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n107), .K(n107), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]), .QN(n261) );
  GTECH_FJK1S A_reg_15_ ( .J(n107), .K(n107), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n260) );
  GTECH_FJK1S A_reg_14_ ( .J(n107), .K(n107), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n259) );
  GTECH_FJK1S A_reg_13_ ( .J(n107), .K(n107), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n258) );
  GTECH_FJK1S A_reg_12_ ( .J(n107), .K(n107), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n257) );
  GTECH_FJK1S A_reg_11_ ( .J(n107), .K(n107), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n256) );
  GTECH_FJK1S A_reg_10_ ( .J(n107), .K(n107), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n255) );
  GTECH_FJK1S A_reg_9_ ( .J(n107), .K(n107), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n254) );
  GTECH_FJK1S A_reg_8_ ( .J(n107), .K(n107), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n253) );
  GTECH_FJK1S A_reg_7_ ( .J(n107), .K(n107), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n252) );
  GTECH_FJK1S A_reg_6_ ( .J(n107), .K(n107), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n251) );
  GTECH_FJK1S A_reg_5_ ( .J(n107), .K(n107), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n250) );
  GTECH_FJK1S A_reg_4_ ( .J(n107), .K(n107), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n249) );
  GTECH_FJK1S A_reg_3_ ( .J(n107), .K(n107), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n248) );
  GTECH_FJK1S A_reg_2_ ( .J(n107), .K(n107), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n247) );
  GTECH_FJK1S A_reg_1_ ( .J(n107), .K(n107), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n246) );
  GTECH_FJK1S A_reg_0_ ( .J(n107), .K(n107), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n245) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n107), .K(n107), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n107), .K(n107), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n107), .K(n107), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n107), .K(n107), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n107), .K(n107), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n107), .K(n107), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n107), .K(n107), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n107), .K(n107), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n107), .K(n107), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n107), .K(n107), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n107), .K(n107), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n107), .K(n107), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n107), .K(n107), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n107), .K(n107), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n107), .K(n107), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n107), .K(n107), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n107), .K(n107), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n107), .K(n107), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n107), .K(n107), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n107), .K(n107), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n107), .K(n107), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n107), .K(n107), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n107), .K(n107), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n107), .K(n107), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n107), .K(n107), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n107), .K(n107), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n107), .K(n107), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n107), .K(n107), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n107), .K(n107), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n107), .K(n107), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n107), .K(n107), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n107), .K(n107), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n107), .K(n107), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n107), .K(n107), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n107), .K(n107), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n107), .K(n107), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n107), .K(n107), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n107), .K(n107), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n107), .K(n107), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n107), .K(n107), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n107), .K(n107), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n107), .K(n107), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n107), .K(n107), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n107), .K(n107), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n107), .K(n107), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n107), .K(n107), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n107), .K(n107), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n107), .K(n107), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n107), .K(n107), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n107), .K(n107), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n107), .K(n107), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n107), .K(n107), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n107), .K(n107), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n107), .K(n107), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n107), .K(n107), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n107), .K(n107), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n107), .K(n107), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n107), .K(n107), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n107), .K(n107), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n107), .K(n107), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n107), .K(n107), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n107), .K(n107), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n107), .K(n107), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n107), .K(n107), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n107), .K(n107), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n107), .K(n107), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U246 ( .Z(n107) );
  GTECH_AND2 U247 ( .A(n262), .B(n263), .Z(N99) );
  GTECH_OAI2N2 U248 ( .A(n264), .B(n265), .C(R[15]), .D(n266), .Z(N98) );
  GTECH_OAI2N2 U249 ( .A(n13), .B(n265), .C(R[14]), .D(n266), .Z(N97) );
  GTECH_OAI2N2 U250 ( .A(n14), .B(n265), .C(R[13]), .D(n266), .Z(N96) );
  GTECH_OAI2N2 U251 ( .A(n15), .B(n265), .C(R[12]), .D(n266), .Z(N95) );
  GTECH_OAI2N2 U252 ( .A(n16), .B(n265), .C(R[11]), .D(n266), .Z(N94) );
  GTECH_OAI2N2 U253 ( .A(n17), .B(n265), .C(R[10]), .D(n266), .Z(N93) );
  GTECH_OAI2N2 U254 ( .A(n18), .B(n265), .C(R[9]), .D(n266), .Z(N92) );
  GTECH_OAI2N2 U255 ( .A(n19), .B(n265), .C(R[8]), .D(n266), .Z(N91) );
  GTECH_OAI2N2 U256 ( .A(n20), .B(n265), .C(R[7]), .D(n266), .Z(N90) );
  GTECH_OAI2N2 U257 ( .A(n21), .B(n265), .C(R[6]), .D(n266), .Z(N89) );
  GTECH_OAI2N2 U258 ( .A(n22), .B(n265), .C(R[5]), .D(n266), .Z(N88) );
  GTECH_OAI2N2 U259 ( .A(n23), .B(n265), .C(R[4]), .D(n266), .Z(N87) );
  GTECH_OAI2N2 U260 ( .A(n24), .B(n265), .C(R[3]), .D(n266), .Z(N86) );
  GTECH_OAI2N2 U261 ( .A(n25), .B(n265), .C(R[2]), .D(n266), .Z(N85) );
  GTECH_OAI2N2 U262 ( .A(n26), .B(n265), .C(R[1]), .D(n266), .Z(N84) );
  GTECH_OAI2N2 U263 ( .A(n27), .B(n265), .C(R[0]), .D(n266), .Z(N83) );
  GTECH_AND2 U264 ( .A(n262), .B(n267), .Z(N82) );
  GTECH_AND2 U265 ( .A(M[15]), .B(n266), .Z(N42) );
  GTECH_AND2 U266 ( .A(M[14]), .B(n266), .Z(N39) );
  GTECH_AND2 U267 ( .A(M[13]), .B(n266), .Z(N38) );
  GTECH_AND2 U268 ( .A(M[12]), .B(n266), .Z(N37) );
  GTECH_AND2 U269 ( .A(M[11]), .B(n266), .Z(N36) );
  GTECH_AND2 U270 ( .A(M[10]), .B(n266), .Z(N35) );
  GTECH_AND2 U271 ( .A(M[9]), .B(n266), .Z(N34) );
  GTECH_AND2 U272 ( .A(M[8]), .B(n266), .Z(N33) );
  GTECH_AND2 U273 ( .A(M[7]), .B(n266), .Z(N32) );
  GTECH_AND2 U274 ( .A(M[6]), .B(n266), .Z(N31) );
  GTECH_AND2 U275 ( .A(M[5]), .B(n266), .Z(N30) );
  GTECH_AND2 U276 ( .A(M[4]), .B(n266), .Z(N29) );
  GTECH_AND2 U277 ( .A(M[3]), .B(n266), .Z(N28) );
  GTECH_AND2 U278 ( .A(M[2]), .B(n266), .Z(N27) );
  GTECH_AND2 U279 ( .A(M[1]), .B(n266), .Z(N26) );
  GTECH_AND2 U280 ( .A(M[0]), .B(n266), .Z(N25) );
  GTECH_NOT U281 ( .A(n268), .Z(n266) );
  GTECH_NAND2 U282 ( .A(n268), .B(n269), .Z(N19) );
  GTECH_NAND3 U283 ( .A(n270), .B(n271), .C(n262), .Z(n269) );
  GTECH_NAND3 U284 ( .A(n272), .B(n273), .C(n265), .Z(N18) );
  GTECH_AND2 U285 ( .A(n262), .B(n274), .Z(N17) );
  GTECH_OAI21 U286 ( .A(n8), .B(n275), .C(n270), .Z(n274) );
  GTECH_AND2 U287 ( .A(n262), .B(n276), .Z(N16) );
  GTECH_OAI21 U288 ( .A(n7), .B(n277), .C(n278), .Z(n276) );
  GTECH_AND2 U289 ( .A(N155), .B(n279), .Z(N152) );
  GTECH_NAND2 U290 ( .A(n273), .B(n280), .Z(N151) );
  GTECH_AND2 U291 ( .A(N155), .B(n281), .Z(N150) );
  GTECH_MUX2 U292 ( .A(n282), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U293 ( .A(n262), .B(n283), .Z(n282) );
  GTECH_AND2 U294 ( .A(N155), .B(n284), .Z(N149) );
  GTECH_AND2 U295 ( .A(N155), .B(n285), .Z(N148) );
  GTECH_AND2 U296 ( .A(N155), .B(n286), .Z(N147) );
  GTECH_AND2 U297 ( .A(N155), .B(n287), .Z(N146) );
  GTECH_AND2 U298 ( .A(N155), .B(n288), .Z(N145) );
  GTECH_AND2 U299 ( .A(N155), .B(n289), .Z(N144) );
  GTECH_AND2 U300 ( .A(N155), .B(n290), .Z(N143) );
  GTECH_AND2 U301 ( .A(N155), .B(n291), .Z(N142) );
  GTECH_AND2 U302 ( .A(N155), .B(n292), .Z(N141) );
  GTECH_AND2 U303 ( .A(N155), .B(n293), .Z(N140) );
  GTECH_NOT U304 ( .A(n294), .Z(N14) );
  GTECH_NAND2 U305 ( .A(n262), .B(n244), .Z(n294) );
  GTECH_AND2 U306 ( .A(N155), .B(n295), .Z(N139) );
  GTECH_AND2 U307 ( .A(N155), .B(n296), .Z(N138) );
  GTECH_AND2 U308 ( .A(N155), .B(n297), .Z(N137) );
  GTECH_AND2 U309 ( .A(N155), .B(n263), .Z(N136) );
  GTECH_OAI21 U310 ( .A(n11), .B(n298), .C(n299), .Z(n263) );
  GTECH_MUX2 U311 ( .A(n300), .B(n301), .S(n302), .Z(n299) );
  GTECH_XOR2 U312 ( .A(n246), .B(n11), .Z(n302) );
  GTECH_OA22 U313 ( .A(n303), .B(n304), .C(n305), .D(n306), .Z(n301) );
  GTECH_NOT U314 ( .A(n307), .Z(n305) );
  GTECH_NOT U315 ( .A(n308), .Z(n303) );
  GTECH_OA22 U316 ( .A(n308), .B(n304), .C(n306), .D(n307), .Z(n300) );
  GTECH_AND2 U317 ( .A(N155), .B(n309), .Z(N135) );
  GTECH_NOT U318 ( .A(n264), .Z(n309) );
  GTECH_MUX2 U319 ( .A(n12), .B(n310), .S(n298), .Z(n264) );
  GTECH_OA21 U320 ( .A(n311), .B(n12), .C(n308), .Z(n310) );
  GTECH_AND2 U321 ( .A(N155), .B(n312), .Z(N134) );
  GTECH_NOT U322 ( .A(n13), .Z(n312) );
  GTECH_AND2 U323 ( .A(N155), .B(n313), .Z(N133) );
  GTECH_NOT U324 ( .A(n14), .Z(n313) );
  GTECH_AND2 U325 ( .A(N155), .B(n314), .Z(N132) );
  GTECH_NOT U326 ( .A(n15), .Z(n314) );
  GTECH_AND2 U327 ( .A(N155), .B(n315), .Z(N131) );
  GTECH_NOT U328 ( .A(n16), .Z(n315) );
  GTECH_AND2 U329 ( .A(N155), .B(n316), .Z(N130) );
  GTECH_NOT U330 ( .A(n17), .Z(n316) );
  GTECH_AND2 U331 ( .A(N155), .B(n317), .Z(N129) );
  GTECH_NOT U332 ( .A(n18), .Z(n317) );
  GTECH_AND2 U333 ( .A(N155), .B(n318), .Z(N128) );
  GTECH_NOT U334 ( .A(n19), .Z(n318) );
  GTECH_AND2 U335 ( .A(N155), .B(n319), .Z(N127) );
  GTECH_NOT U336 ( .A(n20), .Z(n319) );
  GTECH_AND2 U337 ( .A(N155), .B(n320), .Z(N126) );
  GTECH_NOT U338 ( .A(n21), .Z(n320) );
  GTECH_AND2 U339 ( .A(N155), .B(n321), .Z(N125) );
  GTECH_NOT U340 ( .A(n22), .Z(n321) );
  GTECH_AND2 U341 ( .A(N155), .B(n322), .Z(N124) );
  GTECH_NOT U342 ( .A(n23), .Z(n322) );
  GTECH_AND2 U343 ( .A(N155), .B(n323), .Z(N123) );
  GTECH_NOT U344 ( .A(n24), .Z(n323) );
  GTECH_AND2 U345 ( .A(N155), .B(n324), .Z(N122) );
  GTECH_NOT U346 ( .A(n25), .Z(n324) );
  GTECH_AND2 U347 ( .A(N155), .B(n325), .Z(N121) );
  GTECH_NOT U348 ( .A(n26), .Z(n325) );
  GTECH_AND2 U349 ( .A(N155), .B(n326), .Z(N120) );
  GTECH_NOT U350 ( .A(n27), .Z(n326) );
  GTECH_NOT U351 ( .A(n280), .Z(N155) );
  GTECH_NAND3 U352 ( .A(n7), .B(n8), .C(n327), .Z(n280) );
  GTECH_AND4 U353 ( .A(n283), .B(n6), .C(n273), .D(n9), .Z(n327) );
  GTECH_NOT U354 ( .A(n244), .Z(n283) );
  GTECH_AND2 U355 ( .A(n262), .B(n279), .Z(N116) );
  GTECH_MUX2 U356 ( .A(n328), .B(n329), .S(n30), .Z(n279) );
  GTECH_MUX2 U357 ( .A(n330), .B(n331), .S(n261), .Z(n329) );
  GTECH_NAND2 U358 ( .A(n332), .B(n298), .Z(n328) );
  GTECH_MUX2 U359 ( .A(n333), .B(n334), .S(n261), .Z(n332) );
  GTECH_NOT U360 ( .A(n330), .Z(n334) );
  GTECH_OAI22 U361 ( .A(n306), .B(n335), .C(n336), .D(n304), .Z(n330) );
  GTECH_NOT U362 ( .A(n337), .Z(n336) );
  GTECH_NOT U363 ( .A(n338), .Z(n335) );
  GTECH_NOT U364 ( .A(n331), .Z(n333) );
  GTECH_OAI22 U365 ( .A(n338), .B(n306), .C(n304), .D(n337), .Z(n331) );
  GTECH_OAI2N2 U366 ( .A(n31), .B(n339), .C(n340), .D(n341), .Z(n337) );
  GTECH_OR_NOT U367 ( .A(n260), .B(n31), .Z(n341) );
  GTECH_NOT U368 ( .A(n260), .Z(n339) );
  GTECH_ADD_ABC U369 ( .A(n31), .B(n260), .C(n342), .COUT(n338) );
  GTECH_NAND2 U370 ( .A(n265), .B(n343), .Z(N115) );
  GTECH_NOT U371 ( .A(N41), .Z(n343) );
  GTECH_NAND2 U372 ( .A(n273), .B(n268), .Z(N41) );
  GTECH_NAND2 U373 ( .A(Ld), .B(n273), .Z(n268) );
  GTECH_AND2 U374 ( .A(n262), .B(n281), .Z(N113) );
  GTECH_OAI21 U375 ( .A(n31), .B(n298), .C(n344), .Z(n281) );
  GTECH_MUX2 U376 ( .A(n345), .B(n346), .S(n347), .Z(n344) );
  GTECH_XOR2 U377 ( .A(n31), .B(n260), .Z(n347) );
  GTECH_OA22 U378 ( .A(n348), .B(n304), .C(n306), .D(n349), .Z(n346) );
  GTECH_NOT U379 ( .A(n342), .Z(n349) );
  GTECH_NOT U380 ( .A(n340), .Z(n348) );
  GTECH_OA22 U381 ( .A(n304), .B(n340), .C(n342), .D(n306), .Z(n345) );
  GTECH_ADD_ABC U382 ( .A(n32), .B(n259), .C(n350), .COUT(n342) );
  GTECH_OAI2N2 U383 ( .A(n32), .B(n351), .C(n352), .D(n353), .Z(n340) );
  GTECH_OR_NOT U384 ( .A(n259), .B(n32), .Z(n353) );
  GTECH_NOT U385 ( .A(n259), .Z(n351) );
  GTECH_AND2 U386 ( .A(n262), .B(n284), .Z(N112) );
  GTECH_OAI21 U387 ( .A(n32), .B(n298), .C(n354), .Z(n284) );
  GTECH_MUX2 U388 ( .A(n355), .B(n356), .S(n357), .Z(n354) );
  GTECH_XOR2 U389 ( .A(n32), .B(n259), .Z(n357) );
  GTECH_OA22 U390 ( .A(n358), .B(n304), .C(n306), .D(n359), .Z(n356) );
  GTECH_NOT U391 ( .A(n350), .Z(n359) );
  GTECH_NOT U392 ( .A(n352), .Z(n358) );
  GTECH_OA22 U393 ( .A(n304), .B(n352), .C(n350), .D(n306), .Z(n355) );
  GTECH_ADD_ABC U394 ( .A(n33), .B(n258), .C(n360), .COUT(n350) );
  GTECH_OAI2N2 U395 ( .A(n33), .B(n361), .C(n362), .D(n363), .Z(n352) );
  GTECH_OR_NOT U396 ( .A(n258), .B(n33), .Z(n363) );
  GTECH_NOT U397 ( .A(n258), .Z(n361) );
  GTECH_AND2 U398 ( .A(n262), .B(n285), .Z(N111) );
  GTECH_OAI21 U399 ( .A(n33), .B(n298), .C(n364), .Z(n285) );
  GTECH_MUX2 U400 ( .A(n365), .B(n366), .S(n367), .Z(n364) );
  GTECH_XOR2 U401 ( .A(n33), .B(n258), .Z(n367) );
  GTECH_OA22 U402 ( .A(n368), .B(n304), .C(n306), .D(n369), .Z(n366) );
  GTECH_NOT U403 ( .A(n360), .Z(n369) );
  GTECH_NOT U404 ( .A(n362), .Z(n368) );
  GTECH_OA22 U405 ( .A(n304), .B(n362), .C(n360), .D(n306), .Z(n365) );
  GTECH_ADD_ABC U406 ( .A(n34), .B(n257), .C(n370), .COUT(n360) );
  GTECH_OAI2N2 U407 ( .A(n34), .B(n371), .C(n372), .D(n373), .Z(n362) );
  GTECH_OR_NOT U408 ( .A(n257), .B(n34), .Z(n373) );
  GTECH_NOT U409 ( .A(n257), .Z(n371) );
  GTECH_AND2 U410 ( .A(n262), .B(n286), .Z(N110) );
  GTECH_OAI21 U411 ( .A(n34), .B(n298), .C(n374), .Z(n286) );
  GTECH_MUX2 U412 ( .A(n375), .B(n376), .S(n377), .Z(n374) );
  GTECH_XOR2 U413 ( .A(n34), .B(n257), .Z(n377) );
  GTECH_OA22 U414 ( .A(n378), .B(n304), .C(n306), .D(n379), .Z(n376) );
  GTECH_NOT U415 ( .A(n370), .Z(n379) );
  GTECH_NOT U416 ( .A(n372), .Z(n378) );
  GTECH_OA22 U417 ( .A(n304), .B(n372), .C(n370), .D(n306), .Z(n375) );
  GTECH_ADD_ABC U418 ( .A(n35), .B(n256), .C(n380), .COUT(n370) );
  GTECH_OAI2N2 U419 ( .A(n35), .B(n381), .C(n382), .D(n383), .Z(n372) );
  GTECH_OR_NOT U420 ( .A(n256), .B(n35), .Z(n383) );
  GTECH_NOT U421 ( .A(n256), .Z(n381) );
  GTECH_AND2 U422 ( .A(n262), .B(n287), .Z(N109) );
  GTECH_OAI21 U423 ( .A(n35), .B(n298), .C(n384), .Z(n287) );
  GTECH_MUX2 U424 ( .A(n385), .B(n386), .S(n387), .Z(n384) );
  GTECH_XOR2 U425 ( .A(n35), .B(n256), .Z(n387) );
  GTECH_OA22 U426 ( .A(n388), .B(n304), .C(n306), .D(n389), .Z(n386) );
  GTECH_NOT U427 ( .A(n380), .Z(n389) );
  GTECH_NOT U428 ( .A(n382), .Z(n388) );
  GTECH_OA22 U429 ( .A(n304), .B(n382), .C(n380), .D(n306), .Z(n385) );
  GTECH_ADD_ABC U430 ( .A(n36), .B(n255), .C(n390), .COUT(n380) );
  GTECH_OAI2N2 U431 ( .A(n36), .B(n391), .C(n392), .D(n393), .Z(n382) );
  GTECH_OR_NOT U432 ( .A(n255), .B(n36), .Z(n393) );
  GTECH_NOT U433 ( .A(n255), .Z(n391) );
  GTECH_AND2 U434 ( .A(n262), .B(n288), .Z(N108) );
  GTECH_OAI21 U435 ( .A(n36), .B(n298), .C(n394), .Z(n288) );
  GTECH_MUX2 U436 ( .A(n395), .B(n396), .S(n397), .Z(n394) );
  GTECH_XOR2 U437 ( .A(n36), .B(n255), .Z(n397) );
  GTECH_OA22 U438 ( .A(n398), .B(n304), .C(n306), .D(n399), .Z(n396) );
  GTECH_NOT U439 ( .A(n390), .Z(n399) );
  GTECH_NOT U440 ( .A(n392), .Z(n398) );
  GTECH_OA22 U441 ( .A(n304), .B(n392), .C(n390), .D(n306), .Z(n395) );
  GTECH_ADD_ABC U442 ( .A(n37), .B(n254), .C(n400), .COUT(n390) );
  GTECH_OAI2N2 U443 ( .A(n37), .B(n401), .C(n402), .D(n403), .Z(n392) );
  GTECH_OR_NOT U444 ( .A(n254), .B(n37), .Z(n403) );
  GTECH_NOT U445 ( .A(n254), .Z(n401) );
  GTECH_AND2 U446 ( .A(n262), .B(n289), .Z(N107) );
  GTECH_OAI21 U447 ( .A(n37), .B(n298), .C(n404), .Z(n289) );
  GTECH_MUX2 U448 ( .A(n405), .B(n406), .S(n407), .Z(n404) );
  GTECH_XOR2 U449 ( .A(n37), .B(n254), .Z(n407) );
  GTECH_OA22 U450 ( .A(n408), .B(n304), .C(n306), .D(n409), .Z(n406) );
  GTECH_NOT U451 ( .A(n400), .Z(n409) );
  GTECH_NOT U452 ( .A(n402), .Z(n408) );
  GTECH_OA22 U453 ( .A(n304), .B(n402), .C(n400), .D(n306), .Z(n405) );
  GTECH_ADD_ABC U454 ( .A(n38), .B(n253), .C(n410), .COUT(n400) );
  GTECH_OAI2N2 U455 ( .A(n38), .B(n411), .C(n412), .D(n413), .Z(n402) );
  GTECH_OR_NOT U456 ( .A(n253), .B(n38), .Z(n413) );
  GTECH_NOT U457 ( .A(n253), .Z(n411) );
  GTECH_AND2 U458 ( .A(n262), .B(n290), .Z(N106) );
  GTECH_OAI21 U459 ( .A(n38), .B(n298), .C(n414), .Z(n290) );
  GTECH_MUX2 U460 ( .A(n415), .B(n416), .S(n417), .Z(n414) );
  GTECH_XOR2 U461 ( .A(n38), .B(n253), .Z(n417) );
  GTECH_OA22 U462 ( .A(n418), .B(n304), .C(n306), .D(n419), .Z(n416) );
  GTECH_NOT U463 ( .A(n410), .Z(n419) );
  GTECH_NOT U464 ( .A(n412), .Z(n418) );
  GTECH_OA22 U465 ( .A(n304), .B(n412), .C(n410), .D(n306), .Z(n415) );
  GTECH_ADD_ABC U466 ( .A(n39), .B(n252), .C(n420), .COUT(n410) );
  GTECH_OAI2N2 U467 ( .A(n39), .B(n421), .C(n422), .D(n423), .Z(n412) );
  GTECH_OR_NOT U468 ( .A(n252), .B(n39), .Z(n423) );
  GTECH_NOT U469 ( .A(n252), .Z(n421) );
  GTECH_AND2 U470 ( .A(n262), .B(n291), .Z(N105) );
  GTECH_OAI21 U471 ( .A(n39), .B(n298), .C(n424), .Z(n291) );
  GTECH_MUX2 U472 ( .A(n425), .B(n426), .S(n427), .Z(n424) );
  GTECH_XOR2 U473 ( .A(n39), .B(n252), .Z(n427) );
  GTECH_OA22 U474 ( .A(n428), .B(n304), .C(n306), .D(n429), .Z(n426) );
  GTECH_NOT U475 ( .A(n420), .Z(n429) );
  GTECH_NOT U476 ( .A(n422), .Z(n428) );
  GTECH_OA22 U477 ( .A(n304), .B(n422), .C(n420), .D(n306), .Z(n425) );
  GTECH_ADD_ABC U478 ( .A(n40), .B(n251), .C(n430), .COUT(n420) );
  GTECH_OAI2N2 U479 ( .A(n40), .B(n431), .C(n432), .D(n433), .Z(n422) );
  GTECH_OR_NOT U480 ( .A(n251), .B(n40), .Z(n433) );
  GTECH_NOT U481 ( .A(n251), .Z(n431) );
  GTECH_AND2 U482 ( .A(n262), .B(n292), .Z(N104) );
  GTECH_OAI21 U483 ( .A(n40), .B(n298), .C(n434), .Z(n292) );
  GTECH_MUX2 U484 ( .A(n435), .B(n436), .S(n437), .Z(n434) );
  GTECH_XOR2 U485 ( .A(n40), .B(n251), .Z(n437) );
  GTECH_OA22 U486 ( .A(n438), .B(n304), .C(n306), .D(n439), .Z(n436) );
  GTECH_NOT U487 ( .A(n430), .Z(n439) );
  GTECH_NOT U488 ( .A(n432), .Z(n438) );
  GTECH_OA22 U489 ( .A(n304), .B(n432), .C(n430), .D(n306), .Z(n435) );
  GTECH_ADD_ABC U490 ( .A(n41), .B(n250), .C(n440), .COUT(n430) );
  GTECH_OAI2N2 U491 ( .A(n41), .B(n441), .C(n442), .D(n443), .Z(n432) );
  GTECH_OR_NOT U492 ( .A(n250), .B(n41), .Z(n443) );
  GTECH_NOT U493 ( .A(n250), .Z(n441) );
  GTECH_AND2 U494 ( .A(n262), .B(n293), .Z(N103) );
  GTECH_OAI21 U495 ( .A(n41), .B(n298), .C(n444), .Z(n293) );
  GTECH_MUX2 U496 ( .A(n445), .B(n446), .S(n447), .Z(n444) );
  GTECH_XOR2 U497 ( .A(n41), .B(n250), .Z(n447) );
  GTECH_OA22 U498 ( .A(n448), .B(n304), .C(n306), .D(n449), .Z(n446) );
  GTECH_NOT U499 ( .A(n440), .Z(n449) );
  GTECH_NOT U500 ( .A(n442), .Z(n448) );
  GTECH_OA22 U501 ( .A(n304), .B(n442), .C(n440), .D(n306), .Z(n445) );
  GTECH_ADD_ABC U502 ( .A(n42), .B(n249), .C(n450), .COUT(n440) );
  GTECH_OAI2N2 U503 ( .A(n42), .B(n451), .C(n452), .D(n453), .Z(n442) );
  GTECH_OR_NOT U504 ( .A(n249), .B(n42), .Z(n453) );
  GTECH_NOT U505 ( .A(n249), .Z(n451) );
  GTECH_AND2 U506 ( .A(n262), .B(n295), .Z(N102) );
  GTECH_OAI21 U507 ( .A(n42), .B(n298), .C(n454), .Z(n295) );
  GTECH_MUX2 U508 ( .A(n455), .B(n456), .S(n457), .Z(n454) );
  GTECH_XOR2 U509 ( .A(n42), .B(n249), .Z(n457) );
  GTECH_OA22 U510 ( .A(n458), .B(n304), .C(n306), .D(n459), .Z(n456) );
  GTECH_NOT U511 ( .A(n450), .Z(n459) );
  GTECH_NOT U512 ( .A(n452), .Z(n458) );
  GTECH_OA22 U513 ( .A(n304), .B(n452), .C(n450), .D(n306), .Z(n455) );
  GTECH_ADD_ABC U514 ( .A(n43), .B(n248), .C(n460), .COUT(n450) );
  GTECH_OAI2N2 U515 ( .A(n43), .B(n461), .C(n462), .D(n463), .Z(n452) );
  GTECH_OR_NOT U516 ( .A(n248), .B(n43), .Z(n463) );
  GTECH_NOT U517 ( .A(n248), .Z(n461) );
  GTECH_AND2 U518 ( .A(n262), .B(n296), .Z(N101) );
  GTECH_OAI21 U519 ( .A(n43), .B(n298), .C(n464), .Z(n296) );
  GTECH_MUX2 U520 ( .A(n465), .B(n466), .S(n467), .Z(n464) );
  GTECH_XOR2 U521 ( .A(n43), .B(n248), .Z(n467) );
  GTECH_OA22 U522 ( .A(n468), .B(n304), .C(n306), .D(n469), .Z(n466) );
  GTECH_NOT U523 ( .A(n460), .Z(n469) );
  GTECH_NOT U524 ( .A(n462), .Z(n468) );
  GTECH_OA22 U525 ( .A(n304), .B(n462), .C(n460), .D(n306), .Z(n465) );
  GTECH_ADD_ABC U526 ( .A(n29), .B(n247), .C(n470), .COUT(n460) );
  GTECH_OAI2N2 U527 ( .A(n29), .B(n471), .C(n472), .D(n473), .Z(n462) );
  GTECH_OR_NOT U528 ( .A(n247), .B(n29), .Z(n473) );
  GTECH_NOT U529 ( .A(n247), .Z(n471) );
  GTECH_AND2 U530 ( .A(n262), .B(n297), .Z(N100) );
  GTECH_OAI21 U531 ( .A(n29), .B(n298), .C(n474), .Z(n297) );
  GTECH_MUX2 U532 ( .A(n475), .B(n476), .S(n477), .Z(n474) );
  GTECH_XOR2 U533 ( .A(n29), .B(n247), .Z(n477) );
  GTECH_OA22 U534 ( .A(n478), .B(n304), .C(n306), .D(n479), .Z(n476) );
  GTECH_NOT U535 ( .A(n470), .Z(n479) );
  GTECH_NOT U536 ( .A(n472), .Z(n478) );
  GTECH_OA22 U537 ( .A(n304), .B(n472), .C(n470), .D(n306), .Z(n475) );
  GTECH_ADD_ABC U538 ( .A(n246), .B(n11), .C(n307), .COUT(n470) );
  GTECH_NAND2 U539 ( .A(n480), .B(n311), .Z(n307) );
  GTECH_NOT U540 ( .A(n12), .Z(n480) );
  GTECH_OAI2N2 U541 ( .A(n11), .B(n481), .C(n308), .D(n482), .Z(n472) );
  GTECH_OR_NOT U542 ( .A(n246), .B(n11), .Z(n482) );
  GTECH_NAND2 U543 ( .A(n12), .B(n311), .Z(n308) );
  GTECH_NOT U544 ( .A(n245), .Z(n311) );
  GTECH_NOT U545 ( .A(n246), .Z(n481) );
  GTECH_NAND2 U546 ( .A(n306), .B(n304), .Z(n298) );
  GTECH_NAND2 U547 ( .A(n10), .B(n267), .Z(n304) );
  GTECH_NOT U548 ( .A(n28), .Z(n267) );
  GTECH_NAND2 U549 ( .A(n28), .B(n483), .Z(n306) );
  GTECH_NOT U550 ( .A(n10), .Z(n483) );
  GTECH_NOT U551 ( .A(n265), .Z(n262) );
  GTECH_OAI21 U552 ( .A(n270), .B(n271), .C(n484), .Z(n265) );
  GTECH_AND2 U553 ( .A(n272), .B(n273), .Z(n484) );
  GTECH_NOT U554 ( .A(Rst), .Z(n273) );
  GTECH_NOT U555 ( .A(Ld), .Z(n272) );
  GTECH_NOT U556 ( .A(n9), .Z(n271) );
  GTECH_NAND2 U557 ( .A(n8), .B(n275), .Z(n270) );
  GTECH_NOT U558 ( .A(n278), .Z(n275) );
  GTECH_NAND2 U559 ( .A(n7), .B(n277), .Z(n278) );
  GTECH_NOT U560 ( .A(n485), .Z(n277) );
  GTECH_NAND2 U561 ( .A(n6), .B(n244), .Z(n485) );
endmodule

