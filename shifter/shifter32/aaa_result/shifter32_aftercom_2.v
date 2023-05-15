
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n69, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199;

  GTECH_FJK2S data_out_reg_31_ ( .J(n69), .K(n69), .TI(N39), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[31]) );
  GTECH_FJK2S data_out_reg_30_ ( .J(n69), .K(n69), .TI(N38), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[30]) );
  GTECH_FJK2S data_out_reg_29_ ( .J(n69), .K(n69), .TI(N37), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[29]) );
  GTECH_FJK2S data_out_reg_28_ ( .J(n69), .K(n69), .TI(N36), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[28]) );
  GTECH_FJK2S data_out_reg_27_ ( .J(n69), .K(n69), .TI(N35), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[27]) );
  GTECH_FJK2S data_out_reg_26_ ( .J(n69), .K(n69), .TI(N34), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[26]) );
  GTECH_FJK2S data_out_reg_25_ ( .J(n69), .K(n69), .TI(N33), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[25]) );
  GTECH_FJK2S data_out_reg_24_ ( .J(n69), .K(n69), .TI(N32), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[24]) );
  GTECH_FJK2S data_out_reg_23_ ( .J(n69), .K(n69), .TI(N31), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[23]) );
  GTECH_FJK2S data_out_reg_22_ ( .J(n69), .K(n69), .TI(N30), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[22]) );
  GTECH_FJK2S data_out_reg_21_ ( .J(n69), .K(n69), .TI(N29), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[21]) );
  GTECH_FJK2S data_out_reg_20_ ( .J(n69), .K(n69), .TI(N28), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[20]) );
  GTECH_FJK2S data_out_reg_19_ ( .J(n69), .K(n69), .TI(N27), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[19]) );
  GTECH_FJK2S data_out_reg_18_ ( .J(n69), .K(n69), .TI(N26), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[18]) );
  GTECH_FJK2S data_out_reg_17_ ( .J(n69), .K(n69), .TI(N25), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[17]) );
  GTECH_FJK2S data_out_reg_16_ ( .J(n69), .K(n69), .TI(N24), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[16]) );
  GTECH_FJK2S data_out_reg_15_ ( .J(n69), .K(n69), .TI(N23), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[15]) );
  GTECH_FJK2S data_out_reg_14_ ( .J(n69), .K(n69), .TI(N22), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[14]) );
  GTECH_FJK2S data_out_reg_13_ ( .J(n69), .K(n69), .TI(N21), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[13]) );
  GTECH_FJK2S data_out_reg_12_ ( .J(n69), .K(n69), .TI(N20), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[12]) );
  GTECH_FJK2S data_out_reg_11_ ( .J(n69), .K(n69), .TI(N19), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[11]) );
  GTECH_FJK2S data_out_reg_10_ ( .J(n69), .K(n69), .TI(N18), .TE(N40), .CP(clk), .CD(reset_n), .Q(data_out[10]) );
  GTECH_FJK2S data_out_reg_9_ ( .J(n69), .K(n69), .TI(N17), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[9]) );
  GTECH_FJK2S data_out_reg_8_ ( .J(n69), .K(n69), .TI(N16), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[8]) );
  GTECH_FJK2S data_out_reg_7_ ( .J(n69), .K(n69), .TI(N15), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[7]) );
  GTECH_FJK2S data_out_reg_6_ ( .J(n69), .K(n69), .TI(N14), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[6]) );
  GTECH_FJK2S data_out_reg_5_ ( .J(n69), .K(n69), .TI(N13), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[5]) );
  GTECH_FJK2S data_out_reg_4_ ( .J(n69), .K(n69), .TI(N12), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[4]) );
  GTECH_FJK2S data_out_reg_3_ ( .J(n69), .K(n69), .TI(N11), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[3]) );
  GTECH_FJK2S data_out_reg_2_ ( .J(n69), .K(n69), .TI(N10), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[2]) );
  GTECH_FJK2S data_out_reg_1_ ( .J(n69), .K(n69), .TI(N9), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[1]) );
  GTECH_FJK2S data_out_reg_0_ ( .J(n69), .K(n69), .TI(N8), .TE(N40), .CP(clk), 
        .CD(reset_n), .Q(data_out[0]) );
  GTECH_ZERO U134 ( .Z(n69) );
  GTECH_OAI21 U135 ( .A(n133), .B(n134), .C(n135), .Z(N9) );
  GTECH_OA22 U136 ( .A(n136), .B(n137), .C(n138), .D(n139), .Z(n135) );
  GTECH_OAI22 U137 ( .A(n137), .B(n138), .C(n136), .D(n134), .Z(N8) );
  GTECH_NOT U138 ( .A(data_in[0]), .Z(n134) );
  GTECH_NAND2 U139 ( .A(n140), .B(n141), .Z(N40) );
  GTECH_OAI22 U140 ( .A(n133), .B(n142), .C(n136), .D(n143), .Z(N39) );
  GTECH_OAI21 U141 ( .A(n133), .B(n144), .C(n145), .Z(N38) );
  GTECH_OA22 U142 ( .A(n136), .B(n142), .C(n138), .D(n143), .Z(n145) );
  GTECH_NOT U143 ( .A(data_in[31]), .Z(n143) );
  GTECH_OAI21 U144 ( .A(n133), .B(n146), .C(n147), .Z(N37) );
  GTECH_OA22 U145 ( .A(n136), .B(n144), .C(n138), .D(n142), .Z(n147) );
  GTECH_NOT U146 ( .A(data_in[30]), .Z(n142) );
  GTECH_OAI21 U147 ( .A(n133), .B(n148), .C(n149), .Z(N36) );
  GTECH_OA22 U148 ( .A(n136), .B(n146), .C(n138), .D(n144), .Z(n149) );
  GTECH_NOT U149 ( .A(data_in[29]), .Z(n144) );
  GTECH_OAI21 U150 ( .A(n133), .B(n150), .C(n151), .Z(N35) );
  GTECH_OA22 U151 ( .A(n136), .B(n148), .C(n138), .D(n146), .Z(n151) );
  GTECH_NOT U152 ( .A(data_in[28]), .Z(n146) );
  GTECH_OAI21 U153 ( .A(n133), .B(n152), .C(n153), .Z(N34) );
  GTECH_OA22 U154 ( .A(n136), .B(n150), .C(n138), .D(n148), .Z(n153) );
  GTECH_NOT U155 ( .A(data_in[27]), .Z(n148) );
  GTECH_OAI21 U156 ( .A(n133), .B(n154), .C(n155), .Z(N33) );
  GTECH_OA22 U157 ( .A(n136), .B(n152), .C(n138), .D(n150), .Z(n155) );
  GTECH_NOT U158 ( .A(data_in[26]), .Z(n150) );
  GTECH_OAI21 U159 ( .A(n133), .B(n156), .C(n157), .Z(N32) );
  GTECH_OA22 U160 ( .A(n136), .B(n154), .C(n138), .D(n152), .Z(n157) );
  GTECH_NOT U161 ( .A(data_in[25]), .Z(n152) );
  GTECH_OAI21 U162 ( .A(n133), .B(n158), .C(n159), .Z(N31) );
  GTECH_OA22 U163 ( .A(n136), .B(n156), .C(n138), .D(n154), .Z(n159) );
  GTECH_NOT U164 ( .A(data_in[24]), .Z(n154) );
  GTECH_OAI21 U165 ( .A(n133), .B(n160), .C(n161), .Z(N30) );
  GTECH_OA22 U166 ( .A(n136), .B(n158), .C(n138), .D(n156), .Z(n161) );
  GTECH_NOT U167 ( .A(data_in[23]), .Z(n156) );
  GTECH_OAI21 U168 ( .A(n133), .B(n162), .C(n163), .Z(N29) );
  GTECH_OA22 U169 ( .A(n136), .B(n160), .C(n138), .D(n158), .Z(n163) );
  GTECH_NOT U170 ( .A(data_in[22]), .Z(n158) );
  GTECH_OAI21 U171 ( .A(n133), .B(n164), .C(n165), .Z(N28) );
  GTECH_OA22 U172 ( .A(n136), .B(n162), .C(n138), .D(n160), .Z(n165) );
  GTECH_NOT U173 ( .A(data_in[21]), .Z(n160) );
  GTECH_OAI21 U174 ( .A(n133), .B(n166), .C(n167), .Z(N27) );
  GTECH_OA22 U175 ( .A(n136), .B(n164), .C(n138), .D(n162), .Z(n167) );
  GTECH_NOT U176 ( .A(data_in[20]), .Z(n162) );
  GTECH_OAI21 U177 ( .A(n133), .B(n168), .C(n169), .Z(N26) );
  GTECH_OA22 U178 ( .A(n136), .B(n166), .C(n138), .D(n164), .Z(n169) );
  GTECH_NOT U179 ( .A(data_in[19]), .Z(n164) );
  GTECH_OAI21 U180 ( .A(n133), .B(n170), .C(n171), .Z(N25) );
  GTECH_OA22 U181 ( .A(n136), .B(n168), .C(n138), .D(n166), .Z(n171) );
  GTECH_NOT U182 ( .A(data_in[18]), .Z(n166) );
  GTECH_OAI21 U183 ( .A(n133), .B(n172), .C(n173), .Z(N24) );
  GTECH_OA22 U184 ( .A(n136), .B(n170), .C(n138), .D(n168), .Z(n173) );
  GTECH_NOT U185 ( .A(data_in[17]), .Z(n168) );
  GTECH_OAI21 U186 ( .A(n133), .B(n174), .C(n175), .Z(N23) );
  GTECH_OA22 U187 ( .A(n136), .B(n172), .C(n138), .D(n170), .Z(n175) );
  GTECH_NOT U188 ( .A(data_in[16]), .Z(n170) );
  GTECH_OAI21 U189 ( .A(n133), .B(n176), .C(n177), .Z(N22) );
  GTECH_OA22 U190 ( .A(n136), .B(n174), .C(n138), .D(n172), .Z(n177) );
  GTECH_NOT U191 ( .A(data_in[15]), .Z(n172) );
  GTECH_OAI21 U192 ( .A(n133), .B(n178), .C(n179), .Z(N21) );
  GTECH_OA22 U193 ( .A(n136), .B(n176), .C(n138), .D(n174), .Z(n179) );
  GTECH_NOT U194 ( .A(data_in[14]), .Z(n174) );
  GTECH_OAI21 U195 ( .A(n133), .B(n180), .C(n181), .Z(N20) );
  GTECH_OA22 U196 ( .A(n136), .B(n178), .C(n138), .D(n176), .Z(n181) );
  GTECH_NOT U197 ( .A(data_in[13]), .Z(n176) );
  GTECH_OAI21 U198 ( .A(n133), .B(n182), .C(n183), .Z(N19) );
  GTECH_OA22 U199 ( .A(n136), .B(n180), .C(n138), .D(n178), .Z(n183) );
  GTECH_NOT U200 ( .A(data_in[12]), .Z(n178) );
  GTECH_OAI21 U201 ( .A(n133), .B(n184), .C(n185), .Z(N18) );
  GTECH_OA22 U202 ( .A(n136), .B(n182), .C(n138), .D(n180), .Z(n185) );
  GTECH_NOT U203 ( .A(data_in[11]), .Z(n180) );
  GTECH_OAI21 U204 ( .A(n133), .B(n186), .C(n187), .Z(N17) );
  GTECH_OA22 U205 ( .A(n136), .B(n184), .C(n138), .D(n182), .Z(n187) );
  GTECH_NOT U206 ( .A(data_in[10]), .Z(n182) );
  GTECH_OAI21 U207 ( .A(n133), .B(n188), .C(n189), .Z(N16) );
  GTECH_OA22 U208 ( .A(n136), .B(n186), .C(n138), .D(n184), .Z(n189) );
  GTECH_NOT U209 ( .A(data_in[9]), .Z(n184) );
  GTECH_OAI21 U210 ( .A(n133), .B(n190), .C(n191), .Z(N15) );
  GTECH_OA22 U211 ( .A(n136), .B(n188), .C(n138), .D(n186), .Z(n191) );
  GTECH_NOT U212 ( .A(data_in[8]), .Z(n186) );
  GTECH_OAI21 U213 ( .A(n133), .B(n192), .C(n193), .Z(N14) );
  GTECH_OA22 U214 ( .A(n136), .B(n190), .C(n138), .D(n188), .Z(n193) );
  GTECH_NOT U215 ( .A(data_in[7]), .Z(n188) );
  GTECH_OAI21 U216 ( .A(n133), .B(n194), .C(n195), .Z(N13) );
  GTECH_OA22 U217 ( .A(n136), .B(n192), .C(n138), .D(n190), .Z(n195) );
  GTECH_NOT U218 ( .A(data_in[6]), .Z(n190) );
  GTECH_OAI21 U219 ( .A(n133), .B(n196), .C(n197), .Z(N12) );
  GTECH_OA22 U220 ( .A(n136), .B(n194), .C(n138), .D(n192), .Z(n197) );
  GTECH_NOT U221 ( .A(data_in[5]), .Z(n192) );
  GTECH_OAI21 U222 ( .A(n139), .B(n133), .C(n198), .Z(N11) );
  GTECH_OA22 U223 ( .A(n136), .B(n196), .C(n138), .D(n194), .Z(n198) );
  GTECH_NOT U224 ( .A(data_in[4]), .Z(n194) );
  GTECH_OAI21 U225 ( .A(n137), .B(n133), .C(n199), .Z(N10) );
  GTECH_OA22 U226 ( .A(n136), .B(n139), .C(n138), .D(n196), .Z(n199) );
  GTECH_NOT U227 ( .A(data_in[3]), .Z(n196) );
  GTECH_NAND2 U228 ( .A(control[1]), .B(n141), .Z(n138) );
  GTECH_NOT U229 ( .A(control[0]), .Z(n141) );
  GTECH_NOT U230 ( .A(data_in[2]), .Z(n139) );
  GTECH_NAND2 U231 ( .A(control[1]), .B(control[0]), .Z(n136) );
  GTECH_NAND2 U232 ( .A(control[0]), .B(n140), .Z(n133) );
  GTECH_NOT U233 ( .A(control[1]), .Z(n140) );
  GTECH_NOT U234 ( .A(data_in[1]), .Z(n137) );
endmodule

