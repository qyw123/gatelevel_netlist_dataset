
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
         n43, n117, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n272, n273, n274, n275,
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
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK1S Cntr_reg_0_ ( .J(n117), .K(n117), .TI(N14), .TE(N18), .CP(clk), 
        .Q(Cntr[0]), .QN(n254) );
  GTECH_FJK1S Cntr_reg_1_ ( .J(n117), .K(n117), .TI(N15), .TE(N18), .CP(clk), 
        .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK1S Cntr_reg_2_ ( .J(n117), .K(n117), .TI(N16), .TE(N18), .CP(clk), 
        .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK1S Cntr_reg_3_ ( .J(n117), .K(n117), .TI(N17), .TE(N18), .CP(clk), 
        .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK1S Cntr_reg_4_ ( .J(n117), .K(n117), .TI(N19), .TE(N18), .CP(clk), 
        .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK1S A_reg_16_ ( .J(n117), .K(n117), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[16]) );
  GTECH_FJK1S A_reg_15_ ( .J(n117), .K(n117), .TI(N42), .TE(N41), .CP(clk), 
        .Q(A[15]), .QN(n270) );
  GTECH_FJK1S A_reg_14_ ( .J(n117), .K(n117), .TI(N39), .TE(N41), .CP(clk), 
        .Q(A[14]), .QN(n269) );
  GTECH_FJK1S A_reg_13_ ( .J(n117), .K(n117), .TI(N38), .TE(N41), .CP(clk), 
        .Q(A[13]), .QN(n268) );
  GTECH_FJK1S A_reg_12_ ( .J(n117), .K(n117), .TI(N37), .TE(N41), .CP(clk), 
        .Q(A[12]), .QN(n267) );
  GTECH_FJK1S A_reg_11_ ( .J(n117), .K(n117), .TI(N36), .TE(N41), .CP(clk), 
        .Q(A[11]), .QN(n266) );
  GTECH_FJK1S A_reg_10_ ( .J(n117), .K(n117), .TI(N35), .TE(N41), .CP(clk), 
        .Q(A[10]), .QN(n265) );
  GTECH_FJK1S A_reg_9_ ( .J(n117), .K(n117), .TI(N34), .TE(N41), .CP(clk), .Q(
        A[9]), .QN(n264) );
  GTECH_FJK1S A_reg_8_ ( .J(n117), .K(n117), .TI(N33), .TE(N41), .CP(clk), .Q(
        A[8]), .QN(n263) );
  GTECH_FJK1S A_reg_7_ ( .J(n117), .K(n117), .TI(N32), .TE(N41), .CP(clk), .Q(
        A[7]), .QN(n262) );
  GTECH_FJK1S A_reg_6_ ( .J(n117), .K(n117), .TI(N31), .TE(N41), .CP(clk), .Q(
        A[6]), .QN(n261) );
  GTECH_FJK1S A_reg_5_ ( .J(n117), .K(n117), .TI(N30), .TE(N41), .CP(clk), .Q(
        A[5]), .QN(n260) );
  GTECH_FJK1S A_reg_4_ ( .J(n117), .K(n117), .TI(N29), .TE(N41), .CP(clk), .Q(
        A[4]), .QN(n259) );
  GTECH_FJK1S A_reg_3_ ( .J(n117), .K(n117), .TI(N28), .TE(N41), .CP(clk), .Q(
        A[3]), .QN(n258) );
  GTECH_FJK1S A_reg_2_ ( .J(n117), .K(n117), .TI(N27), .TE(N41), .CP(clk), .Q(
        A[2]), .QN(n257) );
  GTECH_FJK1S A_reg_1_ ( .J(n117), .K(n117), .TI(N26), .TE(N41), .CP(clk), .Q(
        A[1]), .QN(n256) );
  GTECH_FJK1S A_reg_0_ ( .J(n117), .K(n117), .TI(N25), .TE(N41), .CP(clk), .Q(
        A[0]), .QN(n255) );
  GTECH_FJK1S Prod_reg_0_ ( .J(n117), .K(n117), .TI(N82), .TE(N115), .CP(clk), 
        .Q(Prod[0]), .QN(n10) );
  GTECH_FJK1S Prod_reg_18_ ( .J(n117), .K(n117), .TI(N100), .TE(N115), .CP(clk), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK1S Prod_reg_17_ ( .J(n117), .K(n117), .TI(N99), .TE(N115), .CP(clk), 
        .Q(Prod[17]), .QN(n12) );
  GTECH_FJK1S Prod_reg_16_ ( .J(n117), .K(n117), .TI(N98), .TE(N115), .CP(clk), 
        .Q(Prod[16]), .QN(n13) );
  GTECH_FJK1S Prod_reg_15_ ( .J(n117), .K(n117), .TI(N97), .TE(N115), .CP(clk), 
        .Q(Prod[15]), .QN(n14) );
  GTECH_FJK1S Prod_reg_14_ ( .J(n117), .K(n117), .TI(N96), .TE(N115), .CP(clk), 
        .Q(Prod[14]), .QN(n15) );
  GTECH_FJK1S Prod_reg_13_ ( .J(n117), .K(n117), .TI(N95), .TE(N115), .CP(clk), 
        .Q(Prod[13]), .QN(n16) );
  GTECH_FJK1S Prod_reg_12_ ( .J(n117), .K(n117), .TI(N94), .TE(N115), .CP(clk), 
        .Q(Prod[12]), .QN(n17) );
  GTECH_FJK1S Prod_reg_11_ ( .J(n117), .K(n117), .TI(N93), .TE(N115), .CP(clk), 
        .Q(Prod[11]), .QN(n18) );
  GTECH_FJK1S Prod_reg_10_ ( .J(n117), .K(n117), .TI(N92), .TE(N115), .CP(clk), 
        .Q(Prod[10]), .QN(n19) );
  GTECH_FJK1S Prod_reg_9_ ( .J(n117), .K(n117), .TI(N91), .TE(N115), .CP(clk), 
        .Q(Prod[9]), .QN(n20) );
  GTECH_FJK1S Prod_reg_8_ ( .J(n117), .K(n117), .TI(N90), .TE(N115), .CP(clk), 
        .Q(Prod[8]), .QN(n21) );
  GTECH_FJK1S Prod_reg_7_ ( .J(n117), .K(n117), .TI(N89), .TE(N115), .CP(clk), 
        .Q(Prod[7]), .QN(n22) );
  GTECH_FJK1S Prod_reg_6_ ( .J(n117), .K(n117), .TI(N88), .TE(N115), .CP(clk), 
        .Q(Prod[6]), .QN(n23) );
  GTECH_FJK1S Prod_reg_5_ ( .J(n117), .K(n117), .TI(N87), .TE(N115), .CP(clk), 
        .Q(Prod[5]), .QN(n24) );
  GTECH_FJK1S Prod_reg_4_ ( .J(n117), .K(n117), .TI(N86), .TE(N115), .CP(clk), 
        .Q(Prod[4]), .QN(n25) );
  GTECH_FJK1S Prod_reg_3_ ( .J(n117), .K(n117), .TI(N85), .TE(N115), .CP(clk), 
        .Q(Prod[3]), .QN(n26) );
  GTECH_FJK1S Prod_reg_2_ ( .J(n117), .K(n117), .TI(N84), .TE(N115), .CP(clk), 
        .Q(Prod[2]), .QN(n27) );
  GTECH_FJK1S Prod_reg_1_ ( .J(n117), .K(n117), .TI(N83), .TE(N115), .CP(clk), 
        .Q(Prod[1]), .QN(n28) );
  GTECH_FJK1S Prod_reg_19_ ( .J(n117), .K(n117), .TI(N101), .TE(N115), .CP(clk), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK1S Prod_reg_33_ ( .J(n117), .K(n117), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK1S Prod_reg_32_ ( .J(n117), .K(n117), .TI(N116), .TE(N115), .CP(clk), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK1S Prod_reg_31_ ( .J(n117), .K(n117), .TI(N113), .TE(N115), .CP(clk), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK1S Prod_reg_30_ ( .J(n117), .K(n117), .TI(N112), .TE(N115), .CP(clk), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK1S Prod_reg_29_ ( .J(n117), .K(n117), .TI(N111), .TE(N115), .CP(clk), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK1S Prod_reg_28_ ( .J(n117), .K(n117), .TI(N110), .TE(N115), .CP(clk), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK1S Prod_reg_27_ ( .J(n117), .K(n117), .TI(N109), .TE(N115), .CP(clk), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK1S Prod_reg_26_ ( .J(n117), .K(n117), .TI(N108), .TE(N115), .CP(clk), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK1S Prod_reg_25_ ( .J(n117), .K(n117), .TI(N107), .TE(N115), .CP(clk), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK1S Prod_reg_24_ ( .J(n117), .K(n117), .TI(N106), .TE(N115), .CP(clk), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK1S Prod_reg_23_ ( .J(n117), .K(n117), .TI(N105), .TE(N115), .CP(clk), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK1S Prod_reg_22_ ( .J(n117), .K(n117), .TI(N104), .TE(N115), .CP(clk), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK1S Prod_reg_21_ ( .J(n117), .K(n117), .TI(N103), .TE(N115), .CP(clk), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK1S Prod_reg_20_ ( .J(n117), .K(n117), .TI(N102), .TE(N115), .CP(clk), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK1S P_reg_31_ ( .J(n117), .K(n117), .TI(N152), .TE(N151), .CP(clk), 
        .Q(P[31]) );
  GTECH_FJK1S P_reg_30_ ( .J(n117), .K(n117), .TI(N150), .TE(N151), .CP(clk), 
        .Q(P[30]) );
  GTECH_FJK1S P_reg_29_ ( .J(n117), .K(n117), .TI(N149), .TE(N151), .CP(clk), 
        .Q(P[29]) );
  GTECH_FJK1S P_reg_28_ ( .J(n117), .K(n117), .TI(N148), .TE(N151), .CP(clk), 
        .Q(P[28]) );
  GTECH_FJK1S P_reg_27_ ( .J(n117), .K(n117), .TI(N147), .TE(N151), .CP(clk), 
        .Q(P[27]) );
  GTECH_FJK1S P_reg_26_ ( .J(n117), .K(n117), .TI(N146), .TE(N151), .CP(clk), 
        .Q(P[26]) );
  GTECH_FJK1S P_reg_25_ ( .J(n117), .K(n117), .TI(N145), .TE(N151), .CP(clk), 
        .Q(P[25]) );
  GTECH_FJK1S P_reg_24_ ( .J(n117), .K(n117), .TI(N144), .TE(N151), .CP(clk), 
        .Q(P[24]) );
  GTECH_FJK1S P_reg_23_ ( .J(n117), .K(n117), .TI(N143), .TE(N151), .CP(clk), 
        .Q(P[23]) );
  GTECH_FJK1S P_reg_22_ ( .J(n117), .K(n117), .TI(N142), .TE(N151), .CP(clk), 
        .Q(P[22]) );
  GTECH_FJK1S P_reg_21_ ( .J(n117), .K(n117), .TI(N141), .TE(N151), .CP(clk), 
        .Q(P[21]) );
  GTECH_FJK1S P_reg_20_ ( .J(n117), .K(n117), .TI(N140), .TE(N151), .CP(clk), 
        .Q(P[20]) );
  GTECH_FJK1S P_reg_19_ ( .J(n117), .K(n117), .TI(N139), .TE(N151), .CP(clk), 
        .Q(P[19]) );
  GTECH_FJK1S P_reg_18_ ( .J(n117), .K(n117), .TI(N138), .TE(N151), .CP(clk), 
        .Q(P[18]) );
  GTECH_FJK1S P_reg_17_ ( .J(n117), .K(n117), .TI(N137), .TE(N151), .CP(clk), 
        .Q(P[17]) );
  GTECH_FJK1S P_reg_16_ ( .J(n117), .K(n117), .TI(N136), .TE(N151), .CP(clk), 
        .Q(P[16]) );
  GTECH_FJK1S P_reg_15_ ( .J(n117), .K(n117), .TI(N135), .TE(N151), .CP(clk), 
        .Q(P[15]) );
  GTECH_FJK1S P_reg_14_ ( .J(n117), .K(n117), .TI(N134), .TE(N151), .CP(clk), 
        .Q(P[14]) );
  GTECH_FJK1S P_reg_13_ ( .J(n117), .K(n117), .TI(N133), .TE(N151), .CP(clk), 
        .Q(P[13]) );
  GTECH_FJK1S P_reg_12_ ( .J(n117), .K(n117), .TI(N132), .TE(N151), .CP(clk), 
        .Q(P[12]) );
  GTECH_FJK1S P_reg_11_ ( .J(n117), .K(n117), .TI(N131), .TE(N151), .CP(clk), 
        .Q(P[11]) );
  GTECH_FJK1S P_reg_10_ ( .J(n117), .K(n117), .TI(N130), .TE(N151), .CP(clk), 
        .Q(P[10]) );
  GTECH_FJK1S P_reg_9_ ( .J(n117), .K(n117), .TI(N129), .TE(N151), .CP(clk), 
        .Q(P[9]) );
  GTECH_FJK1S P_reg_8_ ( .J(n117), .K(n117), .TI(N128), .TE(N151), .CP(clk), 
        .Q(P[8]) );
  GTECH_FJK1S P_reg_7_ ( .J(n117), .K(n117), .TI(N127), .TE(N151), .CP(clk), 
        .Q(P[7]) );
  GTECH_FJK1S P_reg_6_ ( .J(n117), .K(n117), .TI(N126), .TE(N151), .CP(clk), 
        .Q(P[6]) );
  GTECH_FJK1S P_reg_5_ ( .J(n117), .K(n117), .TI(N125), .TE(N151), .CP(clk), 
        .Q(P[5]) );
  GTECH_FJK1S P_reg_4_ ( .J(n117), .K(n117), .TI(N124), .TE(N151), .CP(clk), 
        .Q(P[4]) );
  GTECH_FJK1S P_reg_3_ ( .J(n117), .K(n117), .TI(N123), .TE(N151), .CP(clk), 
        .Q(P[3]) );
  GTECH_FJK1S P_reg_2_ ( .J(n117), .K(n117), .TI(N122), .TE(N151), .CP(clk), 
        .Q(P[2]) );
  GTECH_FJK1S P_reg_1_ ( .J(n117), .K(n117), .TI(N121), .TE(N151), .CP(clk), 
        .Q(P[1]) );
  GTECH_FJK1S P_reg_0_ ( .J(n117), .K(n117), .TI(N120), .TE(N151), .CP(clk), 
        .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U256 ( .Z(n117) );
  GTECH_NOT U257 ( .A(n272), .Z(N99) );
  GTECH_AOI222 U258 ( .A(n273), .B(n274), .C(n275), .D(n276), .E(n277), .F(
        n278), .Z(n272) );
  GTECH_NOT U259 ( .A(n279), .Z(N98) );
  GTECH_AOI222 U260 ( .A(n275), .B(n280), .C(n281), .D(n282), .E(R[15]), .F(
        n283), .Z(n279) );
  GTECH_OR_NOT U261 ( .A(n277), .B(n284), .Z(n281) );
  GTECH_OAI2N2 U262 ( .A(n13), .B(n285), .C(R[14]), .D(n283), .Z(N97) );
  GTECH_OAI2N2 U263 ( .A(n14), .B(n285), .C(R[13]), .D(n283), .Z(N96) );
  GTECH_OAI2N2 U264 ( .A(n15), .B(n285), .C(R[12]), .D(n283), .Z(N95) );
  GTECH_OAI2N2 U265 ( .A(n16), .B(n285), .C(R[11]), .D(n283), .Z(N94) );
  GTECH_OAI2N2 U266 ( .A(n17), .B(n285), .C(R[10]), .D(n283), .Z(N93) );
  GTECH_OAI2N2 U267 ( .A(n18), .B(n285), .C(R[9]), .D(n283), .Z(N92) );
  GTECH_OAI2N2 U268 ( .A(n19), .B(n285), .C(R[8]), .D(n283), .Z(N91) );
  GTECH_OAI2N2 U269 ( .A(n20), .B(n285), .C(R[7]), .D(n283), .Z(N90) );
  GTECH_OAI2N2 U270 ( .A(n21), .B(n285), .C(R[6]), .D(n283), .Z(N89) );
  GTECH_OAI2N2 U271 ( .A(n22), .B(n285), .C(R[5]), .D(n283), .Z(N88) );
  GTECH_OAI2N2 U272 ( .A(n23), .B(n285), .C(R[4]), .D(n283), .Z(N87) );
  GTECH_OAI2N2 U273 ( .A(n24), .B(n285), .C(R[3]), .D(n283), .Z(N86) );
  GTECH_OAI2N2 U274 ( .A(n25), .B(n285), .C(R[2]), .D(n283), .Z(N85) );
  GTECH_OAI2N2 U275 ( .A(n26), .B(n285), .C(R[1]), .D(n283), .Z(N84) );
  GTECH_OAI2N2 U276 ( .A(n27), .B(n285), .C(R[0]), .D(n283), .Z(N83) );
  GTECH_AND2 U277 ( .A(M[15]), .B(n283), .Z(N42) );
  GTECH_AND2 U278 ( .A(M[14]), .B(n283), .Z(N39) );
  GTECH_AND2 U279 ( .A(M[13]), .B(n283), .Z(N38) );
  GTECH_AND2 U280 ( .A(M[12]), .B(n283), .Z(N37) );
  GTECH_AND2 U281 ( .A(M[11]), .B(n283), .Z(N36) );
  GTECH_AND2 U282 ( .A(M[10]), .B(n283), .Z(N35) );
  GTECH_AND2 U283 ( .A(M[9]), .B(n283), .Z(N34) );
  GTECH_AND2 U284 ( .A(M[8]), .B(n283), .Z(N33) );
  GTECH_AND2 U285 ( .A(M[7]), .B(n283), .Z(N32) );
  GTECH_AND2 U286 ( .A(M[6]), .B(n283), .Z(N31) );
  GTECH_AND2 U287 ( .A(M[5]), .B(n283), .Z(N30) );
  GTECH_AND2 U288 ( .A(M[4]), .B(n283), .Z(N29) );
  GTECH_AND2 U289 ( .A(M[3]), .B(n283), .Z(N28) );
  GTECH_AND2 U290 ( .A(M[2]), .B(n283), .Z(N27) );
  GTECH_AND2 U291 ( .A(M[1]), .B(n283), .Z(N26) );
  GTECH_AND2 U292 ( .A(M[0]), .B(n283), .Z(N25) );
  GTECH_OR_NOT U293 ( .A(n286), .B(n287), .Z(N19) );
  GTECH_AND3 U294 ( .A(n288), .B(n289), .C(n290), .Z(n286) );
  GTECH_NOT U295 ( .A(n9), .Z(n289) );
  GTECH_NAND3 U296 ( .A(n291), .B(n292), .C(n285), .Z(N18) );
  GTECH_OA21 U297 ( .A(n293), .B(n294), .C(n290), .Z(N17) );
  GTECH_AND_NOT U298 ( .A(n295), .B(n8), .Z(n293) );
  GTECH_AOI21 U299 ( .A(n295), .B(n296), .C(n285), .Z(N16) );
  GTECH_OR_NOT U300 ( .A(n7), .B(n297), .Z(n296) );
  GTECH_NOT U301 ( .A(n298), .Z(N152) );
  GTECH_AOI222 U302 ( .A(n299), .B(n300), .C(n301), .D(n302), .E(n303), .F(
        n304), .Z(n298) );
  GTECH_OR_NOT U303 ( .A(N155), .B(n292), .Z(N151) );
  GTECH_NOT U304 ( .A(n305), .Z(N150) );
  GTECH_AOI222 U305 ( .A(n306), .B(n299), .C(n301), .D(n307), .E(n303), .F(
        n308), .Z(n305) );
  GTECH_MUX2 U306 ( .A(n309), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U307 ( .A(n290), .B(n310), .Z(n309) );
  GTECH_NOT U308 ( .A(n311), .Z(N149) );
  GTECH_AOI222 U309 ( .A(n312), .B(n299), .C(n301), .D(n313), .E(n303), .F(
        n314), .Z(n311) );
  GTECH_NOT U310 ( .A(n315), .Z(N148) );
  GTECH_AOI222 U311 ( .A(n316), .B(n299), .C(n301), .D(n317), .E(n303), .F(
        n318), .Z(n315) );
  GTECH_NOT U312 ( .A(n319), .Z(N147) );
  GTECH_AOI222 U313 ( .A(n320), .B(n299), .C(n301), .D(n321), .E(n303), .F(
        n322), .Z(n319) );
  GTECH_NOT U314 ( .A(n323), .Z(N146) );
  GTECH_AOI222 U315 ( .A(n324), .B(n299), .C(n301), .D(n325), .E(n303), .F(
        n326), .Z(n323) );
  GTECH_NOT U316 ( .A(n327), .Z(N145) );
  GTECH_AOI222 U317 ( .A(n328), .B(n299), .C(n301), .D(n329), .E(n303), .F(
        n330), .Z(n327) );
  GTECH_NOT U318 ( .A(n331), .Z(N144) );
  GTECH_AOI222 U319 ( .A(n332), .B(n299), .C(n301), .D(n333), .E(n303), .F(
        n334), .Z(n331) );
  GTECH_NOT U320 ( .A(n335), .Z(N143) );
  GTECH_AOI222 U321 ( .A(n336), .B(n299), .C(n301), .D(n337), .E(n303), .F(
        n338), .Z(n335) );
  GTECH_NOT U322 ( .A(n339), .Z(N142) );
  GTECH_AOI222 U323 ( .A(n340), .B(n299), .C(n301), .D(n341), .E(n303), .F(
        n342), .Z(n339) );
  GTECH_NOT U324 ( .A(n343), .Z(N141) );
  GTECH_AOI222 U325 ( .A(n344), .B(n299), .C(n301), .D(n345), .E(n303), .F(
        n346), .Z(n343) );
  GTECH_NOT U326 ( .A(n347), .Z(N140) );
  GTECH_AOI222 U327 ( .A(n348), .B(n299), .C(n301), .D(n349), .E(n303), .F(
        n350), .Z(n347) );
  GTECH_NOT U328 ( .A(n351), .Z(N14) );
  GTECH_OR_NOT U329 ( .A(n310), .B(n290), .Z(n351) );
  GTECH_NOT U330 ( .A(n352), .Z(N139) );
  GTECH_AOI222 U331 ( .A(n353), .B(n299), .C(n301), .D(n354), .E(n303), .F(
        n355), .Z(n352) );
  GTECH_NOT U332 ( .A(n356), .Z(N138) );
  GTECH_AOI222 U333 ( .A(n357), .B(n299), .C(n301), .D(n358), .E(n303), .F(
        n359), .Z(n356) );
  GTECH_NOT U334 ( .A(n360), .Z(N137) );
  GTECH_AOI222 U335 ( .A(n361), .B(n299), .C(n301), .D(n362), .E(n303), .F(
        n363), .Z(n360) );
  GTECH_NOT U336 ( .A(n364), .Z(N136) );
  GTECH_AOI222 U337 ( .A(n299), .B(n274), .C(n301), .D(n276), .E(n303), .F(
        n278), .Z(n364) );
  GTECH_NOT U338 ( .A(n365), .Z(n278) );
  GTECH_XOR2 U339 ( .A(n366), .B(n367), .Z(n365) );
  GTECH_NOT U340 ( .A(n368), .Z(n303) );
  GTECH_NOT U341 ( .A(n369), .Z(n301) );
  GTECH_NOT U342 ( .A(n370), .Z(n274) );
  GTECH_XOR2 U343 ( .A(n366), .B(n371), .Z(n370) );
  GTECH_NOT U344 ( .A(n372), .Z(n371) );
  GTECH_XOR2 U345 ( .A(n276), .B(n256), .Z(n366) );
  GTECH_NOT U346 ( .A(n11), .Z(n276) );
  GTECH_NOT U347 ( .A(n373), .Z(n299) );
  GTECH_OAI22 U348 ( .A(n12), .B(n369), .C(n374), .D(n375), .Z(N135) );
  GTECH_AND2 U349 ( .A(n373), .B(n368), .Z(n375) );
  GTECH_NAND3 U350 ( .A(n10), .B(n376), .C(N155), .Z(n368) );
  GTECH_NOT U351 ( .A(n28), .Z(n376) );
  GTECH_NAND3 U352 ( .A(n28), .B(n377), .C(N155), .Z(n373) );
  GTECH_NOT U353 ( .A(n282), .Z(n374) );
  GTECH_AO21 U354 ( .A(n255), .B(n280), .C(n367), .Z(n282) );
  GTECH_OR_NOT U355 ( .A(n378), .B(n379), .Z(n369) );
  GTECH_XOR2 U356 ( .A(n377), .B(n28), .Z(n379) );
  GTECH_AND2 U357 ( .A(N155), .B(n380), .Z(N134) );
  GTECH_NOT U358 ( .A(n13), .Z(n380) );
  GTECH_AND2 U359 ( .A(N155), .B(n381), .Z(N133) );
  GTECH_NOT U360 ( .A(n14), .Z(n381) );
  GTECH_AND2 U361 ( .A(N155), .B(n382), .Z(N132) );
  GTECH_NOT U362 ( .A(n15), .Z(n382) );
  GTECH_AND2 U363 ( .A(N155), .B(n383), .Z(N131) );
  GTECH_NOT U364 ( .A(n16), .Z(n383) );
  GTECH_AND2 U365 ( .A(N155), .B(n384), .Z(N130) );
  GTECH_NOT U366 ( .A(n17), .Z(n384) );
  GTECH_AND2 U367 ( .A(N155), .B(n385), .Z(N129) );
  GTECH_NOT U368 ( .A(n18), .Z(n385) );
  GTECH_AND2 U369 ( .A(N155), .B(n386), .Z(N128) );
  GTECH_NOT U370 ( .A(n19), .Z(n386) );
  GTECH_AND2 U371 ( .A(N155), .B(n387), .Z(N127) );
  GTECH_NOT U372 ( .A(n20), .Z(n387) );
  GTECH_AND2 U373 ( .A(N155), .B(n388), .Z(N126) );
  GTECH_NOT U374 ( .A(n21), .Z(n388) );
  GTECH_AND2 U375 ( .A(N155), .B(n389), .Z(N125) );
  GTECH_NOT U376 ( .A(n22), .Z(n389) );
  GTECH_AND2 U377 ( .A(N155), .B(n390), .Z(N124) );
  GTECH_NOT U378 ( .A(n23), .Z(n390) );
  GTECH_AND2 U379 ( .A(N155), .B(n391), .Z(N123) );
  GTECH_NOT U380 ( .A(n24), .Z(n391) );
  GTECH_AND2 U381 ( .A(N155), .B(n392), .Z(N122) );
  GTECH_NOT U382 ( .A(n25), .Z(n392) );
  GTECH_AND2 U383 ( .A(N155), .B(n393), .Z(N121) );
  GTECH_NOT U384 ( .A(n26), .Z(n393) );
  GTECH_AND2 U385 ( .A(N155), .B(n394), .Z(N120) );
  GTECH_NOT U386 ( .A(n27), .Z(n394) );
  GTECH_NOT U387 ( .A(n378), .Z(N155) );
  GTECH_NAND4 U388 ( .A(n8), .B(n7), .C(n9), .D(n395), .Z(n378) );
  GTECH_AND3 U389 ( .A(n292), .B(n310), .C(n6), .Z(n395) );
  GTECH_NOT U390 ( .A(n396), .Z(N116) );
  GTECH_AOI222 U391 ( .A(n275), .B(n302), .C(n277), .D(n304), .E(n300), .F(
        n273), .Z(n396) );
  GTECH_XOR2 U392 ( .A(n397), .B(n398), .Z(n300) );
  GTECH_ADD_ABC U393 ( .A(n31), .B(n270), .C(n399), .COUT(n398) );
  GTECH_XOR2 U394 ( .A(n400), .B(n397), .Z(n304) );
  GTECH_XOR2 U395 ( .A(A[16]), .B(n30), .Z(n397) );
  GTECH_OAI22 U396 ( .A(n401), .B(n31), .C(n402), .D(n403), .Z(n400) );
  GTECH_AND2 U397 ( .A(n31), .B(n401), .Z(n402) );
  GTECH_NOT U398 ( .A(n30), .Z(n302) );
  GTECH_OR_NOT U399 ( .A(N41), .B(n285), .Z(N115) );
  GTECH_OR_NOT U400 ( .A(n283), .B(n292), .Z(N41) );
  GTECH_NOT U401 ( .A(Rst), .Z(n292) );
  GTECH_NOT U402 ( .A(n287), .Z(n283) );
  GTECH_OR_NOT U403 ( .A(Rst), .B(Ld), .Z(n287) );
  GTECH_NOT U404 ( .A(n404), .Z(N113) );
  GTECH_AOI222 U405 ( .A(n275), .B(n307), .C(n277), .D(n308), .E(n306), .F(
        n273), .Z(n404) );
  GTECH_XOR2 U406 ( .A(n405), .B(n399), .Z(n306) );
  GTECH_ADD_ABC U407 ( .A(n32), .B(n269), .C(n406), .COUT(n399) );
  GTECH_NOT U408 ( .A(n407), .Z(n308) );
  GTECH_XOR2 U409 ( .A(n405), .B(n403), .Z(n407) );
  GTECH_OA21 U410 ( .A(n32), .B(n408), .C(n409), .Z(n403) );
  GTECH_AO21 U411 ( .A(n32), .B(n408), .C(n410), .Z(n409) );
  GTECH_XOR2 U412 ( .A(n401), .B(n31), .Z(n405) );
  GTECH_NOT U413 ( .A(n270), .Z(n401) );
  GTECH_NOT U414 ( .A(n31), .Z(n307) );
  GTECH_NOT U415 ( .A(n411), .Z(N112) );
  GTECH_AOI222 U416 ( .A(n275), .B(n313), .C(n277), .D(n314), .E(n312), .F(
        n273), .Z(n411) );
  GTECH_XOR2 U417 ( .A(n412), .B(n406), .Z(n312) );
  GTECH_ADD_ABC U418 ( .A(n33), .B(n268), .C(n413), .COUT(n406) );
  GTECH_NOT U419 ( .A(n414), .Z(n314) );
  GTECH_XOR2 U420 ( .A(n412), .B(n410), .Z(n414) );
  GTECH_OA21 U421 ( .A(n33), .B(n415), .C(n416), .Z(n410) );
  GTECH_AO21 U422 ( .A(n33), .B(n415), .C(n417), .Z(n416) );
  GTECH_XOR2 U423 ( .A(n408), .B(n32), .Z(n412) );
  GTECH_NOT U424 ( .A(n269), .Z(n408) );
  GTECH_NOT U425 ( .A(n32), .Z(n313) );
  GTECH_NOT U426 ( .A(n418), .Z(N111) );
  GTECH_AOI222 U427 ( .A(n275), .B(n317), .C(n277), .D(n318), .E(n316), .F(
        n273), .Z(n418) );
  GTECH_XOR2 U428 ( .A(n419), .B(n413), .Z(n316) );
  GTECH_ADD_ABC U429 ( .A(n34), .B(n267), .C(n420), .COUT(n413) );
  GTECH_NOT U430 ( .A(n421), .Z(n318) );
  GTECH_XOR2 U431 ( .A(n419), .B(n417), .Z(n421) );
  GTECH_OA21 U432 ( .A(n34), .B(n422), .C(n423), .Z(n417) );
  GTECH_AO21 U433 ( .A(n34), .B(n422), .C(n424), .Z(n423) );
  GTECH_XOR2 U434 ( .A(n415), .B(n33), .Z(n419) );
  GTECH_NOT U435 ( .A(n268), .Z(n415) );
  GTECH_NOT U436 ( .A(n33), .Z(n317) );
  GTECH_NOT U437 ( .A(n425), .Z(N110) );
  GTECH_AOI222 U438 ( .A(n275), .B(n321), .C(n277), .D(n322), .E(n320), .F(
        n273), .Z(n425) );
  GTECH_XOR2 U439 ( .A(n426), .B(n420), .Z(n320) );
  GTECH_ADD_ABC U440 ( .A(n35), .B(n266), .C(n427), .COUT(n420) );
  GTECH_NOT U441 ( .A(n428), .Z(n322) );
  GTECH_XOR2 U442 ( .A(n426), .B(n424), .Z(n428) );
  GTECH_OA21 U443 ( .A(n35), .B(n429), .C(n430), .Z(n424) );
  GTECH_AO21 U444 ( .A(n35), .B(n429), .C(n431), .Z(n430) );
  GTECH_XOR2 U445 ( .A(n422), .B(n34), .Z(n426) );
  GTECH_NOT U446 ( .A(n267), .Z(n422) );
  GTECH_NOT U447 ( .A(n34), .Z(n321) );
  GTECH_NOT U448 ( .A(n432), .Z(N109) );
  GTECH_AOI222 U449 ( .A(n275), .B(n325), .C(n277), .D(n326), .E(n324), .F(
        n273), .Z(n432) );
  GTECH_XOR2 U450 ( .A(n433), .B(n427), .Z(n324) );
  GTECH_ADD_ABC U451 ( .A(n36), .B(n265), .C(n434), .COUT(n427) );
  GTECH_NOT U452 ( .A(n435), .Z(n326) );
  GTECH_XOR2 U453 ( .A(n433), .B(n431), .Z(n435) );
  GTECH_OA21 U454 ( .A(n36), .B(n436), .C(n437), .Z(n431) );
  GTECH_AO21 U455 ( .A(n36), .B(n436), .C(n438), .Z(n437) );
  GTECH_XOR2 U456 ( .A(n429), .B(n35), .Z(n433) );
  GTECH_NOT U457 ( .A(n266), .Z(n429) );
  GTECH_NOT U458 ( .A(n35), .Z(n325) );
  GTECH_NOT U459 ( .A(n439), .Z(N108) );
  GTECH_AOI222 U460 ( .A(n275), .B(n329), .C(n277), .D(n330), .E(n328), .F(
        n273), .Z(n439) );
  GTECH_XOR2 U461 ( .A(n440), .B(n434), .Z(n328) );
  GTECH_ADD_ABC U462 ( .A(n37), .B(n264), .C(n441), .COUT(n434) );
  GTECH_NOT U463 ( .A(n442), .Z(n330) );
  GTECH_XOR2 U464 ( .A(n440), .B(n438), .Z(n442) );
  GTECH_OA21 U465 ( .A(n37), .B(n443), .C(n444), .Z(n438) );
  GTECH_AO21 U466 ( .A(n37), .B(n443), .C(n445), .Z(n444) );
  GTECH_XOR2 U467 ( .A(n436), .B(n36), .Z(n440) );
  GTECH_NOT U468 ( .A(n265), .Z(n436) );
  GTECH_NOT U469 ( .A(n36), .Z(n329) );
  GTECH_NOT U470 ( .A(n446), .Z(N107) );
  GTECH_AOI222 U471 ( .A(n275), .B(n333), .C(n277), .D(n334), .E(n332), .F(
        n273), .Z(n446) );
  GTECH_XOR2 U472 ( .A(n447), .B(n441), .Z(n332) );
  GTECH_ADD_ABC U473 ( .A(n38), .B(n263), .C(n448), .COUT(n441) );
  GTECH_NOT U474 ( .A(n449), .Z(n334) );
  GTECH_XOR2 U475 ( .A(n447), .B(n445), .Z(n449) );
  GTECH_OA21 U476 ( .A(n38), .B(n450), .C(n451), .Z(n445) );
  GTECH_AO21 U477 ( .A(n38), .B(n450), .C(n452), .Z(n451) );
  GTECH_XOR2 U478 ( .A(n443), .B(n37), .Z(n447) );
  GTECH_NOT U479 ( .A(n264), .Z(n443) );
  GTECH_NOT U480 ( .A(n37), .Z(n333) );
  GTECH_NOT U481 ( .A(n453), .Z(N106) );
  GTECH_AOI222 U482 ( .A(n275), .B(n337), .C(n277), .D(n338), .E(n336), .F(
        n273), .Z(n453) );
  GTECH_XOR2 U483 ( .A(n454), .B(n448), .Z(n336) );
  GTECH_ADD_ABC U484 ( .A(n39), .B(n262), .C(n455), .COUT(n448) );
  GTECH_NOT U485 ( .A(n456), .Z(n338) );
  GTECH_XOR2 U486 ( .A(n454), .B(n452), .Z(n456) );
  GTECH_OA21 U487 ( .A(n39), .B(n457), .C(n458), .Z(n452) );
  GTECH_AO21 U488 ( .A(n39), .B(n457), .C(n459), .Z(n458) );
  GTECH_XOR2 U489 ( .A(n450), .B(n38), .Z(n454) );
  GTECH_NOT U490 ( .A(n263), .Z(n450) );
  GTECH_NOT U491 ( .A(n38), .Z(n337) );
  GTECH_NOT U492 ( .A(n460), .Z(N105) );
  GTECH_AOI222 U493 ( .A(n275), .B(n341), .C(n277), .D(n342), .E(n340), .F(
        n273), .Z(n460) );
  GTECH_XOR2 U494 ( .A(n461), .B(n455), .Z(n340) );
  GTECH_ADD_ABC U495 ( .A(n40), .B(n261), .C(n462), .COUT(n455) );
  GTECH_NOT U496 ( .A(n463), .Z(n342) );
  GTECH_XOR2 U497 ( .A(n461), .B(n459), .Z(n463) );
  GTECH_OA21 U498 ( .A(n40), .B(n464), .C(n465), .Z(n459) );
  GTECH_AO21 U499 ( .A(n40), .B(n464), .C(n466), .Z(n465) );
  GTECH_XOR2 U500 ( .A(n457), .B(n39), .Z(n461) );
  GTECH_NOT U501 ( .A(n262), .Z(n457) );
  GTECH_NOT U502 ( .A(n39), .Z(n341) );
  GTECH_NOT U503 ( .A(n467), .Z(N104) );
  GTECH_AOI222 U504 ( .A(n275), .B(n345), .C(n277), .D(n346), .E(n344), .F(
        n273), .Z(n467) );
  GTECH_XOR2 U505 ( .A(n468), .B(n462), .Z(n344) );
  GTECH_ADD_ABC U506 ( .A(n41), .B(n260), .C(n469), .COUT(n462) );
  GTECH_NOT U507 ( .A(n470), .Z(n346) );
  GTECH_XOR2 U508 ( .A(n468), .B(n466), .Z(n470) );
  GTECH_OA21 U509 ( .A(n41), .B(n471), .C(n472), .Z(n466) );
  GTECH_AO21 U510 ( .A(n41), .B(n471), .C(n473), .Z(n472) );
  GTECH_XOR2 U511 ( .A(n464), .B(n40), .Z(n468) );
  GTECH_NOT U512 ( .A(n261), .Z(n464) );
  GTECH_NOT U513 ( .A(n40), .Z(n345) );
  GTECH_NOT U514 ( .A(n474), .Z(N103) );
  GTECH_AOI222 U515 ( .A(n275), .B(n349), .C(n277), .D(n350), .E(n348), .F(
        n273), .Z(n474) );
  GTECH_XOR2 U516 ( .A(n475), .B(n469), .Z(n348) );
  GTECH_ADD_ABC U517 ( .A(n42), .B(n259), .C(n476), .COUT(n469) );
  GTECH_NOT U518 ( .A(n477), .Z(n350) );
  GTECH_XOR2 U519 ( .A(n475), .B(n473), .Z(n477) );
  GTECH_OA21 U520 ( .A(n42), .B(n478), .C(n479), .Z(n473) );
  GTECH_AO21 U521 ( .A(n42), .B(n478), .C(n480), .Z(n479) );
  GTECH_XOR2 U522 ( .A(n471), .B(n41), .Z(n475) );
  GTECH_NOT U523 ( .A(n260), .Z(n471) );
  GTECH_NOT U524 ( .A(n41), .Z(n349) );
  GTECH_NOT U525 ( .A(n481), .Z(N102) );
  GTECH_AOI222 U526 ( .A(n275), .B(n354), .C(n277), .D(n355), .E(n353), .F(
        n273), .Z(n481) );
  GTECH_XOR2 U527 ( .A(n482), .B(n476), .Z(n353) );
  GTECH_ADD_ABC U528 ( .A(n43), .B(n258), .C(n483), .COUT(n476) );
  GTECH_NOT U529 ( .A(n484), .Z(n355) );
  GTECH_XOR2 U530 ( .A(n482), .B(n480), .Z(n484) );
  GTECH_OA21 U531 ( .A(n43), .B(n485), .C(n486), .Z(n480) );
  GTECH_AO21 U532 ( .A(n43), .B(n485), .C(n487), .Z(n486) );
  GTECH_XOR2 U533 ( .A(n478), .B(n42), .Z(n482) );
  GTECH_NOT U534 ( .A(n259), .Z(n478) );
  GTECH_NOT U535 ( .A(n42), .Z(n354) );
  GTECH_NOT U536 ( .A(n488), .Z(N101) );
  GTECH_AOI222 U537 ( .A(n275), .B(n358), .C(n277), .D(n359), .E(n357), .F(
        n273), .Z(n488) );
  GTECH_XOR2 U538 ( .A(n489), .B(n483), .Z(n357) );
  GTECH_ADD_ABC U539 ( .A(n29), .B(n257), .C(n490), .COUT(n483) );
  GTECH_NOT U540 ( .A(n491), .Z(n359) );
  GTECH_XOR2 U541 ( .A(n489), .B(n487), .Z(n491) );
  GTECH_OA21 U542 ( .A(n29), .B(n492), .C(n493), .Z(n487) );
  GTECH_AO21 U543 ( .A(n29), .B(n492), .C(n494), .Z(n493) );
  GTECH_XOR2 U544 ( .A(n485), .B(n43), .Z(n489) );
  GTECH_NOT U545 ( .A(n258), .Z(n485) );
  GTECH_NOT U546 ( .A(n43), .Z(n358) );
  GTECH_NOT U547 ( .A(n495), .Z(N100) );
  GTECH_AOI222 U548 ( .A(n361), .B(n273), .C(n275), .D(n362), .E(n277), .F(
        n363), .Z(n495) );
  GTECH_NOT U549 ( .A(n496), .Z(n363) );
  GTECH_XOR2 U550 ( .A(n497), .B(n494), .Z(n496) );
  GTECH_OA21 U551 ( .A(n11), .B(n498), .C(n499), .Z(n494) );
  GTECH_AO21 U552 ( .A(n11), .B(n498), .C(n367), .Z(n499) );
  GTECH_NOT U553 ( .A(n500), .Z(n367) );
  GTECH_OR_NOT U554 ( .A(n255), .B(n12), .Z(n500) );
  GTECH_NOT U555 ( .A(n256), .Z(n498) );
  GTECH_NOT U556 ( .A(n501), .Z(n277) );
  GTECH_OR_NOT U557 ( .A(n377), .B(N82), .Z(n501) );
  GTECH_NOT U558 ( .A(n502), .Z(N82) );
  GTECH_NOT U559 ( .A(n29), .Z(n362) );
  GTECH_NOT U560 ( .A(n503), .Z(n275) );
  GTECH_MUX2 U561 ( .A(n502), .B(n504), .S(n10), .Z(n503) );
  GTECH_OR_NOT U562 ( .A(n285), .B(n28), .Z(n504) );
  GTECH_OR_NOT U563 ( .A(n28), .B(n290), .Z(n502) );
  GTECH_NOT U564 ( .A(n284), .Z(n273) );
  GTECH_NAND3 U565 ( .A(n290), .B(n377), .C(n28), .Z(n284) );
  GTECH_NOT U566 ( .A(n10), .Z(n377) );
  GTECH_NOT U567 ( .A(n285), .Z(n290) );
  GTECH_AO21 U568 ( .A(n9), .B(n294), .C(n505), .Z(n285) );
  GTECH_OR_NOT U569 ( .A(Rst), .B(n291), .Z(n505) );
  GTECH_NOT U570 ( .A(Ld), .Z(n291) );
  GTECH_NOT U571 ( .A(n288), .Z(n294) );
  GTECH_OR_NOT U572 ( .A(n295), .B(n8), .Z(n288) );
  GTECH_OR_NOT U573 ( .A(n297), .B(n7), .Z(n295) );
  GTECH_OR_NOT U574 ( .A(n310), .B(n6), .Z(n297) );
  GTECH_NOT U575 ( .A(n254), .Z(n310) );
  GTECH_XOR2 U576 ( .A(n497), .B(n490), .Z(n361) );
  GTECH_ADD_ABC U577 ( .A(n256), .B(n11), .C(n372), .COUT(n490) );
  GTECH_OR_NOT U578 ( .A(n255), .B(n280), .Z(n372) );
  GTECH_NOT U579 ( .A(n12), .Z(n280) );
  GTECH_XOR2 U580 ( .A(n492), .B(n29), .Z(n497) );
  GTECH_NOT U581 ( .A(n257), .Z(n492) );
endmodule

