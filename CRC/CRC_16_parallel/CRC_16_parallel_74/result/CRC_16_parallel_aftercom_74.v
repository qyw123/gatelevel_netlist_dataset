
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n57, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n57), .K(n57), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(n57), .K(n57), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(n57), .K(n57), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(n57), .K(n57), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n57), .K(n57), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(n57), .K(n57), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(n57), .K(n57), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n57), .K(n57), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n57), .K(n57), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n57), .K(n57), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n57), .K(n57), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n57), .K(n57), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n57), .K(n57), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n57), .K(n57), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n57), .K(n57), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n57), .K(n57), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n57), .K(n57), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n57), .K(n57), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n57), .K(n57), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n57), .K(n57), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n57), .K(n57), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n57), .K(n57), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n57), .K(n57), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n57), .K(n57), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n57), .K(n57), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n57), .K(n57), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n57), .K(n57), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n57), .K(n57), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n57), .K(n57), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n57), .K(n57), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n57), .K(n57), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n57), .K(n57), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[0]) );
  GTECH_FJK3 temp_reg_23_ ( .J(n57), .K(n88), .CP(clk), .CD(n87), .SD(n86), 
        .Q(temp[23]), .QN(N11) );
  GTECH_FJK3 temp_reg_22_ ( .J(n57), .K(n85), .CP(clk), .CD(n84), .SD(n83), 
        .Q(temp[22]), .QN(N15) );
  GTECH_FJK3 temp_reg_21_ ( .J(n57), .K(n82), .CP(clk), .CD(n81), .SD(n80), 
        .Q(temp[21]), .QN(N19) );
  GTECH_FJK3 temp_reg_20_ ( .J(n57), .K(n79), .CP(clk), .CD(n78), .SD(n77), 
        .Q(temp[20]), .QN(N23) );
  GTECH_FJK3 temp_reg_19_ ( .J(n76), .K(n75), .CP(clk), .CD(n74), .SD(n73), 
        .Q(temp[19]), .QN(N64) );
  GTECH_FJK3 temp_reg_18_ ( .J(n72), .K(n71), .CP(clk), .CD(n70), .SD(n69), 
        .Q(temp[18]), .QN(N62) );
  GTECH_FJK3 temp_reg_17_ ( .J(n68), .K(n67), .CP(clk), .CD(n66), .SD(n65), 
        .Q(temp[17]), .QN(N60) );
  GTECH_FJK3 temp_reg_16_ ( .J(n64), .K(n63), .CP(clk), .CD(n62), .SD(n61), 
        .Q(temp[16]) );
  GTECH_ZERO U177 ( .Z(n57) );
  GTECH_ONE U178 ( .Z(n89) );
  GTECH_NOT U179 ( .A(n182), .Z(n88) );
  GTECH_NAND2 U180 ( .A(n183), .B(n184), .Z(n87) );
  GTECH_NOT U181 ( .A(data[7]), .Z(n184) );
  GTECH_NAND2 U182 ( .A(data[7]), .B(n183), .Z(n86) );
  GTECH_NAND2 U183 ( .A(n183), .B(n185), .Z(n84) );
  GTECH_NOT U184 ( .A(data[6]), .Z(n185) );
  GTECH_NAND2 U185 ( .A(data[6]), .B(n183), .Z(n83) );
  GTECH_NOT U186 ( .A(n186), .Z(n82) );
  GTECH_NAND2 U187 ( .A(n183), .B(n187), .Z(n81) );
  GTECH_NOT U188 ( .A(data[5]), .Z(n187) );
  GTECH_NAND2 U189 ( .A(data[5]), .B(n183), .Z(n80) );
  GTECH_NAND2 U190 ( .A(n183), .B(n188), .Z(n78) );
  GTECH_NOT U191 ( .A(data[4]), .Z(n188) );
  GTECH_NAND2 U192 ( .A(data[4]), .B(n183), .Z(n77) );
  GTECH_AND3 U193 ( .A(n189), .B(n190), .C(n191), .Z(n76) );
  GTECH_AND3 U194 ( .A(n191), .B(n189), .C(temp[19]), .Z(n75) );
  GTECH_OAI21 U195 ( .A(n192), .B(n193), .C(n182), .Z(n191) );
  GTECH_NAND2 U196 ( .A(n183), .B(n194), .Z(n74) );
  GTECH_NOT U197 ( .A(data[3]), .Z(n194) );
  GTECH_NAND2 U198 ( .A(data[3]), .B(n183), .Z(n73) );
  GTECH_AND2 U199 ( .A(n195), .B(n196), .Z(n72) );
  GTECH_AND2 U200 ( .A(n195), .B(temp[18]), .Z(n71) );
  GTECH_AND2 U201 ( .A(n197), .B(n198), .Z(n195) );
  GTECH_OA21 U202 ( .A(n189), .B(temp[18]), .C(n199), .Z(n197) );
  GTECH_OAI21 U203 ( .A(temp[21]), .B(n200), .C(n201), .Z(n199) );
  GTECH_NAND2 U204 ( .A(n183), .B(n202), .Z(n70) );
  GTECH_NOT U205 ( .A(data[2]), .Z(n202) );
  GTECH_NAND2 U206 ( .A(data[2]), .B(n183), .Z(n69) );
  GTECH_AND2 U207 ( .A(n203), .B(n204), .Z(n68) );
  GTECH_AND2 U208 ( .A(n203), .B(temp[17]), .Z(n67) );
  GTECH_AND2 U209 ( .A(n205), .B(n206), .Z(n203) );
  GTECH_OA21 U210 ( .A(n207), .B(temp[21]), .C(n208), .Z(n205) );
  GTECH_OR_NOT U211 ( .A(n189), .B(n209), .Z(n208) );
  GTECH_NAND2 U212 ( .A(n183), .B(n210), .Z(n66) );
  GTECH_NOT U213 ( .A(data[1]), .Z(n210) );
  GTECH_NAND2 U214 ( .A(data[1]), .B(n183), .Z(n65) );
  GTECH_AND2 U215 ( .A(N274), .B(n211), .Z(n64) );
  GTECH_AND2 U216 ( .A(temp[16]), .B(N274), .Z(n63) );
  GTECH_NAND2 U217 ( .A(n183), .B(n212), .Z(n62) );
  GTECH_NOT U218 ( .A(data[0]), .Z(n212) );
  GTECH_NAND2 U219 ( .A(data[0]), .B(n183), .Z(n61) );
  GTECH_NOT U220 ( .A(rst_n), .Z(n183) );
  GTECH_AND4 U221 ( .A(n213), .B(n214), .C(data_valid), .D(n211), .Z(N99) );
  GTECH_NOT U222 ( .A(temp[16]), .Z(n211) );
  GTECH_NOT U223 ( .A(n215), .Z(N69) );
  GTECH_XOR2 U224 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U225 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U226 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U227 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U228 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U229 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U230 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U231 ( .A(n216), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U232 ( .A(n217), .B(n196), .Z(n216) );
  GTECH_XOR2 U233 ( .A(n218), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U234 ( .A(n201), .B(n204), .Z(n218) );
  GTECH_XOR2 U235 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U236 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U237 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U238 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U239 ( .A(n219), .B(n209), .Z(N331) );
  GTECH_OA21 U240 ( .A(n213), .B(temp[19]), .C(n220), .Z(N328) );
  GTECH_OA21 U241 ( .A(n79), .B(n220), .C(n221), .Z(N323) );
  GTECH_OAI21 U242 ( .A(temp[19]), .B(n222), .C(n223), .Z(n221) );
  GTECH_NOT U243 ( .A(n224), .Z(n79) );
  GTECH_AND2 U244 ( .A(n225), .B(n226), .Z(N316) );
  GTECH_OA22 U245 ( .A(n227), .B(n228), .C(n85), .D(n226), .Z(N307) );
  GTECH_NAND2 U246 ( .A(n229), .B(n186), .Z(n226) );
  GTECH_NAND2 U247 ( .A(temp[21]), .B(n206), .Z(n186) );
  GTECH_NOT U248 ( .A(n220), .Z(n229) );
  GTECH_OAI21 U249 ( .A(n190), .B(n230), .C(n231), .Z(n220) );
  GTECH_NOT U250 ( .A(n219), .Z(n231) );
  GTECH_NAND2 U251 ( .A(n232), .B(n233), .Z(n219) );
  GTECH_NOT U252 ( .A(N70), .Z(n233) );
  GTECH_OAI21 U253 ( .A(n192), .B(n209), .C(n215), .Z(N70) );
  GTECH_NAND2 U254 ( .A(n234), .B(data_valid), .Z(n215) );
  GTECH_NOT U255 ( .A(n235), .Z(n234) );
  GTECH_NOT U256 ( .A(data_valid), .Z(n192) );
  GTECH_NOT U257 ( .A(n236), .Z(n85) );
  GTECH_NAND2 U258 ( .A(temp[22]), .B(n198), .Z(n236) );
  GTECH_AND3 U259 ( .A(n196), .B(n237), .C(n207), .Z(n227) );
  GTECH_OAI21 U260 ( .A(n238), .B(n239), .C(n182), .Z(N298) );
  GTECH_NAND2 U261 ( .A(n240), .B(n241), .Z(N287) );
  GTECH_NAND3 U262 ( .A(n242), .B(temp[19]), .C(n243), .Z(n241) );
  GTECH_NAND3 U263 ( .A(n213), .B(n244), .C(n223), .Z(n240) );
  GTECH_NAND2 U264 ( .A(n224), .B(n245), .Z(N274) );
  GTECH_NAND3 U265 ( .A(n213), .B(n246), .C(n247), .Z(n245) );
  GTECH_NAND2 U266 ( .A(temp[20]), .B(n246), .Z(n224) );
  GTECH_AND3 U267 ( .A(n225), .B(n201), .C(n243), .Z(N261) );
  GTECH_OAI21 U268 ( .A(n200), .B(n222), .C(n237), .Z(n225) );
  GTECH_OA21 U269 ( .A(n248), .B(temp[22]), .C(n243), .Z(N248) );
  GTECH_NOT U270 ( .A(n249), .Z(n243) );
  GTECH_NAND2 U271 ( .A(n198), .B(n244), .Z(n249) );
  GTECH_AND3 U272 ( .A(n207), .B(n237), .C(n213), .Z(n248) );
  GTECH_OAI21 U273 ( .A(n222), .B(n239), .C(n182), .Z(N235) );
  GTECH_NAND2 U274 ( .A(temp[23]), .B(data_valid), .Z(n182) );
  GTECH_NAND4 U275 ( .A(n207), .B(n242), .C(data_valid), .D(n244), .Z(n239) );
  GTECH_AND3 U276 ( .A(n247), .B(n196), .C(n223), .Z(N222) );
  GTECH_NAND2 U277 ( .A(n232), .B(n250), .Z(N209) );
  GTECH_NAND3 U278 ( .A(n247), .B(n204), .C(n223), .Z(n250) );
  GTECH_NOT U279 ( .A(n230), .Z(n223) );
  GTECH_NAND2 U280 ( .A(n246), .B(n251), .Z(n230) );
  GTECH_NOT U281 ( .A(n252), .Z(n246) );
  GTECH_NAND2 U282 ( .A(n206), .B(n237), .Z(n252) );
  GTECH_NOT U283 ( .A(n228), .Z(n206) );
  GTECH_NAND2 U284 ( .A(n198), .B(n201), .Z(n228) );
  GTECH_NOT U285 ( .A(n253), .Z(n198) );
  GTECH_NAND2 U286 ( .A(data_valid), .B(n217), .Z(n253) );
  GTECH_NOT U287 ( .A(n254), .Z(n247) );
  GTECH_NAND2 U288 ( .A(n244), .B(n190), .Z(n254) );
  GTECH_NAND3 U289 ( .A(n235), .B(n209), .C(n255), .Z(n244) );
  GTECH_OA21 U290 ( .A(n196), .B(n256), .C(n257), .Z(n255) );
  GTECH_NOT U291 ( .A(n189), .Z(n257) );
  GTECH_NAND2 U292 ( .A(n258), .B(n242), .Z(n189) );
  GTECH_OA21 U293 ( .A(temp[20]), .B(n190), .C(n217), .Z(n258) );
  GTECH_NAND2 U294 ( .A(n214), .B(n238), .Z(n209) );
  GTECH_NOT U295 ( .A(n259), .Z(n238) );
  GTECH_NAND2 U296 ( .A(temp[17]), .B(n196), .Z(n259) );
  GTECH_NAND3 U297 ( .A(n213), .B(n214), .C(temp[16]), .Z(n235) );
  GTECH_NOT U298 ( .A(n222), .Z(n213) );
  GTECH_NAND2 U299 ( .A(n204), .B(n196), .Z(n222) );
  GTECH_NOT U300 ( .A(temp[18]), .Z(n196) );
  GTECH_NOT U301 ( .A(temp[17]), .Z(n204) );
  GTECH_NAND3 U302 ( .A(temp[18]), .B(data_valid), .C(n214), .Z(n232) );
  GTECH_NOT U303 ( .A(n256), .Z(n214) );
  GTECH_NAND3 U304 ( .A(n242), .B(n217), .C(n207), .Z(n256) );
  GTECH_NOT U305 ( .A(n200), .Z(n207) );
  GTECH_NAND2 U306 ( .A(n190), .B(n251), .Z(n200) );
  GTECH_NOT U307 ( .A(temp[20]), .Z(n251) );
  GTECH_NOT U308 ( .A(temp[19]), .Z(n190) );
  GTECH_NOT U309 ( .A(temp[23]), .Z(n217) );
  GTECH_NOT U310 ( .A(n193), .Z(n242) );
  GTECH_NAND2 U311 ( .A(n237), .B(n201), .Z(n193) );
  GTECH_NOT U312 ( .A(temp[22]), .Z(n201) );
  GTECH_NOT U313 ( .A(temp[21]), .Z(n237) );
endmodule

