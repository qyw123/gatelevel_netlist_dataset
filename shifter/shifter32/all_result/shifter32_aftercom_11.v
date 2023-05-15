
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n36, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139;

  GTECH_FJK2S data_out_reg_31_ ( .J(n36), .K(n36), .TI(N39), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[31]) );
  GTECH_FJK2S data_out_reg_30_ ( .J(n36), .K(n36), .TI(N38), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[30]) );
  GTECH_FJK2S data_out_reg_29_ ( .J(n36), .K(n36), .TI(N37), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[29]) );
  GTECH_FJK2S data_out_reg_28_ ( .J(n36), .K(n36), .TI(N36), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[28]) );
  GTECH_FJK2S data_out_reg_27_ ( .J(n36), .K(n36), .TI(N35), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[27]) );
  GTECH_FJK2S data_out_reg_26_ ( .J(n36), .K(n36), .TI(N34), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[26]) );
  GTECH_FJK2S data_out_reg_25_ ( .J(n36), .K(n36), .TI(N33), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[25]) );
  GTECH_FJK2S data_out_reg_24_ ( .J(n36), .K(n36), .TI(N32), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[24]) );
  GTECH_FJK2S data_out_reg_23_ ( .J(n36), .K(n36), .TI(N31), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[23]) );
  GTECH_FJK2S data_out_reg_22_ ( .J(n36), .K(n36), .TI(N30), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[22]) );
  GTECH_FJK2S data_out_reg_21_ ( .J(n36), .K(n36), .TI(N29), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[21]) );
  GTECH_FJK2S data_out_reg_20_ ( .J(n36), .K(n36), .TI(N28), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[20]) );
  GTECH_FJK2S data_out_reg_19_ ( .J(n36), .K(n36), .TI(N27), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[19]) );
  GTECH_FJK2S data_out_reg_18_ ( .J(n36), .K(n36), .TI(N26), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[18]) );
  GTECH_FJK2S data_out_reg_17_ ( .J(n36), .K(n36), .TI(N25), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[17]) );
  GTECH_FJK2S data_out_reg_16_ ( .J(n36), .K(n36), .TI(N24), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[16]) );
  GTECH_FJK2S data_out_reg_15_ ( .J(n36), .K(n36), .TI(N23), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n36), .K(n36), .TI(N22), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n36), .K(n36), .TI(N21), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n36), .K(n36), .TI(N20), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n36), .K(n36), .TI(N19), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n36), .K(n36), .TI(N18), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n36), .K(n36), .TI(N17), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n36), .K(n36), .TI(N16), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n36), .K(n36), .TI(N15), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n36), .K(n36), .TI(N14), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n36), .K(n36), .TI(N13), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n36), .K(n36), .TI(N12), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n36), .K(n36), .TI(N11), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n36), .K(n36), .TI(N10), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n36), .K(n36), .TI(N9), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n36), .K(n36), .TI(N8), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U101 ( .Z(n36) );
  GTECH_NOT U102 ( .A(n100), .Z(N9) );
  GTECH_AOI222 U103 ( .A(data_in[0]), .B(n101), .C(data_in[1]), .D(n102), .E(
        data_in[2]), .F(n103), .Z(n100) );
  GTECH_OAI2N2 U104 ( .A(n104), .B(n105), .C(n103), .D(data_in[1]), .Z(N8) );
  GTECH_NOT U105 ( .A(data_in[0]), .Z(n105) );
  GTECH_OR_NOT U106 ( .A(control[0]), .B(n106), .Z(N40) );
  GTECH_NOT U107 ( .A(control[1]), .Z(n106) );
  GTECH_OAI2N2 U108 ( .A(n104), .B(n107), .C(data_in[30]), .D(n101), .Z(N39)
         );
  GTECH_NOT U109 ( .A(data_in[31]), .Z(n107) );
  GTECH_NOT U110 ( .A(n108), .Z(N38) );
  GTECH_AOI222 U111 ( .A(data_in[29]), .B(n101), .C(data_in[30]), .D(n102), 
        .E(data_in[31]), .F(n103), .Z(n108) );
  GTECH_NOT U112 ( .A(n109), .Z(N37) );
  GTECH_AOI222 U113 ( .A(data_in[28]), .B(n101), .C(data_in[29]), .D(n102), 
        .E(data_in[30]), .F(n103), .Z(n109) );
  GTECH_NOT U114 ( .A(n110), .Z(N36) );
  GTECH_AOI222 U115 ( .A(data_in[27]), .B(n101), .C(data_in[28]), .D(n102), 
        .E(data_in[29]), .F(n103), .Z(n110) );
  GTECH_NOT U116 ( .A(n111), .Z(N35) );
  GTECH_AOI222 U117 ( .A(data_in[26]), .B(n101), .C(data_in[27]), .D(n102), 
        .E(data_in[28]), .F(n103), .Z(n111) );
  GTECH_NOT U118 ( .A(n112), .Z(N34) );
  GTECH_AOI222 U119 ( .A(data_in[25]), .B(n101), .C(data_in[26]), .D(n102), 
        .E(data_in[27]), .F(n103), .Z(n112) );
  GTECH_NOT U120 ( .A(n113), .Z(N33) );
  GTECH_AOI222 U121 ( .A(data_in[24]), .B(n101), .C(data_in[25]), .D(n102), 
        .E(data_in[26]), .F(n103), .Z(n113) );
  GTECH_NOT U122 ( .A(n114), .Z(N32) );
  GTECH_AOI222 U123 ( .A(data_in[23]), .B(n101), .C(data_in[24]), .D(n102), 
        .E(data_in[25]), .F(n103), .Z(n114) );
  GTECH_NOT U124 ( .A(n115), .Z(N31) );
  GTECH_AOI222 U125 ( .A(data_in[22]), .B(n101), .C(data_in[23]), .D(n102), 
        .E(data_in[24]), .F(n103), .Z(n115) );
  GTECH_NOT U126 ( .A(n116), .Z(N30) );
  GTECH_AOI222 U127 ( .A(data_in[21]), .B(n101), .C(data_in[22]), .D(n102), 
        .E(data_in[23]), .F(n103), .Z(n116) );
  GTECH_NOT U128 ( .A(n117), .Z(N29) );
  GTECH_AOI222 U129 ( .A(data_in[20]), .B(n101), .C(data_in[21]), .D(n102), 
        .E(data_in[22]), .F(n103), .Z(n117) );
  GTECH_NOT U130 ( .A(n118), .Z(N28) );
  GTECH_AOI222 U131 ( .A(data_in[19]), .B(n101), .C(data_in[20]), .D(n102), 
        .E(data_in[21]), .F(n103), .Z(n118) );
  GTECH_NOT U132 ( .A(n119), .Z(N27) );
  GTECH_AOI222 U133 ( .A(data_in[18]), .B(n101), .C(data_in[19]), .D(n102), 
        .E(data_in[20]), .F(n103), .Z(n119) );
  GTECH_NOT U134 ( .A(n120), .Z(N26) );
  GTECH_AOI222 U135 ( .A(data_in[17]), .B(n101), .C(data_in[18]), .D(n102), 
        .E(data_in[19]), .F(n103), .Z(n120) );
  GTECH_NOT U136 ( .A(n121), .Z(N25) );
  GTECH_AOI222 U137 ( .A(data_in[16]), .B(n101), .C(data_in[17]), .D(n102), 
        .E(data_in[18]), .F(n103), .Z(n121) );
  GTECH_NOT U138 ( .A(n122), .Z(N24) );
  GTECH_AOI222 U139 ( .A(data_in[15]), .B(n101), .C(data_in[16]), .D(n102), 
        .E(data_in[17]), .F(n103), .Z(n122) );
  GTECH_NOT U140 ( .A(n123), .Z(N23) );
  GTECH_AOI222 U141 ( .A(data_in[14]), .B(n101), .C(data_in[15]), .D(n102), 
        .E(data_in[16]), .F(n103), .Z(n123) );
  GTECH_NOT U142 ( .A(n124), .Z(N22) );
  GTECH_AOI222 U143 ( .A(data_in[13]), .B(n101), .C(data_in[14]), .D(n102), 
        .E(data_in[15]), .F(n103), .Z(n124) );
  GTECH_NOT U144 ( .A(n125), .Z(N21) );
  GTECH_AOI222 U145 ( .A(data_in[12]), .B(n101), .C(data_in[13]), .D(n102), 
        .E(data_in[14]), .F(n103), .Z(n125) );
  GTECH_NOT U146 ( .A(n126), .Z(N20) );
  GTECH_AOI222 U147 ( .A(data_in[11]), .B(n101), .C(data_in[12]), .D(n102), 
        .E(data_in[13]), .F(n103), .Z(n126) );
  GTECH_NOT U148 ( .A(n127), .Z(N19) );
  GTECH_AOI222 U149 ( .A(data_in[10]), .B(n101), .C(data_in[11]), .D(n102), 
        .E(data_in[12]), .F(n103), .Z(n127) );
  GTECH_NOT U150 ( .A(n128), .Z(N18) );
  GTECH_AOI222 U151 ( .A(data_in[9]), .B(n101), .C(data_in[10]), .D(n102), .E(
        data_in[11]), .F(n103), .Z(n128) );
  GTECH_NOT U152 ( .A(n129), .Z(N17) );
  GTECH_AOI222 U153 ( .A(data_in[8]), .B(n101), .C(data_in[9]), .D(n102), .E(
        data_in[10]), .F(n103), .Z(n129) );
  GTECH_NOT U154 ( .A(n130), .Z(N16) );
  GTECH_AOI222 U155 ( .A(data_in[7]), .B(n101), .C(data_in[8]), .D(n102), .E(
        data_in[9]), .F(n103), .Z(n130) );
  GTECH_NOT U156 ( .A(n131), .Z(N15) );
  GTECH_AOI222 U157 ( .A(data_in[6]), .B(n101), .C(data_in[7]), .D(n102), .E(
        data_in[8]), .F(n103), .Z(n131) );
  GTECH_NOT U158 ( .A(n132), .Z(N14) );
  GTECH_AOI222 U159 ( .A(data_in[5]), .B(n101), .C(data_in[6]), .D(n102), .E(
        data_in[7]), .F(n103), .Z(n132) );
  GTECH_NOT U160 ( .A(n133), .Z(N13) );
  GTECH_AOI222 U161 ( .A(data_in[4]), .B(n101), .C(data_in[5]), .D(n102), .E(
        data_in[6]), .F(n103), .Z(n133) );
  GTECH_NOT U162 ( .A(n134), .Z(N12) );
  GTECH_AOI222 U163 ( .A(data_in[3]), .B(n101), .C(data_in[4]), .D(n102), .E(
        data_in[5]), .F(n103), .Z(n134) );
  GTECH_NOT U164 ( .A(n135), .Z(N11) );
  GTECH_AOI222 U165 ( .A(n101), .B(data_in[2]), .C(data_in[3]), .D(n102), .E(
        data_in[4]), .F(n103), .Z(n135) );
  GTECH_NOT U166 ( .A(n136), .Z(N10) );
  GTECH_AOI222 U167 ( .A(n101), .B(data_in[1]), .C(data_in[2]), .D(n102), .E(
        data_in[3]), .F(n103), .Z(n136) );
  GTECH_NOT U168 ( .A(n137), .Z(n103) );
  GTECH_OR_NOT U169 ( .A(control[0]), .B(control[1]), .Z(n137) );
  GTECH_NOT U170 ( .A(n104), .Z(n102) );
  GTECH_OR_NOT U171 ( .A(n138), .B(control[1]), .Z(n104) );
  GTECH_NOT U172 ( .A(control[0]), .Z(n138) );
  GTECH_NOT U173 ( .A(n139), .Z(n101) );
  GTECH_OR_NOT U174 ( .A(control[1]), .B(control[0]), .Z(n139) );
endmodule

