
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n36, n37, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173;

  GTECH_FJK3S data_out_reg_31_ ( .J(n37), .K(n37), .TI(N39), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[31]) );
  GTECH_FJK3S data_out_reg_30_ ( .J(n37), .K(n37), .TI(N38), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[30]) );
  GTECH_FJK3S data_out_reg_29_ ( .J(n37), .K(n37), .TI(N37), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[29]) );
  GTECH_FJK3S data_out_reg_28_ ( .J(n37), .K(n37), .TI(N36), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[28]) );
  GTECH_FJK3S data_out_reg_27_ ( .J(n37), .K(n37), .TI(N35), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[27]) );
  GTECH_FJK3S data_out_reg_26_ ( .J(n37), .K(n37), .TI(N34), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[26]) );
  GTECH_FJK3S data_out_reg_25_ ( .J(n37), .K(n37), .TI(N33), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[25]) );
  GTECH_FJK3S data_out_reg_24_ ( .J(n37), .K(n37), .TI(N32), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[24]) );
  GTECH_FJK3S data_out_reg_23_ ( .J(n37), .K(n37), .TI(N31), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[23]) );
  GTECH_FJK3S data_out_reg_22_ ( .J(n37), .K(n37), .TI(N30), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[22]) );
  GTECH_FJK3S data_out_reg_21_ ( .J(n37), .K(n37), .TI(N29), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[21]) );
  GTECH_FJK3S data_out_reg_20_ ( .J(n37), .K(n37), .TI(N28), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[20]) );
  GTECH_FJK3S data_out_reg_19_ ( .J(n37), .K(n37), .TI(N27), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[19]) );
  GTECH_FJK3S data_out_reg_18_ ( .J(n37), .K(n37), .TI(N26), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[18]) );
  GTECH_FJK3S data_out_reg_17_ ( .J(n37), .K(n37), .TI(N25), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[17]) );
  GTECH_FJK3S data_out_reg_16_ ( .J(n37), .K(n37), .TI(N24), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[16]) );
  GTECH_FJK3S data_out_reg_15_ ( .J(n37), .K(n37), .TI(N23), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[15]) );
  GTECH_FJK3S data_out_reg_14_ ( .J(n37), .K(n37), .TI(N22), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[14]) );
  GTECH_FJK3S data_out_reg_13_ ( .J(n37), .K(n37), .TI(N21), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[13]) );
  GTECH_FJK3S data_out_reg_12_ ( .J(n37), .K(n37), .TI(N20), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[12]) );
  GTECH_FJK3S data_out_reg_11_ ( .J(n37), .K(n37), .TI(N19), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[11]) );
  GTECH_FJK3S data_out_reg_10_ ( .J(n37), .K(n37), .TI(N18), .TE(N40), .CP(clk), .CD(reset_n), .SD(n36), .Q(data_out[10]) );
  GTECH_FJK3S data_out_reg_9_ ( .J(n37), .K(n37), .TI(N17), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[9]) );
  GTECH_FJK3S data_out_reg_8_ ( .J(n37), .K(n37), .TI(N16), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[8]) );
  GTECH_FJK3S data_out_reg_7_ ( .J(n37), .K(n37), .TI(N15), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[7]) );
  GTECH_FJK3S data_out_reg_6_ ( .J(n37), .K(n37), .TI(N14), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[6]) );
  GTECH_FJK3S data_out_reg_5_ ( .J(n37), .K(n37), .TI(N13), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[5]) );
  GTECH_FJK3S data_out_reg_4_ ( .J(n37), .K(n37), .TI(N12), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[4]) );
  GTECH_FJK3S data_out_reg_3_ ( .J(n37), .K(n37), .TI(N11), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[3]) );
  GTECH_FJK3S data_out_reg_2_ ( .J(n37), .K(n37), .TI(N10), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[2]) );
  GTECH_FJK3S data_out_reg_1_ ( .J(n37), .K(n37), .TI(N9), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[1]) );
  GTECH_FJK3S data_out_reg_0_ ( .J(n37), .K(n37), .TI(N8), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n36), .Q(data_out[0]) );
  GTECH_ZERO U133 ( .Z(n37) );
  GTECH_ONE U134 ( .Z(n36) );
  GTECH_NOT U135 ( .A(n132), .Z(N9) );
  GTECH_AOI222 U136 ( .A(data_in[0]), .B(n133), .C(data_in[1]), .D(n134), .E(
        data_in[2]), .F(n135), .Z(n132) );
  GTECH_OAI22 U137 ( .A(n136), .B(n137), .C(n138), .D(n139), .Z(N8) );
  GTECH_NOT U138 ( .A(data_in[0]), .Z(n139) );
  GTECH_NOT U139 ( .A(data_in[1]), .Z(n136) );
  GTECH_NAND2 U140 ( .A(n140), .B(n141), .Z(N40) );
  GTECH_OAI22 U141 ( .A(n142), .B(n143), .C(n138), .D(n144), .Z(N39) );
  GTECH_NOT U142 ( .A(data_in[31]), .Z(n144) );
  GTECH_NOT U143 ( .A(data_in[30]), .Z(n143) );
  GTECH_NOT U144 ( .A(n145), .Z(N38) );
  GTECH_AOI222 U145 ( .A(data_in[29]), .B(n133), .C(data_in[30]), .D(n134), 
        .E(data_in[31]), .F(n135), .Z(n145) );
  GTECH_NOT U146 ( .A(n146), .Z(N37) );
  GTECH_AOI222 U147 ( .A(data_in[28]), .B(n133), .C(data_in[29]), .D(n134), 
        .E(data_in[30]), .F(n135), .Z(n146) );
  GTECH_NOT U148 ( .A(n147), .Z(N36) );
  GTECH_AOI222 U149 ( .A(data_in[27]), .B(n133), .C(data_in[28]), .D(n134), 
        .E(data_in[29]), .F(n135), .Z(n147) );
  GTECH_NOT U150 ( .A(n148), .Z(N35) );
  GTECH_AOI222 U151 ( .A(data_in[26]), .B(n133), .C(data_in[27]), .D(n134), 
        .E(data_in[28]), .F(n135), .Z(n148) );
  GTECH_NOT U152 ( .A(n149), .Z(N34) );
  GTECH_AOI222 U153 ( .A(data_in[25]), .B(n133), .C(data_in[26]), .D(n134), 
        .E(data_in[27]), .F(n135), .Z(n149) );
  GTECH_NOT U154 ( .A(n150), .Z(N33) );
  GTECH_AOI222 U155 ( .A(data_in[24]), .B(n133), .C(data_in[25]), .D(n134), 
        .E(data_in[26]), .F(n135), .Z(n150) );
  GTECH_NOT U156 ( .A(n151), .Z(N32) );
  GTECH_AOI222 U157 ( .A(data_in[23]), .B(n133), .C(data_in[24]), .D(n134), 
        .E(data_in[25]), .F(n135), .Z(n151) );
  GTECH_NOT U158 ( .A(n152), .Z(N31) );
  GTECH_AOI222 U159 ( .A(data_in[22]), .B(n133), .C(data_in[23]), .D(n134), 
        .E(data_in[24]), .F(n135), .Z(n152) );
  GTECH_NOT U160 ( .A(n153), .Z(N30) );
  GTECH_AOI222 U161 ( .A(data_in[21]), .B(n133), .C(data_in[22]), .D(n134), 
        .E(data_in[23]), .F(n135), .Z(n153) );
  GTECH_NOT U162 ( .A(n154), .Z(N29) );
  GTECH_AOI222 U163 ( .A(data_in[20]), .B(n133), .C(data_in[21]), .D(n134), 
        .E(data_in[22]), .F(n135), .Z(n154) );
  GTECH_NOT U164 ( .A(n155), .Z(N28) );
  GTECH_AOI222 U165 ( .A(data_in[19]), .B(n133), .C(data_in[20]), .D(n134), 
        .E(data_in[21]), .F(n135), .Z(n155) );
  GTECH_NOT U166 ( .A(n156), .Z(N27) );
  GTECH_AOI222 U167 ( .A(data_in[18]), .B(n133), .C(data_in[19]), .D(n134), 
        .E(data_in[20]), .F(n135), .Z(n156) );
  GTECH_NOT U168 ( .A(n157), .Z(N26) );
  GTECH_AOI222 U169 ( .A(data_in[17]), .B(n133), .C(data_in[18]), .D(n134), 
        .E(data_in[19]), .F(n135), .Z(n157) );
  GTECH_NOT U170 ( .A(n158), .Z(N25) );
  GTECH_AOI222 U171 ( .A(data_in[16]), .B(n133), .C(data_in[17]), .D(n134), 
        .E(data_in[18]), .F(n135), .Z(n158) );
  GTECH_NOT U172 ( .A(n159), .Z(N24) );
  GTECH_AOI222 U173 ( .A(data_in[15]), .B(n133), .C(data_in[16]), .D(n134), 
        .E(data_in[17]), .F(n135), .Z(n159) );
  GTECH_NOT U174 ( .A(n160), .Z(N23) );
  GTECH_AOI222 U175 ( .A(data_in[14]), .B(n133), .C(data_in[15]), .D(n134), 
        .E(data_in[16]), .F(n135), .Z(n160) );
  GTECH_NOT U176 ( .A(n161), .Z(N22) );
  GTECH_AOI222 U177 ( .A(data_in[13]), .B(n133), .C(data_in[14]), .D(n134), 
        .E(data_in[15]), .F(n135), .Z(n161) );
  GTECH_NOT U178 ( .A(n162), .Z(N21) );
  GTECH_AOI222 U179 ( .A(data_in[12]), .B(n133), .C(data_in[13]), .D(n134), 
        .E(data_in[14]), .F(n135), .Z(n162) );
  GTECH_NOT U180 ( .A(n163), .Z(N20) );
  GTECH_AOI222 U181 ( .A(data_in[11]), .B(n133), .C(data_in[12]), .D(n134), 
        .E(data_in[13]), .F(n135), .Z(n163) );
  GTECH_NOT U182 ( .A(n164), .Z(N19) );
  GTECH_AOI222 U183 ( .A(data_in[10]), .B(n133), .C(data_in[11]), .D(n134), 
        .E(data_in[12]), .F(n135), .Z(n164) );
  GTECH_NOT U184 ( .A(n165), .Z(N18) );
  GTECH_AOI222 U185 ( .A(data_in[9]), .B(n133), .C(data_in[10]), .D(n134), .E(
        data_in[11]), .F(n135), .Z(n165) );
  GTECH_NOT U186 ( .A(n166), .Z(N17) );
  GTECH_AOI222 U187 ( .A(data_in[8]), .B(n133), .C(data_in[9]), .D(n134), .E(
        data_in[10]), .F(n135), .Z(n166) );
  GTECH_NOT U188 ( .A(n167), .Z(N16) );
  GTECH_AOI222 U189 ( .A(data_in[7]), .B(n133), .C(data_in[8]), .D(n134), .E(
        data_in[9]), .F(n135), .Z(n167) );
  GTECH_NOT U190 ( .A(n168), .Z(N15) );
  GTECH_AOI222 U191 ( .A(data_in[6]), .B(n133), .C(data_in[7]), .D(n134), .E(
        data_in[8]), .F(n135), .Z(n168) );
  GTECH_NOT U192 ( .A(n169), .Z(N14) );
  GTECH_AOI222 U193 ( .A(data_in[5]), .B(n133), .C(data_in[6]), .D(n134), .E(
        data_in[7]), .F(n135), .Z(n169) );
  GTECH_NOT U194 ( .A(n170), .Z(N13) );
  GTECH_AOI222 U195 ( .A(data_in[4]), .B(n133), .C(data_in[5]), .D(n134), .E(
        data_in[6]), .F(n135), .Z(n170) );
  GTECH_NOT U196 ( .A(n171), .Z(N12) );
  GTECH_AOI222 U197 ( .A(data_in[3]), .B(n133), .C(data_in[4]), .D(n134), .E(
        data_in[5]), .F(n135), .Z(n171) );
  GTECH_NOT U198 ( .A(n172), .Z(N11) );
  GTECH_AOI222 U199 ( .A(n133), .B(data_in[2]), .C(data_in[3]), .D(n134), .E(
        data_in[4]), .F(n135), .Z(n172) );
  GTECH_NOT U200 ( .A(n173), .Z(N10) );
  GTECH_AOI222 U201 ( .A(n133), .B(data_in[1]), .C(data_in[2]), .D(n134), .E(
        data_in[3]), .F(n135), .Z(n173) );
  GTECH_NOT U202 ( .A(n137), .Z(n135) );
  GTECH_NAND2 U203 ( .A(control[1]), .B(n141), .Z(n137) );
  GTECH_NOT U204 ( .A(control[0]), .Z(n141) );
  GTECH_NOT U205 ( .A(n138), .Z(n134) );
  GTECH_NAND2 U206 ( .A(control[1]), .B(control[0]), .Z(n138) );
  GTECH_NOT U207 ( .A(n142), .Z(n133) );
  GTECH_NAND2 U208 ( .A(control[0]), .B(n140), .Z(n142) );
  GTECH_NOT U209 ( .A(control[1]), .Z(n140) );
endmodule

