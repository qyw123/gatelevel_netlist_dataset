
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
         n43, n97, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n97), .K(n97), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n234) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n97), .K(n97), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n97), .K(n97), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n97), .K(n97), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n97), .K(n97), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n97), .K(n97), .TI(N42), .TE(N41), .CP(clk), .Q(
        A[16]) );
  GTECH_FJK1S A_reg_15_ ( .J(n97), .K(n97), .TI(N42), .TE(N41), .CP(clk), .Q(
        A[15]), .QN(n250) );
  GTECH_FJK1S A_reg_14_ ( .J(n97), .K(n97), .TI(N39), .TE(N41), .CP(clk), .Q(
        A[14]), .QN(n249) );
  GTECH_FJK1S A_reg_13_ ( .J(n97), .K(n97), .TI(N38), .TE(N41), .CP(clk), .Q(
        A[13]), .QN(n248) );
  GTECH_FJK1S A_reg_12_ ( .J(n97), .K(n97), .TI(N37), .TE(N41), .CP(clk), .Q(
        A[12]), .QN(n247) );
  GTECH_FJK1S A_reg_11_ ( .J(n97), .K(n97), .TI(N36), .TE(N41), .CP(clk), .Q(
        A[11]), .QN(n246) );
  GTECH_FJK1S A_reg_10_ ( .J(n97), .K(n97), .TI(N35), .TE(N41), .CP(clk), .Q(
        A[10]), .QN(n245) );
  GTECH_FJK1S A_reg_9_ ( .J(n97), .K(n97), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n244) );
  GTECH_FJK1S A_reg_8_ ( .J(n97), .K(n97), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n243) );
  GTECH_FJK1S A_reg_7_ ( .J(n97), .K(n97), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n242) );
  GTECH_FJK1S A_reg_6_ ( .J(n97), .K(n97), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n241) );
  GTECH_FJK1S A_reg_5_ ( .J(n97), .K(n97), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n240) );
  GTECH_FJK1S A_reg_4_ ( .J(n97), .K(n97), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n239) );
  GTECH_FJK1S A_reg_3_ ( .J(n97), .K(n97), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n238) );
  GTECH_FJK1S A_reg_2_ ( .J(n97), .K(n97), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n237) );
  GTECH_FJK1S A_reg_1_ ( .J(n97), .K(n97), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n236) );
  GTECH_FJK1S A_reg_0_ ( .J(n97), .K(n97), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n235) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n97), .K(n97), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n97), .K(n97), .TI(N100), .TE(N115), .CP(clk), 
        .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n97), .K(n97), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n97), .K(n97), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n97), .K(n97), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n97), .K(n97), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n97), .K(n97), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n97), .K(n97), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n97), .K(n97), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n97), .K(n97), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n97), .K(n97), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n97), .K(n97), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n97), .K(n97), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n97), .K(n97), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n97), .K(n97), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n97), .K(n97), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n97), .K(n97), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n97), .K(n97), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n97), .K(n97), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n97), .K(n97), .TI(N101), .TE(N115), .CP(clk), 
        .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n97), .K(n97), .TI(N116), .TE(N115), .CP(clk), 
        .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n97), .K(n97), .TI(N116), .TE(N115), .CP(clk), 
        .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n97), .K(n97), .TI(N113), .TE(N115), .CP(clk), 
        .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n97), .K(n97), .TI(N112), .TE(N115), .CP(clk), 
        .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n97), .K(n97), .TI(N111), .TE(N115), .CP(clk), 
        .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n97), .K(n97), .TI(N110), .TE(N115), .CP(clk), 
        .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n97), .K(n97), .TI(N109), .TE(N115), .CP(clk), 
        .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n97), .K(n97), .TI(N108), .TE(N115), .CP(clk), 
        .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n97), .K(n97), .TI(N107), .TE(N115), .CP(clk), 
        .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n97), .K(n97), .TI(N106), .TE(N115), .CP(clk), 
        .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n97), .K(n97), .TI(N105), .TE(N115), .CP(clk), 
        .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n97), .K(n97), .TI(N104), .TE(N115), .CP(clk), 
        .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n97), .K(n97), .TI(N103), .TE(N115), .CP(clk), 
        .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n97), .K(n97), .TI(N102), .TE(N115), .CP(clk), 
        .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n97), .K(n97), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n97), .K(n97), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n97), .K(n97), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n97), .K(n97), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n97), .K(n97), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n97), .K(n97), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n97), .K(n97), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n97), .K(n97), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n97), .K(n97), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n97), .K(n97), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n97), .K(n97), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n97), .K(n97), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n97), .K(n97), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n97), .K(n97), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n97), .K(n97), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n97), .K(n97), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n97), .K(n97), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n97), .K(n97), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n97), .K(n97), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n97), .K(n97), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n97), .K(n97), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n97), .K(n97), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n97), .K(n97), .TI(N129), .TE(N151), .CP(clk), .Q(
        P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n97), .K(n97), .TI(N128), .TE(N151), .CP(clk), .Q(
        P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n97), .K(n97), .TI(N127), .TE(N151), .CP(clk), .Q(
        P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n97), .K(n97), .TI(N126), .TE(N151), .CP(clk), .Q(
        P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n97), .K(n97), .TI(N125), .TE(N151), .CP(clk), .Q(
        P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n97), .K(n97), .TI(N124), .TE(N151), .CP(clk), .Q(
        P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n97), .K(n97), .TI(N123), .TE(N151), .CP(clk), .Q(
        P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n97), .K(n97), .TI(N122), .TE(N151), .CP(clk), .Q(
        P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n97), .K(n97), .TI(N121), .TE(N151), .CP(clk), .Q(
        P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n97), .K(n97), .TI(N120), .TE(N151), .CP(clk), .Q(
        P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U236 ( .Z(n97) );
  GTECH_AO21 U237 ( .A(n252), .B(n253), .C(n254), .Z(N99) );
  GTECH_OAI22 U238 ( .A(n11), .B(n255), .C(n256), .D(n257), .Z(n254) );
  GTECH_OAI2N2 U239 ( .A(n258), .B(n259), .C(R[15]), .D(n260), .Z(N98) );
  GTECH_NOT U240 ( .A(n261), .Z(n258) );
  GTECH_OAI2N2 U241 ( .A(n13), .B(n259), .C(R[14]), .D(n260), .Z(N97) );
  GTECH_OAI2N2 U242 ( .A(n14), .B(n259), .C(R[13]), .D(n260), .Z(N96) );
  GTECH_OAI2N2 U243 ( .A(n15), .B(n259), .C(R[12]), .D(n260), .Z(N95) );
  GTECH_OAI2N2 U244 ( .A(n16), .B(n259), .C(R[11]), .D(n260), .Z(N94) );
  GTECH_OAI2N2 U245 ( .A(n17), .B(n259), .C(R[10]), .D(n260), .Z(N93) );
  GTECH_OAI2N2 U246 ( .A(n18), .B(n259), .C(R[9]), .D(n260), .Z(N92) );
  GTECH_OAI2N2 U247 ( .A(n19), .B(n259), .C(R[8]), .D(n260), .Z(N91) );
  GTECH_OAI2N2 U248 ( .A(n20), .B(n259), .C(R[7]), .D(n260), .Z(N90) );
  GTECH_OAI2N2 U249 ( .A(n21), .B(n259), .C(R[6]), .D(n260), .Z(N89) );
  GTECH_OAI2N2 U250 ( .A(n22), .B(n259), .C(R[5]), .D(n260), .Z(N88) );
  GTECH_OAI2N2 U251 ( .A(n23), .B(n259), .C(R[4]), .D(n260), .Z(N87) );
  GTECH_OAI2N2 U252 ( .A(n24), .B(n259), .C(R[3]), .D(n260), .Z(N86) );
  GTECH_OAI2N2 U253 ( .A(n25), .B(n259), .C(R[2]), .D(n260), .Z(N85) );
  GTECH_OAI2N2 U254 ( .A(n26), .B(n259), .C(R[1]), .D(n260), .Z(N84) );
  GTECH_OAI2N2 U255 ( .A(n27), .B(n259), .C(R[0]), .D(n260), .Z(N83) );
  GTECH_AND2 U256 ( .A(M[15]), .B(n260), .Z(N42) );
  GTECH_AND2 U257 ( .A(M[14]), .B(n260), .Z(N39) );
  GTECH_AND2 U258 ( .A(M[13]), .B(n260), .Z(N38) );
  GTECH_AND2 U259 ( .A(M[12]), .B(n260), .Z(N37) );
  GTECH_AND2 U260 ( .A(M[11]), .B(n260), .Z(N36) );
  GTECH_AND2 U261 ( .A(M[10]), .B(n260), .Z(N35) );
  GTECH_AND2 U262 ( .A(M[9]), .B(n260), .Z(N34) );
  GTECH_AND2 U263 ( .A(M[8]), .B(n260), .Z(N33) );
  GTECH_AND2 U264 ( .A(M[7]), .B(n260), .Z(N32) );
  GTECH_AND2 U265 ( .A(M[6]), .B(n260), .Z(N31) );
  GTECH_AND2 U266 ( .A(M[5]), .B(n260), .Z(N30) );
  GTECH_AND2 U267 ( .A(M[4]), .B(n260), .Z(N29) );
  GTECH_AND2 U268 ( .A(M[3]), .B(n260), .Z(N28) );
  GTECH_AND2 U269 ( .A(M[2]), .B(n260), .Z(N27) );
  GTECH_AND2 U270 ( .A(M[1]), .B(n260), .Z(N26) );
  GTECH_AND2 U271 ( .A(M[0]), .B(n260), .Z(N25) );
  GTECH_NOT U272 ( .A(n262), .Z(n260) );
  GTECH_NAND2 U273 ( .A(n262), .B(n263), .Z(N19) );
  GTECH_NAND3 U274 ( .A(n264), .B(n265), .C(n266), .Z(n263) );
  GTECH_NOT U275 ( .A(n9), .Z(n265) );
  GTECH_NAND3 U276 ( .A(n267), .B(n268), .C(n259), .Z(N18) );
  GTECH_OA21 U277 ( .A(n269), .B(n270), .C(n266), .Z(N17) );
  GTECH_AND_NOT U278 ( .A(n271), .B(n8), .Z(n269) );
  GTECH_OA21 U279 ( .A(n272), .B(n273), .C(n266), .Z(N16) );
  GTECH_AND_NOT U280 ( .A(n274), .B(n7), .Z(n272) );
  GTECH_AO21 U281 ( .A(n275), .B(n276), .C(n277), .Z(N152) );
  GTECH_OAI22 U282 ( .A(n30), .B(n278), .C(n279), .D(n280), .Z(n277) );
  GTECH_NAND2 U283 ( .A(n268), .B(n281), .Z(N151) );
  GTECH_AO21 U284 ( .A(n282), .B(n275), .C(n283), .Z(N150) );
  GTECH_OAI22 U285 ( .A(n31), .B(n278), .C(n284), .D(n280), .Z(n283) );
  GTECH_MUX2 U286 ( .A(n285), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U287 ( .A(n266), .B(n286), .Z(n285) );
  GTECH_AO21 U288 ( .A(n287), .B(n275), .C(n288), .Z(N149) );
  GTECH_OAI22 U289 ( .A(n32), .B(n278), .C(n289), .D(n280), .Z(n288) );
  GTECH_AO21 U290 ( .A(n290), .B(n275), .C(n291), .Z(N148) );
  GTECH_OAI22 U291 ( .A(n33), .B(n278), .C(n292), .D(n280), .Z(n291) );
  GTECH_AO21 U292 ( .A(n293), .B(n275), .C(n294), .Z(N147) );
  GTECH_OAI22 U293 ( .A(n34), .B(n278), .C(n295), .D(n280), .Z(n294) );
  GTECH_AO21 U294 ( .A(n296), .B(n275), .C(n297), .Z(N146) );
  GTECH_OAI22 U295 ( .A(n35), .B(n278), .C(n298), .D(n280), .Z(n297) );
  GTECH_AO21 U296 ( .A(n299), .B(n275), .C(n300), .Z(N145) );
  GTECH_OAI22 U297 ( .A(n36), .B(n278), .C(n301), .D(n280), .Z(n300) );
  GTECH_AO21 U298 ( .A(n302), .B(n275), .C(n303), .Z(N144) );
  GTECH_OAI22 U299 ( .A(n37), .B(n278), .C(n304), .D(n280), .Z(n303) );
  GTECH_AO21 U300 ( .A(n305), .B(n275), .C(n306), .Z(N143) );
  GTECH_OAI22 U301 ( .A(n38), .B(n278), .C(n307), .D(n280), .Z(n306) );
  GTECH_AO21 U302 ( .A(n308), .B(n275), .C(n309), .Z(N142) );
  GTECH_OAI22 U303 ( .A(n39), .B(n278), .C(n310), .D(n280), .Z(n309) );
  GTECH_AO21 U304 ( .A(n311), .B(n275), .C(n312), .Z(N141) );
  GTECH_OAI22 U305 ( .A(n40), .B(n278), .C(n313), .D(n280), .Z(n312) );
  GTECH_AO21 U306 ( .A(n314), .B(n275), .C(n315), .Z(N140) );
  GTECH_OAI22 U307 ( .A(n41), .B(n278), .C(n316), .D(n280), .Z(n315) );
  GTECH_NOT U308 ( .A(n317), .Z(N14) );
  GTECH_NAND2 U309 ( .A(n266), .B(n234), .Z(n317) );
  GTECH_AO21 U310 ( .A(n318), .B(n275), .C(n319), .Z(N139) );
  GTECH_OAI22 U311 ( .A(n42), .B(n278), .C(n320), .D(n280), .Z(n319) );
  GTECH_AO21 U312 ( .A(n321), .B(n275), .C(n322), .Z(N138) );
  GTECH_OAI22 U313 ( .A(n43), .B(n278), .C(n323), .D(n280), .Z(n322) );
  GTECH_AO21 U314 ( .A(n324), .B(n275), .C(n325), .Z(N137) );
  GTECH_OAI22 U315 ( .A(n29), .B(n278), .C(n326), .D(n280), .Z(n325) );
  GTECH_AO21 U316 ( .A(n275), .B(n253), .C(n327), .Z(N136) );
  GTECH_OAI22 U317 ( .A(n11), .B(n278), .C(n256), .D(n280), .Z(n327) );
  GTECH_NAND2 U318 ( .A(N155), .B(n328), .Z(n280) );
  GTECH_NOT U319 ( .A(n329), .Z(n328) );
  GTECH_XOR2 U320 ( .A(n330), .B(n331), .Z(n256) );
  GTECH_NAND2 U321 ( .A(N155), .B(n332), .Z(n278) );
  GTECH_NOT U322 ( .A(n333), .Z(n253) );
  GTECH_XOR2 U323 ( .A(n330), .B(n334), .Z(n333) );
  GTECH_NOT U324 ( .A(n335), .Z(n334) );
  GTECH_XOR2 U325 ( .A(n336), .B(n236), .Z(n330) );
  GTECH_NOT U326 ( .A(n11), .Z(n336) );
  GTECH_NOT U327 ( .A(n337), .Z(n275) );
  GTECH_NAND2 U328 ( .A(N155), .B(n338), .Z(n337) );
  GTECH_AND2 U329 ( .A(N155), .B(n261), .Z(N135) );
  GTECH_AO21 U330 ( .A(n339), .B(n338), .C(n340), .Z(n261) );
  GTECH_OAI22 U331 ( .A(n12), .B(n341), .C(n342), .D(n329), .Z(n340) );
  GTECH_OA21 U332 ( .A(n12), .B(n343), .C(n344), .Z(n342) );
  GTECH_OA21 U333 ( .A(n345), .B(n343), .C(n335), .Z(n339) );
  GTECH_AND2 U334 ( .A(N155), .B(n346), .Z(N134) );
  GTECH_NOT U335 ( .A(n13), .Z(n346) );
  GTECH_AND2 U336 ( .A(N155), .B(n347), .Z(N133) );
  GTECH_NOT U337 ( .A(n14), .Z(n347) );
  GTECH_AND2 U338 ( .A(N155), .B(n348), .Z(N132) );
  GTECH_NOT U339 ( .A(n15), .Z(n348) );
  GTECH_AND2 U340 ( .A(N155), .B(n349), .Z(N131) );
  GTECH_NOT U341 ( .A(n16), .Z(n349) );
  GTECH_AND2 U342 ( .A(N155), .B(n350), .Z(N130) );
  GTECH_NOT U343 ( .A(n17), .Z(n350) );
  GTECH_AND2 U344 ( .A(N155), .B(n351), .Z(N129) );
  GTECH_NOT U345 ( .A(n18), .Z(n351) );
  GTECH_AND2 U346 ( .A(N155), .B(n352), .Z(N128) );
  GTECH_NOT U347 ( .A(n19), .Z(n352) );
  GTECH_AND2 U348 ( .A(N155), .B(n353), .Z(N127) );
  GTECH_NOT U349 ( .A(n20), .Z(n353) );
  GTECH_AND2 U350 ( .A(N155), .B(n354), .Z(N126) );
  GTECH_NOT U351 ( .A(n21), .Z(n354) );
  GTECH_AND2 U352 ( .A(N155), .B(n355), .Z(N125) );
  GTECH_NOT U353 ( .A(n22), .Z(n355) );
  GTECH_AND2 U354 ( .A(N155), .B(n356), .Z(N124) );
  GTECH_NOT U355 ( .A(n23), .Z(n356) );
  GTECH_AND2 U356 ( .A(N155), .B(n357), .Z(N123) );
  GTECH_NOT U357 ( .A(n24), .Z(n357) );
  GTECH_AND2 U358 ( .A(N155), .B(n358), .Z(N122) );
  GTECH_NOT U359 ( .A(n25), .Z(n358) );
  GTECH_AND2 U360 ( .A(N155), .B(n359), .Z(N121) );
  GTECH_NOT U361 ( .A(n26), .Z(n359) );
  GTECH_AND2 U362 ( .A(N155), .B(n360), .Z(N120) );
  GTECH_NOT U363 ( .A(n27), .Z(n360) );
  GTECH_NOT U364 ( .A(n281), .Z(N155) );
  GTECH_NAND4 U365 ( .A(n8), .B(n7), .C(n9), .D(n361), .Z(n281) );
  GTECH_AND3 U366 ( .A(n268), .B(n286), .C(n6), .Z(n361) );
  GTECH_NOT U367 ( .A(n234), .Z(n286) );
  GTECH_AO21 U368 ( .A(n362), .B(n363), .C(n364), .Z(N116) );
  GTECH_OAI22 U369 ( .A(n365), .B(n366), .C(n279), .D(n257), .Z(n364) );
  GTECH_XOR2 U370 ( .A(n367), .B(n368), .Z(n279) );
  GTECH_OA21 U371 ( .A(n31), .B(n369), .C(n370), .Z(n368) );
  GTECH_AO21 U372 ( .A(n31), .B(n369), .C(n371), .Z(n370) );
  GTECH_NOT U373 ( .A(n276), .Z(n366) );
  GTECH_XOR2 U374 ( .A(n367), .B(n372), .Z(n276) );
  GTECH_ADD_ABC U375 ( .A(n31), .B(n250), .C(n373), .COUT(n372) );
  GTECH_XOR2 U376 ( .A(A[16]), .B(n30), .Z(n367) );
  GTECH_NOT U377 ( .A(n30), .Z(n363) );
  GTECH_NAND2 U378 ( .A(n259), .B(n374), .Z(N115) );
  GTECH_NOT U379 ( .A(N41), .Z(n374) );
  GTECH_NAND2 U380 ( .A(n268), .B(n262), .Z(N41) );
  GTECH_NAND2 U381 ( .A(Ld), .B(n268), .Z(n262) );
  GTECH_AO21 U382 ( .A(n362), .B(n375), .C(n376), .Z(N113) );
  GTECH_OAI22 U383 ( .A(n365), .B(n377), .C(n284), .D(n257), .Z(n376) );
  GTECH_XOR2 U384 ( .A(n378), .B(n371), .Z(n284) );
  GTECH_OA21 U385 ( .A(n32), .B(n379), .C(n380), .Z(n371) );
  GTECH_AO21 U386 ( .A(n32), .B(n379), .C(n381), .Z(n380) );
  GTECH_NOT U387 ( .A(n282), .Z(n377) );
  GTECH_XOR2 U388 ( .A(n378), .B(n373), .Z(n282) );
  GTECH_ADD_ABC U389 ( .A(n32), .B(n249), .C(n382), .COUT(n373) );
  GTECH_XOR2 U390 ( .A(n369), .B(n31), .Z(n378) );
  GTECH_NOT U391 ( .A(n250), .Z(n369) );
  GTECH_NOT U392 ( .A(n31), .Z(n375) );
  GTECH_AO21 U393 ( .A(n362), .B(n383), .C(n384), .Z(N112) );
  GTECH_OAI22 U394 ( .A(n365), .B(n385), .C(n289), .D(n257), .Z(n384) );
  GTECH_XOR2 U395 ( .A(n386), .B(n381), .Z(n289) );
  GTECH_OA21 U396 ( .A(n33), .B(n387), .C(n388), .Z(n381) );
  GTECH_AO21 U397 ( .A(n33), .B(n387), .C(n389), .Z(n388) );
  GTECH_NOT U398 ( .A(n287), .Z(n385) );
  GTECH_XOR2 U399 ( .A(n386), .B(n382), .Z(n287) );
  GTECH_ADD_ABC U400 ( .A(n33), .B(n248), .C(n390), .COUT(n382) );
  GTECH_XOR2 U401 ( .A(n379), .B(n32), .Z(n386) );
  GTECH_NOT U402 ( .A(n249), .Z(n379) );
  GTECH_NOT U403 ( .A(n32), .Z(n383) );
  GTECH_AO21 U404 ( .A(n362), .B(n391), .C(n392), .Z(N111) );
  GTECH_OAI22 U405 ( .A(n365), .B(n393), .C(n292), .D(n257), .Z(n392) );
  GTECH_XOR2 U406 ( .A(n394), .B(n389), .Z(n292) );
  GTECH_OA21 U407 ( .A(n34), .B(n395), .C(n396), .Z(n389) );
  GTECH_AO21 U408 ( .A(n34), .B(n395), .C(n397), .Z(n396) );
  GTECH_NOT U409 ( .A(n290), .Z(n393) );
  GTECH_XOR2 U410 ( .A(n394), .B(n390), .Z(n290) );
  GTECH_ADD_ABC U411 ( .A(n34), .B(n247), .C(n398), .COUT(n390) );
  GTECH_XOR2 U412 ( .A(n387), .B(n33), .Z(n394) );
  GTECH_NOT U413 ( .A(n248), .Z(n387) );
  GTECH_NOT U414 ( .A(n33), .Z(n391) );
  GTECH_AO21 U415 ( .A(n362), .B(n399), .C(n400), .Z(N110) );
  GTECH_OAI22 U416 ( .A(n365), .B(n401), .C(n295), .D(n257), .Z(n400) );
  GTECH_XOR2 U417 ( .A(n402), .B(n397), .Z(n295) );
  GTECH_OA21 U418 ( .A(n35), .B(n403), .C(n404), .Z(n397) );
  GTECH_AO21 U419 ( .A(n35), .B(n403), .C(n405), .Z(n404) );
  GTECH_NOT U420 ( .A(n293), .Z(n401) );
  GTECH_XOR2 U421 ( .A(n402), .B(n398), .Z(n293) );
  GTECH_ADD_ABC U422 ( .A(n35), .B(n246), .C(n406), .COUT(n398) );
  GTECH_XOR2 U423 ( .A(n395), .B(n34), .Z(n402) );
  GTECH_NOT U424 ( .A(n247), .Z(n395) );
  GTECH_NOT U425 ( .A(n34), .Z(n399) );
  GTECH_AO21 U426 ( .A(n362), .B(n407), .C(n408), .Z(N109) );
  GTECH_OAI22 U427 ( .A(n365), .B(n409), .C(n298), .D(n257), .Z(n408) );
  GTECH_XOR2 U428 ( .A(n410), .B(n405), .Z(n298) );
  GTECH_OA21 U429 ( .A(n36), .B(n411), .C(n412), .Z(n405) );
  GTECH_AO21 U430 ( .A(n36), .B(n411), .C(n413), .Z(n412) );
  GTECH_NOT U431 ( .A(n296), .Z(n409) );
  GTECH_XOR2 U432 ( .A(n410), .B(n406), .Z(n296) );
  GTECH_ADD_ABC U433 ( .A(n36), .B(n245), .C(n414), .COUT(n406) );
  GTECH_XOR2 U434 ( .A(n403), .B(n35), .Z(n410) );
  GTECH_NOT U435 ( .A(n246), .Z(n403) );
  GTECH_NOT U436 ( .A(n35), .Z(n407) );
  GTECH_AO21 U437 ( .A(n362), .B(n415), .C(n416), .Z(N108) );
  GTECH_OAI22 U438 ( .A(n365), .B(n417), .C(n301), .D(n257), .Z(n416) );
  GTECH_XOR2 U439 ( .A(n418), .B(n413), .Z(n301) );
  GTECH_OA21 U440 ( .A(n37), .B(n419), .C(n420), .Z(n413) );
  GTECH_AO21 U441 ( .A(n37), .B(n419), .C(n421), .Z(n420) );
  GTECH_NOT U442 ( .A(n299), .Z(n417) );
  GTECH_XOR2 U443 ( .A(n418), .B(n414), .Z(n299) );
  GTECH_ADD_ABC U444 ( .A(n37), .B(n244), .C(n422), .COUT(n414) );
  GTECH_XOR2 U445 ( .A(n411), .B(n36), .Z(n418) );
  GTECH_NOT U446 ( .A(n245), .Z(n411) );
  GTECH_NOT U447 ( .A(n36), .Z(n415) );
  GTECH_AO21 U448 ( .A(n362), .B(n423), .C(n424), .Z(N107) );
  GTECH_OAI22 U449 ( .A(n365), .B(n425), .C(n304), .D(n257), .Z(n424) );
  GTECH_XOR2 U450 ( .A(n426), .B(n421), .Z(n304) );
  GTECH_OA21 U451 ( .A(n38), .B(n427), .C(n428), .Z(n421) );
  GTECH_AO21 U452 ( .A(n38), .B(n427), .C(n429), .Z(n428) );
  GTECH_NOT U453 ( .A(n302), .Z(n425) );
  GTECH_XOR2 U454 ( .A(n426), .B(n422), .Z(n302) );
  GTECH_ADD_ABC U455 ( .A(n38), .B(n243), .C(n430), .COUT(n422) );
  GTECH_XOR2 U456 ( .A(n419), .B(n37), .Z(n426) );
  GTECH_NOT U457 ( .A(n244), .Z(n419) );
  GTECH_NOT U458 ( .A(n37), .Z(n423) );
  GTECH_AO21 U459 ( .A(n362), .B(n431), .C(n432), .Z(N106) );
  GTECH_OAI22 U460 ( .A(n365), .B(n433), .C(n307), .D(n257), .Z(n432) );
  GTECH_XOR2 U461 ( .A(n434), .B(n429), .Z(n307) );
  GTECH_OA21 U462 ( .A(n39), .B(n435), .C(n436), .Z(n429) );
  GTECH_AO21 U463 ( .A(n39), .B(n435), .C(n437), .Z(n436) );
  GTECH_NOT U464 ( .A(n305), .Z(n433) );
  GTECH_XOR2 U465 ( .A(n434), .B(n430), .Z(n305) );
  GTECH_ADD_ABC U466 ( .A(n39), .B(n242), .C(n438), .COUT(n430) );
  GTECH_XOR2 U467 ( .A(n427), .B(n38), .Z(n434) );
  GTECH_NOT U468 ( .A(n243), .Z(n427) );
  GTECH_NOT U469 ( .A(n38), .Z(n431) );
  GTECH_AO21 U470 ( .A(n362), .B(n439), .C(n440), .Z(N105) );
  GTECH_OAI22 U471 ( .A(n365), .B(n441), .C(n310), .D(n257), .Z(n440) );
  GTECH_XOR2 U472 ( .A(n442), .B(n437), .Z(n310) );
  GTECH_OA21 U473 ( .A(n40), .B(n443), .C(n444), .Z(n437) );
  GTECH_AO21 U474 ( .A(n40), .B(n443), .C(n445), .Z(n444) );
  GTECH_NOT U475 ( .A(n308), .Z(n441) );
  GTECH_XOR2 U476 ( .A(n442), .B(n438), .Z(n308) );
  GTECH_ADD_ABC U477 ( .A(n40), .B(n241), .C(n446), .COUT(n438) );
  GTECH_XOR2 U478 ( .A(n435), .B(n39), .Z(n442) );
  GTECH_NOT U479 ( .A(n242), .Z(n435) );
  GTECH_NOT U480 ( .A(n39), .Z(n439) );
  GTECH_AO21 U481 ( .A(n362), .B(n447), .C(n448), .Z(N104) );
  GTECH_OAI22 U482 ( .A(n365), .B(n449), .C(n313), .D(n257), .Z(n448) );
  GTECH_XOR2 U483 ( .A(n450), .B(n445), .Z(n313) );
  GTECH_OA21 U484 ( .A(n41), .B(n451), .C(n452), .Z(n445) );
  GTECH_AO21 U485 ( .A(n41), .B(n451), .C(n453), .Z(n452) );
  GTECH_NOT U486 ( .A(n311), .Z(n449) );
  GTECH_XOR2 U487 ( .A(n450), .B(n446), .Z(n311) );
  GTECH_ADD_ABC U488 ( .A(n41), .B(n240), .C(n454), .COUT(n446) );
  GTECH_XOR2 U489 ( .A(n443), .B(n40), .Z(n450) );
  GTECH_NOT U490 ( .A(n241), .Z(n443) );
  GTECH_NOT U491 ( .A(n40), .Z(n447) );
  GTECH_AO21 U492 ( .A(n362), .B(n455), .C(n456), .Z(N103) );
  GTECH_OAI22 U493 ( .A(n365), .B(n457), .C(n316), .D(n257), .Z(n456) );
  GTECH_XOR2 U494 ( .A(n458), .B(n453), .Z(n316) );
  GTECH_OA21 U495 ( .A(n42), .B(n459), .C(n460), .Z(n453) );
  GTECH_AO21 U496 ( .A(n42), .B(n459), .C(n461), .Z(n460) );
  GTECH_NOT U497 ( .A(n314), .Z(n457) );
  GTECH_XOR2 U498 ( .A(n458), .B(n454), .Z(n314) );
  GTECH_ADD_ABC U499 ( .A(n42), .B(n239), .C(n462), .COUT(n454) );
  GTECH_XOR2 U500 ( .A(n451), .B(n41), .Z(n458) );
  GTECH_NOT U501 ( .A(n240), .Z(n451) );
  GTECH_NOT U502 ( .A(n41), .Z(n455) );
  GTECH_AO21 U503 ( .A(n362), .B(n463), .C(n464), .Z(N102) );
  GTECH_OAI22 U504 ( .A(n365), .B(n465), .C(n320), .D(n257), .Z(n464) );
  GTECH_XOR2 U505 ( .A(n466), .B(n461), .Z(n320) );
  GTECH_OA21 U506 ( .A(n43), .B(n467), .C(n468), .Z(n461) );
  GTECH_AO21 U507 ( .A(n43), .B(n467), .C(n469), .Z(n468) );
  GTECH_NOT U508 ( .A(n318), .Z(n465) );
  GTECH_XOR2 U509 ( .A(n466), .B(n462), .Z(n318) );
  GTECH_ADD_ABC U510 ( .A(n43), .B(n238), .C(n470), .COUT(n462) );
  GTECH_XOR2 U511 ( .A(n459), .B(n42), .Z(n466) );
  GTECH_NOT U512 ( .A(n239), .Z(n459) );
  GTECH_NOT U513 ( .A(n42), .Z(n463) );
  GTECH_AO21 U514 ( .A(n362), .B(n471), .C(n472), .Z(N101) );
  GTECH_OAI22 U515 ( .A(n365), .B(n473), .C(n323), .D(n257), .Z(n472) );
  GTECH_XOR2 U516 ( .A(n474), .B(n469), .Z(n323) );
  GTECH_OA21 U517 ( .A(n29), .B(n475), .C(n476), .Z(n469) );
  GTECH_AO21 U518 ( .A(n29), .B(n475), .C(n477), .Z(n476) );
  GTECH_NOT U519 ( .A(n321), .Z(n473) );
  GTECH_XOR2 U520 ( .A(n474), .B(n470), .Z(n321) );
  GTECH_ADD_ABC U521 ( .A(n29), .B(n237), .C(n478), .COUT(n470) );
  GTECH_XOR2 U522 ( .A(n467), .B(n43), .Z(n474) );
  GTECH_NOT U523 ( .A(n238), .Z(n467) );
  GTECH_NOT U524 ( .A(n43), .Z(n471) );
  GTECH_NOT U525 ( .A(n255), .Z(n362) );
  GTECH_AO21 U526 ( .A(n324), .B(n252), .C(n479), .Z(N100) );
  GTECH_OAI22 U527 ( .A(n29), .B(n255), .C(n326), .D(n257), .Z(n479) );
  GTECH_NAND2 U528 ( .A(n10), .B(N82), .Z(n257) );
  GTECH_NOT U529 ( .A(n480), .Z(N82) );
  GTECH_NAND2 U530 ( .A(n266), .B(n481), .Z(n480) );
  GTECH_XOR2 U531 ( .A(n482), .B(n477), .Z(n326) );
  GTECH_OA21 U532 ( .A(n11), .B(n483), .C(n484), .Z(n477) );
  GTECH_AO21 U533 ( .A(n11), .B(n483), .C(n331), .Z(n484) );
  GTECH_NOT U534 ( .A(n344), .Z(n331) );
  GTECH_NAND2 U535 ( .A(n12), .B(n343), .Z(n344) );
  GTECH_NOT U536 ( .A(n236), .Z(n483) );
  GTECH_NAND2 U537 ( .A(n332), .B(n266), .Z(n255) );
  GTECH_NOT U538 ( .A(n341), .Z(n332) );
  GTECH_NAND2 U539 ( .A(n485), .B(n329), .Z(n341) );
  GTECH_NAND2 U540 ( .A(n10), .B(n481), .Z(n329) );
  GTECH_NOT U541 ( .A(n28), .Z(n481) );
  GTECH_NOT U542 ( .A(n365), .Z(n252) );
  GTECH_NAND2 U543 ( .A(n338), .B(n266), .Z(n365) );
  GTECH_NOT U544 ( .A(n259), .Z(n266) );
  GTECH_AO21 U545 ( .A(n9), .B(n270), .C(n486), .Z(n259) );
  GTECH_NAND2 U546 ( .A(n267), .B(n268), .Z(n486) );
  GTECH_NOT U547 ( .A(Rst), .Z(n268) );
  GTECH_NOT U548 ( .A(Ld), .Z(n267) );
  GTECH_NOT U549 ( .A(n264), .Z(n270) );
  GTECH_NAND2 U550 ( .A(n8), .B(n273), .Z(n264) );
  GTECH_NOT U551 ( .A(n271), .Z(n273) );
  GTECH_NAND2 U552 ( .A(n7), .B(n487), .Z(n271) );
  GTECH_NOT U553 ( .A(n274), .Z(n487) );
  GTECH_NAND2 U554 ( .A(n6), .B(n234), .Z(n274) );
  GTECH_NOT U555 ( .A(n485), .Z(n338) );
  GTECH_NAND2 U556 ( .A(n28), .B(n488), .Z(n485) );
  GTECH_NOT U557 ( .A(n10), .Z(n488) );
  GTECH_XOR2 U558 ( .A(n482), .B(n478), .Z(n324) );
  GTECH_ADD_ABC U559 ( .A(n236), .B(n11), .C(n335), .COUT(n478) );
  GTECH_NAND2 U560 ( .A(n345), .B(n343), .Z(n335) );
  GTECH_NOT U561 ( .A(n235), .Z(n343) );
  GTECH_NOT U562 ( .A(n12), .Z(n345) );
  GTECH_XOR2 U563 ( .A(n475), .B(n29), .Z(n482) );
  GTECH_NOT U564 ( .A(n237), .Z(n475) );
endmodule

