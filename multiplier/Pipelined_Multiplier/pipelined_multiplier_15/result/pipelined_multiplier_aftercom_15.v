
module pipelined_multiplier ( clk, rstn, data_rdy, mult1, mult2, res_rdy, res
 );
  input [3:0] mult1;
  input [3:0] mult2;
  output [7:0] res;
  input clk, rstn, data_rdy;
  output res_rdy;
  wire   mult1_acc_t_2__7_, mult1_acc_t_2__6_, mult1_acc_t_2__5_,
         mult1_acc_t_2__4_, mult1_acc_t_2__3_, mult1_acc_t_1__5_,
         mult1_acc_t_1__4_, mult1_acc_t_1__3_, mult1_acc_t_1__2_,
         mult1_acc_t_0__3_, mult1_acc_t_0__2_, mult1_acc_t_0__1_, inst0_N37,
         inst0_N36, inst0_N35, inst0_N34, inst0_N30, inst0_N29, inst0_N28,
         inst0_N27, inst0_N26, inst0_N25, inst0_N24, mult_stepx_1__inst_N39,
         mult_stepx_1__inst_N38, mult_stepx_1__inst_N37,
         mult_stepx_1__inst_N36, mult_stepx_1__inst_N35,
         mult_stepx_1__inst_N34, mult_stepx_1__inst_N31,
         mult_stepx_1__inst_N30, mult_stepx_1__inst_N29,
         mult_stepx_1__inst_N28, mult_stepx_1__inst_N25,
         mult_stepx_1__inst_N24, mult_stepx_1__inst_N8, mult_stepx_2__inst_N41,
         mult_stepx_2__inst_N40, mult_stepx_2__inst_N39,
         mult_stepx_2__inst_N38, mult_stepx_2__inst_N37,
         mult_stepx_2__inst_N36, mult_stepx_2__inst_N35,
         mult_stepx_2__inst_N34, mult_stepx_2__inst_N32,
         mult_stepx_2__inst_N31, mult_stepx_2__inst_N30,
         mult_stepx_2__inst_N29, mult_stepx_2__inst_N24, mult_stepx_2__inst_N9,
         mult_stepx_2__inst_N8, mult_stepx_3__inst_N41, mult_stepx_3__inst_N40,
         mult_stepx_3__inst_N39, mult_stepx_3__inst_N38,
         mult_stepx_3__inst_N37, mult_stepx_3__inst_N36,
         mult_stepx_3__inst_N35, mult_stepx_3__inst_N34,
         mult_stepx_3__inst_N10, mult_stepx_3__inst_N9, mult_stepx_3__inst_N8,
         n11, n12, n13, n14, n16, n17, n18, n26, n27, n28, n29, n32, n33, n34,
         n35, n43, n44, n45, n46, n47, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140;
  wire   [5:0] mult2_t;
  wire   [11:0] mult1_t;
  wire   [2:0] rdy_t;

  GTECH_FD2 inst0_mult1_o_reg_1_ ( .D(inst0_N27), .CP(clk), .CD(rstn), .Q(
        mult1_t[0]), .QN(n11) );
  GTECH_FD2 inst0_mult1_o_reg_2_ ( .D(inst0_N28), .CP(clk), .CD(rstn), .Q(
        mult1_t[1]), .QN(n12) );
  GTECH_FD2 inst0_mult1_o_reg_3_ ( .D(inst0_N29), .CP(clk), .CD(rstn), .Q(
        mult1_t[2]), .QN(n13) );
  GTECH_FD2 inst0_mult1_o_reg_4_ ( .D(inst0_N30), .CP(clk), .CD(rstn), .Q(
        mult1_t[3]), .QN(n14) );
  GTECH_FD2 inst0_mult1_acco_reg_0_ ( .D(inst0_N34), .CP(clk), .CD(rstn), .Q(
        mult_stepx_1__inst_N8) );
  GTECH_FD2 inst0_mult1_acco_reg_1_ ( .D(inst0_N35), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__1_), .QN(n16) );
  GTECH_FD2 inst0_mult1_acco_reg_2_ ( .D(inst0_N36), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__2_), .QN(n17) );
  GTECH_FD2 inst0_mult1_acco_reg_3_ ( .D(inst0_N37), .CP(clk), .CD(rstn), .Q(
        mult1_acc_t_0__3_), .QN(n18) );
  GTECH_FD2 inst0_rdy_reg ( .D(data_rdy), .CP(clk), .CD(rstn), .Q(rdy_t[0]) );
  GTECH_FD2 inst0_mult2_shift_reg_0_ ( .D(inst0_N24), .CP(clk), .CD(rstn), .Q(
        mult2_t[0]), .QN(n74) );
  GTECH_FD2 inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .CP(clk), .CD(rstn), .Q(
        mult2_t[1]) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n26) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(n32) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(n33) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(n34) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(n35) );
  GTECH_FD2 mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[1]) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n73) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), 
        .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n78) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n77) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n76) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(n43) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(n44) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(n45) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(n46) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(n47) );
  GTECH_FD2 mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[2]) );
  GTECH_FD2 mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n72) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_0_ ( .D(mult_stepx_3__inst_N34), 
        .CP(clk), .CD(rstn), .Q(res[0]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_1_ ( .D(mult_stepx_3__inst_N35), 
        .CP(clk), .CD(rstn), .Q(res[1]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_2_ ( .D(mult_stepx_3__inst_N36), 
        .CP(clk), .CD(rstn), .Q(res[2]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_3_ ( .D(mult_stepx_3__inst_N37), 
        .CP(clk), .CD(rstn), .Q(res[3]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_4_ ( .D(mult_stepx_3__inst_N38), 
        .CP(clk), .CD(rstn), .Q(res[4]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_5_ ( .D(mult_stepx_3__inst_N39), 
        .CP(clk), .CD(rstn), .Q(res[5]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_6_ ( .D(mult_stepx_3__inst_N40), 
        .CP(clk), .CD(rstn), .Q(res[6]) );
  GTECH_FD2 mult_stepx_3__inst_mult1_acco_reg_7_ ( .D(mult_stepx_3__inst_N41), 
        .CP(clk), .CD(rstn), .Q(res[7]) );
  GTECH_FD2 mult_stepx_3__inst_rdy_reg ( .D(rdy_t[2]), .CP(clk), .CD(rstn), 
        .Q(res_rdy) );
  GTECH_ZERO U78 ( .Z(n97) );
  GTECH_ONE U79 ( .Z(n98) );
  GTECH_OR2 U80 ( .A(n14), .B(n123), .Z(n122) );
  GTECH_NOR2 U81 ( .A(n118), .B(n124), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U82 ( .A(n14), .B(n123), .Z(n124) );
  GTECH_OAI22 U83 ( .A(n47), .B(n79), .C(n80), .D(n81), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U84 ( .A(n47), .B(n82), .Z(n81) );
  GTECH_ADD_ABC U85 ( .A(n83), .B(n46), .C(n75), .COUT(n82) );
  GTECH_OAI22 U86 ( .A(n46), .B(n79), .C(n80), .D(n84), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U87 ( .A(n75), .B(n46), .C(n83), .Z(n84) );
  GTECH_ADD_ABC U88 ( .A(n76), .B(n45), .C(n85), .COUT(n83) );
  GTECH_OAI22 U89 ( .A(n45), .B(n79), .C(n80), .D(n86), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U90 ( .A(n76), .B(n45), .C(n85), .Z(n86) );
  GTECH_ADD_ABC U91 ( .A(n77), .B(n44), .C(n87), .COUT(n85) );
  GTECH_OAI22 U92 ( .A(n44), .B(n79), .C(n88), .D(n80), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U93 ( .A(n77), .B(n44), .C(n87), .Z(n88) );
  GTECH_NAND2 U94 ( .A(n89), .B(n90), .Z(n87) );
  GTECH_NOT U95 ( .A(n78), .Z(n90) );
  GTECH_OAI22 U96 ( .A(n43), .B(n79), .C(n91), .D(n80), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U97 ( .A(n89), .B(n78), .Z(n91) );
  GTECH_NOT U98 ( .A(n43), .Z(n89) );
  GTECH_AND2 U99 ( .A(n92), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U100 ( .A(n92), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U101 ( .A(n92), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_NAND2 U102 ( .A(n79), .B(n80), .Z(n92) );
  GTECH_NAND2 U103 ( .A(rdy_t[2]), .B(n93), .Z(n80) );
  GTECH_NOT U104 ( .A(n72), .Z(n93) );
  GTECH_NAND2 U105 ( .A(n72), .B(rdy_t[2]), .Z(n79) );
  GTECH_OAI22 U106 ( .A(n98), .B(n94), .C(n95), .D(n96), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U107 ( .A(n97), .B(n98), .S(n98), .Z(n96) );
  GTECH_NOT U108 ( .A(n100), .Z(n94) );
  GTECH_MUX2 U109 ( .A(n100), .B(n101), .S(n98), .Z(mult_stepx_2__inst_N40) );
  GTECH_NOR2 U110 ( .A(n95), .B(n102), .Z(n101) );
  GTECH_OAI21 U111 ( .A(n95), .B(n99), .C(n103), .Z(n100) );
  GTECH_NOT U112 ( .A(n102), .Z(n99) );
  GTECH_ADD_ABC U113 ( .A(n35), .B(n29), .C(n104), .COUT(n102) );
  GTECH_OAI22 U114 ( .A(n35), .B(n103), .C(n95), .D(n105), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U115 ( .A(n35), .B(n29), .C(n104), .Z(n105) );
  GTECH_ADD_ABC U116 ( .A(n34), .B(n28), .C(n106), .COUT(n104) );
  GTECH_OAI22 U117 ( .A(n34), .B(n103), .C(n95), .D(n107), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U118 ( .A(n34), .B(n28), .C(n106), .Z(n107) );
  GTECH_ADD_ABC U119 ( .A(n33), .B(n27), .C(n108), .COUT(n106) );
  GTECH_OAI22 U120 ( .A(n33), .B(n103), .C(n109), .D(n95), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U121 ( .A(n33), .B(n27), .C(n108), .Z(n109) );
  GTECH_NAND2 U122 ( .A(n110), .B(n111), .Z(n108) );
  GTECH_NOT U123 ( .A(n32), .Z(n111) );
  GTECH_OAI22 U124 ( .A(n32), .B(n103), .C(n112), .D(n95), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U125 ( .A(n110), .B(n32), .Z(n112) );
  GTECH_AND2 U126 ( .A(n113), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U127 ( .A(n113), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_NAND2 U128 ( .A(n103), .B(n95), .Z(n113) );
  GTECH_NAND2 U129 ( .A(rdy_t[1]), .B(n114), .Z(n95) );
  GTECH_NOT U130 ( .A(n73), .Z(n114) );
  GTECH_NAND2 U131 ( .A(n73), .B(rdy_t[1]), .Z(n103) );
  GTECH_AND2 U132 ( .A(rdy_t[1]), .B(n115), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U133 ( .A(n29), .Z(n115) );
  GTECH_AND2 U134 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U135 ( .A(n28), .Z(n116) );
  GTECH_AND2 U136 ( .A(rdy_t[1]), .B(n117), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U137 ( .A(n27), .Z(n117) );
  GTECH_AND2 U138 ( .A(rdy_t[1]), .B(n110), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U139 ( .A(n26), .Z(n110) );
  GTECH_AND2 U140 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U141 ( .A(n120), .B(n119), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U142 ( .A(n122), .Z(n119) );
  GTECH_ADD_ABC U143 ( .A(n18), .B(n13), .C(n125), .COUT(n123) );
  GTECH_OAI22 U144 ( .A(n18), .B(n121), .C(n118), .D(n126), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U145 ( .A(n18), .B(n13), .C(n125), .Z(n126) );
  GTECH_ADD_ABC U146 ( .A(n17), .B(n12), .C(n127), .COUT(n125) );
  GTECH_OAI22 U147 ( .A(n17), .B(n121), .C(n128), .D(n118), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U148 ( .A(n17), .B(n12), .C(n127), .Z(n128) );
  GTECH_NAND2 U149 ( .A(n129), .B(n130), .Z(n127) );
  GTECH_NOT U150 ( .A(n16), .Z(n130) );
  GTECH_OAI22 U151 ( .A(n16), .B(n121), .C(n131), .D(n118), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U152 ( .A(n129), .B(n16), .Z(n131) );
  GTECH_OA21 U153 ( .A(n120), .B(n132), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U154 ( .A(n121), .Z(n132) );
  GTECH_NAND2 U155 ( .A(n74), .B(rdy_t[0]), .Z(n121) );
  GTECH_NOT U156 ( .A(n118), .Z(n120) );
  GTECH_NAND2 U157 ( .A(rdy_t[0]), .B(n133), .Z(n118) );
  GTECH_NOT U158 ( .A(n74), .Z(n133) );
  GTECH_AND2 U159 ( .A(rdy_t[0]), .B(n134), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U160 ( .A(n14), .Z(n134) );
  GTECH_AND2 U161 ( .A(rdy_t[0]), .B(n135), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U162 ( .A(n13), .Z(n135) );
  GTECH_AND2 U163 ( .A(rdy_t[0]), .B(n136), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U164 ( .A(n12), .Z(n136) );
  GTECH_AND2 U165 ( .A(rdy_t[0]), .B(n129), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U166 ( .A(n11), .Z(n129) );
  GTECH_AND2 U167 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U168 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U169 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U170 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U171 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U172 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U173 ( .A(n137), .Z(inst0_N30) );
  GTECH_NAND2 U174 ( .A(mult1[3]), .B(data_rdy), .Z(n137) );
  GTECH_NOT U175 ( .A(n138), .Z(inst0_N29) );
  GTECH_NAND2 U176 ( .A(mult1[2]), .B(data_rdy), .Z(n138) );
  GTECH_NOT U177 ( .A(n139), .Z(inst0_N28) );
  GTECH_NAND2 U178 ( .A(mult1[1]), .B(data_rdy), .Z(n139) );
  GTECH_NOT U179 ( .A(n140), .Z(inst0_N27) );
  GTECH_NAND2 U180 ( .A(mult1[0]), .B(data_rdy), .Z(n140) );
  GTECH_AND2 U181 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U182 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U183 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

