
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n76, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n76), .K(n76), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n76), .K(n76), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n76), .K(n76), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n76), .K(n76), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n76), .K(n76), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n76), .K(n76), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n76), .K(n76), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n76), .K(n76), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n76), .K(n76), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n76), .K(n76), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n76), .K(n76), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n76), .K(n76), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n76), .K(n76), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n76), .K(n76), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n76), .K(n76), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n76), .K(n76), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n76), .K(n76), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n76), .K(n76), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n76), .K(n76), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n76), .K(n76), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n76), .K(n76), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n76), .K(n76), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n76), .K(n76), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n76), .K(n76), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n76), .K(n76), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n76), .K(n76), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n76), .K(n76), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n76), .K(n76), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n76), .K(n76), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n76), .K(n76), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n76), .K(n76), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n76), .K(n76), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n76), .K(n107), .CP(clk), .CD(n106), .SD(n105), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n76), .K(n104), .CP(clk), .CD(n103), .SD(n102), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n76), .K(n101), .CP(clk), .CD(n100), .SD(n99), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(n76), .K(n98), .CP(clk), .CD(n97), .SD(n96), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n95), .K(n94), .CP(clk), .CD(n93), .SD(n92), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n91), .K(n90), .CP(clk), .CD(n89), .SD(n88), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n87), .K(n86), .CP(clk), .CD(n85), .SD(n84), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n83), .K(n82), .CP(clk), .CD(n81), .SD(n80), 
        .Q(temp[16]) );
  GTECH_ZERO U151 ( .Z(n76) );
  GTECH_NAND2 U152 ( .A(data[5]), .B(n156), .Z(n99) );
  GTECH_NAND2 U153 ( .A(n156), .B(n157), .Z(n97) );
  GTECH_NOT U154 ( .A(data[4]), .Z(n157) );
  GTECH_NAND2 U155 ( .A(data[4]), .B(n156), .Z(n96) );
  GTECH_AND3 U156 ( .A(n158), .B(n159), .C(n160), .Z(n95) );
  GTECH_AND3 U157 ( .A(n160), .B(n158), .C(temp[19]), .Z(n94) );
  GTECH_OAI21 U158 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  GTECH_NAND2 U159 ( .A(n156), .B(n164), .Z(n93) );
  GTECH_NOT U160 ( .A(data[3]), .Z(n164) );
  GTECH_NAND2 U161 ( .A(data[3]), .B(n156), .Z(n92) );
  GTECH_AND2 U162 ( .A(n165), .B(n166), .Z(n91) );
  GTECH_AND2 U163 ( .A(n165), .B(temp[18]), .Z(n90) );
  GTECH_AND3 U164 ( .A(n167), .B(n168), .C(n169), .Z(n165) );
  GTECH_OAI21 U165 ( .A(temp[21]), .B(n170), .C(n171), .Z(n168) );
  GTECH_OR_NOT U166 ( .A(n158), .B(n172), .Z(n167) );
  GTECH_NAND2 U167 ( .A(n156), .B(n173), .Z(n89) );
  GTECH_NOT U168 ( .A(data[2]), .Z(n173) );
  GTECH_NAND2 U169 ( .A(data[2]), .B(n156), .Z(n88) );
  GTECH_AND2 U170 ( .A(n174), .B(n175), .Z(n87) );
  GTECH_AND2 U171 ( .A(n174), .B(temp[17]), .Z(n86) );
  GTECH_AND2 U172 ( .A(n176), .B(n177), .Z(n174) );
  GTECH_OA21 U173 ( .A(n178), .B(temp[21]), .C(n179), .Z(n176) );
  GTECH_OR_NOT U174 ( .A(n158), .B(n180), .Z(n179) );
  GTECH_NAND2 U175 ( .A(n156), .B(n181), .Z(n85) );
  GTECH_NOT U176 ( .A(data[1]), .Z(n181) );
  GTECH_NAND2 U177 ( .A(data[1]), .B(n156), .Z(n84) );
  GTECH_AND2 U178 ( .A(N274), .B(n182), .Z(n83) );
  GTECH_AND2 U179 ( .A(temp[16]), .B(N274), .Z(n82) );
  GTECH_NAND2 U180 ( .A(n156), .B(n183), .Z(n81) );
  GTECH_NOT U181 ( .A(data[0]), .Z(n183) );
  GTECH_NAND2 U182 ( .A(data[0]), .B(n156), .Z(n80) );
  GTECH_NOT U183 ( .A(n163), .Z(n107) );
  GTECH_NAND2 U184 ( .A(n156), .B(n184), .Z(n106) );
  GTECH_NOT U185 ( .A(data[7]), .Z(n184) );
  GTECH_NAND2 U186 ( .A(data[7]), .B(n156), .Z(n105) );
  GTECH_NAND2 U187 ( .A(n156), .B(n185), .Z(n103) );
  GTECH_NOT U188 ( .A(data[6]), .Z(n185) );
  GTECH_NAND2 U189 ( .A(data[6]), .B(n156), .Z(n102) );
  GTECH_NOT U190 ( .A(n186), .Z(n101) );
  GTECH_NAND2 U191 ( .A(n156), .B(n187), .Z(n100) );
  GTECH_NOT U192 ( .A(data[5]), .Z(n187) );
  GTECH_NOT U193 ( .A(rst_n), .Z(n156) );
  GTECH_AND4 U194 ( .A(n188), .B(n189), .C(data_valid), .D(n182), .Z(N99) );
  GTECH_NOT U195 ( .A(temp[16]), .Z(n182) );
  GTECH_NOT U196 ( .A(n190), .Z(N69) );
  GTECH_XOR2 U197 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U198 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U199 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U200 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U201 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U202 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U203 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U204 ( .A(n191), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U205 ( .A(n192), .B(n166), .Z(n191) );
  GTECH_XOR2 U206 ( .A(n193), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U207 ( .A(n171), .B(n175), .Z(n193) );
  GTECH_XOR2 U208 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U209 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U210 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U211 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U212 ( .A(n194), .B(n180), .Z(N331) );
  GTECH_OA21 U213 ( .A(n188), .B(temp[19]), .C(n195), .Z(N328) );
  GTECH_OA21 U214 ( .A(n98), .B(n195), .C(n196), .Z(N323) );
  GTECH_OAI21 U215 ( .A(temp[19]), .B(n197), .C(n198), .Z(n196) );
  GTECH_NOT U216 ( .A(n199), .Z(n98) );
  GTECH_AND2 U217 ( .A(n200), .B(n201), .Z(N316) );
  GTECH_OA22 U218 ( .A(n202), .B(n203), .C(n104), .D(n201), .Z(N307) );
  GTECH_NAND2 U219 ( .A(n204), .B(n186), .Z(n201) );
  GTECH_NAND2 U220 ( .A(temp[21]), .B(n177), .Z(n186) );
  GTECH_NOT U221 ( .A(n195), .Z(n204) );
  GTECH_OAI21 U222 ( .A(n159), .B(n205), .C(n206), .Z(n195) );
  GTECH_NOT U223 ( .A(n194), .Z(n206) );
  GTECH_OAI21 U224 ( .A(n161), .B(n172), .C(n207), .Z(n194) );
  GTECH_NOT U225 ( .A(N70), .Z(n207) );
  GTECH_OAI21 U226 ( .A(n161), .B(n180), .C(n190), .Z(N70) );
  GTECH_NAND2 U227 ( .A(n208), .B(data_valid), .Z(n190) );
  GTECH_NOT U228 ( .A(n209), .Z(n208) );
  GTECH_NOT U229 ( .A(n210), .Z(n104) );
  GTECH_NAND2 U230 ( .A(temp[22]), .B(n169), .Z(n210) );
  GTECH_AND3 U231 ( .A(n166), .B(n211), .C(n178), .Z(n202) );
  GTECH_OAI21 U232 ( .A(n212), .B(n213), .C(n163), .Z(N298) );
  GTECH_NAND2 U233 ( .A(n214), .B(n215), .Z(N287) );
  GTECH_NAND3 U234 ( .A(n216), .B(temp[19]), .C(n217), .Z(n215) );
  GTECH_NAND3 U235 ( .A(n188), .B(n218), .C(n198), .Z(n214) );
  GTECH_NAND2 U236 ( .A(n199), .B(n219), .Z(N274) );
  GTECH_NAND3 U237 ( .A(n188), .B(n220), .C(n221), .Z(n219) );
  GTECH_NAND2 U238 ( .A(temp[20]), .B(n220), .Z(n199) );
  GTECH_AND3 U239 ( .A(n200), .B(n171), .C(n217), .Z(N261) );
  GTECH_OAI21 U240 ( .A(n170), .B(n197), .C(n211), .Z(n200) );
  GTECH_OA21 U241 ( .A(n222), .B(temp[22]), .C(n217), .Z(N248) );
  GTECH_NOT U242 ( .A(n223), .Z(n217) );
  GTECH_NAND2 U243 ( .A(n169), .B(n218), .Z(n223) );
  GTECH_AND3 U244 ( .A(n178), .B(n211), .C(n188), .Z(n222) );
  GTECH_OAI21 U245 ( .A(n197), .B(n213), .C(n163), .Z(N235) );
  GTECH_NAND2 U246 ( .A(temp[23]), .B(data_valid), .Z(n163) );
  GTECH_NAND4 U247 ( .A(n178), .B(n216), .C(data_valid), .D(n218), .Z(n213) );
  GTECH_AND3 U248 ( .A(n221), .B(n166), .C(n198), .Z(N222) );
  GTECH_OAI21 U249 ( .A(n161), .B(n172), .C(n224), .Z(N209) );
  GTECH_NAND3 U250 ( .A(n221), .B(n175), .C(n198), .Z(n224) );
  GTECH_NOT U251 ( .A(n205), .Z(n198) );
  GTECH_NAND2 U252 ( .A(n220), .B(n225), .Z(n205) );
  GTECH_NOT U253 ( .A(n226), .Z(n220) );
  GTECH_NAND2 U254 ( .A(n177), .B(n211), .Z(n226) );
  GTECH_NOT U255 ( .A(n203), .Z(n177) );
  GTECH_NAND2 U256 ( .A(n169), .B(n171), .Z(n203) );
  GTECH_NOT U257 ( .A(n227), .Z(n169) );
  GTECH_NAND2 U258 ( .A(data_valid), .B(n192), .Z(n227) );
  GTECH_NOT U259 ( .A(n228), .Z(n221) );
  GTECH_NAND2 U260 ( .A(n218), .B(n159), .Z(n228) );
  GTECH_NAND4 U261 ( .A(n229), .B(n172), .C(n209), .D(n180), .Z(n218) );
  GTECH_NAND2 U262 ( .A(n212), .B(n189), .Z(n180) );
  GTECH_NOT U263 ( .A(n230), .Z(n212) );
  GTECH_NAND2 U264 ( .A(temp[17]), .B(n166), .Z(n230) );
  GTECH_NAND3 U265 ( .A(n188), .B(n189), .C(temp[16]), .Z(n209) );
  GTECH_NOT U266 ( .A(n197), .Z(n188) );
  GTECH_NAND2 U267 ( .A(n175), .B(n166), .Z(n197) );
  GTECH_NOT U268 ( .A(temp[18]), .Z(n166) );
  GTECH_NOT U269 ( .A(temp[17]), .Z(n175) );
  GTECH_NOT U270 ( .A(n158), .Z(n229) );
  GTECH_NAND2 U271 ( .A(n231), .B(n216), .Z(n158) );
  GTECH_OA21 U272 ( .A(temp[20]), .B(n159), .C(n192), .Z(n231) );
  GTECH_NAND2 U273 ( .A(temp[18]), .B(n189), .Z(n172) );
  GTECH_NOT U274 ( .A(n232), .Z(n189) );
  GTECH_NAND3 U275 ( .A(n216), .B(n192), .C(n178), .Z(n232) );
  GTECH_NOT U276 ( .A(n170), .Z(n178) );
  GTECH_NAND2 U277 ( .A(n159), .B(n225), .Z(n170) );
  GTECH_NOT U278 ( .A(temp[20]), .Z(n225) );
  GTECH_NOT U279 ( .A(temp[19]), .Z(n159) );
  GTECH_NOT U280 ( .A(temp[23]), .Z(n192) );
  GTECH_NOT U281 ( .A(n162), .Z(n216) );
  GTECH_NAND2 U282 ( .A(n211), .B(n171), .Z(n162) );
  GTECH_NOT U283 ( .A(temp[22]), .Z(n171) );
  GTECH_NOT U284 ( .A(temp[21]), .Z(n211) );
  GTECH_NOT U285 ( .A(data_valid), .Z(n161) );
endmodule

