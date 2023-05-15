
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N58, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n90), .K(n90), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(n90), .K(n90), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(n90), .K(n90), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(n90), .K(n90), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n90), .K(n90), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(n90), .K(n90), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(n90), .K(n90), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n90), .K(n90), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n90), .K(n90), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n90), .K(n90), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n90), .K(n90), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n90), .K(n90), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n90), .K(n90), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n90), .K(n90), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n90), .K(n90), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n90), .K(n90), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n90), .K(n90), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n90), .K(n90), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n90), .K(n90), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n90), .K(n90), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n90), .K(n90), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n90), .K(n90), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n89), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n90), .K(n90), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n90), .K(n90), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n90), .K(n90), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n90), .K(n90), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n90), .K(n90), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n90), .K(n90), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n90), .K(n90), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n90), .K(n90), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n90), .K(n90), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n90), .K(n90), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n89), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n88), .CP(clk), .CD(n80), .SD(n79), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n87), .CP(clk), .CD(n78), .SD(n77), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n86), .CP(clk), .CD(n76), .SD(n75), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n85), .CP(clk), .CD(n74), .SD(n73), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n84), .CP(clk), .CD(n72), .SD(n71), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n83), .CP(clk), .CD(n70), .SD(n69), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n82), .CP(clk), .CD(n68), .SD(n67), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n81), .CP(clk), .CD(n66), .SD(n65), .Q(temp[16]), 
        .QN(N58) );
  GTECH_ZERO U177 ( .Z(n90) );
  GTECH_ONE U178 ( .Z(n89) );
  GTECH_AND2 U179 ( .A(temp[23]), .B(n182), .Z(n88) );
  GTECH_OA21 U180 ( .A(temp[23]), .B(n182), .C(temp[22]), .Z(n87) );
  GTECH_AND2 U181 ( .A(temp[21]), .B(n183), .Z(n86) );
  GTECH_AND2 U182 ( .A(temp[20]), .B(n184), .Z(n85) );
  GTECH_XOR2 U183 ( .A(temp[19]), .B(n185), .Z(n84) );
  GTECH_AND3 U184 ( .A(n186), .B(n187), .C(data_valid), .Z(n185) );
  GTECH_OAI21 U185 ( .A(temp[22]), .B(temp[21]), .C(n188), .Z(n186) );
  GTECH_XOR2 U186 ( .A(temp[18]), .B(n189), .Z(n83) );
  GTECH_AND3 U187 ( .A(n190), .B(n188), .C(n191), .Z(n189) );
  GTECH_OA21 U188 ( .A(n192), .B(temp[22]), .C(data_valid), .Z(n191) );
  GTECH_MUX2 U189 ( .A(n193), .B(n194), .S(temp[17]), .Z(n82) );
  GTECH_OAI21 U190 ( .A(temp[21]), .B(n195), .C(n196), .Z(n194) );
  GTECH_AND_NOT U191 ( .A(n197), .B(temp[18]), .Z(n195) );
  GTECH_AND2 U192 ( .A(n196), .B(temp[21]), .Z(n193) );
  GTECH_XOR2 U193 ( .A(temp[16]), .B(N274), .Z(n81) );
  GTECH_OR_NOT U194 ( .A(data[7]), .B(n198), .Z(n80) );
  GTECH_OR_NOT U195 ( .A(rst_n), .B(data[7]), .Z(n79) );
  GTECH_OR_NOT U196 ( .A(data[6]), .B(n198), .Z(n78) );
  GTECH_OR_NOT U197 ( .A(rst_n), .B(data[6]), .Z(n77) );
  GTECH_OR_NOT U198 ( .A(data[5]), .B(n198), .Z(n76) );
  GTECH_OR_NOT U199 ( .A(rst_n), .B(data[5]), .Z(n75) );
  GTECH_OR_NOT U200 ( .A(data[4]), .B(n198), .Z(n74) );
  GTECH_OR_NOT U201 ( .A(rst_n), .B(data[4]), .Z(n73) );
  GTECH_OR_NOT U202 ( .A(data[3]), .B(n198), .Z(n72) );
  GTECH_OR_NOT U203 ( .A(rst_n), .B(data[3]), .Z(n71) );
  GTECH_OR_NOT U204 ( .A(data[2]), .B(n198), .Z(n70) );
  GTECH_OR_NOT U205 ( .A(rst_n), .B(data[2]), .Z(n69) );
  GTECH_OR_NOT U206 ( .A(data[1]), .B(n198), .Z(n68) );
  GTECH_OR_NOT U207 ( .A(rst_n), .B(data[1]), .Z(n67) );
  GTECH_OR_NOT U208 ( .A(data[0]), .B(n198), .Z(n66) );
  GTECH_NOT U209 ( .A(rst_n), .Z(n198) );
  GTECH_OR_NOT U210 ( .A(rst_n), .B(data[0]), .Z(n65) );
  GTECH_AND4 U211 ( .A(n199), .B(n200), .C(data_valid), .D(n201), .Z(N99) );
  GTECH_NOT U212 ( .A(temp[16]), .Z(n201) );
  GTECH_NOT U213 ( .A(n202), .Z(N70) );
  GTECH_AND2 U214 ( .A(n203), .B(data_valid), .Z(N69) );
  GTECH_XOR2 U215 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U216 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U217 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U218 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U219 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U220 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U221 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U222 ( .A(n204), .B(temp[7]), .Z(N48) );
  GTECH_OR_NOT U223 ( .A(temp[18]), .B(n188), .Z(n204) );
  GTECH_XOR2 U224 ( .A(n205), .B(temp[6]), .Z(N47) );
  GTECH_OR_NOT U225 ( .A(temp[17]), .B(n206), .Z(n205) );
  GTECH_XOR2 U226 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U227 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U228 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U229 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND2 U230 ( .A(n207), .B(n208), .Z(N331) );
  GTECH_OA21 U231 ( .A(n199), .B(temp[19]), .C(n209), .Z(N328) );
  GTECH_AND2 U232 ( .A(n210), .B(n211), .Z(N323) );
  GTECH_OAI21 U233 ( .A(temp[19]), .B(n212), .C(n213), .Z(n210) );
  GTECH_AND2 U234 ( .A(n214), .B(n215), .Z(N316) );
  GTECH_OA21 U235 ( .A(n216), .B(n214), .C(n217), .Z(N307) );
  GTECH_OAI21 U236 ( .A(temp[18]), .B(n218), .C(n196), .Z(n217) );
  GTECH_OAI21 U237 ( .A(n219), .B(n183), .C(n220), .Z(n214) );
  GTECH_NOT U238 ( .A(n211), .Z(n220) );
  GTECH_OAI21 U239 ( .A(n221), .B(n184), .C(n222), .Z(n211) );
  GTECH_NOT U240 ( .A(n209), .Z(n222) );
  GTECH_OAI21 U241 ( .A(n223), .B(n224), .C(n225), .Z(n209) );
  GTECH_NOT U242 ( .A(n207), .Z(n225) );
  GTECH_OAI21 U243 ( .A(n182), .B(n226), .C(n202), .Z(n207) );
  GTECH_AND3 U244 ( .A(data_valid), .B(n188), .C(temp[22]), .Z(n216) );
  GTECH_OAI22 U245 ( .A(n188), .B(n182), .C(n227), .D(n228), .Z(N298) );
  GTECH_OAI21 U246 ( .A(n212), .B(n229), .C(n230), .Z(N287) );
  GTECH_NAND4 U247 ( .A(temp[19]), .B(n231), .C(n232), .D(n219), .Z(n230) );
  GTECH_AND2 U248 ( .A(n233), .B(n234), .Z(N274) );
  GTECH_AO21 U249 ( .A(n199), .B(n235), .C(temp[20]), .Z(n234) );
  GTECH_AND3 U250 ( .A(n215), .B(n232), .C(n231), .Z(N261) );
  GTECH_OAI21 U251 ( .A(n236), .B(n212), .C(n219), .Z(n215) );
  GTECH_AND3 U252 ( .A(n232), .B(n188), .C(n237), .Z(N248) );
  GTECH_OAI21 U253 ( .A(n218), .B(n212), .C(n206), .Z(n237) );
  GTECH_OAI22 U254 ( .A(n188), .B(n182), .C(n212), .D(n228), .Z(N235) );
  GTECH_NAND3 U255 ( .A(n232), .B(n206), .C(n192), .Z(n228) );
  GTECH_NOT U256 ( .A(temp[23]), .Z(n188) );
  GTECH_NOT U257 ( .A(n229), .Z(N222) );
  GTECH_OAI22 U258 ( .A(temp[17]), .B(n229), .C(n238), .D(n226), .Z(N209) );
  GTECH_NOT U259 ( .A(n232), .Z(n238) );
  GTECH_OAI21 U260 ( .A(n239), .B(n182), .C(n202), .Z(n232) );
  GTECH_OR_NOT U261 ( .A(n240), .B(data_valid), .Z(n202) );
  GTECH_NOT U262 ( .A(n190), .Z(n239) );
  GTECH_OR_NOT U263 ( .A(n241), .B(n242), .Z(n190) );
  GTECH_NOT U264 ( .A(n187), .Z(n242) );
  GTECH_OR_NOT U265 ( .A(n243), .B(n244), .Z(n187) );
  GTECH_OA21 U266 ( .A(temp[20]), .B(n223), .C(n219), .Z(n244) );
  GTECH_NOT U267 ( .A(temp[21]), .Z(n219) );
  GTECH_NOT U268 ( .A(temp[19]), .Z(n223) );
  GTECH_NOT U269 ( .A(n226), .Z(n241) );
  GTECH_OR_NOT U270 ( .A(n245), .B(temp[18]), .Z(n226) );
  GTECH_OR_NOT U271 ( .A(n240), .B(n213), .Z(n229) );
  GTECH_NOT U272 ( .A(n224), .Z(n213) );
  GTECH_OR_NOT U273 ( .A(temp[20]), .B(n233), .Z(n224) );
  GTECH_NOT U274 ( .A(n184), .Z(n233) );
  GTECH_OR_NOT U275 ( .A(temp[21]), .B(n196), .Z(n184) );
  GTECH_NOT U276 ( .A(n183), .Z(n196) );
  GTECH_OR_NOT U277 ( .A(n182), .B(n231), .Z(n183) );
  GTECH_NOT U278 ( .A(n243), .Z(n231) );
  GTECH_NOT U279 ( .A(data_valid), .Z(n182) );
  GTECH_NOT U280 ( .A(n235), .Z(n240) );
  GTECH_OR_NOT U281 ( .A(n203), .B(n208), .Z(n235) );
  GTECH_OR_NOT U282 ( .A(n245), .B(n227), .Z(n208) );
  GTECH_NOT U283 ( .A(n246), .Z(n227) );
  GTECH_OR_NOT U284 ( .A(temp[18]), .B(temp[17]), .Z(n246) );
  GTECH_NOT U285 ( .A(n247), .Z(n203) );
  GTECH_NAND3 U286 ( .A(n199), .B(n200), .C(temp[16]), .Z(n247) );
  GTECH_NOT U287 ( .A(n245), .Z(n200) );
  GTECH_OR_NOT U288 ( .A(n243), .B(n192), .Z(n245) );
  GTECH_NOT U289 ( .A(n218), .Z(n192) );
  GTECH_OR_NOT U290 ( .A(temp[21]), .B(n197), .Z(n218) );
  GTECH_NOT U291 ( .A(n236), .Z(n197) );
  GTECH_OR_NOT U292 ( .A(temp[19]), .B(n221), .Z(n236) );
  GTECH_NOT U293 ( .A(temp[20]), .Z(n221) );
  GTECH_OR_NOT U294 ( .A(temp[23]), .B(n206), .Z(n243) );
  GTECH_NOT U295 ( .A(temp[22]), .Z(n206) );
  GTECH_NOT U296 ( .A(n212), .Z(n199) );
  GTECH_OR_NOT U297 ( .A(temp[18]), .B(n248), .Z(n212) );
  GTECH_NOT U298 ( .A(temp[17]), .Z(n248) );
endmodule

