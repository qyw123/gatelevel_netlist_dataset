
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
         n43, n128, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n283, n284, n285, n286,
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
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n128), .K(n128), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n265) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n128), .K(n128), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n128), .K(n128), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n128), .K(n128), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n128), .K(n128), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n128), .K(n128), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]) );
  GTECH_FJK1S A_reg_15_ ( .J(n128), .K(n128), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n281) );
  GTECH_FJK1S A_reg_14_ ( .J(n128), .K(n128), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n280) );
  GTECH_FJK1S A_reg_13_ ( .J(n128), .K(n128), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n279) );
  GTECH_FJK1S A_reg_12_ ( .J(n128), .K(n128), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n278) );
  GTECH_FJK1S A_reg_11_ ( .J(n128), .K(n128), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n277) );
  GTECH_FJK1S A_reg_10_ ( .J(n128), .K(n128), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n276) );
  GTECH_FJK1S A_reg_9_ ( .J(n128), .K(n128), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n275) );
  GTECH_FJK1S A_reg_8_ ( .J(n128), .K(n128), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n274) );
  GTECH_FJK1S A_reg_7_ ( .J(n128), .K(n128), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n273) );
  GTECH_FJK1S A_reg_6_ ( .J(n128), .K(n128), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n272) );
  GTECH_FJK1S A_reg_5_ ( .J(n128), .K(n128), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n271) );
  GTECH_FJK1S A_reg_4_ ( .J(n128), .K(n128), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n270) );
  GTECH_FJK1S A_reg_3_ ( .J(n128), .K(n128), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n269) );
  GTECH_FJK1S A_reg_2_ ( .J(n128), .K(n128), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n268) );
  GTECH_FJK1S A_reg_1_ ( .J(n128), .K(n128), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n267) );
  GTECH_FJK1S A_reg_0_ ( .J(n128), .K(n128), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n266) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n128), .K(n128), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n128), .K(n128), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n128), .K(n128), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n128), .K(n128), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n128), .K(n128), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n128), .K(n128), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n128), .K(n128), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n128), .K(n128), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n128), .K(n128), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n128), .K(n128), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n128), .K(n128), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n128), .K(n128), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n128), .K(n128), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n128), .K(n128), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n128), .K(n128), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n128), .K(n128), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n128), .K(n128), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n128), .K(n128), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n128), .K(n128), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n128), .K(n128), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n128), .K(n128), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n128), .K(n128), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n128), .K(n128), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n128), .K(n128), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n128), .K(n128), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n128), .K(n128), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n128), .K(n128), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n128), .K(n128), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n128), .K(n128), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n128), .K(n128), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n128), .K(n128), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n128), .K(n128), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n128), .K(n128), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n128), .K(n128), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n128), .K(n128), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n128), .K(n128), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n128), .K(n128), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n128), .K(n128), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n128), .K(n128), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n128), .K(n128), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n128), .K(n128), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n128), .K(n128), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n128), .K(n128), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n128), .K(n128), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n128), .K(n128), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n128), .K(n128), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n128), .K(n128), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n128), .K(n128), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n128), .K(n128), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n128), .K(n128), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n128), .K(n128), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n128), .K(n128), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n128), .K(n128), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n128), .K(n128), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n128), .K(n128), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n128), .K(n128), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n128), .K(n128), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n128), .K(n128), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n128), .K(n128), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n128), .K(n128), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n128), .K(n128), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n128), .K(n128), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n128), .K(n128), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n128), .K(n128), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n128), .K(n128), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n128), .K(n128), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U267 ( .Z(n128) );
  GTECH_NOT U268 ( .A(n283), .Z(N99) );
  GTECH_AOI222 U269 ( .A(n284), .B(n285), .C(n286), .D(n287), .E(n288), .F(
        n289), .Z(n283) );
  GTECH_NOT U270 ( .A(n290), .Z(N98) );
  GTECH_AOI222 U271 ( .A(n286), .B(n291), .C(n292), .D(n293), .E(R[15]), .F(
        n294), .Z(n290) );
  GTECH_NAND2 U272 ( .A(n295), .B(n296), .Z(n292) );
  GTECH_AO22 U273 ( .A(n297), .B(n298), .C(R[14]), .D(n294), .Z(N97) );
  GTECH_AO22 U274 ( .A(n297), .B(n299), .C(R[13]), .D(n294), .Z(N96) );
  GTECH_AO22 U275 ( .A(n297), .B(n300), .C(R[12]), .D(n294), .Z(N95) );
  GTECH_AO22 U276 ( .A(n297), .B(n301), .C(R[11]), .D(n294), .Z(N94) );
  GTECH_AO22 U277 ( .A(n297), .B(n302), .C(R[10]), .D(n294), .Z(N93) );
  GTECH_AO22 U278 ( .A(n297), .B(n303), .C(R[9]), .D(n294), .Z(N92) );
  GTECH_AO22 U279 ( .A(n297), .B(n304), .C(R[8]), .D(n294), .Z(N91) );
  GTECH_AO22 U280 ( .A(n297), .B(n305), .C(R[7]), .D(n294), .Z(N90) );
  GTECH_AO22 U281 ( .A(n297), .B(n306), .C(R[6]), .D(n294), .Z(N89) );
  GTECH_AO22 U282 ( .A(n297), .B(n307), .C(R[5]), .D(n294), .Z(N88) );
  GTECH_AO22 U283 ( .A(n297), .B(n308), .C(R[4]), .D(n294), .Z(N87) );
  GTECH_AO22 U284 ( .A(n297), .B(n309), .C(R[3]), .D(n294), .Z(N86) );
  GTECH_AO22 U285 ( .A(n297), .B(n310), .C(R[2]), .D(n294), .Z(N85) );
  GTECH_AO22 U286 ( .A(n297), .B(n311), .C(R[1]), .D(n294), .Z(N84) );
  GTECH_AO22 U287 ( .A(n297), .B(n312), .C(R[0]), .D(n294), .Z(N83) );
  GTECH_AND2 U288 ( .A(M[15]), .B(n294), .Z(N42) );
  GTECH_AND2 U289 ( .A(M[14]), .B(n294), .Z(N39) );
  GTECH_AND2 U290 ( .A(M[13]), .B(n294), .Z(N38) );
  GTECH_AND2 U291 ( .A(M[12]), .B(n294), .Z(N37) );
  GTECH_AND2 U292 ( .A(M[11]), .B(n294), .Z(N36) );
  GTECH_AND2 U293 ( .A(M[10]), .B(n294), .Z(N35) );
  GTECH_AND2 U294 ( .A(M[9]), .B(n294), .Z(N34) );
  GTECH_AND2 U295 ( .A(M[8]), .B(n294), .Z(N33) );
  GTECH_AND2 U296 ( .A(M[7]), .B(n294), .Z(N32) );
  GTECH_AND2 U297 ( .A(M[6]), .B(n294), .Z(N31) );
  GTECH_AND2 U298 ( .A(M[5]), .B(n294), .Z(N30) );
  GTECH_AND2 U299 ( .A(M[4]), .B(n294), .Z(N29) );
  GTECH_AND2 U300 ( .A(M[3]), .B(n294), .Z(N28) );
  GTECH_AND2 U301 ( .A(M[2]), .B(n294), .Z(N27) );
  GTECH_AND2 U302 ( .A(M[1]), .B(n294), .Z(N26) );
  GTECH_AND2 U303 ( .A(M[0]), .B(n294), .Z(N25) );
  GTECH_NOT U304 ( .A(n313), .Z(n294) );
  GTECH_NAND2 U305 ( .A(n313), .B(n314), .Z(N19) );
  GTECH_NAND3 U306 ( .A(n315), .B(n316), .C(n297), .Z(n314) );
  GTECH_NAND3 U307 ( .A(n317), .B(n318), .C(n319), .Z(N18) );
  GTECH_AND2 U308 ( .A(n297), .B(n320), .Z(N17) );
  GTECH_OAI21 U309 ( .A(n8), .B(n321), .C(n315), .Z(n320) );
  GTECH_AND2 U310 ( .A(n297), .B(n322), .Z(N16) );
  GTECH_OAI21 U311 ( .A(n7), .B(n323), .C(n324), .Z(n322) );
  GTECH_NOT U312 ( .A(n325), .Z(N152) );
  GTECH_AOI222 U313 ( .A(n326), .B(n327), .C(n328), .D(n329), .E(n330), .F(
        n331), .Z(n325) );
  GTECH_NAND2 U314 ( .A(n318), .B(n332), .Z(N151) );
  GTECH_NOT U315 ( .A(n333), .Z(N150) );
  GTECH_AOI222 U316 ( .A(n334), .B(n326), .C(n328), .D(n335), .E(n330), .F(
        n336), .Z(n333) );
  GTECH_MUX2 U317 ( .A(n337), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U318 ( .A(n297), .B(n338), .Z(n337) );
  GTECH_NOT U319 ( .A(n339), .Z(N149) );
  GTECH_AOI222 U320 ( .A(n340), .B(n326), .C(n328), .D(n341), .E(n330), .F(
        n342), .Z(n339) );
  GTECH_NOT U321 ( .A(n343), .Z(N148) );
  GTECH_AOI222 U322 ( .A(n344), .B(n326), .C(n328), .D(n345), .E(n330), .F(
        n346), .Z(n343) );
  GTECH_NOT U323 ( .A(n347), .Z(N147) );
  GTECH_AOI222 U324 ( .A(n348), .B(n326), .C(n328), .D(n349), .E(n330), .F(
        n350), .Z(n347) );
  GTECH_NOT U325 ( .A(n351), .Z(N146) );
  GTECH_AOI222 U326 ( .A(n352), .B(n326), .C(n328), .D(n353), .E(n330), .F(
        n354), .Z(n351) );
  GTECH_NOT U327 ( .A(n355), .Z(N145) );
  GTECH_AOI222 U328 ( .A(n356), .B(n326), .C(n328), .D(n357), .E(n330), .F(
        n358), .Z(n355) );
  GTECH_NOT U329 ( .A(n359), .Z(N144) );
  GTECH_AOI222 U330 ( .A(n360), .B(n326), .C(n328), .D(n361), .E(n330), .F(
        n362), .Z(n359) );
  GTECH_NOT U331 ( .A(n363), .Z(N143) );
  GTECH_AOI222 U332 ( .A(n364), .B(n326), .C(n328), .D(n365), .E(n330), .F(
        n366), .Z(n363) );
  GTECH_NOT U333 ( .A(n367), .Z(N142) );
  GTECH_AOI222 U334 ( .A(n368), .B(n326), .C(n328), .D(n369), .E(n330), .F(
        n370), .Z(n367) );
  GTECH_NOT U335 ( .A(n371), .Z(N141) );
  GTECH_AOI222 U336 ( .A(n372), .B(n326), .C(n328), .D(n373), .E(n330), .F(
        n374), .Z(n371) );
  GTECH_NOT U337 ( .A(n375), .Z(N140) );
  GTECH_AOI222 U338 ( .A(n376), .B(n326), .C(n328), .D(n377), .E(n330), .F(
        n378), .Z(n375) );
  GTECH_NOT U339 ( .A(n379), .Z(N14) );
  GTECH_NAND2 U340 ( .A(n297), .B(n265), .Z(n379) );
  GTECH_NOT U341 ( .A(n380), .Z(N139) );
  GTECH_AOI222 U342 ( .A(n381), .B(n326), .C(n328), .D(n382), .E(n330), .F(
        n383), .Z(n380) );
  GTECH_NOT U343 ( .A(n384), .Z(N138) );
  GTECH_AOI222 U344 ( .A(n385), .B(n326), .C(n328), .D(n386), .E(n330), .F(
        n387), .Z(n384) );
  GTECH_NOT U345 ( .A(n388), .Z(N137) );
  GTECH_AOI222 U346 ( .A(n389), .B(n326), .C(n328), .D(n390), .E(n330), .F(
        n391), .Z(n388) );
  GTECH_NOT U347 ( .A(n392), .Z(N136) );
  GTECH_AOI222 U348 ( .A(n326), .B(n285), .C(n328), .D(n287), .E(n330), .F(
        n289), .Z(n392) );
  GTECH_NOT U349 ( .A(n393), .Z(n289) );
  GTECH_XOR2 U350 ( .A(n394), .B(n395), .Z(n393) );
  GTECH_NOT U351 ( .A(n396), .Z(n395) );
  GTECH_NOT U352 ( .A(n397), .Z(n328) );
  GTECH_NOT U353 ( .A(n398), .Z(n285) );
  GTECH_XOR2 U354 ( .A(n394), .B(n399), .Z(n398) );
  GTECH_NOT U355 ( .A(n400), .Z(n399) );
  GTECH_XOR2 U356 ( .A(n287), .B(n267), .Z(n394) );
  GTECH_OAI21 U357 ( .A(n12), .B(n397), .C(n401), .Z(N135) );
  GTECH_OAI21 U358 ( .A(n330), .B(n326), .C(n293), .Z(n401) );
  GTECH_OAI21 U359 ( .A(n12), .B(n402), .C(n396), .Z(n293) );
  GTECH_NOT U360 ( .A(n403), .Z(n326) );
  GTECH_NAND3 U361 ( .A(n28), .B(n404), .C(N155), .Z(n403) );
  GTECH_NOT U362 ( .A(n405), .Z(n330) );
  GTECH_NAND3 U363 ( .A(n10), .B(n406), .C(N155), .Z(n405) );
  GTECH_NAND2 U364 ( .A(n407), .B(N155), .Z(n397) );
  GTECH_XOR2 U365 ( .A(n404), .B(n28), .Z(n407) );
  GTECH_AND2 U366 ( .A(N155), .B(n298), .Z(N134) );
  GTECH_NOT U367 ( .A(n13), .Z(n298) );
  GTECH_AND2 U368 ( .A(N155), .B(n299), .Z(N133) );
  GTECH_NOT U369 ( .A(n14), .Z(n299) );
  GTECH_AND2 U370 ( .A(N155), .B(n300), .Z(N132) );
  GTECH_NOT U371 ( .A(n15), .Z(n300) );
  GTECH_AND2 U372 ( .A(N155), .B(n301), .Z(N131) );
  GTECH_NOT U373 ( .A(n16), .Z(n301) );
  GTECH_AND2 U374 ( .A(N155), .B(n302), .Z(N130) );
  GTECH_NOT U375 ( .A(n17), .Z(n302) );
  GTECH_AND2 U376 ( .A(N155), .B(n303), .Z(N129) );
  GTECH_NOT U377 ( .A(n18), .Z(n303) );
  GTECH_AND2 U378 ( .A(N155), .B(n304), .Z(N128) );
  GTECH_NOT U379 ( .A(n19), .Z(n304) );
  GTECH_AND2 U380 ( .A(N155), .B(n305), .Z(N127) );
  GTECH_NOT U381 ( .A(n20), .Z(n305) );
  GTECH_AND2 U382 ( .A(N155), .B(n306), .Z(N126) );
  GTECH_NOT U383 ( .A(n21), .Z(n306) );
  GTECH_AND2 U384 ( .A(N155), .B(n307), .Z(N125) );
  GTECH_NOT U385 ( .A(n22), .Z(n307) );
  GTECH_AND2 U386 ( .A(N155), .B(n308), .Z(N124) );
  GTECH_NOT U387 ( .A(n23), .Z(n308) );
  GTECH_AND2 U388 ( .A(N155), .B(n309), .Z(N123) );
  GTECH_NOT U389 ( .A(n24), .Z(n309) );
  GTECH_AND2 U390 ( .A(N155), .B(n310), .Z(N122) );
  GTECH_NOT U391 ( .A(n25), .Z(n310) );
  GTECH_AND2 U392 ( .A(N155), .B(n311), .Z(N121) );
  GTECH_NOT U393 ( .A(n26), .Z(n311) );
  GTECH_AND2 U394 ( .A(N155), .B(n312), .Z(N120) );
  GTECH_NOT U395 ( .A(n27), .Z(n312) );
  GTECH_NOT U396 ( .A(n332), .Z(N155) );
  GTECH_NAND3 U397 ( .A(n7), .B(n8), .C(n408), .Z(n332) );
  GTECH_AND4 U398 ( .A(n338), .B(n6), .C(n318), .D(n9), .Z(n408) );
  GTECH_NOT U399 ( .A(n265), .Z(n338) );
  GTECH_NOT U400 ( .A(n409), .Z(N116) );
  GTECH_AOI222 U401 ( .A(n286), .B(n329), .C(n288), .D(n331), .E(n327), .F(
        n284), .Z(n409) );
  GTECH_XOR2 U402 ( .A(n410), .B(n411), .Z(n327) );
  GTECH_ADD_ABC U403 ( .A(n31), .B(n281), .C(n412), .COUT(n411) );
  GTECH_XOR2 U404 ( .A(n413), .B(n410), .Z(n331) );
  GTECH_XOR2 U405 ( .A(A[16]), .B(n30), .Z(n410) );
  GTECH_OAI21 U406 ( .A(n414), .B(n31), .C(n415), .Z(n413) );
  GTECH_OAI21 U407 ( .A(n281), .B(n335), .C(n416), .Z(n415) );
  GTECH_NOT U408 ( .A(n30), .Z(n329) );
  GTECH_NAND2 U409 ( .A(n319), .B(n417), .Z(N115) );
  GTECH_NOT U410 ( .A(N41), .Z(n417) );
  GTECH_NAND2 U411 ( .A(n318), .B(n313), .Z(N41) );
  GTECH_NAND2 U412 ( .A(Ld), .B(n318), .Z(n313) );
  GTECH_NOT U413 ( .A(n418), .Z(N113) );
  GTECH_AOI222 U414 ( .A(n286), .B(n335), .C(n288), .D(n336), .E(n334), .F(
        n284), .Z(n418) );
  GTECH_XOR2 U415 ( .A(n419), .B(n412), .Z(n334) );
  GTECH_ADD_ABC U416 ( .A(n32), .B(n280), .C(n420), .COUT(n412) );
  GTECH_NOT U417 ( .A(n421), .Z(n336) );
  GTECH_XOR2 U418 ( .A(n419), .B(n422), .Z(n421) );
  GTECH_NOT U419 ( .A(n416), .Z(n422) );
  GTECH_OAI21 U420 ( .A(n32), .B(n423), .C(n424), .Z(n416) );
  GTECH_OAI21 U421 ( .A(n280), .B(n341), .C(n425), .Z(n424) );
  GTECH_XOR2 U422 ( .A(n414), .B(n31), .Z(n419) );
  GTECH_NOT U423 ( .A(n281), .Z(n414) );
  GTECH_NOT U424 ( .A(n31), .Z(n335) );
  GTECH_NOT U425 ( .A(n426), .Z(N112) );
  GTECH_AOI222 U426 ( .A(n286), .B(n341), .C(n288), .D(n342), .E(n340), .F(
        n284), .Z(n426) );
  GTECH_XOR2 U427 ( .A(n427), .B(n420), .Z(n340) );
  GTECH_ADD_ABC U428 ( .A(n33), .B(n279), .C(n428), .COUT(n420) );
  GTECH_NOT U429 ( .A(n429), .Z(n342) );
  GTECH_XOR2 U430 ( .A(n427), .B(n430), .Z(n429) );
  GTECH_NOT U431 ( .A(n425), .Z(n430) );
  GTECH_OAI21 U432 ( .A(n33), .B(n431), .C(n432), .Z(n425) );
  GTECH_OAI21 U433 ( .A(n279), .B(n345), .C(n433), .Z(n432) );
  GTECH_XOR2 U434 ( .A(n423), .B(n32), .Z(n427) );
  GTECH_NOT U435 ( .A(n280), .Z(n423) );
  GTECH_NOT U436 ( .A(n32), .Z(n341) );
  GTECH_NOT U437 ( .A(n434), .Z(N111) );
  GTECH_AOI222 U438 ( .A(n286), .B(n345), .C(n288), .D(n346), .E(n344), .F(
        n284), .Z(n434) );
  GTECH_XOR2 U439 ( .A(n435), .B(n428), .Z(n344) );
  GTECH_ADD_ABC U440 ( .A(n34), .B(n278), .C(n436), .COUT(n428) );
  GTECH_NOT U441 ( .A(n437), .Z(n346) );
  GTECH_XOR2 U442 ( .A(n435), .B(n438), .Z(n437) );
  GTECH_NOT U443 ( .A(n433), .Z(n438) );
  GTECH_OAI21 U444 ( .A(n34), .B(n439), .C(n440), .Z(n433) );
  GTECH_OAI21 U445 ( .A(n278), .B(n349), .C(n441), .Z(n440) );
  GTECH_XOR2 U446 ( .A(n431), .B(n33), .Z(n435) );
  GTECH_NOT U447 ( .A(n279), .Z(n431) );
  GTECH_NOT U448 ( .A(n33), .Z(n345) );
  GTECH_NOT U449 ( .A(n442), .Z(N110) );
  GTECH_AOI222 U450 ( .A(n286), .B(n349), .C(n288), .D(n350), .E(n348), .F(
        n284), .Z(n442) );
  GTECH_XOR2 U451 ( .A(n443), .B(n436), .Z(n348) );
  GTECH_ADD_ABC U452 ( .A(n35), .B(n277), .C(n444), .COUT(n436) );
  GTECH_NOT U453 ( .A(n445), .Z(n350) );
  GTECH_XOR2 U454 ( .A(n443), .B(n446), .Z(n445) );
  GTECH_NOT U455 ( .A(n441), .Z(n446) );
  GTECH_OAI21 U456 ( .A(n35), .B(n447), .C(n448), .Z(n441) );
  GTECH_OAI21 U457 ( .A(n277), .B(n353), .C(n449), .Z(n448) );
  GTECH_XOR2 U458 ( .A(n439), .B(n34), .Z(n443) );
  GTECH_NOT U459 ( .A(n278), .Z(n439) );
  GTECH_NOT U460 ( .A(n34), .Z(n349) );
  GTECH_NOT U461 ( .A(n450), .Z(N109) );
  GTECH_AOI222 U462 ( .A(n286), .B(n353), .C(n288), .D(n354), .E(n352), .F(
        n284), .Z(n450) );
  GTECH_XOR2 U463 ( .A(n451), .B(n444), .Z(n352) );
  GTECH_ADD_ABC U464 ( .A(n36), .B(n276), .C(n452), .COUT(n444) );
  GTECH_NOT U465 ( .A(n453), .Z(n354) );
  GTECH_XOR2 U466 ( .A(n451), .B(n454), .Z(n453) );
  GTECH_NOT U467 ( .A(n449), .Z(n454) );
  GTECH_OAI21 U468 ( .A(n36), .B(n455), .C(n456), .Z(n449) );
  GTECH_OAI21 U469 ( .A(n276), .B(n357), .C(n457), .Z(n456) );
  GTECH_XOR2 U470 ( .A(n447), .B(n35), .Z(n451) );
  GTECH_NOT U471 ( .A(n277), .Z(n447) );
  GTECH_NOT U472 ( .A(n35), .Z(n353) );
  GTECH_NOT U473 ( .A(n458), .Z(N108) );
  GTECH_AOI222 U474 ( .A(n286), .B(n357), .C(n288), .D(n358), .E(n356), .F(
        n284), .Z(n458) );
  GTECH_XOR2 U475 ( .A(n459), .B(n452), .Z(n356) );
  GTECH_ADD_ABC U476 ( .A(n37), .B(n275), .C(n460), .COUT(n452) );
  GTECH_NOT U477 ( .A(n461), .Z(n358) );
  GTECH_XOR2 U478 ( .A(n459), .B(n462), .Z(n461) );
  GTECH_NOT U479 ( .A(n457), .Z(n462) );
  GTECH_OAI21 U480 ( .A(n37), .B(n463), .C(n464), .Z(n457) );
  GTECH_OAI21 U481 ( .A(n275), .B(n361), .C(n465), .Z(n464) );
  GTECH_XOR2 U482 ( .A(n455), .B(n36), .Z(n459) );
  GTECH_NOT U483 ( .A(n276), .Z(n455) );
  GTECH_NOT U484 ( .A(n36), .Z(n357) );
  GTECH_NOT U485 ( .A(n466), .Z(N107) );
  GTECH_AOI222 U486 ( .A(n286), .B(n361), .C(n288), .D(n362), .E(n360), .F(
        n284), .Z(n466) );
  GTECH_XOR2 U487 ( .A(n467), .B(n460), .Z(n360) );
  GTECH_ADD_ABC U488 ( .A(n38), .B(n274), .C(n468), .COUT(n460) );
  GTECH_NOT U489 ( .A(n469), .Z(n362) );
  GTECH_XOR2 U490 ( .A(n467), .B(n470), .Z(n469) );
  GTECH_NOT U491 ( .A(n465), .Z(n470) );
  GTECH_OAI21 U492 ( .A(n38), .B(n471), .C(n472), .Z(n465) );
  GTECH_OAI21 U493 ( .A(n274), .B(n365), .C(n473), .Z(n472) );
  GTECH_XOR2 U494 ( .A(n463), .B(n37), .Z(n467) );
  GTECH_NOT U495 ( .A(n275), .Z(n463) );
  GTECH_NOT U496 ( .A(n37), .Z(n361) );
  GTECH_NOT U497 ( .A(n474), .Z(N106) );
  GTECH_AOI222 U498 ( .A(n286), .B(n365), .C(n288), .D(n366), .E(n364), .F(
        n284), .Z(n474) );
  GTECH_XOR2 U499 ( .A(n475), .B(n468), .Z(n364) );
  GTECH_ADD_ABC U500 ( .A(n39), .B(n273), .C(n476), .COUT(n468) );
  GTECH_NOT U501 ( .A(n477), .Z(n366) );
  GTECH_XOR2 U502 ( .A(n475), .B(n478), .Z(n477) );
  GTECH_NOT U503 ( .A(n473), .Z(n478) );
  GTECH_OAI21 U504 ( .A(n39), .B(n479), .C(n480), .Z(n473) );
  GTECH_OAI21 U505 ( .A(n273), .B(n369), .C(n481), .Z(n480) );
  GTECH_XOR2 U506 ( .A(n471), .B(n38), .Z(n475) );
  GTECH_NOT U507 ( .A(n274), .Z(n471) );
  GTECH_NOT U508 ( .A(n38), .Z(n365) );
  GTECH_NOT U509 ( .A(n482), .Z(N105) );
  GTECH_AOI222 U510 ( .A(n286), .B(n369), .C(n288), .D(n370), .E(n368), .F(
        n284), .Z(n482) );
  GTECH_XOR2 U511 ( .A(n483), .B(n476), .Z(n368) );
  GTECH_ADD_ABC U512 ( .A(n40), .B(n272), .C(n484), .COUT(n476) );
  GTECH_NOT U513 ( .A(n485), .Z(n370) );
  GTECH_XOR2 U514 ( .A(n483), .B(n486), .Z(n485) );
  GTECH_NOT U515 ( .A(n481), .Z(n486) );
  GTECH_OAI21 U516 ( .A(n40), .B(n487), .C(n488), .Z(n481) );
  GTECH_OAI21 U517 ( .A(n272), .B(n373), .C(n489), .Z(n488) );
  GTECH_XOR2 U518 ( .A(n479), .B(n39), .Z(n483) );
  GTECH_NOT U519 ( .A(n273), .Z(n479) );
  GTECH_NOT U520 ( .A(n39), .Z(n369) );
  GTECH_NOT U521 ( .A(n490), .Z(N104) );
  GTECH_AOI222 U522 ( .A(n286), .B(n373), .C(n288), .D(n374), .E(n372), .F(
        n284), .Z(n490) );
  GTECH_XOR2 U523 ( .A(n491), .B(n484), .Z(n372) );
  GTECH_ADD_ABC U524 ( .A(n41), .B(n271), .C(n492), .COUT(n484) );
  GTECH_NOT U525 ( .A(n493), .Z(n374) );
  GTECH_XOR2 U526 ( .A(n491), .B(n494), .Z(n493) );
  GTECH_NOT U527 ( .A(n489), .Z(n494) );
  GTECH_OAI21 U528 ( .A(n41), .B(n495), .C(n496), .Z(n489) );
  GTECH_OAI21 U529 ( .A(n271), .B(n377), .C(n497), .Z(n496) );
  GTECH_XOR2 U530 ( .A(n487), .B(n40), .Z(n491) );
  GTECH_NOT U531 ( .A(n272), .Z(n487) );
  GTECH_NOT U532 ( .A(n40), .Z(n373) );
  GTECH_NOT U533 ( .A(n498), .Z(N103) );
  GTECH_AOI222 U534 ( .A(n286), .B(n377), .C(n288), .D(n378), .E(n376), .F(
        n284), .Z(n498) );
  GTECH_XOR2 U535 ( .A(n499), .B(n492), .Z(n376) );
  GTECH_ADD_ABC U536 ( .A(n42), .B(n270), .C(n500), .COUT(n492) );
  GTECH_NOT U537 ( .A(n501), .Z(n378) );
  GTECH_XOR2 U538 ( .A(n499), .B(n502), .Z(n501) );
  GTECH_NOT U539 ( .A(n497), .Z(n502) );
  GTECH_OAI21 U540 ( .A(n42), .B(n503), .C(n504), .Z(n497) );
  GTECH_OAI21 U541 ( .A(n270), .B(n382), .C(n505), .Z(n504) );
  GTECH_XOR2 U542 ( .A(n495), .B(n41), .Z(n499) );
  GTECH_NOT U543 ( .A(n271), .Z(n495) );
  GTECH_NOT U544 ( .A(n41), .Z(n377) );
  GTECH_NOT U545 ( .A(n506), .Z(N102) );
  GTECH_AOI222 U546 ( .A(n286), .B(n382), .C(n288), .D(n383), .E(n381), .F(
        n284), .Z(n506) );
  GTECH_XOR2 U547 ( .A(n507), .B(n500), .Z(n381) );
  GTECH_ADD_ABC U548 ( .A(n43), .B(n269), .C(n508), .COUT(n500) );
  GTECH_NOT U549 ( .A(n509), .Z(n383) );
  GTECH_XOR2 U550 ( .A(n507), .B(n510), .Z(n509) );
  GTECH_NOT U551 ( .A(n505), .Z(n510) );
  GTECH_OAI21 U552 ( .A(n43), .B(n511), .C(n512), .Z(n505) );
  GTECH_OAI21 U553 ( .A(n269), .B(n386), .C(n513), .Z(n512) );
  GTECH_XOR2 U554 ( .A(n503), .B(n42), .Z(n507) );
  GTECH_NOT U555 ( .A(n270), .Z(n503) );
  GTECH_NOT U556 ( .A(n42), .Z(n382) );
  GTECH_NOT U557 ( .A(n514), .Z(N101) );
  GTECH_AOI222 U558 ( .A(n286), .B(n386), .C(n288), .D(n387), .E(n385), .F(
        n284), .Z(n514) );
  GTECH_XOR2 U559 ( .A(n515), .B(n508), .Z(n385) );
  GTECH_ADD_ABC U560 ( .A(n29), .B(n268), .C(n516), .COUT(n508) );
  GTECH_NOT U561 ( .A(n517), .Z(n387) );
  GTECH_XOR2 U562 ( .A(n515), .B(n518), .Z(n517) );
  GTECH_NOT U563 ( .A(n513), .Z(n518) );
  GTECH_OAI21 U564 ( .A(n29), .B(n519), .C(n520), .Z(n513) );
  GTECH_OAI21 U565 ( .A(n268), .B(n390), .C(n521), .Z(n520) );
  GTECH_XOR2 U566 ( .A(n511), .B(n43), .Z(n515) );
  GTECH_NOT U567 ( .A(n269), .Z(n511) );
  GTECH_NOT U568 ( .A(n43), .Z(n386) );
  GTECH_NOT U569 ( .A(n522), .Z(N100) );
  GTECH_AOI222 U570 ( .A(n389), .B(n284), .C(n286), .D(n390), .E(n288), .F(
        n391), .Z(n522) );
  GTECH_NOT U571 ( .A(n523), .Z(n391) );
  GTECH_XOR2 U572 ( .A(n524), .B(n525), .Z(n523) );
  GTECH_NOT U573 ( .A(n521), .Z(n525) );
  GTECH_OAI21 U574 ( .A(n11), .B(n526), .C(n527), .Z(n521) );
  GTECH_OAI21 U575 ( .A(n267), .B(n287), .C(n396), .Z(n527) );
  GTECH_NAND2 U576 ( .A(n12), .B(n402), .Z(n396) );
  GTECH_NOT U577 ( .A(n11), .Z(n287) );
  GTECH_NOT U578 ( .A(n267), .Z(n526) );
  GTECH_NOT U579 ( .A(n296), .Z(n288) );
  GTECH_NAND2 U580 ( .A(N82), .B(n10), .Z(n296) );
  GTECH_NOT U581 ( .A(n528), .Z(N82) );
  GTECH_NOT U582 ( .A(n29), .Z(n390) );
  GTECH_NOT U583 ( .A(n529), .Z(n286) );
  GTECH_MUX2 U584 ( .A(n528), .B(n530), .S(n10), .Z(n529) );
  GTECH_NAND2 U585 ( .A(n28), .B(n297), .Z(n530) );
  GTECH_NAND2 U586 ( .A(n297), .B(n406), .Z(n528) );
  GTECH_NOT U587 ( .A(n28), .Z(n406) );
  GTECH_NOT U588 ( .A(n295), .Z(n284) );
  GTECH_NAND3 U589 ( .A(n297), .B(n404), .C(n28), .Z(n295) );
  GTECH_NOT U590 ( .A(n10), .Z(n404) );
  GTECH_NOT U591 ( .A(n319), .Z(n297) );
  GTECH_OAI21 U592 ( .A(n315), .B(n316), .C(n531), .Z(n319) );
  GTECH_AND2 U593 ( .A(n317), .B(n318), .Z(n531) );
  GTECH_NOT U594 ( .A(Rst), .Z(n318) );
  GTECH_NOT U595 ( .A(Ld), .Z(n317) );
  GTECH_NOT U596 ( .A(n9), .Z(n316) );
  GTECH_NAND2 U597 ( .A(n8), .B(n321), .Z(n315) );
  GTECH_NOT U598 ( .A(n324), .Z(n321) );
  GTECH_NAND2 U599 ( .A(n7), .B(n323), .Z(n324) );
  GTECH_NOT U600 ( .A(n532), .Z(n323) );
  GTECH_NAND2 U601 ( .A(n6), .B(n265), .Z(n532) );
  GTECH_XOR2 U602 ( .A(n524), .B(n516), .Z(n389) );
  GTECH_ADD_ABC U603 ( .A(n267), .B(n11), .C(n400), .COUT(n516) );
  GTECH_NAND2 U604 ( .A(n291), .B(n402), .Z(n400) );
  GTECH_NOT U605 ( .A(n266), .Z(n402) );
  GTECH_NOT U606 ( .A(n12), .Z(n291) );
  GTECH_XOR2 U607 ( .A(n519), .B(n29), .Z(n524) );
  GTECH_NOT U608 ( .A(n268), .Z(n519) );
endmodule

