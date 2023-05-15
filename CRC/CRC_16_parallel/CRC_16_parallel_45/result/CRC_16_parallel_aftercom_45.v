
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N19, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209,
         N222, N235, N248, N261, N274, N287, N298, N307, N316, N323, N328,
         N331, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n91), .K(n91), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[15]) );
  GTECH_FJK3S temp_reg_14_ ( .J(n91), .K(n91), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[14]) );
  GTECH_FJK3S temp_reg_13_ ( .J(n91), .K(n91), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[13]) );
  GTECH_FJK3S temp_reg_12_ ( .J(n91), .K(n91), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n91), .K(n91), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[11]) );
  GTECH_FJK3S temp_reg_10_ ( .J(n91), .K(n91), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[10]) );
  GTECH_FJK3S temp_reg_9_ ( .J(n91), .K(n91), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n91), .K(n91), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n91), .K(n91), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n91), .K(n91), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n91), .K(n91), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n91), .K(n91), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n91), .K(n91), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n91), .K(n91), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n91), .K(n91), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n91), .K(n91), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n91), .K(n91), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n91), .K(n91), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n91), .K(n91), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n91), .K(n91), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n91), .K(n91), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n91), .K(n91), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n90), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n91), .K(n91), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n91), .K(n91), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n91), .K(n91), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n91), .K(n91), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n91), .K(n91), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n91), .K(n91), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n91), .K(n91), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n91), .K(n91), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n91), .K(n91), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n91), .K(n91), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n90), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n89), .CP(clk), .CD(n81), .SD(n80), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n88), .CP(clk), .CD(n79), .SD(n78), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n87), .CP(clk), .CD(n77), .SD(n76), .Q(temp[21]), 
        .QN(N19) );
  GTECH_FD3 temp_reg_20_ ( .D(n86), .CP(clk), .CD(n75), .SD(n74), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n85), .CP(clk), .CD(n73), .SD(n72), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n84), .CP(clk), .CD(n71), .SD(n70), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n83), .CP(clk), .CD(n69), .SD(n68), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n82), .CP(clk), .CD(n67), .SD(n66), .Q(temp[16])
         );
  GTECH_ZERO U178 ( .Z(n91) );
  GTECH_ONE U179 ( .Z(n90) );
  GTECH_AND_NOT U180 ( .A(temp[23]), .B(data_valid), .Z(n89) );
  GTECH_AND_NOT U181 ( .A(temp[22]), .B(n183), .Z(n88) );
  GTECH_AND_NOT U182 ( .A(temp[21]), .B(n184), .Z(n87) );
  GTECH_AND_NOT U183 ( .A(temp[20]), .B(n185), .Z(n86) );
  GTECH_XOR2 U184 ( .A(temp[19]), .B(n186), .Z(n85) );
  GTECH_AND_NOT U185 ( .A(n187), .B(n188), .Z(n186) );
  GTECH_OA21 U186 ( .A(n189), .B(temp[23]), .C(n190), .Z(n187) );
  GTECH_XOR2 U187 ( .A(temp[18]), .B(n191), .Z(n84) );
  GTECH_AND3 U188 ( .A(n192), .B(n193), .C(n183), .Z(n191) );
  GTECH_OAI21 U189 ( .A(temp[21]), .B(n194), .C(n195), .Z(n193) );
  GTECH_MUX2 U190 ( .A(n196), .B(n197), .S(temp[17]), .Z(n83) );
  GTECH_OAI21 U191 ( .A(temp[21]), .B(n198), .C(n184), .Z(n197) );
  GTECH_AND_NOT U192 ( .A(n184), .B(n199), .Z(n196) );
  GTECH_XOR2 U193 ( .A(temp[16]), .B(N274), .Z(n82) );
  GTECH_NAND2 U194 ( .A(n200), .B(n201), .Z(n81) );
  GTECH_NOT U195 ( .A(data[7]), .Z(n201) );
  GTECH_NAND2 U196 ( .A(data[7]), .B(n200), .Z(n80) );
  GTECH_NAND2 U197 ( .A(n200), .B(n202), .Z(n79) );
  GTECH_NOT U198 ( .A(data[6]), .Z(n202) );
  GTECH_NAND2 U199 ( .A(data[6]), .B(n200), .Z(n78) );
  GTECH_NAND2 U200 ( .A(n200), .B(n203), .Z(n77) );
  GTECH_NOT U201 ( .A(data[5]), .Z(n203) );
  GTECH_NAND2 U202 ( .A(data[5]), .B(n200), .Z(n76) );
  GTECH_NAND2 U203 ( .A(n200), .B(n204), .Z(n75) );
  GTECH_NOT U204 ( .A(data[4]), .Z(n204) );
  GTECH_NAND2 U205 ( .A(data[4]), .B(n200), .Z(n74) );
  GTECH_NAND2 U206 ( .A(n200), .B(n205), .Z(n73) );
  GTECH_NOT U207 ( .A(data[3]), .Z(n205) );
  GTECH_NAND2 U208 ( .A(data[3]), .B(n200), .Z(n72) );
  GTECH_NAND2 U209 ( .A(n200), .B(n206), .Z(n71) );
  GTECH_NOT U210 ( .A(data[2]), .Z(n206) );
  GTECH_NAND2 U211 ( .A(data[2]), .B(n200), .Z(n70) );
  GTECH_NAND2 U212 ( .A(n200), .B(n207), .Z(n69) );
  GTECH_NOT U213 ( .A(data[1]), .Z(n207) );
  GTECH_NAND2 U214 ( .A(data[1]), .B(n200), .Z(n68) );
  GTECH_NAND2 U215 ( .A(n200), .B(n208), .Z(n67) );
  GTECH_NOT U216 ( .A(data[0]), .Z(n208) );
  GTECH_NAND2 U217 ( .A(data[0]), .B(n200), .Z(n66) );
  GTECH_NOT U218 ( .A(rst_n), .Z(n200) );
  GTECH_AND4 U219 ( .A(n209), .B(n210), .C(data_valid), .D(n211), .Z(N99) );
  GTECH_NOT U220 ( .A(temp[16]), .Z(n211) );
  GTECH_NOT U221 ( .A(n212), .Z(N69) );
  GTECH_XOR2 U222 ( .A(temp[19]), .B(temp[15]), .Z(N56) );
  GTECH_XOR2 U223 ( .A(temp[18]), .B(temp[14]), .Z(N55) );
  GTECH_XOR2 U224 ( .A(temp[17]), .B(temp[13]), .Z(N54) );
  GTECH_XOR2 U225 ( .A(temp[22]), .B(temp[11]), .Z(N52) );
  GTECH_XOR2 U226 ( .A(temp[21]), .B(temp[10]), .Z(N51) );
  GTECH_XOR2 U227 ( .A(temp[9]), .B(temp[20]), .Z(N50) );
  GTECH_XOR2 U228 ( .A(temp[8]), .B(temp[19]), .Z(N49) );
  GTECH_XOR2 U229 ( .A(n213), .B(temp[7]), .Z(N48) );
  GTECH_NAND2 U230 ( .A(n214), .B(n215), .Z(n213) );
  GTECH_XOR2 U231 ( .A(n216), .B(temp[6]), .Z(N47) );
  GTECH_NAND2 U232 ( .A(n195), .B(n217), .Z(n216) );
  GTECH_XOR2 U233 ( .A(temp[4]), .B(temp[20]), .Z(N43) );
  GTECH_XOR2 U234 ( .A(temp[3]), .B(temp[19]), .Z(N41) );
  GTECH_XOR2 U235 ( .A(temp[2]), .B(temp[18]), .Z(N39) );
  GTECH_XOR2 U236 ( .A(temp[1]), .B(temp[17]), .Z(N37) );
  GTECH_AND_NOT U237 ( .A(n218), .B(n219), .Z(N331) );
  GTECH_NOT U238 ( .A(n220), .Z(n219) );
  GTECH_OA21 U239 ( .A(n209), .B(temp[19]), .C(n221), .Z(N328) );
  GTECH_OA21 U240 ( .A(n222), .B(n223), .C(n224), .Z(N323) );
  GTECH_AND_NOT U241 ( .A(n209), .B(temp[19]), .Z(n222) );
  GTECH_AND_NOT U242 ( .A(n225), .B(n226), .Z(N316) );
  GTECH_NOT U243 ( .A(n227), .Z(n226) );
  GTECH_OA22 U244 ( .A(n228), .B(n225), .C(n229), .D(n230), .Z(N307) );
  GTECH_AND_NOT U245 ( .A(n198), .B(temp[21]), .Z(n230) );
  GTECH_NOT U246 ( .A(n231), .Z(n198) );
  GTECH_NAND2 U247 ( .A(n232), .B(n215), .Z(n231) );
  GTECH_OAI21 U248 ( .A(n199), .B(n229), .C(n233), .Z(n225) );
  GTECH_NOT U249 ( .A(n224), .Z(n233) );
  GTECH_OAI21 U250 ( .A(n234), .B(n235), .C(n236), .Z(n224) );
  GTECH_NOT U251 ( .A(n221), .Z(n236) );
  GTECH_OAI21 U252 ( .A(n237), .B(n223), .C(n238), .Z(n221) );
  GTECH_NOT U253 ( .A(n218), .Z(n238) );
  GTECH_NAND2 U254 ( .A(n239), .B(n240), .Z(n218) );
  GTECH_NOT U255 ( .A(N70), .Z(n240) );
  GTECH_OAI21 U256 ( .A(n188), .B(n220), .C(n212), .Z(N70) );
  GTECH_NAND2 U257 ( .A(n241), .B(data_valid), .Z(n212) );
  GTECH_NOT U258 ( .A(n242), .Z(n241) );
  GTECH_AND_NOT U259 ( .A(temp[22]), .B(n243), .Z(n228) );
  GTECH_OAI22 U260 ( .A(n214), .B(n188), .C(n244), .D(n245), .Z(N298) );
  GTECH_NAND2 U261 ( .A(n246), .B(n247), .Z(N287) );
  GTECH_NAND3 U262 ( .A(n189), .B(temp[19]), .C(n248), .Z(n247) );
  GTECH_NAND3 U263 ( .A(n209), .B(n249), .C(n250), .Z(n246) );
  GTECH_OA21 U264 ( .A(n251), .B(temp[20]), .C(n185), .Z(N274) );
  GTECH_NOR2 U265 ( .A(n252), .B(n253), .Z(n251) );
  GTECH_AND3 U266 ( .A(n227), .B(n195), .C(n248), .Z(N261) );
  GTECH_OAI21 U267 ( .A(n194), .B(n252), .C(n199), .Z(n227) );
  GTECH_OA21 U268 ( .A(n254), .B(temp[22]), .C(n248), .Z(N248) );
  GTECH_NOT U269 ( .A(n255), .Z(n248) );
  GTECH_NAND2 U270 ( .A(n183), .B(n249), .Z(n255) );
  GTECH_AND3 U271 ( .A(n232), .B(n199), .C(n209), .Z(n254) );
  GTECH_OAI22 U272 ( .A(n214), .B(n188), .C(n252), .D(n245), .Z(N235) );
  GTECH_NAND4 U273 ( .A(n232), .B(n189), .C(data_valid), .D(n249), .Z(n245) );
  GTECH_NOT U274 ( .A(data_valid), .Z(n188) );
  GTECH_AND3 U275 ( .A(n256), .B(n215), .C(n250), .Z(N222) );
  GTECH_NAND2 U276 ( .A(n239), .B(n257), .Z(N209) );
  GTECH_NAND3 U277 ( .A(n256), .B(n217), .C(n250), .Z(n257) );
  GTECH_NOT U278 ( .A(n223), .Z(n250) );
  GTECH_NAND2 U279 ( .A(n185), .B(n234), .Z(n223) );
  GTECH_NOT U280 ( .A(n235), .Z(n185) );
  GTECH_NAND2 U281 ( .A(n184), .B(n199), .Z(n235) );
  GTECH_NOT U282 ( .A(n229), .Z(n184) );
  GTECH_NAND2 U283 ( .A(n183), .B(n195), .Z(n229) );
  GTECH_NOT U284 ( .A(n243), .Z(n183) );
  GTECH_NAND2 U285 ( .A(data_valid), .B(n214), .Z(n243) );
  GTECH_NOT U286 ( .A(n253), .Z(n256) );
  GTECH_NAND2 U287 ( .A(n249), .B(n237), .Z(n253) );
  GTECH_NAND3 U288 ( .A(n242), .B(n220), .C(n258), .Z(n249) );
  GTECH_NOT U289 ( .A(n192), .Z(n258) );
  GTECH_OAI21 U290 ( .A(n259), .B(n215), .C(n260), .Z(n192) );
  GTECH_NOT U291 ( .A(n190), .Z(n260) );
  GTECH_NAND2 U292 ( .A(n261), .B(n189), .Z(n190) );
  GTECH_OA21 U293 ( .A(temp[20]), .B(n237), .C(n214), .Z(n261) );
  GTECH_NAND2 U294 ( .A(n244), .B(n210), .Z(n220) );
  GTECH_NOT U295 ( .A(n262), .Z(n244) );
  GTECH_NAND2 U296 ( .A(temp[17]), .B(n215), .Z(n262) );
  GTECH_NAND3 U297 ( .A(n209), .B(n210), .C(temp[16]), .Z(n242) );
  GTECH_NOT U298 ( .A(n252), .Z(n209) );
  GTECH_NAND2 U299 ( .A(n217), .B(n215), .Z(n252) );
  GTECH_NOT U300 ( .A(temp[18]), .Z(n215) );
  GTECH_NOT U301 ( .A(temp[17]), .Z(n217) );
  GTECH_NAND3 U302 ( .A(n210), .B(data_valid), .C(temp[18]), .Z(n239) );
  GTECH_NOT U303 ( .A(n259), .Z(n210) );
  GTECH_NAND3 U304 ( .A(n189), .B(n214), .C(n232), .Z(n259) );
  GTECH_NOT U305 ( .A(n194), .Z(n232) );
  GTECH_NAND2 U306 ( .A(n237), .B(n234), .Z(n194) );
  GTECH_NOT U307 ( .A(temp[20]), .Z(n234) );
  GTECH_NOT U308 ( .A(temp[19]), .Z(n237) );
  GTECH_NOT U309 ( .A(temp[23]), .Z(n214) );
  GTECH_NOT U310 ( .A(n263), .Z(n189) );
  GTECH_NAND2 U311 ( .A(n199), .B(n195), .Z(n263) );
  GTECH_NOT U312 ( .A(temp[22]), .Z(n195) );
  GTECH_NOT U313 ( .A(temp[21]), .Z(n199) );
endmodule

