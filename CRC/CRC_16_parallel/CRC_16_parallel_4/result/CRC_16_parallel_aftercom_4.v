
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n103), .K(n103), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n103), .K(n103), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n103), .K(n103), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n103), .K(n103), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n103), .K(n103), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n103), .K(n103), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n103), .K(n103), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n103), .K(n103), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n103), .K(n103), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n103), .K(n103), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n103), .K(n103), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n103), .K(n103), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n103), .K(n103), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n103), .K(n103), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n103), .K(n103), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n103), .K(n103), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n103), .K(n103), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n103), .K(n103), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n103), .K(n103), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n103), .K(n103), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n103), .K(n103), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n103), .K(n103), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n103), .K(n103), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n103), .K(n103), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n103), .K(n103), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n103), .K(n103), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n103), .K(n103), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n103), .K(n103), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n103), .K(n103), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n103), .K(n103), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n103), .K(n103), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n103), .K(n103), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n102), .CP(clk), .CD(n94), .SD(n93), .Q(temp[23]), .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n101), .CP(clk), .CD(n92), .SD(n91), .Q(temp[22]), .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n100), .CP(clk), .CD(n90), .SD(n89), .Q(temp[21]), .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n99), .CP(clk), .CD(n88), .SD(n87), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n98), .CP(clk), .CD(n86), .SD(n85), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n97), .CP(clk), .CD(n84), .SD(n83), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n96), .CP(clk), .CD(n82), .SD(n81), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n95), .CP(clk), .CD(n80), .SD(n79), .Q(temp[16])
         );
  GTECH_ZERO U146 ( .Z(n103) );
  GTECH_AND_NOT U147 ( .A(temp[20]), .B(n151), .Z(n99) );
  GTECH_XOR2 U148 ( .A(temp[19]), .B(n152), .Z(n98) );
  GTECH_AND_NOT U149 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_OA21 U150 ( .A(n155), .B(temp[23]), .C(n156), .Z(n153) );
  GTECH_XOR2 U151 ( .A(temp[18]), .B(n157), .Z(n97) );
  GTECH_AND3 U152 ( .A(n158), .B(n159), .C(n160), .Z(n157) );
  GTECH_OAI21 U153 ( .A(temp[21]), .B(n161), .C(n162), .Z(n159) );
  GTECH_MUX2 U154 ( .A(n163), .B(n164), .S(temp[17]), .Z(n96) );
  GTECH_OAI21 U155 ( .A(temp[21]), .B(n165), .C(n166), .Z(n164) );
  GTECH_AND_NOT U156 ( .A(temp[21]), .B(n167), .Z(n163) );
  GTECH_XOR2 U157 ( .A(temp[16]), .B(N274), .Z(n95) );
  GTECH_NAND2 U158 ( .A(n168), .B(n169), .Z(n94) );
  GTECH_NOT U159 ( .A(data[7]), .Z(n169) );
  GTECH_NAND2 U160 ( .A(data[7]), .B(n168), .Z(n93) );
  GTECH_NAND2 U161 ( .A(n168), .B(n170), .Z(n92) );
  GTECH_NOT U162 ( .A(data[6]), .Z(n170) );
  GTECH_NAND2 U163 ( .A(data[6]), .B(n168), .Z(n91) );
  GTECH_NAND2 U164 ( .A(n168), .B(n171), .Z(n90) );
  GTECH_NOT U165 ( .A(data[5]), .Z(n171) );
  GTECH_NAND2 U166 ( .A(data[5]), .B(n168), .Z(n89) );
  GTECH_NAND2 U167 ( .A(n168), .B(n172), .Z(n88) );
  GTECH_NOT U168 ( .A(data[4]), .Z(n172) );
  GTECH_NAND2 U169 ( .A(data[4]), .B(n168), .Z(n87) );
  GTECH_NAND2 U170 ( .A(n168), .B(n173), .Z(n86) );
  GTECH_NOT U171 ( .A(data[3]), .Z(n173) );
  GTECH_NAND2 U172 ( .A(data[3]), .B(n168), .Z(n85) );
  GTECH_NAND2 U173 ( .A(n168), .B(n174), .Z(n84) );
  GTECH_NOT U174 ( .A(data[2]), .Z(n174) );
  GTECH_NAND2 U175 ( .A(data[2]), .B(n168), .Z(n83) );
  GTECH_NAND2 U176 ( .A(n168), .B(n175), .Z(n82) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n175) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n168), .Z(n81) );
  GTECH_NAND2 U179 ( .A(n168), .B(n176), .Z(n80) );
  GTECH_NOT U180 ( .A(data[0]), .Z(n176) );
  GTECH_NAND2 U181 ( .A(data[0]), .B(n168), .Z(n79) );
  GTECH_NOT U182 ( .A(rst_n), .Z(n168) );
  GTECH_AND_NOT U183 ( .A(temp[23]), .B(data_valid), .Z(n102) );
  GTECH_AND_NOT U184 ( .A(temp[22]), .B(n160), .Z(n101) );
  GTECH_AND_NOT U185 ( .A(temp[21]), .B(n166), .Z(n100) );
  GTECH_AND4 U186 ( .A(n177), .B(n178), .C(data_valid), .D(n179), .Z(N99) );
  GTECH_NOT U187 ( .A(temp[16]), .Z(n179) );
  GTECH_NOT U188 ( .A(n180), .Z(N69) );
  GTECH_XOR2 U189 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U190 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U191 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U192 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U193 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U194 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U195 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U196 ( .A(n181), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U197 ( .A(n182), .B(n183), .Z(n181) );
  GTECH_XOR2 U198 ( .A(n184), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U199 ( .A(n162), .B(n185), .Z(n184) );
  GTECH_XOR2 U200 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U201 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U202 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U203 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND_NOT U204 ( .A(n186), .B(n187), .Z(N331) );
  GTECH_NOT U205 ( .A(n188), .Z(n187) );
  GTECH_OA21 U206 ( .A(n177), .B(temp[19]), .C(n189), .Z(N328) );
  GTECH_OA21 U207 ( .A(n190), .B(n191), .C(n192), .Z(N323) );
  GTECH_AND_NOT U208 ( .A(n177), .B(temp[19]), .Z(n190) );
  GTECH_AND_NOT U209 ( .A(n193), .B(n194), .Z(N316) );
  GTECH_NOT U210 ( .A(n195), .Z(n194) );
  GTECH_OA22 U211 ( .A(n196), .B(n193), .C(n167), .D(n197), .Z(N307) );
  GTECH_AND_NOT U212 ( .A(n165), .B(temp[21]), .Z(n197) );
  GTECH_NOT U213 ( .A(n198), .Z(n165) );
  GTECH_NAND2 U214 ( .A(n199), .B(n183), .Z(n198) );
  GTECH_OAI21 U215 ( .A(n167), .B(n200), .C(n201), .Z(n193) );
  GTECH_NOT U216 ( .A(n192), .Z(n201) );
  GTECH_OAI21 U217 ( .A(n202), .B(n203), .C(n204), .Z(n192) );
  GTECH_NOT U218 ( .A(n189), .Z(n204) );
  GTECH_OAI21 U219 ( .A(n205), .B(n191), .C(n206), .Z(n189) );
  GTECH_NOT U220 ( .A(n186), .Z(n206) );
  GTECH_NAND2 U221 ( .A(n207), .B(n208), .Z(n186) );
  GTECH_NOT U222 ( .A(N70), .Z(n208) );
  GTECH_OAI21 U223 ( .A(n154), .B(n188), .C(n180), .Z(N70) );
  GTECH_NAND2 U224 ( .A(n209), .B(data_valid), .Z(n180) );
  GTECH_NOT U225 ( .A(n210), .Z(n209) );
  GTECH_AND_NOT U226 ( .A(temp[22]), .B(n211), .Z(n196) );
  GTECH_OAI22 U227 ( .A(n154), .B(n182), .C(n212), .D(n213), .Z(N298) );
  GTECH_NAND2 U228 ( .A(n214), .B(n215), .Z(N287) );
  GTECH_NAND3 U229 ( .A(n155), .B(temp[19]), .C(n216), .Z(n215) );
  GTECH_NAND3 U230 ( .A(n177), .B(n217), .C(n218), .Z(n214) );
  GTECH_OA21 U231 ( .A(n219), .B(temp[20]), .C(n151), .Z(N274) );
  GTECH_NOR2 U232 ( .A(n220), .B(n221), .Z(n219) );
  GTECH_AND3 U233 ( .A(n195), .B(n162), .C(n216), .Z(N261) );
  GTECH_OAI21 U234 ( .A(n161), .B(n220), .C(n200), .Z(n195) );
  GTECH_OA21 U235 ( .A(n222), .B(temp[22]), .C(n216), .Z(N248) );
  GTECH_NOT U236 ( .A(n223), .Z(n216) );
  GTECH_NAND2 U237 ( .A(n160), .B(n217), .Z(n223) );
  GTECH_AND3 U238 ( .A(n199), .B(n200), .C(n177), .Z(n222) );
  GTECH_OAI22 U239 ( .A(n154), .B(n182), .C(n220), .D(n213), .Z(N235) );
  GTECH_NAND4 U240 ( .A(n199), .B(n155), .C(data_valid), .D(n217), .Z(n213) );
  GTECH_NOT U241 ( .A(data_valid), .Z(n154) );
  GTECH_AND3 U242 ( .A(n224), .B(n183), .C(n218), .Z(N222) );
  GTECH_NAND2 U243 ( .A(n207), .B(n225), .Z(N209) );
  GTECH_NAND3 U244 ( .A(n224), .B(n185), .C(n218), .Z(n225) );
  GTECH_NOT U245 ( .A(n191), .Z(n218) );
  GTECH_NAND2 U246 ( .A(n151), .B(n202), .Z(n191) );
  GTECH_NOT U247 ( .A(n203), .Z(n151) );
  GTECH_NAND2 U248 ( .A(n166), .B(n200), .Z(n203) );
  GTECH_NOT U249 ( .A(n167), .Z(n166) );
  GTECH_NAND2 U250 ( .A(n160), .B(n162), .Z(n167) );
  GTECH_NOT U251 ( .A(n211), .Z(n160) );
  GTECH_NAND2 U252 ( .A(data_valid), .B(n182), .Z(n211) );
  GTECH_NOT U253 ( .A(n221), .Z(n224) );
  GTECH_NAND2 U254 ( .A(n217), .B(n205), .Z(n221) );
  GTECH_NAND3 U255 ( .A(n210), .B(n188), .C(n226), .Z(n217) );
  GTECH_NOT U256 ( .A(n158), .Z(n226) );
  GTECH_OAI21 U257 ( .A(n227), .B(n183), .C(n228), .Z(n158) );
  GTECH_NOT U258 ( .A(n156), .Z(n228) );
  GTECH_NAND2 U259 ( .A(n229), .B(n155), .Z(n156) );
  GTECH_OA21 U260 ( .A(temp[20]), .B(n205), .C(n182), .Z(n229) );
  GTECH_NAND2 U261 ( .A(n212), .B(n178), .Z(n188) );
  GTECH_NOT U262 ( .A(n230), .Z(n212) );
  GTECH_NAND2 U263 ( .A(temp[17]), .B(n183), .Z(n230) );
  GTECH_NAND3 U264 ( .A(n177), .B(n178), .C(temp[16]), .Z(n210) );
  GTECH_NOT U265 ( .A(n220), .Z(n177) );
  GTECH_NAND2 U266 ( .A(n185), .B(n183), .Z(n220) );
  GTECH_NOT U267 ( .A(temp[18]), .Z(n183) );
  GTECH_NOT U268 ( .A(temp[17]), .Z(n185) );
  GTECH_NAND3 U269 ( .A(n178), .B(data_valid), .C(temp[18]), .Z(n207) );
  GTECH_NOT U270 ( .A(n227), .Z(n178) );
  GTECH_NAND3 U271 ( .A(n155), .B(n182), .C(n199), .Z(n227) );
  GTECH_NOT U272 ( .A(n161), .Z(n199) );
  GTECH_NAND2 U273 ( .A(n205), .B(n202), .Z(n161) );
  GTECH_NOT U274 ( .A(temp[20]), .Z(n202) );
  GTECH_NOT U275 ( .A(temp[19]), .Z(n205) );
  GTECH_NOT U276 ( .A(temp[23]), .Z(n182) );
  GTECH_NOT U277 ( .A(n231), .Z(n155) );
  GTECH_NAND2 U278 ( .A(n200), .B(n162), .Z(n231) );
  GTECH_NOT U279 ( .A(temp[22]), .Z(n162) );
  GTECH_NOT U280 ( .A(temp[21]), .Z(n200) );
endmodule

