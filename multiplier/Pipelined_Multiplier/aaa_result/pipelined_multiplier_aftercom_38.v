
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
         n11, n12, n13, n14, n16, n17, n18, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134;
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
        mult2_t[1]), .QN(n25) );
  GTECH_FD2 inst0_mult2_shift_reg_2_ ( .D(inst0_N26), .CP(clk), .CD(rstn), .Q(
        mult2_t[2]), .QN(n26) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_2_ ( .D(mult_stepx_1__inst_N28), 
        .CP(clk), .CD(rstn), .Q(mult1_t[4]), .QN(n27) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_3_ ( .D(mult_stepx_1__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[5]), .QN(n28) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_4_ ( .D(mult_stepx_1__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[6]), .QN(n29) );
  GTECH_FD2 mult_stepx_1__inst_mult1_o_reg_5_ ( .D(mult_stepx_1__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[7]), .QN(n30) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_0_ ( .D(mult_stepx_1__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N8), .QN(n31) );
  GTECH_FD2 mult_stepx_1__inst_mult1_acco_reg_1_ ( .D(mult_stepx_1__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_2__inst_N9), .QN(n32) );
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
        .CP(clk), .CD(rstn), .Q(mult2_t[4]), .QN(n41) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_3_ ( .D(mult_stepx_2__inst_N29), 
        .CP(clk), .CD(rstn), .Q(mult1_t[8]), .QN(n78) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_4_ ( .D(mult_stepx_2__inst_N30), 
        .CP(clk), .CD(rstn), .Q(mult1_t[9]), .QN(n77) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_5_ ( .D(mult_stepx_2__inst_N31), 
        .CP(clk), .CD(rstn), .Q(mult1_t[10]), .QN(n76) );
  GTECH_FD2 mult_stepx_2__inst_mult1_o_reg_6_ ( .D(mult_stepx_2__inst_N32), 
        .CP(clk), .CD(rstn), .Q(mult1_t[11]), .QN(n75) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_0_ ( .D(mult_stepx_2__inst_N34), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N8), .QN(n42) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_1_ ( .D(mult_stepx_2__inst_N35), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N9), .QN(n43) );
  GTECH_FD2 mult_stepx_2__inst_mult1_acco_reg_2_ ( .D(mult_stepx_2__inst_N36), 
        .CP(clk), .CD(rstn), .Q(mult_stepx_3__inst_N10), .QN(n44) );
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
  GTECH_ZERO U78 ( .Z(n97) );
  GTECH_ONE U79 ( .Z(n98) );
  GTECH_OR2 U80 ( .A(n14), .B(n119), .Z(n117) );
  GTECH_NOR2 U81 ( .A(n115), .B(n120), .Z(mult_stepx_1__inst_N38) );
  GTECH_XNOR2 U82 ( .A(n14), .B(n119), .Z(n120) );
  GTECH_OAI22 U83 ( .A(n49), .B(n79), .C(n80), .D(n81), .Z(
        mult_stepx_3__inst_N41) );
  GTECH_XNOR2 U84 ( .A(n49), .B(n82), .Z(n81) );
  GTECH_ADD_ABC U85 ( .A(n83), .B(n48), .C(n75), .COUT(n82) );
  GTECH_OAI22 U86 ( .A(n48), .B(n79), .C(n80), .D(n84), .Z(
        mult_stepx_3__inst_N40) );
  GTECH_XOR3 U87 ( .A(n75), .B(n48), .C(n83), .Z(n84) );
  GTECH_ADD_ABC U88 ( .A(n76), .B(n47), .C(n85), .COUT(n83) );
  GTECH_OAI22 U89 ( .A(n47), .B(n79), .C(n80), .D(n86), .Z(
        mult_stepx_3__inst_N39) );
  GTECH_XOR3 U90 ( .A(n76), .B(n47), .C(n85), .Z(n86) );
  GTECH_ADD_ABC U91 ( .A(n77), .B(n46), .C(n87), .COUT(n85) );
  GTECH_OAI22 U92 ( .A(n46), .B(n79), .C(n88), .D(n80), .Z(
        mult_stepx_3__inst_N38) );
  GTECH_XOR3 U93 ( .A(n77), .B(n46), .C(n87), .Z(n88) );
  GTECH_OR_NOT U94 ( .A(n78), .B(n89), .Z(n87) );
  GTECH_OAI22 U95 ( .A(n45), .B(n79), .C(n90), .D(n80), .Z(
        mult_stepx_3__inst_N37) );
  GTECH_XOR2 U96 ( .A(n89), .B(n78), .Z(n90) );
  GTECH_NOT U97 ( .A(n45), .Z(n89) );
  GTECH_AND_NOT U98 ( .A(n91), .B(n44), .Z(mult_stepx_3__inst_N36) );
  GTECH_AND_NOT U99 ( .A(n91), .B(n43), .Z(mult_stepx_3__inst_N35) );
  GTECH_AND_NOT U100 ( .A(n91), .B(n42), .Z(mult_stepx_3__inst_N34) );
  GTECH_OR_NOT U101 ( .A(n92), .B(n79), .Z(n91) );
  GTECH_OR_NOT U102 ( .A(n93), .B(n51), .Z(n79) );
  GTECH_NOT U103 ( .A(rdy_t[2]), .Z(n93) );
  GTECH_NOT U104 ( .A(n80), .Z(n92) );
  GTECH_OR_NOT U105 ( .A(n51), .B(rdy_t[2]), .Z(n80) );
  GTECH_OAI22 U106 ( .A(n98), .B(n94), .C(n95), .D(n96), .Z(
        mult_stepx_2__inst_N41) );
  GTECH_MUX2 U107 ( .A(n97), .B(n98), .S(n98), .Z(n96) );
  GTECH_NOT U108 ( .A(n100), .Z(n94) );
  GTECH_MUX2 U109 ( .A(n100), .B(n101), .S(n98), .Z(mult_stepx_2__inst_N40) );
  GTECH_AND_NOT U110 ( .A(n102), .B(n103), .Z(n101) );
  GTECH_OAI21 U111 ( .A(n95), .B(n99), .C(n104), .Z(n100) );
  GTECH_NOT U112 ( .A(n103), .Z(n99) );
  GTECH_ADD_ABC U113 ( .A(n36), .B(n30), .C(n105), .COUT(n103) );
  GTECH_OAI22 U114 ( .A(n36), .B(n104), .C(n95), .D(n106), .Z(
        mult_stepx_2__inst_N39) );
  GTECH_XOR3 U115 ( .A(n36), .B(n30), .C(n105), .Z(n106) );
  GTECH_ADD_ABC U116 ( .A(n35), .B(n29), .C(n107), .COUT(n105) );
  GTECH_OAI22 U117 ( .A(n35), .B(n104), .C(n95), .D(n108), .Z(
        mult_stepx_2__inst_N38) );
  GTECH_XOR3 U118 ( .A(n35), .B(n29), .C(n107), .Z(n108) );
  GTECH_ADD_ABC U119 ( .A(n34), .B(n28), .C(n109), .COUT(n107) );
  GTECH_OAI22 U120 ( .A(n34), .B(n104), .C(n110), .D(n95), .Z(
        mult_stepx_2__inst_N37) );
  GTECH_XOR3 U121 ( .A(n34), .B(n28), .C(n109), .Z(n110) );
  GTECH_OR_NOT U122 ( .A(n33), .B(n111), .Z(n109) );
  GTECH_OAI22 U123 ( .A(n33), .B(n104), .C(n112), .D(n95), .Z(
        mult_stepx_2__inst_N36) );
  GTECH_XOR2 U124 ( .A(n111), .B(n33), .Z(n112) );
  GTECH_NOT U125 ( .A(n27), .Z(n111) );
  GTECH_AND_NOT U126 ( .A(n113), .B(n32), .Z(mult_stepx_2__inst_N35) );
  GTECH_AND_NOT U127 ( .A(n113), .B(n31), .Z(mult_stepx_2__inst_N34) );
  GTECH_OR_NOT U128 ( .A(n102), .B(n104), .Z(n113) );
  GTECH_OR_NOT U129 ( .A(n114), .B(n40), .Z(n104) );
  GTECH_NOT U130 ( .A(rdy_t[1]), .Z(n114) );
  GTECH_NOT U131 ( .A(n95), .Z(n102) );
  GTECH_OR_NOT U132 ( .A(n40), .B(rdy_t[1]), .Z(n95) );
  GTECH_AND_NOT U133 ( .A(rdy_t[1]), .B(n30), .Z(mult_stepx_2__inst_N32) );
  GTECH_AND_NOT U134 ( .A(rdy_t[1]), .B(n29), .Z(mult_stepx_2__inst_N31) );
  GTECH_AND_NOT U135 ( .A(rdy_t[1]), .B(n28), .Z(mult_stepx_2__inst_N30) );
  GTECH_AND_NOT U136 ( .A(rdy_t[1]), .B(n27), .Z(mult_stepx_2__inst_N29) );
  GTECH_AND_NOT U137 ( .A(rdy_t[1]), .B(n41), .Z(mult_stepx_2__inst_N24) );
  GTECH_AND_NOT U138 ( .A(n116), .B(n117), .Z(mult_stepx_1__inst_N39) );
  GTECH_ADD_ABC U139 ( .A(n18), .B(n13), .C(n121), .COUT(n119) );
  GTECH_OAI22 U140 ( .A(n18), .B(n118), .C(n115), .D(n122), .Z(
        mult_stepx_1__inst_N37) );
  GTECH_XOR3 U141 ( .A(n18), .B(n13), .C(n121), .Z(n122) );
  GTECH_ADD_ABC U142 ( .A(n17), .B(n12), .C(n123), .COUT(n121) );
  GTECH_OAI22 U143 ( .A(n17), .B(n118), .C(n124), .D(n115), .Z(
        mult_stepx_1__inst_N36) );
  GTECH_XOR3 U144 ( .A(n17), .B(n12), .C(n123), .Z(n124) );
  GTECH_OR_NOT U145 ( .A(n16), .B(n125), .Z(n123) );
  GTECH_OAI22 U146 ( .A(n16), .B(n118), .C(n126), .D(n115), .Z(
        mult_stepx_1__inst_N35) );
  GTECH_XOR2 U147 ( .A(n125), .B(n16), .Z(n126) );
  GTECH_NOT U148 ( .A(n11), .Z(n125) );
  GTECH_OA21 U149 ( .A(n116), .B(n127), .C(mult_stepx_1__inst_N8), .Z(
        mult_stepx_1__inst_N34) );
  GTECH_NOT U150 ( .A(n118), .Z(n127) );
  GTECH_OR_NOT U151 ( .A(n128), .B(n24), .Z(n118) );
  GTECH_NOT U152 ( .A(rdy_t[0]), .Z(n128) );
  GTECH_NOT U153 ( .A(n115), .Z(n116) );
  GTECH_OR_NOT U154 ( .A(n24), .B(rdy_t[0]), .Z(n115) );
  GTECH_AND_NOT U155 ( .A(rdy_t[0]), .B(n14), .Z(mult_stepx_1__inst_N31) );
  GTECH_AND_NOT U156 ( .A(rdy_t[0]), .B(n13), .Z(mult_stepx_1__inst_N30) );
  GTECH_AND_NOT U157 ( .A(rdy_t[0]), .B(n12), .Z(mult_stepx_1__inst_N29) );
  GTECH_AND_NOT U158 ( .A(rdy_t[0]), .B(n11), .Z(mult_stepx_1__inst_N28) );
  GTECH_AND_NOT U159 ( .A(rdy_t[0]), .B(n26), .Z(mult_stepx_1__inst_N25) );
  GTECH_AND_NOT U160 ( .A(rdy_t[0]), .B(n25), .Z(mult_stepx_1__inst_N24) );
  GTECH_AND_NOT U161 ( .A(mult2[0]), .B(n129), .Z(inst0_N37) );
  GTECH_AND_NOT U162 ( .A(inst0_N29), .B(n130), .Z(inst0_N36) );
  GTECH_AND_NOT U163 ( .A(inst0_N28), .B(n130), .Z(inst0_N35) );
  GTECH_AND_NOT U164 ( .A(inst0_N27), .B(n130), .Z(inst0_N34) );
  GTECH_NOT U165 ( .A(mult2[0]), .Z(n130) );
  GTECH_NOT U166 ( .A(n129), .Z(inst0_N30) );
  GTECH_OR_NOT U167 ( .A(n131), .B(mult1[3]), .Z(n129) );
  GTECH_NOT U168 ( .A(n132), .Z(inst0_N29) );
  GTECH_OR_NOT U169 ( .A(n131), .B(mult1[2]), .Z(n132) );
  GTECH_NOT U170 ( .A(n133), .Z(inst0_N28) );
  GTECH_OR_NOT U171 ( .A(n131), .B(mult1[1]), .Z(n133) );
  GTECH_NOT U172 ( .A(n134), .Z(inst0_N27) );
  GTECH_OR_NOT U173 ( .A(n131), .B(mult1[0]), .Z(n134) );
  GTECH_AND_NOT U174 ( .A(mult2[3]), .B(n131), .Z(inst0_N26) );
  GTECH_AND_NOT U175 ( .A(mult2[2]), .B(n131), .Z(inst0_N25) );
  GTECH_AND_NOT U176 ( .A(mult2[1]), .B(n131), .Z(inst0_N24) );
  GTECH_NOT U177 ( .A(data_rdy), .Z(n131) );
endmodule

