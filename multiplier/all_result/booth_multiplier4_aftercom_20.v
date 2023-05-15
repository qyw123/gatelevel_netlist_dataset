
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
         n518, n519, n520;
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
  GTECH_NOT U307 ( .A(n9), .Z(n316) );
  GTECH_NAND3 U308 ( .A(n317), .B(n318), .C(n319), .Z(N18) );
  GTECH_OA21 U309 ( .A(n320), .B(n321), .C(n297), .Z(N17) );
  GTECH_AND_NOT U310 ( .A(n322), .B(n8), .Z(n320) );
  GTECH_OA21 U311 ( .A(n323), .B(n324), .C(n297), .Z(N16) );
  GTECH_AND_NOT U312 ( .A(n325), .B(n7), .Z(n323) );
  GTECH_NOT U313 ( .A(n326), .Z(N152) );
  GTECH_AOI222 U314 ( .A(n327), .B(n328), .C(n329), .D(n330), .E(n331), .F(
        n332), .Z(n326) );
  GTECH_NAND2 U315 ( .A(n318), .B(n333), .Z(N151) );
  GTECH_NOT U316 ( .A(n334), .Z(N150) );
  GTECH_AOI222 U317 ( .A(n335), .B(n327), .C(n329), .D(n336), .E(n331), .F(
        n337), .Z(n334) );
  GTECH_MUX2 U318 ( .A(n338), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U319 ( .A(n297), .B(n339), .Z(n338) );
  GTECH_NOT U320 ( .A(n340), .Z(N149) );
  GTECH_AOI222 U321 ( .A(n341), .B(n327), .C(n329), .D(n342), .E(n331), .F(
        n343), .Z(n340) );
  GTECH_NOT U322 ( .A(n344), .Z(N148) );
  GTECH_AOI222 U323 ( .A(n345), .B(n327), .C(n329), .D(n346), .E(n331), .F(
        n347), .Z(n344) );
  GTECH_NOT U324 ( .A(n348), .Z(N147) );
  GTECH_AOI222 U325 ( .A(n349), .B(n327), .C(n329), .D(n350), .E(n331), .F(
        n351), .Z(n348) );
  GTECH_NOT U326 ( .A(n352), .Z(N146) );
  GTECH_AOI222 U327 ( .A(n353), .B(n327), .C(n329), .D(n354), .E(n331), .F(
        n355), .Z(n352) );
  GTECH_NOT U328 ( .A(n356), .Z(N145) );
  GTECH_AOI222 U329 ( .A(n357), .B(n327), .C(n329), .D(n358), .E(n331), .F(
        n359), .Z(n356) );
  GTECH_NOT U330 ( .A(n360), .Z(N144) );
  GTECH_AOI222 U331 ( .A(n361), .B(n327), .C(n329), .D(n362), .E(n331), .F(
        n363), .Z(n360) );
  GTECH_NOT U332 ( .A(n364), .Z(N143) );
  GTECH_AOI222 U333 ( .A(n365), .B(n327), .C(n329), .D(n366), .E(n331), .F(
        n367), .Z(n364) );
  GTECH_NOT U334 ( .A(n368), .Z(N142) );
  GTECH_AOI222 U335 ( .A(n369), .B(n327), .C(n329), .D(n370), .E(n331), .F(
        n371), .Z(n368) );
  GTECH_NOT U336 ( .A(n372), .Z(N141) );
  GTECH_AOI222 U337 ( .A(n373), .B(n327), .C(n329), .D(n374), .E(n331), .F(
        n375), .Z(n372) );
  GTECH_NOT U338 ( .A(n376), .Z(N140) );
  GTECH_AOI222 U339 ( .A(n377), .B(n327), .C(n329), .D(n378), .E(n331), .F(
        n379), .Z(n376) );
  GTECH_NOT U340 ( .A(n380), .Z(N14) );
  GTECH_NAND2 U341 ( .A(n297), .B(n265), .Z(n380) );
  GTECH_NOT U342 ( .A(n381), .Z(N139) );
  GTECH_AOI222 U343 ( .A(n382), .B(n327), .C(n329), .D(n383), .E(n331), .F(
        n384), .Z(n381) );
  GTECH_NOT U344 ( .A(n385), .Z(N138) );
  GTECH_AOI222 U345 ( .A(n386), .B(n327), .C(n329), .D(n387), .E(n331), .F(
        n388), .Z(n385) );
  GTECH_NOT U346 ( .A(n389), .Z(N137) );
  GTECH_AOI222 U347 ( .A(n390), .B(n327), .C(n329), .D(n391), .E(n331), .F(
        n392), .Z(n389) );
  GTECH_NOT U348 ( .A(n393), .Z(N136) );
  GTECH_AOI222 U349 ( .A(n327), .B(n285), .C(n329), .D(n287), .E(n331), .F(
        n289), .Z(n393) );
  GTECH_NOT U350 ( .A(n394), .Z(n289) );
  GTECH_XOR2 U351 ( .A(n395), .B(n396), .Z(n394) );
  GTECH_NOT U352 ( .A(n397), .Z(n331) );
  GTECH_NOT U353 ( .A(n398), .Z(n329) );
  GTECH_NOT U354 ( .A(n399), .Z(n285) );
  GTECH_XOR2 U355 ( .A(n395), .B(n400), .Z(n399) );
  GTECH_NOT U356 ( .A(n401), .Z(n400) );
  GTECH_XOR2 U357 ( .A(n287), .B(n267), .Z(n395) );
  GTECH_NOT U358 ( .A(n11), .Z(n287) );
  GTECH_NOT U359 ( .A(n402), .Z(n327) );
  GTECH_OAI22 U360 ( .A(n12), .B(n398), .C(n403), .D(n404), .Z(N135) );
  GTECH_AND2 U361 ( .A(n402), .B(n397), .Z(n404) );
  GTECH_NAND3 U362 ( .A(n10), .B(n405), .C(N155), .Z(n397) );
  GTECH_NAND3 U363 ( .A(n28), .B(n406), .C(N155), .Z(n402) );
  GTECH_NOT U364 ( .A(n293), .Z(n403) );
  GTECH_AO21 U365 ( .A(n266), .B(n291), .C(n396), .Z(n293) );
  GTECH_NAND2 U366 ( .A(n407), .B(N155), .Z(n398) );
  GTECH_XOR2 U367 ( .A(n406), .B(n28), .Z(n407) );
  GTECH_AND2 U368 ( .A(N155), .B(n298), .Z(N134) );
  GTECH_NOT U369 ( .A(n13), .Z(n298) );
  GTECH_AND2 U370 ( .A(N155), .B(n299), .Z(N133) );
  GTECH_NOT U371 ( .A(n14), .Z(n299) );
  GTECH_AND2 U372 ( .A(N155), .B(n300), .Z(N132) );
  GTECH_NOT U373 ( .A(n15), .Z(n300) );
  GTECH_AND2 U374 ( .A(N155), .B(n301), .Z(N131) );
  GTECH_NOT U375 ( .A(n16), .Z(n301) );
  GTECH_AND2 U376 ( .A(N155), .B(n302), .Z(N130) );
  GTECH_NOT U377 ( .A(n17), .Z(n302) );
  GTECH_AND2 U378 ( .A(N155), .B(n303), .Z(N129) );
  GTECH_NOT U379 ( .A(n18), .Z(n303) );
  GTECH_AND2 U380 ( .A(N155), .B(n304), .Z(N128) );
  GTECH_NOT U381 ( .A(n19), .Z(n304) );
  GTECH_AND2 U382 ( .A(N155), .B(n305), .Z(N127) );
  GTECH_NOT U383 ( .A(n20), .Z(n305) );
  GTECH_AND2 U384 ( .A(N155), .B(n306), .Z(N126) );
  GTECH_NOT U385 ( .A(n21), .Z(n306) );
  GTECH_AND2 U386 ( .A(N155), .B(n307), .Z(N125) );
  GTECH_NOT U387 ( .A(n22), .Z(n307) );
  GTECH_AND2 U388 ( .A(N155), .B(n308), .Z(N124) );
  GTECH_NOT U389 ( .A(n23), .Z(n308) );
  GTECH_AND2 U390 ( .A(N155), .B(n309), .Z(N123) );
  GTECH_NOT U391 ( .A(n24), .Z(n309) );
  GTECH_AND2 U392 ( .A(N155), .B(n310), .Z(N122) );
  GTECH_NOT U393 ( .A(n25), .Z(n310) );
  GTECH_AND2 U394 ( .A(N155), .B(n311), .Z(N121) );
  GTECH_NOT U395 ( .A(n26), .Z(n311) );
  GTECH_AND2 U396 ( .A(N155), .B(n312), .Z(N120) );
  GTECH_NOT U397 ( .A(n27), .Z(n312) );
  GTECH_NOT U398 ( .A(n333), .Z(N155) );
  GTECH_NAND4 U399 ( .A(n8), .B(n7), .C(n9), .D(n408), .Z(n333) );
  GTECH_AND3 U400 ( .A(n318), .B(n339), .C(n6), .Z(n408) );
  GTECH_NOT U401 ( .A(n265), .Z(n339) );
  GTECH_NOT U402 ( .A(n409), .Z(N116) );
  GTECH_AOI222 U403 ( .A(n286), .B(n330), .C(n288), .D(n332), .E(n328), .F(
        n284), .Z(n409) );
  GTECH_XOR2 U404 ( .A(n410), .B(n411), .Z(n328) );
  GTECH_ADD_ABC U405 ( .A(n31), .B(n281), .C(n412), .COUT(n411) );
  GTECH_XOR2 U406 ( .A(n413), .B(n410), .Z(n332) );
  GTECH_XOR2 U407 ( .A(A[16]), .B(n30), .Z(n410) );
  GTECH_OAI22 U408 ( .A(n414), .B(n31), .C(n415), .D(n416), .Z(n413) );
  GTECH_AND2 U409 ( .A(n31), .B(n414), .Z(n415) );
  GTECH_NOT U410 ( .A(n30), .Z(n330) );
  GTECH_NAND2 U411 ( .A(n319), .B(n417), .Z(N115) );
  GTECH_NOT U412 ( .A(N41), .Z(n417) );
  GTECH_NAND2 U413 ( .A(n318), .B(n313), .Z(N41) );
  GTECH_NAND2 U414 ( .A(Ld), .B(n318), .Z(n313) );
  GTECH_NOT U415 ( .A(n418), .Z(N113) );
  GTECH_AOI222 U416 ( .A(n286), .B(n336), .C(n288), .D(n337), .E(n335), .F(
        n284), .Z(n418) );
  GTECH_XOR2 U417 ( .A(n419), .B(n412), .Z(n335) );
  GTECH_ADD_ABC U418 ( .A(n32), .B(n280), .C(n420), .COUT(n412) );
  GTECH_NOT U419 ( .A(n421), .Z(n337) );
  GTECH_XOR2 U420 ( .A(n419), .B(n416), .Z(n421) );
  GTECH_OA21 U421 ( .A(n32), .B(n422), .C(n423), .Z(n416) );
  GTECH_AO21 U422 ( .A(n32), .B(n422), .C(n424), .Z(n423) );
  GTECH_XOR2 U423 ( .A(n414), .B(n31), .Z(n419) );
  GTECH_NOT U424 ( .A(n281), .Z(n414) );
  GTECH_NOT U425 ( .A(n31), .Z(n336) );
  GTECH_NOT U426 ( .A(n425), .Z(N112) );
  GTECH_AOI222 U427 ( .A(n286), .B(n342), .C(n288), .D(n343), .E(n341), .F(
        n284), .Z(n425) );
  GTECH_XOR2 U428 ( .A(n426), .B(n420), .Z(n341) );
  GTECH_ADD_ABC U429 ( .A(n33), .B(n279), .C(n427), .COUT(n420) );
  GTECH_NOT U430 ( .A(n428), .Z(n343) );
  GTECH_XOR2 U431 ( .A(n426), .B(n424), .Z(n428) );
  GTECH_OA21 U432 ( .A(n33), .B(n429), .C(n430), .Z(n424) );
  GTECH_AO21 U433 ( .A(n33), .B(n429), .C(n431), .Z(n430) );
  GTECH_XOR2 U434 ( .A(n422), .B(n32), .Z(n426) );
  GTECH_NOT U435 ( .A(n280), .Z(n422) );
  GTECH_NOT U436 ( .A(n32), .Z(n342) );
  GTECH_NOT U437 ( .A(n432), .Z(N111) );
  GTECH_AOI222 U438 ( .A(n286), .B(n346), .C(n288), .D(n347), .E(n345), .F(
        n284), .Z(n432) );
  GTECH_XOR2 U439 ( .A(n433), .B(n427), .Z(n345) );
  GTECH_ADD_ABC U440 ( .A(n34), .B(n278), .C(n434), .COUT(n427) );
  GTECH_NOT U441 ( .A(n435), .Z(n347) );
  GTECH_XOR2 U442 ( .A(n433), .B(n431), .Z(n435) );
  GTECH_OA21 U443 ( .A(n34), .B(n436), .C(n437), .Z(n431) );
  GTECH_AO21 U444 ( .A(n34), .B(n436), .C(n438), .Z(n437) );
  GTECH_XOR2 U445 ( .A(n429), .B(n33), .Z(n433) );
  GTECH_NOT U446 ( .A(n279), .Z(n429) );
  GTECH_NOT U447 ( .A(n33), .Z(n346) );
  GTECH_NOT U448 ( .A(n439), .Z(N110) );
  GTECH_AOI222 U449 ( .A(n286), .B(n350), .C(n288), .D(n351), .E(n349), .F(
        n284), .Z(n439) );
  GTECH_XOR2 U450 ( .A(n440), .B(n434), .Z(n349) );
  GTECH_ADD_ABC U451 ( .A(n35), .B(n277), .C(n441), .COUT(n434) );
  GTECH_NOT U452 ( .A(n442), .Z(n351) );
  GTECH_XOR2 U453 ( .A(n440), .B(n438), .Z(n442) );
  GTECH_OA21 U454 ( .A(n35), .B(n443), .C(n444), .Z(n438) );
  GTECH_AO21 U455 ( .A(n35), .B(n443), .C(n445), .Z(n444) );
  GTECH_XOR2 U456 ( .A(n436), .B(n34), .Z(n440) );
  GTECH_NOT U457 ( .A(n278), .Z(n436) );
  GTECH_NOT U458 ( .A(n34), .Z(n350) );
  GTECH_NOT U459 ( .A(n446), .Z(N109) );
  GTECH_AOI222 U460 ( .A(n286), .B(n354), .C(n288), .D(n355), .E(n353), .F(
        n284), .Z(n446) );
  GTECH_XOR2 U461 ( .A(n447), .B(n441), .Z(n353) );
  GTECH_ADD_ABC U462 ( .A(n36), .B(n276), .C(n448), .COUT(n441) );
  GTECH_NOT U463 ( .A(n449), .Z(n355) );
  GTECH_XOR2 U464 ( .A(n447), .B(n445), .Z(n449) );
  GTECH_OA21 U465 ( .A(n36), .B(n450), .C(n451), .Z(n445) );
  GTECH_AO21 U466 ( .A(n36), .B(n450), .C(n452), .Z(n451) );
  GTECH_XOR2 U467 ( .A(n443), .B(n35), .Z(n447) );
  GTECH_NOT U468 ( .A(n277), .Z(n443) );
  GTECH_NOT U469 ( .A(n35), .Z(n354) );
  GTECH_NOT U470 ( .A(n453), .Z(N108) );
  GTECH_AOI222 U471 ( .A(n286), .B(n358), .C(n288), .D(n359), .E(n357), .F(
        n284), .Z(n453) );
  GTECH_XOR2 U472 ( .A(n454), .B(n448), .Z(n357) );
  GTECH_ADD_ABC U473 ( .A(n37), .B(n275), .C(n455), .COUT(n448) );
  GTECH_NOT U474 ( .A(n456), .Z(n359) );
  GTECH_XOR2 U475 ( .A(n454), .B(n452), .Z(n456) );
  GTECH_OA21 U476 ( .A(n37), .B(n457), .C(n458), .Z(n452) );
  GTECH_AO21 U477 ( .A(n37), .B(n457), .C(n459), .Z(n458) );
  GTECH_XOR2 U478 ( .A(n450), .B(n36), .Z(n454) );
  GTECH_NOT U479 ( .A(n276), .Z(n450) );
  GTECH_NOT U480 ( .A(n36), .Z(n358) );
  GTECH_NOT U481 ( .A(n460), .Z(N107) );
  GTECH_AOI222 U482 ( .A(n286), .B(n362), .C(n288), .D(n363), .E(n361), .F(
        n284), .Z(n460) );
  GTECH_XOR2 U483 ( .A(n461), .B(n455), .Z(n361) );
  GTECH_ADD_ABC U484 ( .A(n38), .B(n274), .C(n462), .COUT(n455) );
  GTECH_NOT U485 ( .A(n463), .Z(n363) );
  GTECH_XOR2 U486 ( .A(n461), .B(n459), .Z(n463) );
  GTECH_OA21 U487 ( .A(n38), .B(n464), .C(n465), .Z(n459) );
  GTECH_AO21 U488 ( .A(n38), .B(n464), .C(n466), .Z(n465) );
  GTECH_XOR2 U489 ( .A(n457), .B(n37), .Z(n461) );
  GTECH_NOT U490 ( .A(n275), .Z(n457) );
  GTECH_NOT U491 ( .A(n37), .Z(n362) );
  GTECH_NOT U492 ( .A(n467), .Z(N106) );
  GTECH_AOI222 U493 ( .A(n286), .B(n366), .C(n288), .D(n367), .E(n365), .F(
        n284), .Z(n467) );
  GTECH_XOR2 U494 ( .A(n468), .B(n462), .Z(n365) );
  GTECH_ADD_ABC U495 ( .A(n39), .B(n273), .C(n469), .COUT(n462) );
  GTECH_NOT U496 ( .A(n470), .Z(n367) );
  GTECH_XOR2 U497 ( .A(n468), .B(n466), .Z(n470) );
  GTECH_OA21 U498 ( .A(n39), .B(n471), .C(n472), .Z(n466) );
  GTECH_AO21 U499 ( .A(n39), .B(n471), .C(n473), .Z(n472) );
  GTECH_XOR2 U500 ( .A(n464), .B(n38), .Z(n468) );
  GTECH_NOT U501 ( .A(n274), .Z(n464) );
  GTECH_NOT U502 ( .A(n38), .Z(n366) );
  GTECH_NOT U503 ( .A(n474), .Z(N105) );
  GTECH_AOI222 U504 ( .A(n286), .B(n370), .C(n288), .D(n371), .E(n369), .F(
        n284), .Z(n474) );
  GTECH_XOR2 U505 ( .A(n475), .B(n469), .Z(n369) );
  GTECH_ADD_ABC U506 ( .A(n40), .B(n272), .C(n476), .COUT(n469) );
  GTECH_NOT U507 ( .A(n477), .Z(n371) );
  GTECH_XOR2 U508 ( .A(n475), .B(n473), .Z(n477) );
  GTECH_OA21 U509 ( .A(n40), .B(n478), .C(n479), .Z(n473) );
  GTECH_AO21 U510 ( .A(n40), .B(n478), .C(n480), .Z(n479) );
  GTECH_XOR2 U511 ( .A(n471), .B(n39), .Z(n475) );
  GTECH_NOT U512 ( .A(n273), .Z(n471) );
  GTECH_NOT U513 ( .A(n39), .Z(n370) );
  GTECH_NOT U514 ( .A(n481), .Z(N104) );
  GTECH_AOI222 U515 ( .A(n286), .B(n374), .C(n288), .D(n375), .E(n373), .F(
        n284), .Z(n481) );
  GTECH_XOR2 U516 ( .A(n482), .B(n476), .Z(n373) );
  GTECH_ADD_ABC U517 ( .A(n41), .B(n271), .C(n483), .COUT(n476) );
  GTECH_NOT U518 ( .A(n484), .Z(n375) );
  GTECH_XOR2 U519 ( .A(n482), .B(n480), .Z(n484) );
  GTECH_OA21 U520 ( .A(n41), .B(n485), .C(n486), .Z(n480) );
  GTECH_AO21 U521 ( .A(n41), .B(n485), .C(n487), .Z(n486) );
  GTECH_XOR2 U522 ( .A(n478), .B(n40), .Z(n482) );
  GTECH_NOT U523 ( .A(n272), .Z(n478) );
  GTECH_NOT U524 ( .A(n40), .Z(n374) );
  GTECH_NOT U525 ( .A(n488), .Z(N103) );
  GTECH_AOI222 U526 ( .A(n286), .B(n378), .C(n288), .D(n379), .E(n377), .F(
        n284), .Z(n488) );
  GTECH_XOR2 U527 ( .A(n489), .B(n483), .Z(n377) );
  GTECH_ADD_ABC U528 ( .A(n42), .B(n270), .C(n490), .COUT(n483) );
  GTECH_NOT U529 ( .A(n491), .Z(n379) );
  GTECH_XOR2 U530 ( .A(n489), .B(n487), .Z(n491) );
  GTECH_OA21 U531 ( .A(n42), .B(n492), .C(n493), .Z(n487) );
  GTECH_AO21 U532 ( .A(n42), .B(n492), .C(n494), .Z(n493) );
  GTECH_XOR2 U533 ( .A(n485), .B(n41), .Z(n489) );
  GTECH_NOT U534 ( .A(n271), .Z(n485) );
  GTECH_NOT U535 ( .A(n41), .Z(n378) );
  GTECH_NOT U536 ( .A(n495), .Z(N102) );
  GTECH_AOI222 U537 ( .A(n286), .B(n383), .C(n288), .D(n384), .E(n382), .F(
        n284), .Z(n495) );
  GTECH_XOR2 U538 ( .A(n496), .B(n490), .Z(n382) );
  GTECH_ADD_ABC U539 ( .A(n43), .B(n269), .C(n497), .COUT(n490) );
  GTECH_NOT U540 ( .A(n498), .Z(n384) );
  GTECH_XOR2 U541 ( .A(n496), .B(n494), .Z(n498) );
  GTECH_OA21 U542 ( .A(n43), .B(n499), .C(n500), .Z(n494) );
  GTECH_AO21 U543 ( .A(n43), .B(n499), .C(n501), .Z(n500) );
  GTECH_XOR2 U544 ( .A(n492), .B(n42), .Z(n496) );
  GTECH_NOT U545 ( .A(n270), .Z(n492) );
  GTECH_NOT U546 ( .A(n42), .Z(n383) );
  GTECH_NOT U547 ( .A(n502), .Z(N101) );
  GTECH_AOI222 U548 ( .A(n286), .B(n387), .C(n288), .D(n388), .E(n386), .F(
        n284), .Z(n502) );
  GTECH_XOR2 U549 ( .A(n503), .B(n497), .Z(n386) );
  GTECH_ADD_ABC U550 ( .A(n29), .B(n268), .C(n504), .COUT(n497) );
  GTECH_NOT U551 ( .A(n505), .Z(n388) );
  GTECH_XOR2 U552 ( .A(n503), .B(n501), .Z(n505) );
  GTECH_OA21 U553 ( .A(n29), .B(n506), .C(n507), .Z(n501) );
  GTECH_AO21 U554 ( .A(n29), .B(n506), .C(n508), .Z(n507) );
  GTECH_XOR2 U555 ( .A(n499), .B(n43), .Z(n503) );
  GTECH_NOT U556 ( .A(n269), .Z(n499) );
  GTECH_NOT U557 ( .A(n43), .Z(n387) );
  GTECH_NOT U558 ( .A(n509), .Z(N100) );
  GTECH_AOI222 U559 ( .A(n390), .B(n284), .C(n286), .D(n391), .E(n288), .F(
        n392), .Z(n509) );
  GTECH_NOT U560 ( .A(n510), .Z(n392) );
  GTECH_XOR2 U561 ( .A(n511), .B(n508), .Z(n510) );
  GTECH_OA21 U562 ( .A(n11), .B(n512), .C(n513), .Z(n508) );
  GTECH_AO21 U563 ( .A(n11), .B(n512), .C(n396), .Z(n513) );
  GTECH_NOT U564 ( .A(n514), .Z(n396) );
  GTECH_NAND2 U565 ( .A(n12), .B(n515), .Z(n514) );
  GTECH_NOT U566 ( .A(n267), .Z(n512) );
  GTECH_NOT U567 ( .A(n296), .Z(n288) );
  GTECH_NAND2 U568 ( .A(N82), .B(n10), .Z(n296) );
  GTECH_NOT U569 ( .A(n516), .Z(N82) );
  GTECH_NOT U570 ( .A(n29), .Z(n391) );
  GTECH_NOT U571 ( .A(n517), .Z(n286) );
  GTECH_MUX2 U572 ( .A(n516), .B(n518), .S(n10), .Z(n517) );
  GTECH_NAND2 U573 ( .A(n28), .B(n297), .Z(n518) );
  GTECH_NAND2 U574 ( .A(n297), .B(n405), .Z(n516) );
  GTECH_NOT U575 ( .A(n28), .Z(n405) );
  GTECH_NOT U576 ( .A(n295), .Z(n284) );
  GTECH_NAND3 U577 ( .A(n297), .B(n406), .C(n28), .Z(n295) );
  GTECH_NOT U578 ( .A(n10), .Z(n406) );
  GTECH_NOT U579 ( .A(n319), .Z(n297) );
  GTECH_AO21 U580 ( .A(n9), .B(n321), .C(n519), .Z(n319) );
  GTECH_NAND2 U581 ( .A(n317), .B(n318), .Z(n519) );
  GTECH_NOT U582 ( .A(Rst), .Z(n318) );
  GTECH_NOT U583 ( .A(Ld), .Z(n317) );
  GTECH_NOT U584 ( .A(n315), .Z(n321) );
  GTECH_NAND2 U585 ( .A(n8), .B(n324), .Z(n315) );
  GTECH_NOT U586 ( .A(n322), .Z(n324) );
  GTECH_NAND2 U587 ( .A(n7), .B(n520), .Z(n322) );
  GTECH_NOT U588 ( .A(n325), .Z(n520) );
  GTECH_NAND2 U589 ( .A(n6), .B(n265), .Z(n325) );
  GTECH_XOR2 U590 ( .A(n511), .B(n504), .Z(n390) );
  GTECH_ADD_ABC U591 ( .A(n267), .B(n11), .C(n401), .COUT(n504) );
  GTECH_NAND2 U592 ( .A(n291), .B(n515), .Z(n401) );
  GTECH_NOT U593 ( .A(n266), .Z(n515) );
  GTECH_NOT U594 ( .A(n12), .Z(n291) );
  GTECH_XOR2 U595 ( .A(n506), .B(n29), .Z(n511) );
  GTECH_NOT U596 ( .A(n268), .Z(n506) );
endmodule

