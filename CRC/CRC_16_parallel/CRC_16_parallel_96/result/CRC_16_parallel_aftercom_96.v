
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224;
  wire   [23:0] temp;

  GTECH_FJK2S temp_reg_15_ ( .J(n99), .K(n99), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[15]) );
  GTECH_FJK2S temp_reg_14_ ( .J(n99), .K(n99), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .Q(temp[14]) );
  GTECH_FJK2S temp_reg_13_ ( .J(n99), .K(n99), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .Q(temp[13]) );
  GTECH_FJK2S temp_reg_12_ ( .J(n99), .K(n99), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .Q(temp[12]), .QN(N53) );
  GTECH_FJK2S temp_reg_11_ ( .J(n99), .K(n99), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .Q(temp[11]) );
  GTECH_FJK2S temp_reg_10_ ( .J(n99), .K(n99), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .Q(temp[10]) );
  GTECH_FJK2S temp_reg_9_ ( .J(n99), .K(n99), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .Q(temp[9]) );
  GTECH_FJK2S temp_reg_8_ ( .J(n99), .K(n99), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .Q(temp[8]) );
  GTECH_FJK2S temp_reg_7_ ( .J(n99), .K(n99), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .Q(temp[7]) );
  GTECH_FJK2S temp_reg_6_ ( .J(n99), .K(n99), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .Q(temp[6]) );
  GTECH_FJK2S temp_reg_5_ ( .J(n99), .K(n99), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .Q(temp[5]), .QN(N45) );
  GTECH_FJK2S temp_reg_4_ ( .J(n99), .K(n99), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .Q(temp[4]) );
  GTECH_FJK2S temp_reg_3_ ( .J(n99), .K(n99), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .Q(temp[3]) );
  GTECH_FJK2S temp_reg_2_ ( .J(n99), .K(n99), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .Q(temp[2]) );
  GTECH_FJK2S temp_reg_1_ ( .J(n99), .K(n99), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .Q(temp[1]) );
  GTECH_FJK2S temp_reg_0_ ( .J(n99), .K(n99), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .Q(temp[0]), .QN(N34) );
  GTECH_FJK2S crc_reg_15_ ( .J(n99), .K(n99), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[15]) );
  GTECH_FJK2S crc_reg_14_ ( .J(n99), .K(n99), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[14]) );
  GTECH_FJK2S crc_reg_13_ ( .J(n99), .K(n99), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[13]) );
  GTECH_FJK2S crc_reg_12_ ( .J(n99), .K(n99), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[12]) );
  GTECH_FJK2S crc_reg_11_ ( .J(n99), .K(n99), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[11]) );
  GTECH_FJK2S crc_reg_10_ ( .J(n99), .K(n99), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .Q(crc[10]) );
  GTECH_FJK2S crc_reg_9_ ( .J(n99), .K(n99), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[9]) );
  GTECH_FJK2S crc_reg_8_ ( .J(n99), .K(n99), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[8]) );
  GTECH_FJK2S crc_reg_7_ ( .J(n99), .K(n99), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[7]) );
  GTECH_FJK2S crc_reg_6_ ( .J(n99), .K(n99), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[6]) );
  GTECH_FJK2S crc_reg_5_ ( .J(n99), .K(n99), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[5]) );
  GTECH_FJK2S crc_reg_4_ ( .J(n99), .K(n99), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[4]) );
  GTECH_FJK2S crc_reg_3_ ( .J(n99), .K(n99), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[3]) );
  GTECH_FJK2S crc_reg_2_ ( .J(n99), .K(n99), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[2]) );
  GTECH_FJK2S crc_reg_1_ ( .J(n99), .K(n99), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[1]) );
  GTECH_FJK2S crc_reg_0_ ( .J(n99), .K(n99), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n98), .CP(clk), .CD(n90), .SD(n89), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n97), .CP(clk), .CD(n88), .SD(n87), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n96), .CP(clk), .CD(n86), .SD(n85), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n95), .CP(clk), .CD(n84), .SD(n83), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n94), .CP(clk), .CD(n82), .SD(n81), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n93), .CP(clk), .CD(n80), .SD(n79), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n92), .CP(clk), .CD(n78), .SD(n77), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n91), .CP(clk), .CD(n76), .SD(n75), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U142 ( .Z(n99) );
  GTECH_AND2 U143 ( .A(temp[23]), .B(n147), .Z(n98) );
  GTECH_OA21 U144 ( .A(temp[23]), .B(n147), .C(temp[22]), .Z(n97) );
  GTECH_AND2 U145 ( .A(temp[21]), .B(n148), .Z(n96) );
  GTECH_AND2 U146 ( .A(temp[20]), .B(n149), .Z(n95) );
  GTECH_XOR2 U147 ( .A(temp[19]), .B(n150), .Z(n94) );
  GTECH_OA21 U148 ( .A(n151), .B(temp[23]), .C(data_valid), .Z(n150) );
  GTECH_XOR2 U149 ( .A(temp[18]), .B(n152), .Z(n93) );
  GTECH_AND2 U150 ( .A(n153), .B(n154), .Z(n152) );
  GTECH_OA21 U151 ( .A(n155), .B(temp[22]), .C(n156), .Z(n153) );
  GTECH_MUX2 U152 ( .A(n157), .B(n158), .S(temp[17]), .Z(n92) );
  GTECH_OAI21 U153 ( .A(temp[21]), .B(n159), .C(n160), .Z(n158) );
  GTECH_AND3 U154 ( .A(n161), .B(temp[21]), .C(n154), .Z(n157) );
  GTECH_NOT U155 ( .A(n162), .Z(n154) );
  GTECH_NAND2 U156 ( .A(data_valid), .B(n163), .Z(n162) );
  GTECH_XOR2 U157 ( .A(N274), .B(temp[16]), .Z(n91) );
  GTECH_NAND2 U158 ( .A(n164), .B(n165), .Z(n90) );
  GTECH_NOT U159 ( .A(data[7]), .Z(n165) );
  GTECH_NAND2 U160 ( .A(data[7]), .B(n164), .Z(n89) );
  GTECH_NAND2 U161 ( .A(n164), .B(n166), .Z(n88) );
  GTECH_NOT U162 ( .A(data[6]), .Z(n166) );
  GTECH_NAND2 U163 ( .A(data[6]), .B(n164), .Z(n87) );
  GTECH_NAND2 U164 ( .A(n164), .B(n167), .Z(n86) );
  GTECH_NOT U165 ( .A(data[5]), .Z(n167) );
  GTECH_NAND2 U166 ( .A(data[5]), .B(n164), .Z(n85) );
  GTECH_NAND2 U167 ( .A(n164), .B(n168), .Z(n84) );
  GTECH_NOT U168 ( .A(data[4]), .Z(n168) );
  GTECH_NAND2 U169 ( .A(data[4]), .B(n164), .Z(n83) );
  GTECH_NAND2 U170 ( .A(n164), .B(n169), .Z(n82) );
  GTECH_NOT U171 ( .A(data[3]), .Z(n169) );
  GTECH_NAND2 U172 ( .A(data[3]), .B(n164), .Z(n81) );
  GTECH_NAND2 U173 ( .A(n164), .B(n170), .Z(n80) );
  GTECH_NOT U174 ( .A(data[2]), .Z(n170) );
  GTECH_NAND2 U175 ( .A(data[2]), .B(n164), .Z(n79) );
  GTECH_NAND2 U176 ( .A(n164), .B(n171), .Z(n78) );
  GTECH_NOT U177 ( .A(data[1]), .Z(n171) );
  GTECH_NAND2 U178 ( .A(data[1]), .B(n164), .Z(n77) );
  GTECH_NAND2 U179 ( .A(n164), .B(n172), .Z(n76) );
  GTECH_NOT U180 ( .A(data[0]), .Z(n172) );
  GTECH_NAND2 U181 ( .A(data[0]), .B(n164), .Z(n75) );
  GTECH_NOT U182 ( .A(rst_n), .Z(n164) );
  GTECH_AND4 U183 ( .A(n173), .B(n174), .C(data_valid), .D(n175), .Z(N99) );
  GTECH_NOT U184 ( .A(n176), .Z(N69) );
  GTECH_XOR2 U185 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U186 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U187 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U188 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U189 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U190 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U191 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U192 ( .A(n177), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U193 ( .A(n156), .B(n178), .Z(n177) );
  GTECH_XOR2 U194 ( .A(n179), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U195 ( .A(n180), .B(n181), .Z(n179) );
  GTECH_XOR2 U196 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U197 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U198 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U199 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U200 ( .A(n182), .B(n183), .Z(N331) );
  GTECH_OA21 U201 ( .A(n173), .B(temp[19]), .C(n184), .Z(N328) );
  GTECH_AND2 U202 ( .A(n185), .B(n186), .Z(N323) );
  GTECH_OAI21 U203 ( .A(temp[19]), .B(n187), .C(n188), .Z(n186) );
  GTECH_AND2 U204 ( .A(n189), .B(n190), .Z(N316) );
  GTECH_OA21 U205 ( .A(n191), .B(n190), .C(n192), .Z(N307) );
  GTECH_OAI21 U206 ( .A(temp[21]), .B(n193), .C(n160), .Z(n192) );
  GTECH_OAI21 U207 ( .A(n155), .B(n148), .C(n194), .Z(n190) );
  GTECH_NOT U208 ( .A(n185), .Z(n194) );
  GTECH_OAI21 U209 ( .A(n188), .B(n149), .C(n195), .Z(n185) );
  GTECH_NOT U210 ( .A(n184), .Z(n195) );
  GTECH_OAI21 U211 ( .A(n147), .B(n196), .C(n197), .Z(n184) );
  GTECH_NOT U212 ( .A(n182), .Z(n197) );
  GTECH_OAI21 U213 ( .A(n147), .B(n198), .C(n199), .Z(n182) );
  GTECH_NOT U214 ( .A(N70), .Z(n199) );
  GTECH_OAI21 U215 ( .A(n147), .B(n183), .C(n176), .Z(N70) );
  GTECH_NAND2 U216 ( .A(n200), .B(data_valid), .Z(n176) );
  GTECH_AND3 U217 ( .A(data_valid), .B(n156), .C(temp[22]), .Z(n191) );
  GTECH_OAI21 U218 ( .A(n156), .B(n147), .C(n201), .Z(N298) );
  GTECH_OR3 U219 ( .A(n202), .B(n203), .C(n204), .Z(n201) );
  GTECH_OAI22 U220 ( .A(n196), .B(n204), .C(n187), .D(n205), .Z(N287) );
  GTECH_OAI21 U221 ( .A(n188), .B(n149), .C(n206), .Z(N274) );
  GTECH_OR3 U222 ( .A(temp[19]), .B(n187), .C(n205), .Z(n206) );
  GTECH_AND3 U223 ( .A(n161), .B(n189), .C(n207), .Z(N261) );
  GTECH_OAI21 U224 ( .A(n208), .B(n187), .C(n155), .Z(n189) );
  GTECH_AND2 U225 ( .A(n209), .B(n207), .Z(N248) );
  GTECH_NOT U226 ( .A(n204), .Z(n207) );
  GTECH_OA21 U227 ( .A(n210), .B(temp[22]), .C(n156), .Z(n209) );
  GTECH_AND3 U228 ( .A(n211), .B(n155), .C(n173), .Z(n210) );
  GTECH_NOT U229 ( .A(n187), .Z(n173) );
  GTECH_OAI21 U230 ( .A(n156), .B(n147), .C(n212), .Z(N235) );
  GTECH_OR3 U231 ( .A(n203), .B(n187), .C(n204), .Z(n212) );
  GTECH_NOT U232 ( .A(data_valid), .Z(n147) );
  GTECH_AND2 U233 ( .A(n159), .B(n213), .Z(N222) );
  GTECH_NOT U234 ( .A(n205), .Z(n213) );
  GTECH_NOT U235 ( .A(n193), .Z(n159) );
  GTECH_NAND2 U236 ( .A(n211), .B(n178), .Z(n193) );
  GTECH_NOT U237 ( .A(n208), .Z(n211) );
  GTECH_OAI21 U238 ( .A(n198), .B(n204), .C(n214), .Z(N209) );
  GTECH_OR3 U239 ( .A(temp[17]), .B(n208), .C(n205), .Z(n214) );
  GTECH_NAND2 U240 ( .A(n215), .B(n216), .Z(n205) );
  GTECH_NOT U241 ( .A(n149), .Z(n215) );
  GTECH_NAND2 U242 ( .A(n160), .B(n155), .Z(n149) );
  GTECH_NOT U243 ( .A(temp[21]), .Z(n155) );
  GTECH_NOT U244 ( .A(n148), .Z(n160) );
  GTECH_NAND2 U245 ( .A(n161), .B(data_valid), .Z(n148) );
  GTECH_NOT U246 ( .A(n217), .Z(n161) );
  GTECH_NAND2 U247 ( .A(data_valid), .B(n216), .Z(n204) );
  GTECH_OR4 U248 ( .A(n200), .B(n163), .C(n218), .D(n151), .Z(n216) );
  GTECH_NOT U249 ( .A(n196), .Z(n151) );
  GTECH_OR4 U250 ( .A(n217), .B(n219), .C(temp[21]), .D(temp[20]), .Z(n196) );
  GTECH_NOT U251 ( .A(n183), .Z(n218) );
  GTECH_NAND2 U252 ( .A(n202), .B(n174), .Z(n183) );
  GTECH_NOT U253 ( .A(n220), .Z(n202) );
  GTECH_NAND2 U254 ( .A(temp[17]), .B(n178), .Z(n220) );
  GTECH_OR3 U255 ( .A(temp[21]), .B(n221), .C(n217), .Z(n163) );
  GTECH_NAND2 U256 ( .A(n156), .B(n180), .Z(n217) );
  GTECH_NOT U257 ( .A(temp[22]), .Z(n180) );
  GTECH_NOT U258 ( .A(n198), .Z(n221) );
  GTECH_NOT U259 ( .A(n222), .Z(n200) );
  GTECH_OR3 U260 ( .A(n223), .B(n187), .C(n175), .Z(n222) );
  GTECH_NOT U261 ( .A(temp[16]), .Z(n175) );
  GTECH_NAND2 U262 ( .A(n181), .B(n178), .Z(n187) );
  GTECH_NOT U263 ( .A(temp[18]), .Z(n178) );
  GTECH_NOT U264 ( .A(temp[17]), .Z(n181) );
  GTECH_NAND2 U265 ( .A(temp[18]), .B(n174), .Z(n198) );
  GTECH_NOT U266 ( .A(n223), .Z(n174) );
  GTECH_NAND2 U267 ( .A(n224), .B(n156), .Z(n223) );
  GTECH_NOT U268 ( .A(temp[23]), .Z(n156) );
  GTECH_NOT U269 ( .A(n203), .Z(n224) );
  GTECH_OR3 U270 ( .A(temp[22]), .B(temp[21]), .C(n208), .Z(n203) );
  GTECH_NAND2 U271 ( .A(n219), .B(n188), .Z(n208) );
  GTECH_NOT U272 ( .A(temp[20]), .Z(n188) );
  GTECH_NOT U273 ( .A(temp[19]), .Z(n219) );
endmodule

