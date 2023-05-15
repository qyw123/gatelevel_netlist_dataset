
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n7, n8, n9, n10, n11, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n107), .K(n107), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]), .QN(n7) );
  GTECH_FJK2S temp_reg_14_ ( .J(n107), .K(n107), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]), .QN(n8) );
  GTECH_FJK2S temp_reg_13_ ( .J(n107), .K(n107), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]), .QN(n9) );
  GTECH_FJK2S temp_reg_12_ ( .J(n107), .K(n107), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n107), .K(n107), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]), .QN(n10) );
  GTECH_FJK2S temp_reg_10_ ( .J(n107), .K(n107), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]), .QN(n11) );
  GTECH_FJK2S temp_reg_9_ ( .J(n107), .K(n107), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n107), .K(n107), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n107), .K(n107), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n107), .K(n107), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n107), .K(n107), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n107), .K(n107), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n107), .K(n107), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n107), .K(n107), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n107), .K(n107), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n107), .K(n107), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n107), .K(n107), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n107), .K(n107), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n107), .K(n107), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n107), .K(n107), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n107), .K(n107), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n107), .K(n107), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n107), .K(n107), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n107), .K(n107), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n107), .K(n107), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n107), .K(n107), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n107), .K(n107), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n107), .K(n107), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n107), .K(n107), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n107), .K(n107), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n107), .K(n107), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n107), .K(n107), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n106), .CP(clk), .CD(n98), .SD(n97), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n105), .CP(clk), .CD(n96), .SD(n95), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n104), .CP(clk), .CD(n94), .SD(n93), .Q(temp[21]) );
  GTECH_FD3 temp_reg_20_ ( .D(n103), .CP(clk), .CD(n92), .SD(n91), .Q(temp[20]), .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n102), .CP(clk), .CD(n90), .SD(n89), .Q(temp[19]), .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n101), .CP(clk), .CD(n88), .SD(n87), .Q(temp[18]), .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n100), .CP(clk), .CD(n86), .SD(n85), .Q(temp[17]), .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n99), .CP(clk), .CD(n84), .SD(n83), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U150 ( .Z(n107) );
  GTECH_XNOR2 U151 ( .A(temp[16]), .B(n155), .Z(n99) );
  GTECH_NAND2 U152 ( .A(n156), .B(n157), .Z(n98) );
  GTECH_NOT U153 ( .A(data[7]), .Z(n157) );
  GTECH_NAND2 U154 ( .A(data[7]), .B(n156), .Z(n97) );
  GTECH_NAND2 U155 ( .A(n156), .B(n158), .Z(n96) );
  GTECH_NOT U156 ( .A(data[6]), .Z(n158) );
  GTECH_NAND2 U157 ( .A(data[6]), .B(n156), .Z(n95) );
  GTECH_NAND2 U158 ( .A(n156), .B(n159), .Z(n94) );
  GTECH_NOT U159 ( .A(data[5]), .Z(n159) );
  GTECH_NAND2 U160 ( .A(data[5]), .B(n156), .Z(n93) );
  GTECH_NAND2 U161 ( .A(n156), .B(n160), .Z(n92) );
  GTECH_NOT U162 ( .A(data[4]), .Z(n160) );
  GTECH_NAND2 U163 ( .A(data[4]), .B(n156), .Z(n91) );
  GTECH_NAND2 U164 ( .A(n156), .B(n161), .Z(n90) );
  GTECH_NOT U165 ( .A(data[3]), .Z(n161) );
  GTECH_NAND2 U166 ( .A(data[3]), .B(n156), .Z(n89) );
  GTECH_NAND2 U167 ( .A(n156), .B(n162), .Z(n88) );
  GTECH_NOT U168 ( .A(data[2]), .Z(n162) );
  GTECH_NAND2 U169 ( .A(data[2]), .B(n156), .Z(n87) );
  GTECH_NAND2 U170 ( .A(n156), .B(n163), .Z(n86) );
  GTECH_NOT U171 ( .A(data[1]), .Z(n163) );
  GTECH_NAND2 U172 ( .A(data[1]), .B(n156), .Z(n85) );
  GTECH_NAND2 U173 ( .A(n156), .B(n164), .Z(n84) );
  GTECH_NOT U174 ( .A(data[0]), .Z(n164) );
  GTECH_NAND2 U175 ( .A(data[0]), .B(n156), .Z(n83) );
  GTECH_NOT U176 ( .A(rst_n), .Z(n156) );
  GTECH_AND2 U177 ( .A(temp[23]), .B(n165), .Z(n106) );
  GTECH_AND2 U178 ( .A(temp[22]), .B(n166), .Z(n105) );
  GTECH_AND2 U179 ( .A(temp[21]), .B(n167), .Z(n104) );
  GTECH_AND2 U180 ( .A(temp[20]), .B(n168), .Z(n103) );
  GTECH_XNOR2 U181 ( .A(temp[19]), .B(n169), .Z(n102) );
  GTECH_NAND2 U182 ( .A(n170), .B(data_valid), .Z(n169) );
  GTECH_OA21 U183 ( .A(temp[23]), .B(n171), .C(n172), .Z(n170) );
  GTECH_XNOR2 U184 ( .A(temp[18]), .B(n173), .Z(n101) );
  GTECH_NAND2 U185 ( .A(n174), .B(n175), .Z(n173) );
  GTECH_OA21 U186 ( .A(n176), .B(n172), .C(n177), .Z(n174) );
  GTECH_OAI21 U187 ( .A(temp[21]), .B(n178), .C(n179), .Z(n177) );
  GTECH_MUX2 U188 ( .A(n180), .B(n181), .S(temp[17]), .Z(n100) );
  GTECH_OAI21 U189 ( .A(temp[21]), .B(n182), .C(n183), .Z(n181) );
  GTECH_NOT U190 ( .A(n184), .Z(n182) );
  GTECH_AND2 U191 ( .A(temp[21]), .B(n183), .Z(n180) );
  GTECH_AND4 U192 ( .A(n185), .B(n186), .C(data_valid), .D(n187), .Z(N99) );
  GTECH_NOT U193 ( .A(temp[16]), .Z(n187) );
  GTECH_NOT U194 ( .A(n188), .Z(N69) );
  GTECH_XNOR2 U195 ( .A(temp[19]), .B(n7), .Z(N56) );
  GTECH_XNOR2 U196 ( .A(temp[18]), .B(n8), .Z(N55) );
  GTECH_XNOR2 U197 ( .A(temp[17]), .B(n9), .Z(N54) );
  GTECH_XNOR2 U198 ( .A(temp[22]), .B(n10), .Z(N52) );
  GTECH_XNOR2 U199 ( .A(temp[21]), .B(n11), .Z(N51) );
  GTECH_XNOR2 U200 ( .A(temp[9]), .B(n189), .Z(N50) );
  GTECH_XNOR2 U201 ( .A(temp[8]), .B(n190), .Z(N49) );
  GTECH_XNOR2 U202 ( .A(temp[7]), .B(n191), .Z(N48) );
  GTECH_AND2 U203 ( .A(n192), .B(n193), .Z(n191) );
  GTECH_XNOR2 U204 ( .A(temp[6]), .B(n194), .Z(N47) );
  GTECH_AND2 U205 ( .A(n179), .B(n195), .Z(n194) );
  GTECH_XNOR2 U206 ( .A(temp[4]), .B(n189), .Z(N43) );
  GTECH_XNOR2 U207 ( .A(temp[3]), .B(n190), .Z(N41) );
  GTECH_XNOR2 U208 ( .A(temp[2]), .B(n193), .Z(N39) );
  GTECH_XNOR2 U209 ( .A(temp[1]), .B(n195), .Z(N37) );
  GTECH_AND2 U210 ( .A(n196), .B(n197), .Z(N331) );
  GTECH_OA21 U211 ( .A(n185), .B(temp[19]), .C(n198), .Z(N328) );
  GTECH_AND2 U212 ( .A(n199), .B(n200), .Z(N323) );
  GTECH_OAI21 U213 ( .A(temp[19]), .B(n201), .C(n202), .Z(n199) );
  GTECH_AND2 U214 ( .A(n203), .B(n204), .Z(N316) );
  GTECH_OA21 U215 ( .A(n205), .B(n204), .C(n206), .Z(N307) );
  GTECH_OAI21 U216 ( .A(temp[21]), .B(n184), .C(n183), .Z(n206) );
  GTECH_NAND2 U217 ( .A(n207), .B(n193), .Z(n184) );
  GTECH_OAI21 U218 ( .A(n167), .B(n208), .C(n209), .Z(n204) );
  GTECH_NOT U219 ( .A(n200), .Z(n209) );
  GTECH_OAI21 U220 ( .A(n168), .B(n189), .C(n210), .Z(n200) );
  GTECH_NOT U221 ( .A(n198), .Z(n210) );
  GTECH_OAI21 U222 ( .A(n190), .B(n211), .C(n212), .Z(n198) );
  GTECH_NOT U223 ( .A(n196), .Z(n212) );
  GTECH_OAI21 U224 ( .A(n165), .B(n213), .C(n214), .Z(n196) );
  GTECH_NOT U225 ( .A(N70), .Z(n214) );
  GTECH_OAI21 U226 ( .A(n165), .B(n197), .C(n188), .Z(N70) );
  GTECH_NAND2 U227 ( .A(n215), .B(data_valid), .Z(n188) );
  GTECH_AND_NOT U228 ( .A(temp[22]), .B(n166), .Z(n205) );
  GTECH_OAI22 U229 ( .A(n165), .B(n192), .C(n216), .D(n217), .Z(N298) );
  GTECH_NAND2 U230 ( .A(n218), .B(n219), .Z(N287) );
  GTECH_NAND3 U231 ( .A(temp[19]), .B(n171), .C(n220), .Z(n219) );
  GTECH_NAND3 U232 ( .A(n185), .B(n221), .C(n202), .Z(n218) );
  GTECH_NOT U233 ( .A(n155), .Z(N274) );
  GTECH_NAND2 U234 ( .A(n222), .B(n223), .Z(n155) );
  GTECH_OAI21 U235 ( .A(n201), .B(n224), .C(n189), .Z(n223) );
  GTECH_AND3 U236 ( .A(n203), .B(n179), .C(n220), .Z(N261) );
  GTECH_OAI21 U237 ( .A(n178), .B(n201), .C(n208), .Z(n203) );
  GTECH_OA21 U238 ( .A(n225), .B(temp[22]), .C(n220), .Z(N248) );
  GTECH_NOT U239 ( .A(n226), .Z(n220) );
  GTECH_NAND2 U240 ( .A(n175), .B(n221), .Z(n226) );
  GTECH_AND3 U241 ( .A(n207), .B(n208), .C(n185), .Z(n225) );
  GTECH_OAI22 U242 ( .A(n165), .B(n192), .C(n201), .D(n217), .Z(N235) );
  GTECH_OR4 U243 ( .A(n227), .B(n178), .C(n228), .D(n165), .Z(n217) );
  GTECH_NOT U244 ( .A(n221), .Z(n228) );
  GTECH_AND3 U245 ( .A(n229), .B(n193), .C(n202), .Z(N222) );
  GTECH_OAI21 U246 ( .A(n165), .B(n213), .C(n230), .Z(N209) );
  GTECH_NAND3 U247 ( .A(n229), .B(n195), .C(n202), .Z(n230) );
  GTECH_NOT U248 ( .A(n211), .Z(n202) );
  GTECH_NAND2 U249 ( .A(n222), .B(n189), .Z(n211) );
  GTECH_NOT U250 ( .A(n168), .Z(n222) );
  GTECH_NAND2 U251 ( .A(n183), .B(n208), .Z(n168) );
  GTECH_NOT U252 ( .A(n167), .Z(n183) );
  GTECH_NAND2 U253 ( .A(n175), .B(n179), .Z(n167) );
  GTECH_NOT U254 ( .A(n166), .Z(n175) );
  GTECH_NAND2 U255 ( .A(data_valid), .B(n192), .Z(n166) );
  GTECH_NOT U256 ( .A(n224), .Z(n229) );
  GTECH_NAND2 U257 ( .A(n221), .B(n190), .Z(n224) );
  GTECH_OR4 U258 ( .A(n215), .B(n172), .C(n176), .D(n231), .Z(n221) );
  GTECH_NOT U259 ( .A(n197), .Z(n231) );
  GTECH_NAND2 U260 ( .A(n216), .B(n186), .Z(n197) );
  GTECH_NOT U261 ( .A(n232), .Z(n216) );
  GTECH_NAND2 U262 ( .A(temp[17]), .B(n193), .Z(n232) );
  GTECH_NOT U263 ( .A(n213), .Z(n176) );
  GTECH_NAND2 U264 ( .A(n233), .B(n171), .Z(n172) );
  GTECH_OA21 U265 ( .A(temp[20]), .B(n190), .C(n192), .Z(n233) );
  GTECH_NOT U266 ( .A(n234), .Z(n215) );
  GTECH_NAND3 U267 ( .A(n185), .B(n186), .C(temp[16]), .Z(n234) );
  GTECH_NOT U268 ( .A(n201), .Z(n185) );
  GTECH_NAND2 U269 ( .A(n195), .B(n193), .Z(n201) );
  GTECH_NOT U270 ( .A(temp[18]), .Z(n193) );
  GTECH_NOT U271 ( .A(temp[17]), .Z(n195) );
  GTECH_NAND2 U272 ( .A(temp[18]), .B(n186), .Z(n213) );
  GTECH_NOT U273 ( .A(n235), .Z(n186) );
  GTECH_NAND3 U274 ( .A(n171), .B(n192), .C(n207), .Z(n235) );
  GTECH_NOT U275 ( .A(n178), .Z(n207) );
  GTECH_NAND2 U276 ( .A(n190), .B(n189), .Z(n178) );
  GTECH_NOT U277 ( .A(temp[20]), .Z(n189) );
  GTECH_NOT U278 ( .A(temp[19]), .Z(n190) );
  GTECH_NOT U279 ( .A(temp[23]), .Z(n192) );
  GTECH_NOT U280 ( .A(n227), .Z(n171) );
  GTECH_NAND2 U281 ( .A(n208), .B(n179), .Z(n227) );
  GTECH_NOT U282 ( .A(temp[22]), .Z(n179) );
  GTECH_NOT U283 ( .A(temp[21]), .Z(n208) );
  GTECH_NOT U284 ( .A(data_valid), .Z(n165) );
endmodule

