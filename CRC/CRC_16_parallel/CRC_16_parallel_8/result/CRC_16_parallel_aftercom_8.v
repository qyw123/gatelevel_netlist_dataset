
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(1'b0), .K(1'b0), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(1'b0), .K(1'b0), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(1'b0), .K(1'b0), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(1'b0), .K(1'b0), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(1'b0), .K(1'b0), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(1'b0), .K(1'b0), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(1'b0), .K(1'b0), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(1'b0), .K(1'b0), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(1'b0), .K(1'b0), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(1'b0), .K(1'b0), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(1'b0), .K(1'b0), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(1'b0), .K(1'b0), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(1'b0), .K(1'b0), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(1'b0), .K(1'b0), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(1'b0), .K(1'b0), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(1'b0), .K(1'b0), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(1'b0), .K(1'b0), .TI(temp[15]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(1'b0), .K(1'b0), .TI(temp[14]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(1'b0), .K(1'b0), .TI(temp[13]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(1'b0), .K(1'b0), .TI(temp[12]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(1'b0), .K(1'b0), .TI(temp[11]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(1'b0), .K(1'b0), .TI(temp[10]), .TE(N99), .CP(
        clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(1'b0), .K(1'b0), .TI(temp[9]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(1'b0), .K(1'b0), .TI(temp[8]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(1'b0), .K(1'b0), .TI(temp[7]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(1'b0), .K(1'b0), .TI(temp[6]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(1'b0), .K(1'b0), .TI(temp[5]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(1'b0), .K(1'b0), .TI(temp[4]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(1'b0), .K(1'b0), .TI(temp[3]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(1'b0), .K(1'b0), .TI(temp[2]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(1'b0), .K(1'b0), .TI(temp[1]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(1'b0), .K(1'b0), .TI(temp[0]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[0]) );
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
  GTECH_FD3 temp_reg_16_ ( .D(n96), .CP(clk), .CD(n81), .SD(n80), .Q(temp[16])
         );
  GTECH_XOR2 U147 ( .A(temp[19]), .B(n152), .Z(n99) );
  GTECH_AND2 U148 ( .A(n153), .B(data_valid), .Z(n152) );
  GTECH_OA21 U149 ( .A(temp[23]), .B(n154), .C(n155), .Z(n153) );
  GTECH_XOR2 U150 ( .A(temp[18]), .B(n156), .Z(n98) );
  GTECH_AND3 U151 ( .A(n157), .B(n158), .C(n159), .Z(n156) );
  GTECH_OAI21 U152 ( .A(temp[21]), .B(n160), .C(n161), .Z(n158) );
  GTECH_MUX2 U153 ( .A(n162), .B(n163), .S(temp[17]), .Z(n97) );
  GTECH_OAI21 U154 ( .A(temp[21]), .B(n164), .C(n165), .Z(n163) );
  GTECH_NOT U155 ( .A(n166), .Z(n164) );
  GTECH_AND2 U156 ( .A(temp[21]), .B(n165), .Z(n162) );
  GTECH_XOR2 U157 ( .A(temp[16]), .B(N274), .Z(n96) );
  GTECH_NAND2 U158 ( .A(n167), .B(n168), .Z(n95) );
  GTECH_NOT U159 ( .A(data[7]), .Z(n168) );
  GTECH_NAND2 U160 ( .A(data[7]), .B(n167), .Z(n94) );
  GTECH_NAND2 U161 ( .A(n167), .B(n169), .Z(n93) );
  GTECH_NOT U162 ( .A(data[6]), .Z(n169) );
  GTECH_NAND2 U163 ( .A(data[6]), .B(n167), .Z(n92) );
  GTECH_NAND2 U164 ( .A(n167), .B(n170), .Z(n91) );
  GTECH_NOT U165 ( .A(data[5]), .Z(n170) );
  GTECH_NAND2 U166 ( .A(data[5]), .B(n167), .Z(n90) );
  GTECH_NAND2 U167 ( .A(n167), .B(n171), .Z(n89) );
  GTECH_NOT U168 ( .A(data[4]), .Z(n171) );
  GTECH_NAND2 U169 ( .A(data[4]), .B(n167), .Z(n88) );
  GTECH_NAND2 U170 ( .A(n167), .B(n172), .Z(n87) );
  GTECH_NOT U171 ( .A(data[3]), .Z(n172) );
  GTECH_NAND2 U172 ( .A(data[3]), .B(n167), .Z(n86) );
  GTECH_NAND2 U173 ( .A(n167), .B(n173), .Z(n85) );
  GTECH_NOT U174 ( .A(data[2]), .Z(n173) );
  GTECH_NAND2 U175 ( .A(data[2]), .B(n167), .Z(n84) );
  GTECH_NAND2 U176 ( .A(n167), .B(n174), .Z(n83) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n174) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n167), .Z(n82) );
  GTECH_NAND2 U179 ( .A(n167), .B(n175), .Z(n81) );
  GTECH_NOT U180 ( .A(data[0]), .Z(n175) );
  GTECH_NAND2 U181 ( .A(data[0]), .B(n167), .Z(n80) );
  GTECH_NOT U182 ( .A(rst_n), .Z(n167) );
  GTECH_AND2 U183 ( .A(temp[23]), .B(n176), .Z(n103) );
  GTECH_AND2 U184 ( .A(temp[22]), .B(n177), .Z(n102) );
  GTECH_AND2 U185 ( .A(temp[21]), .B(n178), .Z(n101) );
  GTECH_AND2 U186 ( .A(temp[20]), .B(n179), .Z(n100) );
  GTECH_AND4 U187 ( .A(n180), .B(n181), .C(data_valid), .D(n182), .Z(N99) );
  GTECH_NOT U188 ( .A(temp[16]), .Z(n182) );
  GTECH_NOT U189 ( .A(n183), .Z(N69) );
  GTECH_XOR2 U190 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U191 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U192 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U193 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U194 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U195 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U196 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U197 ( .A(n184), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U198 ( .A(n185), .B(n186), .Z(n184) );
  GTECH_XOR2 U199 ( .A(n187), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U200 ( .A(n161), .B(n188), .Z(n187) );
  GTECH_XOR2 U201 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U202 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U203 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U204 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U205 ( .A(n189), .B(n190), .Z(N331) );
  GTECH_OA21 U206 ( .A(n180), .B(temp[19]), .C(n191), .Z(N328) );
  GTECH_AND2 U207 ( .A(n192), .B(n193), .Z(N323) );
  GTECH_OAI21 U208 ( .A(temp[19]), .B(n194), .C(n195), .Z(n192) );
  GTECH_AND2 U209 ( .A(n196), .B(n197), .Z(N316) );
  GTECH_OA21 U210 ( .A(n198), .B(n197), .C(n199), .Z(N307) );
  GTECH_OAI21 U211 ( .A(temp[21]), .B(n166), .C(n165), .Z(n199) );
  GTECH_NAND2 U212 ( .A(n200), .B(n186), .Z(n166) );
  GTECH_OAI21 U213 ( .A(n178), .B(n201), .C(n202), .Z(n197) );
  GTECH_NOT U214 ( .A(n193), .Z(n202) );
  GTECH_OAI21 U215 ( .A(n179), .B(n203), .C(n204), .Z(n193) );
  GTECH_NOT U216 ( .A(n191), .Z(n204) );
  GTECH_OAI21 U217 ( .A(n205), .B(n206), .C(n207), .Z(n191) );
  GTECH_NOT U218 ( .A(n189), .Z(n207) );
  GTECH_OAI21 U219 ( .A(n176), .B(n208), .C(n209), .Z(n189) );
  GTECH_NOT U220 ( .A(N70), .Z(n209) );
  GTECH_OAI21 U221 ( .A(n176), .B(n190), .C(n183), .Z(N70) );
  GTECH_NAND2 U222 ( .A(n210), .B(data_valid), .Z(n183) );
  GTECH_NOT U223 ( .A(n211), .Z(n210) );
  GTECH_AND_NOT U224 ( .A(temp[22]), .B(n177), .Z(n198) );
  GTECH_OAI22 U225 ( .A(n176), .B(n185), .C(n212), .D(n213), .Z(N298) );
  GTECH_NAND2 U226 ( .A(n214), .B(n215), .Z(N287) );
  GTECH_NAND3 U227 ( .A(n154), .B(temp[19]), .C(n216), .Z(n215) );
  GTECH_NAND3 U228 ( .A(n180), .B(n217), .C(n195), .Z(n214) );
  GTECH_AND2 U229 ( .A(n218), .B(n219), .Z(N274) );
  GTECH_OAI21 U230 ( .A(n194), .B(n220), .C(n203), .Z(n219) );
  GTECH_AND3 U231 ( .A(n196), .B(n161), .C(n216), .Z(N261) );
  GTECH_OAI21 U232 ( .A(n160), .B(n194), .C(n201), .Z(n196) );
  GTECH_OA21 U233 ( .A(n221), .B(temp[22]), .C(n216), .Z(N248) );
  GTECH_NOT U234 ( .A(n222), .Z(n216) );
  GTECH_NAND2 U235 ( .A(n159), .B(n217), .Z(n222) );
  GTECH_AND3 U236 ( .A(n200), .B(n201), .C(n180), .Z(n221) );
  GTECH_OAI22 U237 ( .A(n176), .B(n185), .C(n194), .D(n213), .Z(N235) );
  GTECH_NAND4 U238 ( .A(n200), .B(data_valid), .C(n154), .D(n217), .Z(n213) );
  GTECH_AND3 U239 ( .A(n223), .B(n186), .C(n195), .Z(N222) );
  GTECH_OAI21 U240 ( .A(n176), .B(n208), .C(n224), .Z(N209) );
  GTECH_NAND3 U241 ( .A(n223), .B(n188), .C(n195), .Z(n224) );
  GTECH_NOT U242 ( .A(n206), .Z(n195) );
  GTECH_NAND2 U243 ( .A(n218), .B(n203), .Z(n206) );
  GTECH_NOT U244 ( .A(n179), .Z(n218) );
  GTECH_NAND2 U245 ( .A(n165), .B(n201), .Z(n179) );
  GTECH_NOT U246 ( .A(n178), .Z(n165) );
  GTECH_NAND2 U247 ( .A(n159), .B(n161), .Z(n178) );
  GTECH_NOT U248 ( .A(n177), .Z(n159) );
  GTECH_NAND2 U249 ( .A(data_valid), .B(n185), .Z(n177) );
  GTECH_NOT U250 ( .A(n220), .Z(n223) );
  GTECH_NAND2 U251 ( .A(n217), .B(n205), .Z(n220) );
  GTECH_NAND3 U252 ( .A(n211), .B(n190), .C(n225), .Z(n217) );
  GTECH_NOT U253 ( .A(n157), .Z(n225) );
  GTECH_NAND2 U254 ( .A(n226), .B(n208), .Z(n157) );
  GTECH_NOT U255 ( .A(n155), .Z(n226) );
  GTECH_NAND2 U256 ( .A(n227), .B(n154), .Z(n155) );
  GTECH_OA21 U257 ( .A(temp[20]), .B(n205), .C(n185), .Z(n227) );
  GTECH_NAND2 U258 ( .A(n212), .B(n181), .Z(n190) );
  GTECH_NOT U259 ( .A(n228), .Z(n212) );
  GTECH_NAND2 U260 ( .A(temp[17]), .B(n186), .Z(n228) );
  GTECH_NAND3 U261 ( .A(n180), .B(n181), .C(temp[16]), .Z(n211) );
  GTECH_NOT U262 ( .A(n194), .Z(n180) );
  GTECH_NAND2 U263 ( .A(n188), .B(n186), .Z(n194) );
  GTECH_NOT U264 ( .A(temp[18]), .Z(n186) );
  GTECH_NOT U265 ( .A(temp[17]), .Z(n188) );
  GTECH_NAND2 U266 ( .A(temp[18]), .B(n181), .Z(n208) );
  GTECH_NOT U267 ( .A(n229), .Z(n181) );
  GTECH_NAND3 U268 ( .A(n154), .B(n185), .C(n200), .Z(n229) );
  GTECH_NOT U269 ( .A(n160), .Z(n200) );
  GTECH_NAND2 U270 ( .A(n205), .B(n203), .Z(n160) );
  GTECH_NOT U271 ( .A(temp[20]), .Z(n203) );
  GTECH_NOT U272 ( .A(temp[19]), .Z(n205) );
  GTECH_NOT U273 ( .A(temp[23]), .Z(n185) );
  GTECH_NOT U274 ( .A(n230), .Z(n154) );
  GTECH_NAND2 U275 ( .A(n201), .B(n161), .Z(n230) );
  GTECH_NOT U276 ( .A(temp[22]), .Z(n161) );
  GTECH_NOT U277 ( .A(temp[21]), .Z(n201) );
  GTECH_NOT U278 ( .A(data_valid), .Z(n176) );
endmodule

