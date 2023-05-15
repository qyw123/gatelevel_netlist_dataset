
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209, N222,
         N235, N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n7,
         n8, n9, n10, n11, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230;
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
  GTECH_FD3 temp_reg_21_ ( .D(n101), .CP(clk), .CD(n91), .SD(n90), .Q(temp[21]) );
  GTECH_FD3 temp_reg_20_ ( .D(n100), .CP(clk), .CD(n89), .SD(n88), .Q(temp[20]), .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n99), .CP(clk), .CD(n87), .SD(n86), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n98), .CP(clk), .CD(n85), .SD(n84), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n97), .CP(clk), .CD(n83), .SD(n82), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n96), .CP(clk), .CD(n81), .SD(n80), .Q(temp[16])
         );
  GTECH_ZERO U147 ( .Z(n104) );
  GTECH_XNOR2 U148 ( .A(temp[19]), .B(n152), .Z(n99) );
  GTECH_NAND2 U149 ( .A(n153), .B(data_valid), .Z(n152) );
  GTECH_OA21 U150 ( .A(temp[23]), .B(n154), .C(n155), .Z(n153) );
  GTECH_XNOR2 U151 ( .A(temp[18]), .B(n156), .Z(n98) );
  GTECH_NAND3 U152 ( .A(n157), .B(n158), .C(n159), .Z(n156) );
  GTECH_OAI21 U153 ( .A(temp[21]), .B(n160), .C(n161), .Z(n158) );
  GTECH_OR_NOT U154 ( .A(n155), .B(n162), .Z(n157) );
  GTECH_MUX2 U155 ( .A(n163), .B(n164), .S(temp[17]), .Z(n97) );
  GTECH_OAI21 U156 ( .A(temp[21]), .B(n165), .C(n166), .Z(n164) );
  GTECH_NOT U157 ( .A(n167), .Z(n165) );
  GTECH_AND2 U158 ( .A(temp[21]), .B(n166), .Z(n163) );
  GTECH_XNOR2 U159 ( .A(temp[16]), .B(n168), .Z(n96) );
  GTECH_NAND2 U160 ( .A(n169), .B(n170), .Z(n95) );
  GTECH_NOT U161 ( .A(data[7]), .Z(n170) );
  GTECH_NAND2 U162 ( .A(data[7]), .B(n169), .Z(n94) );
  GTECH_NAND2 U163 ( .A(n169), .B(n171), .Z(n93) );
  GTECH_NOT U164 ( .A(data[6]), .Z(n171) );
  GTECH_NAND2 U165 ( .A(data[6]), .B(n169), .Z(n92) );
  GTECH_NAND2 U166 ( .A(n169), .B(n172), .Z(n91) );
  GTECH_NOT U167 ( .A(data[5]), .Z(n172) );
  GTECH_NAND2 U168 ( .A(data[5]), .B(n169), .Z(n90) );
  GTECH_NAND2 U169 ( .A(n169), .B(n173), .Z(n89) );
  GTECH_NOT U170 ( .A(data[4]), .Z(n173) );
  GTECH_NAND2 U171 ( .A(data[4]), .B(n169), .Z(n88) );
  GTECH_NAND2 U172 ( .A(n169), .B(n174), .Z(n87) );
  GTECH_NOT U173 ( .A(data[3]), .Z(n174) );
  GTECH_NAND2 U174 ( .A(data[3]), .B(n169), .Z(n86) );
  GTECH_NAND2 U175 ( .A(n169), .B(n175), .Z(n85) );
  GTECH_NOT U176 ( .A(data[2]), .Z(n175) );
  GTECH_NAND2 U177 ( .A(data[2]), .B(n169), .Z(n84) );
  GTECH_NAND2 U178 ( .A(n169), .B(n176), .Z(n83) );
  GTECH_NOT U179 ( .A(data[1]), .Z(n176) );
  GTECH_NAND2 U180 ( .A(data[1]), .B(n169), .Z(n82) );
  GTECH_NAND2 U181 ( .A(n169), .B(n177), .Z(n81) );
  GTECH_NOT U182 ( .A(data[0]), .Z(n177) );
  GTECH_NAND2 U183 ( .A(data[0]), .B(n169), .Z(n80) );
  GTECH_NOT U184 ( .A(rst_n), .Z(n169) );
  GTECH_AND2 U185 ( .A(temp[23]), .B(n178), .Z(n103) );
  GTECH_AND2 U186 ( .A(temp[22]), .B(n179), .Z(n102) );
  GTECH_AND2 U187 ( .A(temp[21]), .B(n180), .Z(n101) );
  GTECH_AND2 U188 ( .A(temp[20]), .B(n181), .Z(n100) );
  GTECH_AND4 U189 ( .A(n182), .B(n183), .C(data_valid), .D(n184), .Z(N99) );
  GTECH_NOT U190 ( .A(temp[16]), .Z(n184) );
  GTECH_NOT U191 ( .A(n185), .Z(N69) );
  GTECH_XNOR2 U192 ( .A(temp[19]), .B(n7), .Z(N56) );
  GTECH_XNOR2 U193 ( .A(temp[18]), .B(n8), .Z(N55) );
  GTECH_XNOR2 U194 ( .A(temp[17]), .B(n9), .Z(N54) );
  GTECH_XNOR2 U195 ( .A(temp[22]), .B(n10), .Z(N52) );
  GTECH_XNOR2 U196 ( .A(temp[21]), .B(n11), .Z(N51) );
  GTECH_XNOR2 U197 ( .A(temp[9]), .B(n186), .Z(N50) );
  GTECH_XNOR2 U198 ( .A(temp[8]), .B(n187), .Z(N49) );
  GTECH_XNOR2 U199 ( .A(temp[7]), .B(n188), .Z(N48) );
  GTECH_AND2 U200 ( .A(n189), .B(n190), .Z(n188) );
  GTECH_XNOR2 U201 ( .A(temp[6]), .B(n191), .Z(N47) );
  GTECH_AND2 U202 ( .A(n161), .B(n192), .Z(n191) );
  GTECH_XNOR2 U203 ( .A(temp[4]), .B(n186), .Z(N43) );
  GTECH_XNOR2 U204 ( .A(temp[3]), .B(n187), .Z(N41) );
  GTECH_XNOR2 U205 ( .A(temp[2]), .B(n190), .Z(N39) );
  GTECH_XNOR2 U206 ( .A(temp[1]), .B(n192), .Z(N37) );
  GTECH_AND2 U207 ( .A(n193), .B(n194), .Z(N331) );
  GTECH_OA21 U208 ( .A(n182), .B(temp[19]), .C(n195), .Z(N328) );
  GTECH_AND2 U209 ( .A(n196), .B(n197), .Z(N323) );
  GTECH_OAI21 U210 ( .A(temp[19]), .B(n198), .C(n199), .Z(n196) );
  GTECH_AND2 U211 ( .A(n200), .B(n201), .Z(N316) );
  GTECH_OA21 U212 ( .A(n202), .B(n201), .C(n203), .Z(N307) );
  GTECH_OAI21 U213 ( .A(temp[21]), .B(n167), .C(n166), .Z(n203) );
  GTECH_NAND2 U214 ( .A(n204), .B(n190), .Z(n167) );
  GTECH_OAI21 U215 ( .A(n180), .B(n205), .C(n206), .Z(n201) );
  GTECH_NOT U216 ( .A(n197), .Z(n206) );
  GTECH_OAI21 U217 ( .A(n181), .B(n186), .C(n207), .Z(n197) );
  GTECH_NOT U218 ( .A(n195), .Z(n207) );
  GTECH_OAI21 U219 ( .A(n187), .B(n208), .C(n209), .Z(n195) );
  GTECH_NOT U220 ( .A(n193), .Z(n209) );
  GTECH_OAI21 U221 ( .A(n178), .B(n162), .C(n210), .Z(n193) );
  GTECH_NOT U222 ( .A(N70), .Z(n210) );
  GTECH_OAI21 U223 ( .A(n178), .B(n194), .C(n185), .Z(N70) );
  GTECH_NAND2 U224 ( .A(n211), .B(data_valid), .Z(n185) );
  GTECH_NOT U225 ( .A(n212), .Z(n211) );
  GTECH_AND_NOT U226 ( .A(temp[22]), .B(n179), .Z(n202) );
  GTECH_OAI2N2 U227 ( .A(n213), .B(n214), .C(temp[23]), .D(data_valid), .Z(
        N298) );
  GTECH_NAND2 U228 ( .A(n215), .B(n216), .Z(N287) );
  GTECH_NAND3 U229 ( .A(n154), .B(temp[19]), .C(n217), .Z(n216) );
  GTECH_NAND3 U230 ( .A(n182), .B(n218), .C(n199), .Z(n215) );
  GTECH_NOT U231 ( .A(n168), .Z(N274) );
  GTECH_NAND2 U232 ( .A(n219), .B(n220), .Z(n168) );
  GTECH_OAI21 U233 ( .A(n198), .B(n221), .C(n186), .Z(n220) );
  GTECH_AND3 U234 ( .A(n200), .B(n161), .C(n217), .Z(N261) );
  GTECH_OAI21 U235 ( .A(n160), .B(n198), .C(n205), .Z(n200) );
  GTECH_OA21 U236 ( .A(n222), .B(temp[22]), .C(n217), .Z(N248) );
  GTECH_NOT U237 ( .A(n223), .Z(n217) );
  GTECH_NAND2 U238 ( .A(n159), .B(n218), .Z(n223) );
  GTECH_AND3 U239 ( .A(n204), .B(n205), .C(n182), .Z(n222) );
  GTECH_OAI2N2 U240 ( .A(n198), .B(n214), .C(temp[23]), .D(data_valid), .Z(
        N235) );
  GTECH_NAND4 U241 ( .A(n204), .B(data_valid), .C(n154), .D(n218), .Z(n214) );
  GTECH_AND3 U242 ( .A(n224), .B(n190), .C(n199), .Z(N222) );
  GTECH_OAI21 U243 ( .A(n178), .B(n162), .C(n225), .Z(N209) );
  GTECH_NAND3 U244 ( .A(n224), .B(n192), .C(n199), .Z(n225) );
  GTECH_NOT U245 ( .A(n208), .Z(n199) );
  GTECH_NAND2 U246 ( .A(n219), .B(n186), .Z(n208) );
  GTECH_NOT U247 ( .A(n181), .Z(n219) );
  GTECH_NAND2 U248 ( .A(n166), .B(n205), .Z(n181) );
  GTECH_NOT U249 ( .A(n180), .Z(n166) );
  GTECH_NAND2 U250 ( .A(n159), .B(n161), .Z(n180) );
  GTECH_NOT U251 ( .A(n179), .Z(n159) );
  GTECH_NAND2 U252 ( .A(data_valid), .B(n189), .Z(n179) );
  GTECH_NOT U253 ( .A(n221), .Z(n224) );
  GTECH_NAND2 U254 ( .A(n218), .B(n187), .Z(n221) );
  GTECH_NAND4 U255 ( .A(n226), .B(n212), .C(n194), .D(n162), .Z(n218) );
  GTECH_NAND2 U256 ( .A(n213), .B(n183), .Z(n194) );
  GTECH_NOT U257 ( .A(n227), .Z(n213) );
  GTECH_NAND2 U258 ( .A(temp[17]), .B(n190), .Z(n227) );
  GTECH_NAND3 U259 ( .A(n182), .B(n183), .C(temp[16]), .Z(n212) );
  GTECH_NOT U260 ( .A(n198), .Z(n182) );
  GTECH_NAND2 U261 ( .A(n192), .B(n190), .Z(n198) );
  GTECH_NOT U262 ( .A(temp[18]), .Z(n190) );
  GTECH_NOT U263 ( .A(temp[17]), .Z(n192) );
  GTECH_NOT U264 ( .A(n155), .Z(n226) );
  GTECH_NAND2 U265 ( .A(n228), .B(n154), .Z(n155) );
  GTECH_OA21 U266 ( .A(temp[20]), .B(n187), .C(n189), .Z(n228) );
  GTECH_NAND2 U267 ( .A(temp[18]), .B(n183), .Z(n162) );
  GTECH_NOT U268 ( .A(n229), .Z(n183) );
  GTECH_NAND3 U269 ( .A(n154), .B(n189), .C(n204), .Z(n229) );
  GTECH_NOT U270 ( .A(n160), .Z(n204) );
  GTECH_NAND2 U271 ( .A(n187), .B(n186), .Z(n160) );
  GTECH_NOT U272 ( .A(temp[20]), .Z(n186) );
  GTECH_NOT U273 ( .A(temp[19]), .Z(n187) );
  GTECH_NOT U274 ( .A(temp[23]), .Z(n189) );
  GTECH_NOT U275 ( .A(n230), .Z(n154) );
  GTECH_NAND2 U276 ( .A(n205), .B(n161), .Z(n230) );
  GTECH_NOT U277 ( .A(temp[22]), .Z(n161) );
  GTECH_NOT U278 ( .A(temp[21]), .Z(n205) );
  GTECH_NOT U279 ( .A(data_valid), .Z(n178) );
endmodule

