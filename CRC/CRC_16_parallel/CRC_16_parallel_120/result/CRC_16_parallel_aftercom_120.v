
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n79, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n79), .K(n79), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n79), .K(n79), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n79), .K(n79), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n79), .K(n79), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n79), .K(n79), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n79), .K(n79), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n79), .K(n79), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n79), .K(n79), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n79), .K(n79), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n79), .K(n79), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n79), .K(n79), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n79), .K(n79), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n79), .K(n79), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n79), .K(n79), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n79), .K(n79), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n79), .K(n79), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n79), .K(n79), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n79), .K(n79), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n79), .K(n79), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n79), .K(n79), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n79), .K(n79), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n79), .K(n79), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n79), .K(n79), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n79), .K(n79), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n79), .K(n79), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n79), .K(n79), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n79), .K(n79), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n79), .K(n79), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n79), .K(n79), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n79), .K(n79), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n79), .K(n79), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n79), .K(n79), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n79), .K(n110), .CP(clk), .CD(n109), .SD(n108), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n79), .K(n107), .CP(clk), .CD(n106), .SD(n105), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n79), .K(n104), .CP(clk), .CD(n103), .SD(n102), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(n79), .K(n101), .CP(clk), .CD(n100), .SD(n99), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n98), .K(n97), .CP(clk), .CD(n96), .SD(n95), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n94), .K(n93), .CP(clk), .CD(n92), .SD(n91), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n90), .K(n89), .CP(clk), .CD(n88), .SD(n87), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n86), .K(n85), .CP(clk), .CD(n84), .SD(n83), 
        .Q(temp[16]), .QN(N58) );
  GTECH_ZERO U154 ( .Z(n79) );
  GTECH_NAND2 U155 ( .A(data[4]), .B(n159), .Z(n99) );
  GTECH_AND3 U156 ( .A(n160), .B(n161), .C(n162), .Z(n98) );
  GTECH_AND3 U157 ( .A(n162), .B(n160), .C(temp[19]), .Z(n97) );
  GTECH_NAND2 U158 ( .A(n163), .B(n164), .Z(n162) );
  GTECH_NAND3 U159 ( .A(n165), .B(n166), .C(data_valid), .Z(n164) );
  GTECH_NAND2 U160 ( .A(n159), .B(n167), .Z(n96) );
  GTECH_NOT U161 ( .A(data[3]), .Z(n167) );
  GTECH_NAND2 U162 ( .A(data[3]), .B(n159), .Z(n95) );
  GTECH_AND2 U163 ( .A(n168), .B(n169), .Z(n94) );
  GTECH_AND2 U164 ( .A(n168), .B(temp[18]), .Z(n93) );
  GTECH_AND2 U165 ( .A(n170), .B(n171), .Z(n168) );
  GTECH_OA21 U166 ( .A(n160), .B(n172), .C(n173), .Z(n171) );
  GTECH_OA21 U167 ( .A(n174), .B(temp[22]), .C(data_valid), .Z(n170) );
  GTECH_NAND2 U168 ( .A(n159), .B(n175), .Z(n92) );
  GTECH_NOT U169 ( .A(data[2]), .Z(n175) );
  GTECH_NAND2 U170 ( .A(data[2]), .B(n159), .Z(n91) );
  GTECH_AND2 U171 ( .A(n176), .B(n177), .Z(n90) );
  GTECH_AND2 U172 ( .A(n176), .B(temp[17]), .Z(n89) );
  GTECH_AND3 U173 ( .A(n178), .B(n179), .C(n180), .Z(n176) );
  GTECH_AO21 U174 ( .A(n181), .B(n169), .C(temp[21]), .Z(n180) );
  GTECH_NAND2 U175 ( .A(n159), .B(n182), .Z(n88) );
  GTECH_NOT U176 ( .A(data[1]), .Z(n182) );
  GTECH_NAND2 U177 ( .A(data[1]), .B(n159), .Z(n87) );
  GTECH_AND2 U178 ( .A(N274), .B(n183), .Z(n86) );
  GTECH_AND2 U179 ( .A(temp[16]), .B(N274), .Z(n85) );
  GTECH_NAND2 U180 ( .A(n159), .B(n184), .Z(n84) );
  GTECH_NOT U181 ( .A(data[0]), .Z(n184) );
  GTECH_NAND2 U182 ( .A(data[0]), .B(n159), .Z(n83) );
  GTECH_NAND2 U183 ( .A(n159), .B(n185), .Z(n109) );
  GTECH_NOT U184 ( .A(data[7]), .Z(n185) );
  GTECH_NAND2 U185 ( .A(data[7]), .B(n159), .Z(n108) );
  GTECH_NAND2 U186 ( .A(n159), .B(n186), .Z(n106) );
  GTECH_NOT U187 ( .A(data[6]), .Z(n186) );
  GTECH_NAND2 U188 ( .A(data[6]), .B(n159), .Z(n105) );
  GTECH_NOT U189 ( .A(n187), .Z(n104) );
  GTECH_NAND2 U190 ( .A(n159), .B(n188), .Z(n103) );
  GTECH_NOT U191 ( .A(data[5]), .Z(n188) );
  GTECH_NAND2 U192 ( .A(data[5]), .B(n159), .Z(n102) );
  GTECH_NOT U193 ( .A(n189), .Z(n101) );
  GTECH_NAND2 U194 ( .A(n159), .B(n190), .Z(n100) );
  GTECH_NOT U195 ( .A(data[4]), .Z(n190) );
  GTECH_NOT U196 ( .A(rst_n), .Z(n159) );
  GTECH_AND4 U197 ( .A(n191), .B(n192), .C(data_valid), .D(n183), .Z(N99) );
  GTECH_NOT U198 ( .A(temp[16]), .Z(n183) );
  GTECH_XOR2 U199 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U200 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U201 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U202 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U203 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U204 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U205 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U206 ( .A(n193), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U207 ( .A(n173), .B(n169), .Z(n193) );
  GTECH_XOR2 U208 ( .A(n194), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U209 ( .A(n166), .B(n177), .Z(n194) );
  GTECH_XOR2 U210 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U211 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U212 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U213 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U214 ( .A(n195), .B(n196), .Z(N331) );
  GTECH_OA21 U215 ( .A(n191), .B(temp[19]), .C(n197), .Z(N328) );
  GTECH_AND2 U216 ( .A(n198), .B(n199), .Z(N323) );
  GTECH_AO21 U217 ( .A(n191), .B(n161), .C(n200), .Z(n198) );
  GTECH_AND2 U218 ( .A(n201), .B(n202), .Z(N316) );
  GTECH_OA21 U219 ( .A(n107), .B(n201), .C(n203), .Z(N307) );
  GTECH_AO21 U220 ( .A(n174), .B(n169), .C(n204), .Z(n203) );
  GTECH_NAND2 U221 ( .A(n205), .B(n187), .Z(n201) );
  GTECH_NAND2 U222 ( .A(temp[21]), .B(n179), .Z(n187) );
  GTECH_NOT U223 ( .A(n199), .Z(n205) );
  GTECH_NAND2 U224 ( .A(n206), .B(n189), .Z(n199) );
  GTECH_NOT U225 ( .A(n197), .Z(n206) );
  GTECH_AO21 U226 ( .A(n207), .B(temp[19]), .C(n195), .Z(n197) );
  GTECH_AO21 U227 ( .A(n172), .B(data_valid), .C(N70), .Z(n195) );
  GTECH_AO21 U228 ( .A(n208), .B(data_valid), .C(N69), .Z(N70) );
  GTECH_NOT U229 ( .A(n209), .Z(N69) );
  GTECH_NAND2 U230 ( .A(n210), .B(data_valid), .Z(n209) );
  GTECH_NOT U231 ( .A(n211), .Z(n210) );
  GTECH_NOT U232 ( .A(n196), .Z(n208) );
  GTECH_NOT U233 ( .A(n212), .Z(n172) );
  GTECH_NOT U234 ( .A(n213), .Z(n107) );
  GTECH_NAND3 U235 ( .A(data_valid), .B(n173), .C(temp[22]), .Z(n213) );
  GTECH_AO21 U236 ( .A(n214), .B(n215), .C(n110), .Z(N298) );
  GTECH_NAND2 U237 ( .A(n216), .B(n217), .Z(N287) );
  GTECH_OR3 U238 ( .A(n218), .B(temp[21]), .C(n219), .Z(n217) );
  GTECH_NAND3 U239 ( .A(n220), .B(n207), .C(n191), .Z(n216) );
  GTECH_NAND2 U240 ( .A(n189), .B(n221), .Z(N274) );
  GTECH_NAND5 U241 ( .A(n161), .B(n165), .C(n220), .D(n191), .E(n179), .Z(n221) );
  GTECH_NAND3 U242 ( .A(n179), .B(n165), .C(temp[20]), .Z(n189) );
  GTECH_AND3 U243 ( .A(n222), .B(n202), .C(n223), .Z(N261) );
  GTECH_AO21 U244 ( .A(n191), .B(n181), .C(temp[21]), .Z(n202) );
  GTECH_AND3 U245 ( .A(n224), .B(n173), .C(n223), .Z(N248) );
  GTECH_AO21 U246 ( .A(n191), .B(n174), .C(temp[22]), .Z(n224) );
  GTECH_AO21 U247 ( .A(n214), .B(n191), .C(n110), .Z(N235) );
  GTECH_NOT U248 ( .A(n163), .Z(n110) );
  GTECH_NAND2 U249 ( .A(temp[23]), .B(data_valid), .Z(n163) );
  GTECH_NOT U250 ( .A(n225), .Z(n214) );
  GTECH_NAND3 U251 ( .A(n174), .B(n166), .C(n223), .Z(n225) );
  GTECH_NOT U252 ( .A(n219), .Z(n223) );
  GTECH_AND2 U253 ( .A(n226), .B(n169), .Z(N222) );
  GTECH_NOT U254 ( .A(n227), .Z(n226) );
  GTECH_OAI22 U255 ( .A(temp[17]), .B(n227), .C(n212), .D(n219), .Z(N209) );
  GTECH_NAND2 U256 ( .A(data_valid), .B(n220), .Z(n219) );
  GTECH_NAND3 U257 ( .A(n220), .B(n161), .C(n207), .Z(n227) );
  GTECH_NOT U258 ( .A(n200), .Z(n207) );
  GTECH_NAND3 U259 ( .A(n228), .B(n165), .C(n179), .Z(n200) );
  GTECH_NOT U260 ( .A(n204), .Z(n179) );
  GTECH_NAND2 U261 ( .A(data_valid), .B(n222), .Z(n204) );
  GTECH_NAND2 U262 ( .A(n229), .B(n211), .Z(n220) );
  GTECH_NAND3 U263 ( .A(n191), .B(n192), .C(temp[16]), .Z(n211) );
  GTECH_NOT U264 ( .A(n230), .Z(n191) );
  GTECH_NAND2 U265 ( .A(n177), .B(n169), .Z(n230) );
  GTECH_NOT U266 ( .A(temp[17]), .Z(n177) );
  GTECH_NOT U267 ( .A(n178), .Z(n229) );
  GTECH_NAND3 U268 ( .A(n212), .B(n196), .C(n231), .Z(n178) );
  GTECH_NOT U269 ( .A(n160), .Z(n231) );
  GTECH_NAND3 U270 ( .A(n218), .B(n165), .C(n222), .Z(n160) );
  GTECH_NAND3 U271 ( .A(n222), .B(n228), .C(temp[19]), .Z(n218) );
  GTECH_NAND2 U272 ( .A(n232), .B(n192), .Z(n196) );
  GTECH_NOT U273 ( .A(n215), .Z(n232) );
  GTECH_NAND2 U274 ( .A(temp[17]), .B(n169), .Z(n215) );
  GTECH_NOT U275 ( .A(temp[18]), .Z(n169) );
  GTECH_NAND2 U276 ( .A(temp[18]), .B(n192), .Z(n212) );
  GTECH_NOT U277 ( .A(n233), .Z(n192) );
  GTECH_NAND2 U278 ( .A(n174), .B(n222), .Z(n233) );
  GTECH_NOT U279 ( .A(n234), .Z(n222) );
  GTECH_NAND2 U280 ( .A(n166), .B(n173), .Z(n234) );
  GTECH_NOT U281 ( .A(temp[23]), .Z(n173) );
  GTECH_NOT U282 ( .A(temp[22]), .Z(n166) );
  GTECH_NOT U283 ( .A(n235), .Z(n174) );
  GTECH_NAND2 U284 ( .A(n181), .B(n165), .Z(n235) );
  GTECH_NOT U285 ( .A(temp[21]), .Z(n165) );
  GTECH_NOT U286 ( .A(n236), .Z(n181) );
  GTECH_NAND2 U287 ( .A(n228), .B(n161), .Z(n236) );
  GTECH_NOT U288 ( .A(temp[19]), .Z(n161) );
  GTECH_NOT U289 ( .A(temp[20]), .Z(n228) );
endmodule

