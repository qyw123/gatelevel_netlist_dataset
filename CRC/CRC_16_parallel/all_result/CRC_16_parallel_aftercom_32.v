
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n7, n8, n9, n10, n11, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n104), .K(n104), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]), .QN(n7) );
  GTECH_FJK2S temp_reg_14_ ( .J(n104), .K(n104), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]), .QN(n8) );
  GTECH_FJK2S temp_reg_13_ ( .J(n104), .K(n104), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]), .QN(n9) );
  GTECH_FJK2S temp_reg_12_ ( .J(n104), .K(n104), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n104), .K(n104), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]), .QN(n10) );
  GTECH_FJK2S temp_reg_10_ ( .J(n104), .K(n104), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]), .QN(n11) );
  GTECH_FJK2S temp_reg_9_ ( .J(n104), .K(n104), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n104), .K(n104), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n104), .K(n104), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n104), .K(n104), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n104), .K(n104), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n104), .K(n104), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n104), .K(n104), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n104), .K(n104), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n104), .K(n104), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n104), .K(n104), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n104), .K(n104), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n104), .K(n104), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n104), .K(n104), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n104), .K(n104), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n104), .K(n104), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n104), .K(n104), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n104), .K(n104), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n104), .K(n104), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n104), .K(n104), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n104), .K(n104), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n104), .K(n104), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n104), .K(n104), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n104), .K(n104), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n104), .K(n104), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n104), .K(n104), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n104), .K(n104), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n103), .CP(clk), .CD(n95), .SD(n94), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n102), .CP(clk), .CD(n93), .SD(n92), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n101), .CP(clk), .CD(n91), .SD(n90), .Q(temp[21]), .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n100), .CP(clk), .CD(n89), .SD(n88), .Q(temp[20]), .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n99), .CP(clk), .CD(n87), .SD(n86), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n98), .CP(clk), .CD(n85), .SD(n84), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n97), .CP(clk), .CD(n83), .SD(n82), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n96), .CP(clk), .CD(n81), .SD(n80), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U147 ( .Z(n104) );
  GTECH_XNOR2 U148 ( .A(temp[19]), .B(n152), .Z(n99) );
  GTECH_NAND2 U149 ( .A(n153), .B(data_valid), .Z(n152) );
  GTECH_AOI21 U150 ( .A(n154), .B(n155), .C(n156), .Z(n153) );
  GTECH_XNOR2 U151 ( .A(temp[18]), .B(n157), .Z(n98) );
  GTECH_NAND3 U152 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_OR_NOT U153 ( .A(n161), .B(n162), .Z(n159) );
  GTECH_AO21 U154 ( .A(n163), .B(n164), .C(temp[22]), .Z(n158) );
  GTECH_MUX2 U155 ( .A(n165), .B(n166), .S(temp[17]), .Z(n97) );
  GTECH_OAI21 U156 ( .A(temp[21]), .B(n167), .C(n168), .Z(n166) );
  GTECH_NOT U157 ( .A(n169), .Z(n167) );
  GTECH_AND2 U158 ( .A(temp[21]), .B(n168), .Z(n165) );
  GTECH_XNOR2 U159 ( .A(temp[16]), .B(n170), .Z(n96) );
  GTECH_NAND2 U160 ( .A(n171), .B(n172), .Z(n95) );
  GTECH_NOT U161 ( .A(data[7]), .Z(n172) );
  GTECH_NAND2 U162 ( .A(data[7]), .B(n171), .Z(n94) );
  GTECH_NAND2 U163 ( .A(n171), .B(n173), .Z(n93) );
  GTECH_NOT U164 ( .A(data[6]), .Z(n173) );
  GTECH_NAND2 U165 ( .A(data[6]), .B(n171), .Z(n92) );
  GTECH_NAND2 U166 ( .A(n171), .B(n174), .Z(n91) );
  GTECH_NOT U167 ( .A(data[5]), .Z(n174) );
  GTECH_NAND2 U168 ( .A(data[5]), .B(n171), .Z(n90) );
  GTECH_NAND2 U169 ( .A(n171), .B(n175), .Z(n89) );
  GTECH_NOT U170 ( .A(data[4]), .Z(n175) );
  GTECH_NAND2 U171 ( .A(data[4]), .B(n171), .Z(n88) );
  GTECH_NAND2 U172 ( .A(n171), .B(n176), .Z(n87) );
  GTECH_NOT U173 ( .A(data[3]), .Z(n176) );
  GTECH_NAND2 U174 ( .A(data[3]), .B(n171), .Z(n86) );
  GTECH_NAND2 U175 ( .A(n171), .B(n177), .Z(n85) );
  GTECH_NOT U176 ( .A(data[2]), .Z(n177) );
  GTECH_NAND2 U177 ( .A(data[2]), .B(n171), .Z(n84) );
  GTECH_NAND2 U178 ( .A(n171), .B(n178), .Z(n83) );
  GTECH_NOT U179 ( .A(data[1]), .Z(n178) );
  GTECH_NAND2 U180 ( .A(data[1]), .B(n171), .Z(n82) );
  GTECH_NAND2 U181 ( .A(n171), .B(n179), .Z(n81) );
  GTECH_NOT U182 ( .A(data[0]), .Z(n179) );
  GTECH_NAND2 U183 ( .A(data[0]), .B(n171), .Z(n80) );
  GTECH_NOT U184 ( .A(rst_n), .Z(n171) );
  GTECH_AND2 U185 ( .A(temp[23]), .B(n180), .Z(n103) );
  GTECH_AND2 U186 ( .A(temp[22]), .B(n181), .Z(n102) );
  GTECH_AND2 U187 ( .A(temp[21]), .B(n182), .Z(n101) );
  GTECH_AND2 U188 ( .A(temp[20]), .B(n183), .Z(n100) );
  GTECH_AND4 U189 ( .A(n184), .B(n185), .C(data_valid), .D(n186), .Z(N99) );
  GTECH_NOT U190 ( .A(temp[16]), .Z(n186) );
  GTECH_NOT U191 ( .A(n187), .Z(N69) );
  GTECH_XNOR2 U192 ( .A(temp[19]), .B(n7), .Z(N56) );
  GTECH_XNOR2 U193 ( .A(temp[18]), .B(n8), .Z(N55) );
  GTECH_XNOR2 U194 ( .A(temp[17]), .B(n9), .Z(N54) );
  GTECH_XNOR2 U195 ( .A(temp[22]), .B(n10), .Z(N52) );
  GTECH_XNOR2 U196 ( .A(temp[21]), .B(n11), .Z(N51) );
  GTECH_XNOR2 U197 ( .A(temp[9]), .B(n188), .Z(N50) );
  GTECH_XNOR2 U198 ( .A(temp[8]), .B(n189), .Z(N49) );
  GTECH_XNOR2 U199 ( .A(temp[7]), .B(n190), .Z(N48) );
  GTECH_AND2 U200 ( .A(n155), .B(n191), .Z(n190) );
  GTECH_XNOR2 U201 ( .A(temp[6]), .B(n192), .Z(N47) );
  GTECH_AND2 U202 ( .A(n193), .B(n194), .Z(n192) );
  GTECH_XNOR2 U203 ( .A(temp[4]), .B(n188), .Z(N43) );
  GTECH_XNOR2 U204 ( .A(temp[3]), .B(n189), .Z(N41) );
  GTECH_XNOR2 U205 ( .A(temp[2]), .B(n191), .Z(N39) );
  GTECH_XNOR2 U206 ( .A(temp[1]), .B(n194), .Z(N37) );
  GTECH_AND2 U207 ( .A(n195), .B(n196), .Z(N331) );
  GTECH_AOI21 U208 ( .A(n189), .B(n197), .C(n198), .Z(N328) );
  GTECH_AND2 U209 ( .A(n199), .B(n200), .Z(N323) );
  GTECH_OAI21 U210 ( .A(temp[19]), .B(n197), .C(n201), .Z(n199) );
  GTECH_AND2 U211 ( .A(n202), .B(n203), .Z(N316) );
  GTECH_OAI21 U212 ( .A(n182), .B(n164), .C(n204), .Z(n202) );
  GTECH_AND2 U213 ( .A(n205), .B(n206), .Z(N307) );
  GTECH_OAI21 U214 ( .A(n207), .B(n181), .C(n204), .Z(n206) );
  GTECH_NOT U215 ( .A(n200), .Z(n204) );
  GTECH_OAI21 U216 ( .A(n183), .B(n188), .C(n198), .Z(n200) );
  GTECH_AND_NOT U217 ( .A(n208), .B(n195), .Z(n198) );
  GTECH_OAI21 U218 ( .A(n180), .B(n162), .C(n209), .Z(n195) );
  GTECH_NOT U219 ( .A(N70), .Z(n209) );
  GTECH_OAI21 U220 ( .A(n180), .B(n196), .C(n187), .Z(N70) );
  GTECH_NAND2 U221 ( .A(n210), .B(data_valid), .Z(n187) );
  GTECH_NOT U222 ( .A(n211), .Z(n210) );
  GTECH_NAND3 U223 ( .A(n207), .B(n212), .C(n160), .Z(n208) );
  GTECH_OAI21 U224 ( .A(temp[21]), .B(n169), .C(n168), .Z(n205) );
  GTECH_NAND2 U225 ( .A(n163), .B(n191), .Z(n169) );
  GTECH_OAI22 U226 ( .A(n180), .B(n155), .C(n213), .D(n214), .Z(N298) );
  GTECH_NAND2 U227 ( .A(n215), .B(n216), .Z(N287) );
  GTECH_NAND3 U228 ( .A(n212), .B(n217), .C(n218), .Z(n216) );
  GTECH_NOT U229 ( .A(n219), .Z(n212) );
  GTECH_NAND3 U230 ( .A(n184), .B(n220), .C(n201), .Z(n215) );
  GTECH_NOT U231 ( .A(n170), .Z(N274) );
  GTECH_NAND2 U232 ( .A(n221), .B(n222), .Z(n170) );
  GTECH_OAI21 U233 ( .A(n197), .B(n223), .C(n188), .Z(n222) );
  GTECH_AND4 U234 ( .A(n218), .B(n203), .C(n193), .D(n155), .Z(N261) );
  GTECH_OAI21 U235 ( .A(n224), .B(n197), .C(n164), .Z(n203) );
  GTECH_AND2 U236 ( .A(n225), .B(n218), .Z(N248) );
  GTECH_AOI21 U237 ( .A(n193), .B(n226), .C(temp[23]), .Z(n225) );
  GTECH_NAND3 U238 ( .A(n163), .B(n164), .C(n184), .Z(n226) );
  GTECH_OAI22 U239 ( .A(n180), .B(n155), .C(n197), .D(n214), .Z(N235) );
  GTECH_NAND3 U240 ( .A(n163), .B(n207), .C(n218), .Z(n214) );
  GTECH_NOT U241 ( .A(n227), .Z(n218) );
  GTECH_NOT U242 ( .A(data_valid), .Z(n180) );
  GTECH_AND3 U243 ( .A(n228), .B(n191), .C(n201), .Z(N222) );
  GTECH_OAI21 U244 ( .A(n162), .B(n227), .C(n229), .Z(N209) );
  GTECH_NAND3 U245 ( .A(n228), .B(n194), .C(n201), .Z(n229) );
  GTECH_NOT U246 ( .A(n230), .Z(n201) );
  GTECH_NAND2 U247 ( .A(n221), .B(n188), .Z(n230) );
  GTECH_NOT U248 ( .A(n183), .Z(n221) );
  GTECH_NAND2 U249 ( .A(n168), .B(n164), .Z(n183) );
  GTECH_NOT U250 ( .A(n182), .Z(n168) );
  GTECH_NAND2 U251 ( .A(n160), .B(n193), .Z(n182) );
  GTECH_NOT U252 ( .A(n181), .Z(n160) );
  GTECH_NAND2 U253 ( .A(data_valid), .B(n155), .Z(n181) );
  GTECH_NOT U254 ( .A(n223), .Z(n228) );
  GTECH_NAND2 U255 ( .A(n220), .B(n189), .Z(n223) );
  GTECH_NAND2 U256 ( .A(data_valid), .B(n220), .Z(n227) );
  GTECH_NAND4 U257 ( .A(n156), .B(n211), .C(n162), .D(n196), .Z(n220) );
  GTECH_NAND2 U258 ( .A(n213), .B(n185), .Z(n196) );
  GTECH_NOT U259 ( .A(n231), .Z(n213) );
  GTECH_NAND2 U260 ( .A(temp[17]), .B(n191), .Z(n231) );
  GTECH_NAND3 U261 ( .A(n184), .B(n185), .C(temp[16]), .Z(n211) );
  GTECH_NOT U262 ( .A(n197), .Z(n184) );
  GTECH_NAND2 U263 ( .A(n194), .B(n191), .Z(n197) );
  GTECH_NOT U264 ( .A(temp[18]), .Z(n191) );
  GTECH_NOT U265 ( .A(temp[17]), .Z(n194) );
  GTECH_NOT U266 ( .A(n161), .Z(n156) );
  GTECH_NAND2 U267 ( .A(n217), .B(n219), .Z(n161) );
  GTECH_NAND2 U268 ( .A(temp[19]), .B(n188), .Z(n219) );
  GTECH_NAND2 U269 ( .A(temp[18]), .B(n185), .Z(n162) );
  GTECH_NOT U270 ( .A(n232), .Z(n185) );
  GTECH_NAND2 U271 ( .A(n163), .B(n217), .Z(n232) );
  GTECH_NOT U272 ( .A(n233), .Z(n217) );
  GTECH_NAND2 U273 ( .A(n207), .B(n155), .Z(n233) );
  GTECH_NOT U274 ( .A(temp[23]), .Z(n155) );
  GTECH_NOT U275 ( .A(n154), .Z(n207) );
  GTECH_NAND2 U276 ( .A(n164), .B(n193), .Z(n154) );
  GTECH_NOT U277 ( .A(temp[22]), .Z(n193) );
  GTECH_NOT U278 ( .A(temp[21]), .Z(n164) );
  GTECH_NOT U279 ( .A(n224), .Z(n163) );
  GTECH_NAND2 U280 ( .A(n189), .B(n188), .Z(n224) );
  GTECH_NOT U281 ( .A(temp[20]), .Z(n188) );
  GTECH_NOT U282 ( .A(temp[19]), .Z(n189) );
endmodule

