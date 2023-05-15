
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
         n11, n12, n13, n14, n16, n17, n18, n24, n27, n28, n29, n30, n33, n34,
         n35, n36, n40, n45, n46, n47, n48, n49, n51, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141;
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
        mult2_t[0]), .QN(n24) );
  GTECH_FD2 inst0_mult2_shift_reg_1_ ( .D(inst0_N25), .CP(clk), .CD(rstn), .Q(
        mult2_t[1]) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_2_ ( .D(mult_stepx_1__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__2_), .QN(n33) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_3_ ( .D(mult_stepx_1__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__3_), .QN(n34) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_4_ ( .D(mult_stepx_1__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__4_), .QN(n35) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_5_ ( .D(mult_stepx_1__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_1__5_), .QN(n36) );
  GTECH_FD2 mult_stepx_1__inst_rdy_reg ( .D(rdy_t[0]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[1]) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_0_ ( .D(mult_stepx_1__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[3]), .QN(n40) );
  GTECH_FD2 mult_stepx_1__inst_mult2_shift_reg_1_ ( .D(mult_stepx_1__inst_N25), 
        .CP(clk), .CD(rstn), .Q(mult2_t[4]) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n79) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n78) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n77) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n76) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_3_ ( .D(mult_stepx_2__inst_N37), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__3_), .QN(n45) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_4_ ( .D(mult_stepx_2__inst_N38), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__4_), .QN(n46) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_5_ ( .D(mult_stepx_2__inst_N39), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__5_), .QN(n47) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_6_ ( .D(mult_stepx_2__inst_N40), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__6_), .QN(n48) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_7_ ( .D(mult_stepx_2__inst_N41), 
        .CP(clk), .CD(rstn), .Q(mult1_acc_t_2__7_), .QN(n49) );
  GTECH_FD2 mult_stepx_2__inst_rdy_reg ( .D(rdy_t[1]), .CP(clk), .CD(rstn), 
        .Q(rdy_t[2]) );
  GTECH_FD2 mult_stepx_2__inst_mult2_shift_reg_0_ ( .D(mult_stepx_2__inst_N24), 
        .CP(clk), .CD(rstn), .Q(mult2_t[5]), .QN(n51) );
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
  GTECH_ZERO U78 ( .Z(n98) );
  GTECH_ONE U79 ( .Z(n99) );
  GTECH_OR2 U80 ( .A(n14), .B(n124), .Z(n123) );
  GTECH_AND_NOT U81 ( .A(n75), .B(n125), .Z(mult_stepx_1__inst_N38) );
  GTECH_NOT U82 ( .A(n119), .Z(n75) );
  GTECH_XNOR2 U83 ( .A(n14), .B(n124), .Z(n125) );
  GTECH_OAI22 U84 ( .A(n49), .B(n80), .C(n81), .D(n82), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U85 ( .A(n49), .B(n83), .Z(n82) );
  GTECH_ADD_ABC U86 ( .A(n84), .B(n48), .C(n76), .COUT(n83) );
  GTECH_OAI22 U87 ( .A(n48), .B(n80), .C(n81), .D(n85), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U88 ( .A(n76), .B(n48), .C(n84), .Z(n85) );
  GTECH_ADD_ABC U89 ( .A(n77), .B(n47), .C(n86), .COUT(n84) );
  GTECH_OAI22 U90 ( .A(n47), .B(n80), .C(n81), .D(n87), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U91 ( .A(n77), .B(n47), .C(n86), .Z(n87) );
  GTECH_ADD_ABC U92 ( .A(n78), .B(n46), .C(n88), .COUT(n86) );
  GTECH_OAI22 U93 ( .A(n46), .B(n80), .C(n89), .D(n81), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U94 ( .A(n78), .B(n46), .C(n88), .Z(n89) );
  GTECH_OR_NOT U95 ( .A(n79), .B(n90), .Z(n88) );
  GTECH_OAI22 U96 ( .A(n45), .B(n80), .C(n91), .D(n81), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U97 ( .A(n90), .B(n79), .Z(n91) );
  GTECH_NOT U98 ( .A(n45), .Z(n90) );
  GTECH_AND2 U99 ( .A(n92), .B(mult_stepx_3__inst_N10), .Z(
        mult_stepx_3__inst_N36) );
  GTECH_AND2 U100 ( .A(n92), .B(mult_stepx_3__inst_N9), .Z(
        mult_stepx_3__inst_N35) );
  GTECH_AND2 U101 ( .A(n92), .B(mult_stepx_3__inst_N8), .Z(
        mult_stepx_3__inst_N34) );
  GTECH_OR_NOT U102 ( .A(n93), .B(n80), .Z(n92) );
  GTECH_OR_NOT U103 ( .A(n94), .B(n51), .Z(n80) );
  GTECH_NOT U104 ( .A(rdy_t[2]), .Z(n94) );
  GTECH_NOT U105 ( .A(n81), .Z(n93) );
  GTECH_OR_NOT U106 ( .A(n51), .B(rdy_t[2]), .Z(n81) );
  GTECH_OAI22 U107 ( .A(n99), .B(n95), .C(n96), .D(n97), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U108 ( .A(n98), .B(n99), .S(n99), .Z(n97) );
  GTECH_NOT U109 ( .A(n101), .Z(n95) );
  GTECH_MUX2 U110 ( .A(n101), .B(n102), .S(n99), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND2 U111 ( .A(n103), .B(n100), .Z(n102) );
  GTECH_OAI21 U112 ( .A(n96), .B(n100), .C(n104), .Z(n101) );
  GTECH_NOT U113 ( .A(n105), .Z(n100) );
  GTECH_ADD_ABC U114 ( .A(n36), .B(n30), .C(n106), .COUT(n105) );
  GTECH_OAI22 U115 ( .A(n36), .B(n104), .C(n96), .D(n107), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U116 ( .A(n36), .B(n30), .C(n106), .Z(n107) );
  GTECH_ADD_ABC U117 ( .A(n35), .B(n29), .C(n108), .COUT(n106) );
  GTECH_OAI22 U118 ( .A(n35), .B(n104), .C(n96), .D(n109), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U119 ( .A(n35), .B(n29), .C(n108), .Z(n109) );
  GTECH_ADD_ABC U120 ( .A(n34), .B(n28), .C(n110), .COUT(n108) );
  GTECH_OAI22 U121 ( .A(n34), .B(n104), .C(n111), .D(n96), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U122 ( .A(n34), .B(n28), .C(n110), .Z(n111) );
  GTECH_OR_NOT U123 ( .A(n33), .B(n112), .Z(n110) );
  GTECH_OAI22 U124 ( .A(n33), .B(n104), .C(n113), .D(n96), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U125 ( .A(n112), .B(n33), .Z(n113) );
  GTECH_AND2 U126 ( .A(n114), .B(mult_stepx_2__inst_N9), .Z(
        mult_stepx_2__inst_N35) );
  GTECH_AND2 U127 ( .A(n114), .B(mult_stepx_2__inst_N8), .Z(
        mult_stepx_2__inst_N34) );
  GTECH_OR_NOT U128 ( .A(n103), .B(n104), .Z(n114) );
  GTECH_OR_NOT U129 ( .A(n115), .B(n40), .Z(n104) );
  GTECH_NOT U130 ( .A(rdy_t[1]), .Z(n115) );
  GTECH_NOT U131 ( .A(n96), .Z(n103) );
  GTECH_OR_NOT U132 ( .A(n40), .B(rdy_t[1]), .Z(n96) );
  GTECH_AND2 U133 ( .A(rdy_t[1]), .B(n116), .Z(mult_stepx_2__inst_N32) );
  GTECH_NOT U134 ( .A(n30), .Z(n116) );
  GTECH_AND2 U135 ( .A(rdy_t[1]), .B(n117), .Z(mult_stepx_2__inst_N31) );
  GTECH_NOT U136 ( .A(n29), .Z(n117) );
  GTECH_AND2 U137 ( .A(rdy_t[1]), .B(n118), .Z(mult_stepx_2__inst_N30) );
  GTECH_NOT U138 ( .A(n28), .Z(n118) );
  GTECH_AND2 U139 ( .A(rdy_t[1]), .B(n112), .Z(mult_stepx_2__inst_N29) );
  GTECH_NOT U140 ( .A(n27), .Z(n112) );
  GTECH_AND2 U141 ( .A(rdy_t[1]), .B(mult2_t[4]), .Z(mult_stepx_2__inst_N24)
         );
  GTECH_AND2 U142 ( .A(n121), .B(n120), .Z(mult_stepx_1__inst_N39) );
  GTECH_NOT U143 ( .A(n123), .Z(n120) );
  GTECH_ADD_ABC U144 ( .A(n18), .B(n13), .C(n126), .COUT(n124) );
  GTECH_OAI22 U145 ( .A(n18), .B(n122), .C(n119), .D(n127), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U146 ( .A(n18), .B(n13), .C(n126), .Z(n127) );
  GTECH_ADD_ABC U147 ( .A(n17), .B(n12), .C(n128), .COUT(n126) );
  GTECH_OAI22 U148 ( .A(n17), .B(n122), .C(n129), .D(n119), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U149 ( .A(n17), .B(n12), .C(n128), .Z(n129) );
  GTECH_OR_NOT U150 ( .A(n16), .B(n130), .Z(n128) );
  GTECH_OAI22 U151 ( .A(n16), .B(n122), .C(n131), .D(n119), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U152 ( .A(n130), .B(n16), .Z(n131) );
  GTECH_OA21 U153 ( .A(n121), .B(n132), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U154 ( .A(n122), .Z(n132) );
  GTECH_OR_NOT U155 ( .A(n133), .B(n24), .Z(n122) );
  GTECH_NOT U156 ( .A(rdy_t[0]), .Z(n133) );
  GTECH_NOT U157 ( .A(n119), .Z(n121) );
  GTECH_OR_NOT U158 ( .A(n24), .B(rdy_t[0]), .Z(n119) );
  GTECH_AND2 U159 ( .A(rdy_t[0]), .B(n134), .Z(mult_stepx_1__inst_N31) );
  GTECH_NOT U160 ( .A(n14), .Z(n134) );
  GTECH_AND2 U161 ( .A(rdy_t[0]), .B(n135), .Z(mult_stepx_1__inst_N30) );
  GTECH_NOT U162 ( .A(n13), .Z(n135) );
  GTECH_AND2 U163 ( .A(rdy_t[0]), .B(n136), .Z(mult_stepx_1__inst_N29) );
  GTECH_NOT U164 ( .A(n12), .Z(n136) );
  GTECH_AND2 U165 ( .A(rdy_t[0]), .B(n130), .Z(mult_stepx_1__inst_N28) );
  GTECH_NOT U166 ( .A(n11), .Z(n130) );
  GTECH_AND2 U167 ( .A(rdy_t[0]), .B(mult2_t[2]), .Z(mult_stepx_1__inst_N25)
         );
  GTECH_AND2 U168 ( .A(rdy_t[0]), .B(mult2_t[1]), .Z(mult_stepx_1__inst_N24)
         );
  GTECH_AND2 U169 ( .A(mult2[0]), .B(inst0_N30), .Z(inst0_N37) );
  GTECH_AND2 U170 ( .A(inst0_N29), .B(mult2[0]), .Z(inst0_N36) );
  GTECH_AND2 U171 ( .A(inst0_N28), .B(mult2[0]), .Z(inst0_N35) );
  GTECH_AND2 U172 ( .A(inst0_N27), .B(mult2[0]), .Z(inst0_N34) );
  GTECH_NOT U173 ( .A(n137), .Z(inst0_N30) );
  GTECH_OR_NOT U174 ( .A(n138), .B(mult1[3]), .Z(n137) );
  GTECH_NOT U175 ( .A(n139), .Z(inst0_N29) );
  GTECH_OR_NOT U176 ( .A(n138), .B(mult1[2]), .Z(n139) );
  GTECH_NOT U177 ( .A(n140), .Z(inst0_N28) );
  GTECH_OR_NOT U178 ( .A(n138), .B(mult1[1]), .Z(n140) );
  GTECH_NOT U179 ( .A(n141), .Z(inst0_N27) );
  GTECH_OR_NOT U180 ( .A(n138), .B(mult1[0]), .Z(n141) );
  GTECH_NOT U181 ( .A(data_rdy), .Z(n138) );
  GTECH_AND2 U182 ( .A(mult2[3]), .B(data_rdy), .Z(inst0_N26) );
  GTECH_AND2 U183 ( .A(mult2[2]), .B(data_rdy), .Z(inst0_N25) );
  GTECH_AND2 U184 ( .A(mult2[1]), .B(data_rdy), .Z(inst0_N24) );
endmodule

