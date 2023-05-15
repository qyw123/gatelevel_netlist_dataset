
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n72, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n72), .K(n72), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n72), .K(n72), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n72), .K(n72), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n72), .K(n72), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n72), .K(n72), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n72), .K(n72), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n72), .K(n72), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n72), .K(n72), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n72), .K(n72), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n72), .K(n72), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n72), .K(n72), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n72), .K(n72), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n72), .K(n72), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n72), .K(n72), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n72), .K(n72), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n72), .K(n72), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n72), .K(n72), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n72), .K(n72), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n72), .K(n72), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n72), .K(n72), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n72), .K(n72), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n72), .K(n72), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n72), .K(n72), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n72), .K(n72), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n72), .K(n72), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n72), .K(n72), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n72), .K(n72), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n72), .K(n72), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n72), .K(n72), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n72), .K(n72), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n72), .K(n72), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n72), .K(n72), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n72), .K(n103), .CP(clk), .CD(n102), .SD(n101), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n72), .K(n100), .CP(clk), .CD(n99), .SD(n98), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n72), .K(n97), .CP(clk), .CD(n96), .SD(n95), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(n72), .K(n94), .CP(clk), .CD(n93), .SD(n92), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n91), .K(n90), .CP(clk), .CD(n89), .SD(n88), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n87), .K(n86), .CP(clk), .CD(n85), .SD(n84), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n83), .K(n82), .CP(clk), .CD(n81), .SD(n80), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n79), .K(n78), .CP(clk), .CD(n77), .SD(n76), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U147 ( .Z(n72) );
  GTECH_NAND2 U148 ( .A(n152), .B(n153), .Z(n99) );
  GTECH_NOT U149 ( .A(data[6]), .Z(n153) );
  GTECH_NAND2 U150 ( .A(data[6]), .B(n152), .Z(n98) );
  GTECH_NOT U151 ( .A(n154), .Z(n97) );
  GTECH_NAND2 U152 ( .A(n152), .B(n155), .Z(n96) );
  GTECH_NOT U153 ( .A(data[5]), .Z(n155) );
  GTECH_NAND2 U154 ( .A(data[5]), .B(n152), .Z(n95) );
  GTECH_NOT U155 ( .A(n156), .Z(n94) );
  GTECH_NAND2 U156 ( .A(n152), .B(n157), .Z(n93) );
  GTECH_NOT U157 ( .A(data[4]), .Z(n157) );
  GTECH_NAND2 U158 ( .A(data[4]), .B(n152), .Z(n92) );
  GTECH_AND3 U159 ( .A(n158), .B(n159), .C(n160), .Z(n91) );
  GTECH_AND3 U160 ( .A(n160), .B(n158), .C(temp[19]), .Z(n90) );
  GTECH_NAND2 U161 ( .A(n161), .B(n162), .Z(n160) );
  GTECH_OR3 U162 ( .A(temp[22]), .B(temp[21]), .C(n163), .Z(n162) );
  GTECH_NAND2 U163 ( .A(n152), .B(n164), .Z(n89) );
  GTECH_NOT U164 ( .A(data[3]), .Z(n164) );
  GTECH_NAND2 U165 ( .A(data[3]), .B(n152), .Z(n88) );
  GTECH_AND2 U166 ( .A(n165), .B(n166), .Z(n87) );
  GTECH_AND2 U167 ( .A(n165), .B(temp[18]), .Z(n86) );
  GTECH_AND2 U168 ( .A(n167), .B(n168), .Z(n165) );
  GTECH_OA21 U169 ( .A(n169), .B(temp[22]), .C(n170), .Z(n168) );
  GTECH_OA21 U170 ( .A(n158), .B(n171), .C(data_valid), .Z(n167) );
  GTECH_NAND2 U171 ( .A(n152), .B(n172), .Z(n85) );
  GTECH_NOT U172 ( .A(data[2]), .Z(n172) );
  GTECH_NAND2 U173 ( .A(data[2]), .B(n152), .Z(n84) );
  GTECH_AND2 U174 ( .A(n173), .B(n174), .Z(n83) );
  GTECH_AND2 U175 ( .A(n173), .B(temp[17]), .Z(n82) );
  GTECH_NOR3 U176 ( .A(n175), .B(n176), .C(n177), .Z(n173) );
  GTECH_OA21 U177 ( .A(temp[18]), .B(temp[19]), .C(n178), .Z(n175) );
  GTECH_NAND2 U178 ( .A(n152), .B(n179), .Z(n81) );
  GTECH_NOT U179 ( .A(data[1]), .Z(n179) );
  GTECH_NAND2 U180 ( .A(data[1]), .B(n152), .Z(n80) );
  GTECH_AND2 U181 ( .A(N274), .B(n180), .Z(n79) );
  GTECH_AND2 U182 ( .A(temp[16]), .B(N274), .Z(n78) );
  GTECH_NAND2 U183 ( .A(n152), .B(n181), .Z(n77) );
  GTECH_NOT U184 ( .A(data[0]), .Z(n181) );
  GTECH_NAND2 U185 ( .A(data[0]), .B(n152), .Z(n76) );
  GTECH_NOT U186 ( .A(n161), .Z(n103) );
  GTECH_NAND2 U187 ( .A(n152), .B(n182), .Z(n102) );
  GTECH_NOT U188 ( .A(data[7]), .Z(n182) );
  GTECH_NAND2 U189 ( .A(data[7]), .B(n152), .Z(n101) );
  GTECH_NOT U190 ( .A(rst_n), .Z(n152) );
  GTECH_AND4 U191 ( .A(n183), .B(n184), .C(data_valid), .D(n180), .Z(N99) );
  GTECH_NOT U192 ( .A(n185), .Z(N69) );
  GTECH_XOR2 U193 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U194 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U195 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U196 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U197 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U198 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U199 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U200 ( .A(n186), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U201 ( .A(n170), .B(n166), .Z(n186) );
  GTECH_XOR2 U202 ( .A(n187), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U203 ( .A(n188), .B(n174), .Z(n187) );
  GTECH_XOR2 U204 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U205 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U206 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U207 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U208 ( .A(n189), .B(n190), .Z(N331) );
  GTECH_OA21 U209 ( .A(n183), .B(temp[19]), .C(n191), .Z(N328) );
  GTECH_AND2 U210 ( .A(n192), .B(n193), .Z(N323) );
  GTECH_OAI21 U211 ( .A(temp[19]), .B(n194), .C(n195), .Z(n192) );
  GTECH_AND2 U212 ( .A(n196), .B(n197), .Z(N316) );
  GTECH_OA21 U213 ( .A(n100), .B(n196), .C(n198), .Z(N307) );
  GTECH_OAI21 U214 ( .A(temp[18]), .B(n199), .C(n200), .Z(n198) );
  GTECH_NAND2 U215 ( .A(n201), .B(n154), .Z(n196) );
  GTECH_NAND2 U216 ( .A(temp[21]), .B(n200), .Z(n154) );
  GTECH_NOT U217 ( .A(n193), .Z(n201) );
  GTECH_NAND2 U218 ( .A(n202), .B(n156), .Z(n193) );
  GTECH_NOT U219 ( .A(n191), .Z(n202) );
  GTECH_OAI21 U220 ( .A(n163), .B(n203), .C(n204), .Z(n191) );
  GTECH_NOT U221 ( .A(n189), .Z(n204) );
  GTECH_OAI21 U222 ( .A(n163), .B(n205), .C(n206), .Z(n189) );
  GTECH_NOT U223 ( .A(N70), .Z(n206) );
  GTECH_OAI21 U224 ( .A(n163), .B(n190), .C(n185), .Z(N70) );
  GTECH_NAND2 U225 ( .A(n207), .B(data_valid), .Z(n185) );
  GTECH_NOT U226 ( .A(n208), .Z(n207) );
  GTECH_NOT U227 ( .A(n209), .Z(n100) );
  GTECH_OR3 U228 ( .A(temp[23]), .B(n163), .C(n188), .Z(n209) );
  GTECH_NOT U229 ( .A(data_valid), .Z(n163) );
  GTECH_NAND2 U230 ( .A(n161), .B(n210), .Z(N298) );
  GTECH_OR3 U231 ( .A(n211), .B(n212), .C(n213), .Z(n210) );
  GTECH_OAI2N2 U232 ( .A(n203), .B(n213), .C(n214), .D(n215), .Z(N287) );
  GTECH_NOR2 U233 ( .A(n194), .B(n216), .Z(n214) );
  GTECH_NAND2 U234 ( .A(n156), .B(n217), .Z(N274) );
  GTECH_NAND4 U235 ( .A(n218), .B(n183), .C(n200), .D(n178), .Z(n217) );
  GTECH_NOT U236 ( .A(n194), .Z(n183) );
  GTECH_OR3 U237 ( .A(temp[21]), .B(n177), .C(n219), .Z(n156) );
  GTECH_AND3 U238 ( .A(n220), .B(n197), .C(n221), .Z(N261) );
  GTECH_NAND2 U239 ( .A(n222), .B(n178), .Z(n197) );
  GTECH_AND3 U240 ( .A(n223), .B(n170), .C(n221), .Z(N248) );
  GTECH_NOT U241 ( .A(n213), .Z(n221) );
  GTECH_OAI21 U242 ( .A(temp[21]), .B(n222), .C(n188), .Z(n223) );
  GTECH_OR3 U243 ( .A(temp[20]), .B(temp[19]), .C(n194), .Z(n222) );
  GTECH_NAND2 U244 ( .A(n161), .B(n224), .Z(N235) );
  GTECH_OR3 U245 ( .A(n212), .B(n194), .C(n213), .Z(n224) );
  GTECH_NAND2 U246 ( .A(temp[23]), .B(data_valid), .Z(n161) );
  GTECH_AND3 U247 ( .A(n218), .B(n166), .C(n195), .Z(N222) );
  GTECH_NOT U248 ( .A(n216), .Z(n195) );
  GTECH_NOT U249 ( .A(n225), .Z(n218) );
  GTECH_OAI21 U250 ( .A(n205), .B(n213), .C(n226), .Z(N209) );
  GTECH_OR3 U251 ( .A(temp[17]), .B(n225), .C(n216), .Z(n226) );
  GTECH_NAND2 U252 ( .A(n227), .B(n200), .Z(n216) );
  GTECH_NOT U253 ( .A(n177), .Z(n200) );
  GTECH_NAND2 U254 ( .A(data_valid), .B(n220), .Z(n177) );
  GTECH_NOT U255 ( .A(n228), .Z(n220) );
  GTECH_NAND2 U256 ( .A(n215), .B(n159), .Z(n225) );
  GTECH_NAND2 U257 ( .A(data_valid), .B(n215), .Z(n213) );
  GTECH_NAND2 U258 ( .A(n176), .B(n208), .Z(n215) );
  GTECH_OR3 U259 ( .A(n229), .B(n194), .C(n180), .Z(n208) );
  GTECH_NOT U260 ( .A(temp[16]), .Z(n180) );
  GTECH_NAND2 U261 ( .A(n174), .B(n166), .Z(n194) );
  GTECH_NOT U262 ( .A(temp[17]), .Z(n174) );
  GTECH_NOT U263 ( .A(n230), .Z(n176) );
  GTECH_OR3 U264 ( .A(n231), .B(n171), .C(n158), .Z(n230) );
  GTECH_OR3 U265 ( .A(temp[21]), .B(n232), .C(n228), .Z(n158) );
  GTECH_NOT U266 ( .A(n203), .Z(n232) );
  GTECH_OR3 U267 ( .A(n228), .B(n233), .C(n159), .Z(n203) );
  GTECH_NAND2 U268 ( .A(n188), .B(n170), .Z(n228) );
  GTECH_NOT U269 ( .A(n205), .Z(n171) );
  GTECH_NOT U270 ( .A(n190), .Z(n231) );
  GTECH_NAND2 U271 ( .A(n211), .B(n184), .Z(n190) );
  GTECH_NOT U272 ( .A(n234), .Z(n211) );
  GTECH_NAND2 U273 ( .A(temp[17]), .B(n166), .Z(n234) );
  GTECH_NOT U274 ( .A(temp[18]), .Z(n166) );
  GTECH_NAND2 U275 ( .A(temp[18]), .B(n184), .Z(n205) );
  GTECH_NOT U276 ( .A(n229), .Z(n184) );
  GTECH_NAND2 U277 ( .A(n235), .B(n170), .Z(n229) );
  GTECH_NOT U278 ( .A(temp[23]), .Z(n170) );
  GTECH_NOT U279 ( .A(n212), .Z(n235) );
  GTECH_NAND2 U280 ( .A(n169), .B(n188), .Z(n212) );
  GTECH_NOT U281 ( .A(temp[22]), .Z(n188) );
  GTECH_NOT U282 ( .A(n199), .Z(n169) );
  GTECH_NAND2 U283 ( .A(n227), .B(n159), .Z(n199) );
  GTECH_NOT U284 ( .A(temp[19]), .Z(n159) );
  GTECH_NOT U285 ( .A(n233), .Z(n227) );
  GTECH_NAND2 U286 ( .A(n178), .B(n219), .Z(n233) );
  GTECH_NOT U287 ( .A(temp[20]), .Z(n219) );
  GTECH_NOT U288 ( .A(temp[21]), .Z(n178) );
endmodule

