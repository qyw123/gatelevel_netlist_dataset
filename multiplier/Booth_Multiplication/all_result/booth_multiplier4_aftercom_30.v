
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
         n43, n105, n106, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572;
  wire   [4:0] Cntr;
  wire   [16:0] A;
  wire   [33:0] Prod;

  GTECH_FJK2S Cntr_reg_0_ ( .J(n106), .K(n106), .TI(N14), .TE(N18), .CP(clk), 
        .CD(n105), .Q(Cntr[0]), .QN(n330) );
  GTECH_FJK2S Cntr_reg_1_ ( .J(n106), .K(n106), .TI(N15), .TE(N18), .CP(clk), 
        .CD(n105), .Q(Cntr[1]), .QN(n6) );
  GTECH_FJK2S Cntr_reg_2_ ( .J(n106), .K(n106), .TI(N16), .TE(N18), .CP(clk), 
        .CD(n105), .Q(Cntr[2]), .QN(n7) );
  GTECH_FJK2S Cntr_reg_3_ ( .J(n106), .K(n106), .TI(N17), .TE(N18), .CP(clk), 
        .CD(n105), .Q(Cntr[3]), .QN(n8) );
  GTECH_FJK2S Cntr_reg_4_ ( .J(n106), .K(n106), .TI(N19), .TE(N18), .CP(clk), 
        .CD(n105), .Q(Cntr[4]), .QN(n9) );
  GTECH_FJK2S A_reg_16_ ( .J(n106), .K(n106), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[16]), .QN(n347) );
  GTECH_FJK2S A_reg_15_ ( .J(n106), .K(n106), .TI(N42), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[15]), .QN(n346) );
  GTECH_FJK2S A_reg_14_ ( .J(n106), .K(n106), .TI(N39), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[14]), .QN(n345) );
  GTECH_FJK2S A_reg_13_ ( .J(n106), .K(n106), .TI(N38), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[13]), .QN(n344) );
  GTECH_FJK2S A_reg_12_ ( .J(n106), .K(n106), .TI(N37), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[12]), .QN(n343) );
  GTECH_FJK2S A_reg_11_ ( .J(n106), .K(n106), .TI(N36), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[11]), .QN(n342) );
  GTECH_FJK2S A_reg_10_ ( .J(n106), .K(n106), .TI(N35), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[10]), .QN(n341) );
  GTECH_FJK2S A_reg_9_ ( .J(n106), .K(n106), .TI(N34), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[9]), .QN(n340) );
  GTECH_FJK2S A_reg_8_ ( .J(n106), .K(n106), .TI(N33), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[8]), .QN(n339) );
  GTECH_FJK2S A_reg_7_ ( .J(n106), .K(n106), .TI(N32), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[7]), .QN(n338) );
  GTECH_FJK2S A_reg_6_ ( .J(n106), .K(n106), .TI(N31), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[6]), .QN(n337) );
  GTECH_FJK2S A_reg_5_ ( .J(n106), .K(n106), .TI(N30), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[5]), .QN(n336) );
  GTECH_FJK2S A_reg_4_ ( .J(n106), .K(n106), .TI(N29), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[4]), .QN(n335) );
  GTECH_FJK2S A_reg_3_ ( .J(n106), .K(n106), .TI(N28), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[3]), .QN(n334) );
  GTECH_FJK2S A_reg_2_ ( .J(n106), .K(n106), .TI(N27), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[2]), .QN(n333) );
  GTECH_FJK2S A_reg_1_ ( .J(n106), .K(n106), .TI(N26), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[1]), .QN(n332) );
  GTECH_FJK2S A_reg_0_ ( .J(n106), .K(n106), .TI(N25), .TE(N41), .CP(clk), 
        .CD(n105), .Q(A[0]), .QN(n331) );
  GTECH_FJK2S Prod_reg_0_ ( .J(n106), .K(n106), .TI(N82), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[0]), .QN(n10) );
  GTECH_FJK2S Prod_reg_18_ ( .J(n106), .K(n106), .TI(N100), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[18]), .QN(n11) );
  GTECH_FJK2S Prod_reg_17_ ( .J(n106), .K(n106), .TI(N99), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[17]), .QN(n12) );
  GTECH_FJK2S Prod_reg_16_ ( .J(n106), .K(n106), .TI(N98), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[16]), .QN(n13) );
  GTECH_FJK2S Prod_reg_15_ ( .J(n106), .K(n106), .TI(N97), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[15]), .QN(n14) );
  GTECH_FJK2S Prod_reg_14_ ( .J(n106), .K(n106), .TI(N96), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[14]), .QN(n15) );
  GTECH_FJK2S Prod_reg_13_ ( .J(n106), .K(n106), .TI(N95), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[13]), .QN(n16) );
  GTECH_FJK2S Prod_reg_12_ ( .J(n106), .K(n106), .TI(N94), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[12]), .QN(n17) );
  GTECH_FJK2S Prod_reg_11_ ( .J(n106), .K(n106), .TI(N93), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[11]), .QN(n18) );
  GTECH_FJK2S Prod_reg_10_ ( .J(n106), .K(n106), .TI(N92), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[10]), .QN(n19) );
  GTECH_FJK2S Prod_reg_9_ ( .J(n106), .K(n106), .TI(N91), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[9]), .QN(n20) );
  GTECH_FJK2S Prod_reg_8_ ( .J(n106), .K(n106), .TI(N90), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[8]), .QN(n21) );
  GTECH_FJK2S Prod_reg_7_ ( .J(n106), .K(n106), .TI(N89), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[7]), .QN(n22) );
  GTECH_FJK2S Prod_reg_6_ ( .J(n106), .K(n106), .TI(N88), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[6]), .QN(n23) );
  GTECH_FJK2S Prod_reg_5_ ( .J(n106), .K(n106), .TI(N87), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[5]), .QN(n24) );
  GTECH_FJK2S Prod_reg_4_ ( .J(n106), .K(n106), .TI(N86), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[4]), .QN(n25) );
  GTECH_FJK2S Prod_reg_3_ ( .J(n106), .K(n106), .TI(N85), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[3]), .QN(n26) );
  GTECH_FJK2S Prod_reg_2_ ( .J(n106), .K(n106), .TI(N84), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[2]), .QN(n27) );
  GTECH_FJK2S Prod_reg_1_ ( .J(n106), .K(n106), .TI(N83), .TE(N115), .CP(clk), 
        .CD(n105), .Q(Prod[1]), .QN(n28) );
  GTECH_FJK2S Prod_reg_19_ ( .J(n106), .K(n106), .TI(N101), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[19]), .QN(n29) );
  GTECH_FJK2S Prod_reg_33_ ( .J(n106), .K(n106), .TI(N116), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[33]), .QN(n30) );
  GTECH_FJK2S Prod_reg_32_ ( .J(n106), .K(n106), .TI(N116), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[32]), .QN(n31) );
  GTECH_FJK2S Prod_reg_31_ ( .J(n106), .K(n106), .TI(N113), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[31]), .QN(n32) );
  GTECH_FJK2S Prod_reg_30_ ( .J(n106), .K(n106), .TI(N112), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[30]), .QN(n33) );
  GTECH_FJK2S Prod_reg_29_ ( .J(n106), .K(n106), .TI(N111), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[29]), .QN(n34) );
  GTECH_FJK2S Prod_reg_28_ ( .J(n106), .K(n106), .TI(N110), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[28]), .QN(n35) );
  GTECH_FJK2S Prod_reg_27_ ( .J(n106), .K(n106), .TI(N109), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[27]), .QN(n36) );
  GTECH_FJK2S Prod_reg_26_ ( .J(n106), .K(n106), .TI(N108), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[26]), .QN(n37) );
  GTECH_FJK2S Prod_reg_25_ ( .J(n106), .K(n106), .TI(N107), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[25]), .QN(n38) );
  GTECH_FJK2S Prod_reg_24_ ( .J(n106), .K(n106), .TI(N106), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[24]), .QN(n39) );
  GTECH_FJK2S Prod_reg_23_ ( .J(n106), .K(n106), .TI(N105), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[23]), .QN(n40) );
  GTECH_FJK2S Prod_reg_22_ ( .J(n106), .K(n106), .TI(N104), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[22]), .QN(n41) );
  GTECH_FJK2S Prod_reg_21_ ( .J(n106), .K(n106), .TI(N103), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[21]), .QN(n42) );
  GTECH_FJK2S Prod_reg_20_ ( .J(n106), .K(n106), .TI(N102), .TE(N115), .CP(clk), .CD(n105), .Q(Prod[20]), .QN(n43) );
  GTECH_FJK2S P_reg_31_ ( .J(n106), .K(n106), .TI(N152), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[31]) );
  GTECH_FJK2S P_reg_30_ ( .J(n106), .K(n106), .TI(N150), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[30]) );
  GTECH_FJK2S P_reg_29_ ( .J(n106), .K(n106), .TI(N149), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[29]) );
  GTECH_FJK2S P_reg_28_ ( .J(n106), .K(n106), .TI(N148), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[28]) );
  GTECH_FJK2S P_reg_27_ ( .J(n106), .K(n106), .TI(N147), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[27]) );
  GTECH_FJK2S P_reg_26_ ( .J(n106), .K(n106), .TI(N146), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[26]) );
  GTECH_FJK2S P_reg_25_ ( .J(n106), .K(n106), .TI(N145), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[25]) );
  GTECH_FJK2S P_reg_24_ ( .J(n106), .K(n106), .TI(N144), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[24]) );
  GTECH_FJK2S P_reg_23_ ( .J(n106), .K(n106), .TI(N143), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[23]) );
  GTECH_FJK2S P_reg_22_ ( .J(n106), .K(n106), .TI(N142), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[22]) );
  GTECH_FJK2S P_reg_21_ ( .J(n106), .K(n106), .TI(N141), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[21]) );
  GTECH_FJK2S P_reg_20_ ( .J(n106), .K(n106), .TI(N140), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[20]) );
  GTECH_FJK2S P_reg_19_ ( .J(n106), .K(n106), .TI(N139), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[19]) );
  GTECH_FJK2S P_reg_18_ ( .J(n106), .K(n106), .TI(N138), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[18]) );
  GTECH_FJK2S P_reg_17_ ( .J(n106), .K(n106), .TI(N137), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[17]) );
  GTECH_FJK2S P_reg_16_ ( .J(n106), .K(n106), .TI(N136), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[16]) );
  GTECH_FJK2S P_reg_15_ ( .J(n106), .K(n106), .TI(N135), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[15]) );
  GTECH_FJK2S P_reg_14_ ( .J(n106), .K(n106), .TI(N134), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[14]) );
  GTECH_FJK2S P_reg_13_ ( .J(n106), .K(n106), .TI(N133), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[13]) );
  GTECH_FJK2S P_reg_12_ ( .J(n106), .K(n106), .TI(N132), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[12]) );
  GTECH_FJK2S P_reg_11_ ( .J(n106), .K(n106), .TI(N131), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[11]) );
  GTECH_FJK2S P_reg_10_ ( .J(n106), .K(n106), .TI(N130), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[10]) );
  GTECH_FJK2S P_reg_9_ ( .J(n106), .K(n106), .TI(N129), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[9]) );
  GTECH_FJK2S P_reg_8_ ( .J(n106), .K(n106), .TI(N128), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[8]) );
  GTECH_FJK2S P_reg_7_ ( .J(n106), .K(n106), .TI(N127), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[7]) );
  GTECH_FJK2S P_reg_6_ ( .J(n106), .K(n106), .TI(N126), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[6]) );
  GTECH_FJK2S P_reg_5_ ( .J(n106), .K(n106), .TI(N125), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[5]) );
  GTECH_FJK2S P_reg_4_ ( .J(n106), .K(n106), .TI(N124), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[4]) );
  GTECH_FJK2S P_reg_3_ ( .J(n106), .K(n106), .TI(N123), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[3]) );
  GTECH_FJK2S P_reg_2_ ( .J(n106), .K(n106), .TI(N122), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[2]) );
  GTECH_FJK2S P_reg_1_ ( .J(n106), .K(n106), .TI(N121), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[1]) );
  GTECH_FJK2S P_reg_0_ ( .J(n106), .K(n106), .TI(N120), .TE(N151), .CP(clk), 
        .CD(n105), .Q(P[0]) );
  GTECH_FD1 Valid_reg ( .D(N155), .CP(clk), .Q(Valid) );
  GTECH_ZERO U332 ( .Z(n106) );
  GTECH_ONE U333 ( .Z(n105) );
  GTECH_AND2 U334 ( .A(n348), .B(n349), .Z(N99) );
  GTECH_OAI2N2 U335 ( .A(n350), .B(n351), .C(R[15]), .D(n352), .Z(N98) );
  GTECH_OAI2N2 U336 ( .A(n13), .B(n351), .C(R[14]), .D(n352), .Z(N97) );
  GTECH_OAI2N2 U337 ( .A(n14), .B(n351), .C(R[13]), .D(n352), .Z(N96) );
  GTECH_OAI2N2 U338 ( .A(n15), .B(n351), .C(R[12]), .D(n352), .Z(N95) );
  GTECH_OAI2N2 U339 ( .A(n16), .B(n351), .C(R[11]), .D(n352), .Z(N94) );
  GTECH_OAI2N2 U340 ( .A(n17), .B(n351), .C(R[10]), .D(n352), .Z(N93) );
  GTECH_OAI2N2 U341 ( .A(n18), .B(n351), .C(R[9]), .D(n352), .Z(N92) );
  GTECH_OAI2N2 U342 ( .A(n19), .B(n351), .C(R[8]), .D(n352), .Z(N91) );
  GTECH_OAI2N2 U343 ( .A(n20), .B(n351), .C(R[7]), .D(n352), .Z(N90) );
  GTECH_OAI2N2 U344 ( .A(n21), .B(n351), .C(R[6]), .D(n352), .Z(N89) );
  GTECH_OAI2N2 U345 ( .A(n22), .B(n351), .C(R[5]), .D(n352), .Z(N88) );
  GTECH_OAI2N2 U346 ( .A(n23), .B(n351), .C(R[4]), .D(n352), .Z(N87) );
  GTECH_OAI2N2 U347 ( .A(n24), .B(n351), .C(R[3]), .D(n352), .Z(N86) );
  GTECH_OAI2N2 U348 ( .A(n25), .B(n351), .C(R[2]), .D(n352), .Z(N85) );
  GTECH_OAI2N2 U349 ( .A(n26), .B(n351), .C(R[1]), .D(n352), .Z(N84) );
  GTECH_OAI2N2 U350 ( .A(n27), .B(n351), .C(R[0]), .D(n352), .Z(N83) );
  GTECH_AND2 U351 ( .A(n348), .B(n353), .Z(N82) );
  GTECH_AND2 U352 ( .A(M[15]), .B(n352), .Z(N42) );
  GTECH_AND2 U353 ( .A(M[14]), .B(n352), .Z(N39) );
  GTECH_AND2 U354 ( .A(M[13]), .B(n352), .Z(N38) );
  GTECH_AND2 U355 ( .A(M[12]), .B(n352), .Z(N37) );
  GTECH_AND2 U356 ( .A(M[11]), .B(n352), .Z(N36) );
  GTECH_AND2 U357 ( .A(M[10]), .B(n352), .Z(N35) );
  GTECH_AND2 U358 ( .A(M[9]), .B(n352), .Z(N34) );
  GTECH_AND2 U359 ( .A(M[8]), .B(n352), .Z(N33) );
  GTECH_AND2 U360 ( .A(M[7]), .B(n352), .Z(N32) );
  GTECH_AND2 U361 ( .A(M[6]), .B(n352), .Z(N31) );
  GTECH_AND2 U362 ( .A(M[5]), .B(n352), .Z(N30) );
  GTECH_AND2 U363 ( .A(M[4]), .B(n352), .Z(N29) );
  GTECH_AND2 U364 ( .A(M[3]), .B(n352), .Z(N28) );
  GTECH_AND2 U365 ( .A(M[2]), .B(n352), .Z(N27) );
  GTECH_AND2 U366 ( .A(M[1]), .B(n352), .Z(N26) );
  GTECH_AND2 U367 ( .A(M[0]), .B(n352), .Z(N25) );
  GTECH_NOT U368 ( .A(n354), .Z(n352) );
  GTECH_NAND2 U369 ( .A(n354), .B(n355), .Z(N19) );
  GTECH_NAND3 U370 ( .A(n356), .B(n357), .C(n348), .Z(n355) );
  GTECH_NAND2 U371 ( .A(n358), .B(n351), .Z(N18) );
  GTECH_AND2 U372 ( .A(n348), .B(n359), .Z(N17) );
  GTECH_OAI21 U373 ( .A(n8), .B(n360), .C(n356), .Z(n359) );
  GTECH_AND2 U374 ( .A(n348), .B(n361), .Z(N16) );
  GTECH_OAI21 U375 ( .A(n7), .B(n362), .C(n363), .Z(n361) );
  GTECH_AND2 U376 ( .A(N155), .B(n364), .Z(N152) );
  GTECH_NAND2 U377 ( .A(n365), .B(n366), .Z(N151) );
  GTECH_AND2 U378 ( .A(N155), .B(n367), .Z(N150) );
  GTECH_MUX2 U379 ( .A(n368), .B(N14), .S(n6), .Z(N15) );
  GTECH_AND2 U380 ( .A(n348), .B(n369), .Z(n368) );
  GTECH_AND2 U381 ( .A(N155), .B(n370), .Z(N149) );
  GTECH_AND2 U382 ( .A(N155), .B(n371), .Z(N148) );
  GTECH_AND2 U383 ( .A(N155), .B(n372), .Z(N147) );
  GTECH_AND2 U384 ( .A(N155), .B(n373), .Z(N146) );
  GTECH_AND2 U385 ( .A(N155), .B(n374), .Z(N145) );
  GTECH_AND2 U386 ( .A(N155), .B(n375), .Z(N144) );
  GTECH_AND2 U387 ( .A(N155), .B(n376), .Z(N143) );
  GTECH_AND2 U388 ( .A(N155), .B(n377), .Z(N142) );
  GTECH_AND2 U389 ( .A(N155), .B(n378), .Z(N141) );
  GTECH_AND2 U390 ( .A(N155), .B(n379), .Z(N140) );
  GTECH_NOT U391 ( .A(n380), .Z(N14) );
  GTECH_NAND2 U392 ( .A(n348), .B(n330), .Z(n380) );
  GTECH_AND2 U393 ( .A(N155), .B(n381), .Z(N139) );
  GTECH_AND2 U394 ( .A(N155), .B(n382), .Z(N138) );
  GTECH_AND2 U395 ( .A(N155), .B(n383), .Z(N137) );
  GTECH_AND2 U396 ( .A(N155), .B(n349), .Z(N136) );
  GTECH_OAI21 U397 ( .A(n11), .B(n384), .C(n385), .Z(n349) );
  GTECH_MUX2 U398 ( .A(n386), .B(n387), .S(n388), .Z(n385) );
  GTECH_XOR2 U399 ( .A(n332), .B(n11), .Z(n388) );
  GTECH_OA22 U400 ( .A(n389), .B(n390), .C(n391), .D(n392), .Z(n387) );
  GTECH_NOT U401 ( .A(n393), .Z(n391) );
  GTECH_NOT U402 ( .A(n394), .Z(n389) );
  GTECH_OA22 U403 ( .A(n394), .B(n390), .C(n392), .D(n393), .Z(n386) );
  GTECH_AND2 U404 ( .A(N155), .B(n395), .Z(N135) );
  GTECH_NOT U405 ( .A(n350), .Z(n395) );
  GTECH_MUX2 U406 ( .A(n12), .B(n396), .S(n384), .Z(n350) );
  GTECH_OA21 U407 ( .A(n397), .B(n12), .C(n394), .Z(n396) );
  GTECH_AND2 U408 ( .A(N155), .B(n398), .Z(N134) );
  GTECH_NOT U409 ( .A(n13), .Z(n398) );
  GTECH_AND2 U410 ( .A(N155), .B(n399), .Z(N133) );
  GTECH_NOT U411 ( .A(n14), .Z(n399) );
  GTECH_AND2 U412 ( .A(N155), .B(n400), .Z(N132) );
  GTECH_NOT U413 ( .A(n15), .Z(n400) );
  GTECH_AND2 U414 ( .A(N155), .B(n401), .Z(N131) );
  GTECH_NOT U415 ( .A(n16), .Z(n401) );
  GTECH_AND2 U416 ( .A(N155), .B(n402), .Z(N130) );
  GTECH_NOT U417 ( .A(n17), .Z(n402) );
  GTECH_AND2 U418 ( .A(N155), .B(n403), .Z(N129) );
  GTECH_NOT U419 ( .A(n18), .Z(n403) );
  GTECH_AND2 U420 ( .A(N155), .B(n404), .Z(N128) );
  GTECH_NOT U421 ( .A(n19), .Z(n404) );
  GTECH_AND2 U422 ( .A(N155), .B(n405), .Z(N127) );
  GTECH_NOT U423 ( .A(n20), .Z(n405) );
  GTECH_AND2 U424 ( .A(N155), .B(n406), .Z(N126) );
  GTECH_NOT U425 ( .A(n21), .Z(n406) );
  GTECH_AND2 U426 ( .A(N155), .B(n407), .Z(N125) );
  GTECH_NOT U427 ( .A(n22), .Z(n407) );
  GTECH_AND2 U428 ( .A(N155), .B(n408), .Z(N124) );
  GTECH_NOT U429 ( .A(n23), .Z(n408) );
  GTECH_AND2 U430 ( .A(N155), .B(n409), .Z(N123) );
  GTECH_NOT U431 ( .A(n24), .Z(n409) );
  GTECH_AND2 U432 ( .A(N155), .B(n410), .Z(N122) );
  GTECH_NOT U433 ( .A(n25), .Z(n410) );
  GTECH_AND2 U434 ( .A(N155), .B(n411), .Z(N121) );
  GTECH_NOT U435 ( .A(n26), .Z(n411) );
  GTECH_AND2 U436 ( .A(N155), .B(n412), .Z(N120) );
  GTECH_NOT U437 ( .A(n27), .Z(n412) );
  GTECH_NOT U438 ( .A(n366), .Z(N155) );
  GTECH_NAND4 U439 ( .A(n8), .B(n7), .C(n9), .D(n413), .Z(n366) );
  GTECH_AND3 U440 ( .A(n365), .B(n369), .C(n6), .Z(n413) );
  GTECH_NOT U441 ( .A(n330), .Z(n369) );
  GTECH_AND2 U442 ( .A(n348), .B(n364), .Z(N116) );
  GTECH_MUX2 U443 ( .A(n414), .B(n415), .S(n30), .Z(n364) );
  GTECH_MUX2 U444 ( .A(n416), .B(n417), .S(n347), .Z(n415) );
  GTECH_NAND2 U445 ( .A(n418), .B(n384), .Z(n414) );
  GTECH_MUX2 U446 ( .A(n419), .B(n420), .S(n347), .Z(n418) );
  GTECH_NOT U447 ( .A(n416), .Z(n420) );
  GTECH_OAI22 U448 ( .A(n392), .B(n421), .C(n422), .D(n390), .Z(n416) );
  GTECH_NOT U449 ( .A(n423), .Z(n422) );
  GTECH_NOT U450 ( .A(n424), .Z(n421) );
  GTECH_NOT U451 ( .A(n417), .Z(n419) );
  GTECH_OAI22 U452 ( .A(n424), .B(n392), .C(n390), .D(n423), .Z(n417) );
  GTECH_OAI2N2 U453 ( .A(n31), .B(n425), .C(n426), .D(n427), .Z(n423) );
  GTECH_OR_NOT U454 ( .A(n346), .B(n31), .Z(n427) );
  GTECH_NOT U455 ( .A(n346), .Z(n425) );
  GTECH_ADD_ABC U456 ( .A(n346), .B(n31), .C(n428), .COUT(n424) );
  GTECH_NAND2 U457 ( .A(n351), .B(n429), .Z(N115) );
  GTECH_NOT U458 ( .A(N41), .Z(n429) );
  GTECH_NAND2 U459 ( .A(n365), .B(n354), .Z(N41) );
  GTECH_NAND2 U460 ( .A(Ld), .B(n365), .Z(n354) );
  GTECH_AND2 U461 ( .A(n348), .B(n367), .Z(N113) );
  GTECH_OAI21 U462 ( .A(n31), .B(n384), .C(n430), .Z(n367) );
  GTECH_MUX2 U463 ( .A(n431), .B(n432), .S(n433), .Z(n430) );
  GTECH_XOR2 U464 ( .A(n346), .B(n31), .Z(n433) );
  GTECH_OA22 U465 ( .A(n434), .B(n390), .C(n392), .D(n435), .Z(n432) );
  GTECH_NOT U466 ( .A(n428), .Z(n435) );
  GTECH_NOT U467 ( .A(n426), .Z(n434) );
  GTECH_OA22 U468 ( .A(n390), .B(n426), .C(n428), .D(n392), .Z(n431) );
  GTECH_ADD_ABC U469 ( .A(n32), .B(n345), .C(n436), .COUT(n428) );
  GTECH_OAI2N2 U470 ( .A(n32), .B(n437), .C(n438), .D(n439), .Z(n426) );
  GTECH_OR_NOT U471 ( .A(n345), .B(n32), .Z(n439) );
  GTECH_NOT U472 ( .A(n345), .Z(n437) );
  GTECH_AND2 U473 ( .A(n348), .B(n370), .Z(N112) );
  GTECH_OAI21 U474 ( .A(n32), .B(n384), .C(n440), .Z(n370) );
  GTECH_MUX2 U475 ( .A(n441), .B(n442), .S(n443), .Z(n440) );
  GTECH_XOR2 U476 ( .A(n32), .B(n345), .Z(n443) );
  GTECH_OA22 U477 ( .A(n444), .B(n390), .C(n392), .D(n445), .Z(n442) );
  GTECH_NOT U478 ( .A(n436), .Z(n445) );
  GTECH_NOT U479 ( .A(n438), .Z(n444) );
  GTECH_OA22 U480 ( .A(n390), .B(n438), .C(n436), .D(n392), .Z(n441) );
  GTECH_ADD_ABC U481 ( .A(n33), .B(n344), .C(n446), .COUT(n436) );
  GTECH_OAI2N2 U482 ( .A(n33), .B(n447), .C(n448), .D(n449), .Z(n438) );
  GTECH_OR_NOT U483 ( .A(n344), .B(n33), .Z(n449) );
  GTECH_NOT U484 ( .A(n344), .Z(n447) );
  GTECH_AND2 U485 ( .A(n348), .B(n371), .Z(N111) );
  GTECH_OAI21 U486 ( .A(n33), .B(n384), .C(n450), .Z(n371) );
  GTECH_MUX2 U487 ( .A(n451), .B(n452), .S(n453), .Z(n450) );
  GTECH_XOR2 U488 ( .A(n33), .B(n344), .Z(n453) );
  GTECH_OA22 U489 ( .A(n454), .B(n390), .C(n392), .D(n455), .Z(n452) );
  GTECH_NOT U490 ( .A(n446), .Z(n455) );
  GTECH_NOT U491 ( .A(n448), .Z(n454) );
  GTECH_OA22 U492 ( .A(n390), .B(n448), .C(n446), .D(n392), .Z(n451) );
  GTECH_ADD_ABC U493 ( .A(n34), .B(n343), .C(n456), .COUT(n446) );
  GTECH_OAI2N2 U494 ( .A(n34), .B(n457), .C(n458), .D(n459), .Z(n448) );
  GTECH_OR_NOT U495 ( .A(n343), .B(n34), .Z(n459) );
  GTECH_NOT U496 ( .A(n343), .Z(n457) );
  GTECH_AND2 U497 ( .A(n348), .B(n372), .Z(N110) );
  GTECH_OAI21 U498 ( .A(n34), .B(n384), .C(n460), .Z(n372) );
  GTECH_MUX2 U499 ( .A(n461), .B(n462), .S(n463), .Z(n460) );
  GTECH_XOR2 U500 ( .A(n34), .B(n343), .Z(n463) );
  GTECH_OA22 U501 ( .A(n464), .B(n390), .C(n392), .D(n465), .Z(n462) );
  GTECH_NOT U502 ( .A(n456), .Z(n465) );
  GTECH_NOT U503 ( .A(n458), .Z(n464) );
  GTECH_OA22 U504 ( .A(n390), .B(n458), .C(n456), .D(n392), .Z(n461) );
  GTECH_ADD_ABC U505 ( .A(n35), .B(n342), .C(n466), .COUT(n456) );
  GTECH_OAI2N2 U506 ( .A(n35), .B(n467), .C(n468), .D(n469), .Z(n458) );
  GTECH_OR_NOT U507 ( .A(n342), .B(n35), .Z(n469) );
  GTECH_NOT U508 ( .A(n342), .Z(n467) );
  GTECH_AND2 U509 ( .A(n348), .B(n373), .Z(N109) );
  GTECH_OAI21 U510 ( .A(n35), .B(n384), .C(n470), .Z(n373) );
  GTECH_MUX2 U511 ( .A(n471), .B(n472), .S(n473), .Z(n470) );
  GTECH_XOR2 U512 ( .A(n35), .B(n342), .Z(n473) );
  GTECH_OA22 U513 ( .A(n474), .B(n390), .C(n392), .D(n475), .Z(n472) );
  GTECH_NOT U514 ( .A(n466), .Z(n475) );
  GTECH_NOT U515 ( .A(n468), .Z(n474) );
  GTECH_OA22 U516 ( .A(n390), .B(n468), .C(n466), .D(n392), .Z(n471) );
  GTECH_ADD_ABC U517 ( .A(n36), .B(n341), .C(n476), .COUT(n466) );
  GTECH_OAI2N2 U518 ( .A(n36), .B(n477), .C(n478), .D(n479), .Z(n468) );
  GTECH_OR_NOT U519 ( .A(n341), .B(n36), .Z(n479) );
  GTECH_NOT U520 ( .A(n341), .Z(n477) );
  GTECH_AND2 U521 ( .A(n348), .B(n374), .Z(N108) );
  GTECH_OAI21 U522 ( .A(n36), .B(n384), .C(n480), .Z(n374) );
  GTECH_MUX2 U523 ( .A(n481), .B(n482), .S(n483), .Z(n480) );
  GTECH_XOR2 U524 ( .A(n36), .B(n341), .Z(n483) );
  GTECH_OA22 U525 ( .A(n484), .B(n390), .C(n392), .D(n485), .Z(n482) );
  GTECH_NOT U526 ( .A(n476), .Z(n485) );
  GTECH_NOT U527 ( .A(n478), .Z(n484) );
  GTECH_OA22 U528 ( .A(n390), .B(n478), .C(n476), .D(n392), .Z(n481) );
  GTECH_ADD_ABC U529 ( .A(n37), .B(n340), .C(n486), .COUT(n476) );
  GTECH_OAI2N2 U530 ( .A(n37), .B(n487), .C(n488), .D(n489), .Z(n478) );
  GTECH_OR_NOT U531 ( .A(n340), .B(n37), .Z(n489) );
  GTECH_NOT U532 ( .A(n340), .Z(n487) );
  GTECH_AND2 U533 ( .A(n348), .B(n375), .Z(N107) );
  GTECH_OAI21 U534 ( .A(n37), .B(n384), .C(n490), .Z(n375) );
  GTECH_MUX2 U535 ( .A(n491), .B(n492), .S(n493), .Z(n490) );
  GTECH_XOR2 U536 ( .A(n37), .B(n340), .Z(n493) );
  GTECH_OA22 U537 ( .A(n494), .B(n390), .C(n392), .D(n495), .Z(n492) );
  GTECH_NOT U538 ( .A(n486), .Z(n495) );
  GTECH_NOT U539 ( .A(n488), .Z(n494) );
  GTECH_OA22 U540 ( .A(n390), .B(n488), .C(n486), .D(n392), .Z(n491) );
  GTECH_ADD_ABC U541 ( .A(n38), .B(n339), .C(n496), .COUT(n486) );
  GTECH_OAI2N2 U542 ( .A(n38), .B(n497), .C(n498), .D(n499), .Z(n488) );
  GTECH_OR_NOT U543 ( .A(n339), .B(n38), .Z(n499) );
  GTECH_NOT U544 ( .A(n339), .Z(n497) );
  GTECH_AND2 U545 ( .A(n348), .B(n376), .Z(N106) );
  GTECH_OAI21 U546 ( .A(n38), .B(n384), .C(n500), .Z(n376) );
  GTECH_MUX2 U547 ( .A(n501), .B(n502), .S(n503), .Z(n500) );
  GTECH_XOR2 U548 ( .A(n38), .B(n339), .Z(n503) );
  GTECH_OA22 U549 ( .A(n504), .B(n390), .C(n392), .D(n505), .Z(n502) );
  GTECH_NOT U550 ( .A(n496), .Z(n505) );
  GTECH_NOT U551 ( .A(n498), .Z(n504) );
  GTECH_OA22 U552 ( .A(n390), .B(n498), .C(n496), .D(n392), .Z(n501) );
  GTECH_ADD_ABC U553 ( .A(n39), .B(n338), .C(n506), .COUT(n496) );
  GTECH_OAI2N2 U554 ( .A(n39), .B(n507), .C(n508), .D(n509), .Z(n498) );
  GTECH_OR_NOT U555 ( .A(n338), .B(n39), .Z(n509) );
  GTECH_NOT U556 ( .A(n338), .Z(n507) );
  GTECH_AND2 U557 ( .A(n348), .B(n377), .Z(N105) );
  GTECH_OAI21 U558 ( .A(n39), .B(n384), .C(n510), .Z(n377) );
  GTECH_MUX2 U559 ( .A(n511), .B(n512), .S(n513), .Z(n510) );
  GTECH_XOR2 U560 ( .A(n39), .B(n338), .Z(n513) );
  GTECH_OA22 U561 ( .A(n514), .B(n390), .C(n392), .D(n515), .Z(n512) );
  GTECH_NOT U562 ( .A(n506), .Z(n515) );
  GTECH_NOT U563 ( .A(n508), .Z(n514) );
  GTECH_OA22 U564 ( .A(n390), .B(n508), .C(n506), .D(n392), .Z(n511) );
  GTECH_ADD_ABC U565 ( .A(n40), .B(n337), .C(n516), .COUT(n506) );
  GTECH_OAI2N2 U566 ( .A(n40), .B(n517), .C(n518), .D(n519), .Z(n508) );
  GTECH_OR_NOT U567 ( .A(n337), .B(n40), .Z(n519) );
  GTECH_NOT U568 ( .A(n337), .Z(n517) );
  GTECH_AND2 U569 ( .A(n348), .B(n378), .Z(N104) );
  GTECH_OAI21 U570 ( .A(n40), .B(n384), .C(n520), .Z(n378) );
  GTECH_MUX2 U571 ( .A(n521), .B(n522), .S(n523), .Z(n520) );
  GTECH_XOR2 U572 ( .A(n40), .B(n337), .Z(n523) );
  GTECH_OA22 U573 ( .A(n524), .B(n390), .C(n392), .D(n525), .Z(n522) );
  GTECH_NOT U574 ( .A(n516), .Z(n525) );
  GTECH_NOT U575 ( .A(n518), .Z(n524) );
  GTECH_OA22 U576 ( .A(n390), .B(n518), .C(n516), .D(n392), .Z(n521) );
  GTECH_ADD_ABC U577 ( .A(n41), .B(n336), .C(n526), .COUT(n516) );
  GTECH_OAI2N2 U578 ( .A(n41), .B(n527), .C(n528), .D(n529), .Z(n518) );
  GTECH_OR_NOT U579 ( .A(n336), .B(n41), .Z(n529) );
  GTECH_NOT U580 ( .A(n336), .Z(n527) );
  GTECH_AND2 U581 ( .A(n348), .B(n379), .Z(N103) );
  GTECH_OAI21 U582 ( .A(n41), .B(n384), .C(n530), .Z(n379) );
  GTECH_MUX2 U583 ( .A(n531), .B(n532), .S(n533), .Z(n530) );
  GTECH_XOR2 U584 ( .A(n41), .B(n336), .Z(n533) );
  GTECH_OA22 U585 ( .A(n534), .B(n390), .C(n392), .D(n535), .Z(n532) );
  GTECH_NOT U586 ( .A(n526), .Z(n535) );
  GTECH_NOT U587 ( .A(n528), .Z(n534) );
  GTECH_OA22 U588 ( .A(n390), .B(n528), .C(n526), .D(n392), .Z(n531) );
  GTECH_ADD_ABC U589 ( .A(n42), .B(n335), .C(n536), .COUT(n526) );
  GTECH_OAI2N2 U590 ( .A(n42), .B(n537), .C(n538), .D(n539), .Z(n528) );
  GTECH_OR_NOT U591 ( .A(n335), .B(n42), .Z(n539) );
  GTECH_NOT U592 ( .A(n335), .Z(n537) );
  GTECH_AND2 U593 ( .A(n348), .B(n381), .Z(N102) );
  GTECH_OAI21 U594 ( .A(n42), .B(n384), .C(n540), .Z(n381) );
  GTECH_MUX2 U595 ( .A(n541), .B(n542), .S(n543), .Z(n540) );
  GTECH_XOR2 U596 ( .A(n42), .B(n335), .Z(n543) );
  GTECH_OA22 U597 ( .A(n544), .B(n390), .C(n392), .D(n545), .Z(n542) );
  GTECH_NOT U598 ( .A(n536), .Z(n545) );
  GTECH_NOT U599 ( .A(n538), .Z(n544) );
  GTECH_OA22 U600 ( .A(n390), .B(n538), .C(n536), .D(n392), .Z(n541) );
  GTECH_ADD_ABC U601 ( .A(n43), .B(n334), .C(n546), .COUT(n536) );
  GTECH_OAI2N2 U602 ( .A(n43), .B(n547), .C(n548), .D(n549), .Z(n538) );
  GTECH_OR_NOT U603 ( .A(n334), .B(n43), .Z(n549) );
  GTECH_NOT U604 ( .A(n334), .Z(n547) );
  GTECH_AND2 U605 ( .A(n348), .B(n382), .Z(N101) );
  GTECH_OAI21 U606 ( .A(n43), .B(n384), .C(n550), .Z(n382) );
  GTECH_MUX2 U607 ( .A(n551), .B(n552), .S(n553), .Z(n550) );
  GTECH_XOR2 U608 ( .A(n43), .B(n334), .Z(n553) );
  GTECH_OA22 U609 ( .A(n554), .B(n390), .C(n392), .D(n555), .Z(n552) );
  GTECH_NOT U610 ( .A(n546), .Z(n555) );
  GTECH_NOT U611 ( .A(n548), .Z(n554) );
  GTECH_OA22 U612 ( .A(n390), .B(n548), .C(n546), .D(n392), .Z(n551) );
  GTECH_ADD_ABC U613 ( .A(n29), .B(n333), .C(n556), .COUT(n546) );
  GTECH_OAI2N2 U614 ( .A(n29), .B(n557), .C(n558), .D(n559), .Z(n548) );
  GTECH_OR_NOT U615 ( .A(n333), .B(n29), .Z(n559) );
  GTECH_NOT U616 ( .A(n333), .Z(n557) );
  GTECH_AND2 U617 ( .A(n348), .B(n383), .Z(N100) );
  GTECH_OAI21 U618 ( .A(n29), .B(n384), .C(n560), .Z(n383) );
  GTECH_MUX2 U619 ( .A(n561), .B(n562), .S(n563), .Z(n560) );
  GTECH_XOR2 U620 ( .A(n29), .B(n333), .Z(n563) );
  GTECH_OA22 U621 ( .A(n564), .B(n390), .C(n392), .D(n565), .Z(n562) );
  GTECH_NOT U622 ( .A(n556), .Z(n565) );
  GTECH_NOT U623 ( .A(n558), .Z(n564) );
  GTECH_OA22 U624 ( .A(n390), .B(n558), .C(n556), .D(n392), .Z(n561) );
  GTECH_ADD_ABC U625 ( .A(n332), .B(n11), .C(n393), .COUT(n556) );
  GTECH_NAND2 U626 ( .A(n566), .B(n397), .Z(n393) );
  GTECH_NOT U627 ( .A(n12), .Z(n566) );
  GTECH_OAI2N2 U628 ( .A(n11), .B(n567), .C(n394), .D(n568), .Z(n558) );
  GTECH_OR_NOT U629 ( .A(n332), .B(n11), .Z(n568) );
  GTECH_NAND2 U630 ( .A(n12), .B(n397), .Z(n394) );
  GTECH_NOT U631 ( .A(n331), .Z(n397) );
  GTECH_NOT U632 ( .A(n332), .Z(n567) );
  GTECH_NAND2 U633 ( .A(n392), .B(n390), .Z(n384) );
  GTECH_NAND2 U634 ( .A(n10), .B(n353), .Z(n390) );
  GTECH_NOT U635 ( .A(n28), .Z(n353) );
  GTECH_NAND2 U636 ( .A(n28), .B(n569), .Z(n392) );
  GTECH_NOT U637 ( .A(n10), .Z(n569) );
  GTECH_NOT U638 ( .A(n351), .Z(n348) );
  GTECH_OAI21 U639 ( .A(n356), .B(n357), .C(n358), .Z(n351) );
  GTECH_NOT U640 ( .A(n570), .Z(n358) );
  GTECH_NAND2 U641 ( .A(n365), .B(n571), .Z(n570) );
  GTECH_NOT U642 ( .A(Ld), .Z(n571) );
  GTECH_NOT U643 ( .A(Rst), .Z(n365) );
  GTECH_NOT U644 ( .A(n9), .Z(n357) );
  GTECH_NAND2 U645 ( .A(n8), .B(n360), .Z(n356) );
  GTECH_NOT U646 ( .A(n363), .Z(n360) );
  GTECH_NAND2 U647 ( .A(n7), .B(n362), .Z(n363) );
  GTECH_NOT U648 ( .A(n572), .Z(n362) );
  GTECH_NAND2 U649 ( .A(n6), .B(n330), .Z(n572) );
endmodule

