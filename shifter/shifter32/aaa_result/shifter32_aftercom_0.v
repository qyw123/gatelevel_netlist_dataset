
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
         n139, n140, n141;

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
  GTECH_OAI22 U104 ( .A(n104), .B(n105), .C(n106), .D(n107), .Z(N8) );
  GTECH_NOT U105 ( .A(data_in[0]), .Z(n107) );
  GTECH_NOT U106 ( .A(data_in[1]), .Z(n104) );
  GTECH_NAND2 U107 ( .A(n108), .B(n109), .Z(N40) );
  GTECH_OAI22 U108 ( .A(n110), .B(n111), .C(n106), .D(n112), .Z(N39) );
  GTECH_NOT U109 ( .A(data_in[31]), .Z(n112) );
  GTECH_NOT U110 ( .A(data_in[30]), .Z(n111) );
  GTECH_NOT U111 ( .A(n113), .Z(N38) );
  GTECH_AOI222 U112 ( .A(data_in[29]), .B(n101), .C(data_in[30]), .D(n102), 
        .E(data_in[31]), .F(n103), .Z(n113) );
  GTECH_NOT U113 ( .A(n114), .Z(N37) );
  GTECH_AOI222 U114 ( .A(data_in[28]), .B(n101), .C(data_in[29]), .D(n102), 
        .E(data_in[30]), .F(n103), .Z(n114) );
  GTECH_NOT U115 ( .A(n115), .Z(N36) );
  GTECH_AOI222 U116 ( .A(data_in[27]), .B(n101), .C(data_in[28]), .D(n102), 
        .E(data_in[29]), .F(n103), .Z(n115) );
  GTECH_NOT U117 ( .A(n116), .Z(N35) );
  GTECH_AOI222 U118 ( .A(data_in[26]), .B(n101), .C(data_in[27]), .D(n102), 
        .E(data_in[28]), .F(n103), .Z(n116) );
  GTECH_NOT U119 ( .A(n117), .Z(N34) );
  GTECH_AOI222 U120 ( .A(data_in[25]), .B(n101), .C(data_in[26]), .D(n102), 
        .E(data_in[27]), .F(n103), .Z(n117) );
  GTECH_NOT U121 ( .A(n118), .Z(N33) );
  GTECH_AOI222 U122 ( .A(data_in[24]), .B(n101), .C(data_in[25]), .D(n102), 
        .E(data_in[26]), .F(n103), .Z(n118) );
  GTECH_NOT U123 ( .A(n119), .Z(N32) );
  GTECH_AOI222 U124 ( .A(data_in[23]), .B(n101), .C(data_in[24]), .D(n102), 
        .E(data_in[25]), .F(n103), .Z(n119) );
  GTECH_NOT U125 ( .A(n120), .Z(N31) );
  GTECH_AOI222 U126 ( .A(data_in[22]), .B(n101), .C(data_in[23]), .D(n102), 
        .E(data_in[24]), .F(n103), .Z(n120) );
  GTECH_NOT U127 ( .A(n121), .Z(N30) );
  GTECH_AOI222 U128 ( .A(data_in[21]), .B(n101), .C(data_in[22]), .D(n102), 
        .E(data_in[23]), .F(n103), .Z(n121) );
  GTECH_NOT U129 ( .A(n122), .Z(N29) );
  GTECH_AOI222 U130 ( .A(data_in[20]), .B(n101), .C(data_in[21]), .D(n102), 
        .E(data_in[22]), .F(n103), .Z(n122) );
  GTECH_NOT U131 ( .A(n123), .Z(N28) );
  GTECH_AOI222 U132 ( .A(data_in[19]), .B(n101), .C(data_in[20]), .D(n102), 
        .E(data_in[21]), .F(n103), .Z(n123) );
  GTECH_NOT U133 ( .A(n124), .Z(N27) );
  GTECH_AOI222 U134 ( .A(data_in[18]), .B(n101), .C(data_in[19]), .D(n102), 
        .E(data_in[20]), .F(n103), .Z(n124) );
  GTECH_NOT U135 ( .A(n125), .Z(N26) );
  GTECH_AOI222 U136 ( .A(data_in[17]), .B(n101), .C(data_in[18]), .D(n102), 
        .E(data_in[19]), .F(n103), .Z(n125) );
  GTECH_NOT U137 ( .A(n126), .Z(N25) );
  GTECH_AOI222 U138 ( .A(data_in[16]), .B(n101), .C(data_in[17]), .D(n102), 
        .E(data_in[18]), .F(n103), .Z(n126) );
  GTECH_NOT U139 ( .A(n127), .Z(N24) );
  GTECH_AOI222 U140 ( .A(data_in[15]), .B(n101), .C(data_in[16]), .D(n102), 
        .E(data_in[17]), .F(n103), .Z(n127) );
  GTECH_NOT U141 ( .A(n128), .Z(N23) );
  GTECH_AOI222 U142 ( .A(data_in[14]), .B(n101), .C(data_in[15]), .D(n102), 
        .E(data_in[16]), .F(n103), .Z(n128) );
  GTECH_NOT U143 ( .A(n129), .Z(N22) );
  GTECH_AOI222 U144 ( .A(data_in[13]), .B(n101), .C(data_in[14]), .D(n102), 
        .E(data_in[15]), .F(n103), .Z(n129) );
  GTECH_NOT U145 ( .A(n130), .Z(N21) );
  GTECH_AOI222 U146 ( .A(data_in[12]), .B(n101), .C(data_in[13]), .D(n102), 
        .E(data_in[14]), .F(n103), .Z(n130) );
  GTECH_NOT U147 ( .A(n131), .Z(N20) );
  GTECH_AOI222 U148 ( .A(data_in[11]), .B(n101), .C(data_in[12]), .D(n102), 
        .E(data_in[13]), .F(n103), .Z(n131) );
  GTECH_NOT U149 ( .A(n132), .Z(N19) );
  GTECH_AOI222 U150 ( .A(data_in[10]), .B(n101), .C(data_in[11]), .D(n102), 
        .E(data_in[12]), .F(n103), .Z(n132) );
  GTECH_NOT U151 ( .A(n133), .Z(N18) );
  GTECH_AOI222 U152 ( .A(data_in[9]), .B(n101), .C(data_in[10]), .D(n102), .E(
        data_in[11]), .F(n103), .Z(n133) );
  GTECH_NOT U153 ( .A(n134), .Z(N17) );
  GTECH_AOI222 U154 ( .A(data_in[8]), .B(n101), .C(data_in[9]), .D(n102), .E(
        data_in[10]), .F(n103), .Z(n134) );
  GTECH_NOT U155 ( .A(n135), .Z(N16) );
  GTECH_AOI222 U156 ( .A(data_in[7]), .B(n101), .C(data_in[8]), .D(n102), .E(
        data_in[9]), .F(n103), .Z(n135) );
  GTECH_NOT U157 ( .A(n136), .Z(N15) );
  GTECH_AOI222 U158 ( .A(data_in[6]), .B(n101), .C(data_in[7]), .D(n102), .E(
        data_in[8]), .F(n103), .Z(n136) );
  GTECH_NOT U159 ( .A(n137), .Z(N14) );
  GTECH_AOI222 U160 ( .A(data_in[5]), .B(n101), .C(data_in[6]), .D(n102), .E(
        data_in[7]), .F(n103), .Z(n137) );
  GTECH_NOT U161 ( .A(n138), .Z(N13) );
  GTECH_AOI222 U162 ( .A(data_in[4]), .B(n101), .C(data_in[5]), .D(n102), .E(
        data_in[6]), .F(n103), .Z(n138) );
  GTECH_NOT U163 ( .A(n139), .Z(N12) );
  GTECH_AOI222 U164 ( .A(data_in[3]), .B(n101), .C(data_in[4]), .D(n102), .E(
        data_in[5]), .F(n103), .Z(n139) );
  GTECH_NOT U165 ( .A(n140), .Z(N11) );
  GTECH_AOI222 U166 ( .A(n101), .B(data_in[2]), .C(data_in[3]), .D(n102), .E(
        data_in[4]), .F(n103), .Z(n140) );
  GTECH_NOT U167 ( .A(n141), .Z(N10) );
  GTECH_AOI222 U168 ( .A(n101), .B(data_in[1]), .C(data_in[2]), .D(n102), .E(
        data_in[3]), .F(n103), .Z(n141) );
  GTECH_NOT U169 ( .A(n105), .Z(n103) );
  GTECH_NAND2 U170 ( .A(control[1]), .B(n109), .Z(n105) );
  GTECH_NOT U171 ( .A(control[0]), .Z(n109) );
  GTECH_NOT U172 ( .A(n106), .Z(n102) );
  GTECH_NAND2 U173 ( .A(control[1]), .B(control[0]), .Z(n106) );
  GTECH_NOT U174 ( .A(n110), .Z(n101) );
  GTECH_NAND2 U175 ( .A(control[0]), .B(n108), .Z(n110) );
  GTECH_NOT U176 ( .A(control[1]), .Z(n108) );
endmodule

