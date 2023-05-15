
module CRC_16_parallel ( clk, rst_n, data, data_valid, crc );
  input [7:0] data;
  output [15:0] crc;
  input clk, rst_n, data_valid;
  wire   N11, N15, N23, N34, N37, N39, N41, N43, N45, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N60, N62, N64, N69, N70, N99, N209, N222,
         N235, N248, N261, N274, N287, N298, N307, N316, N323, N328, N331, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n169, n172, n177, n180,
         n91, n92, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262;
  wire   [23:0] temp;

  GTECH_FJK3S temp_reg_15_ ( .J(n92), .K(n92), .TI(N56), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[15]), .QN(n183) );
  GTECH_FJK3S temp_reg_14_ ( .J(n92), .K(n92), .TI(N55), .TE(N209), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[14]), .QN(n180) );
  GTECH_FJK3S temp_reg_13_ ( .J(n92), .K(n92), .TI(N54), .TE(N222), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[13]), .QN(n177) );
  GTECH_FJK3S temp_reg_12_ ( .J(n92), .K(n92), .TI(N53), .TE(N235), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[12]), .QN(N53) );
  GTECH_FJK3S temp_reg_11_ ( .J(n92), .K(n92), .TI(N52), .TE(N248), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[11]), .QN(n172) );
  GTECH_FJK3S temp_reg_10_ ( .J(n92), .K(n92), .TI(N51), .TE(N261), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[10]), .QN(n169) );
  GTECH_FJK3S temp_reg_9_ ( .J(n92), .K(n92), .TI(N50), .TE(N274), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[9]) );
  GTECH_FJK3S temp_reg_8_ ( .J(n92), .K(n92), .TI(N49), .TE(N287), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[8]) );
  GTECH_FJK3S temp_reg_7_ ( .J(n92), .K(n92), .TI(N48), .TE(N298), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[7]) );
  GTECH_FJK3S temp_reg_6_ ( .J(n92), .K(n92), .TI(N47), .TE(N307), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[6]) );
  GTECH_FJK3S temp_reg_5_ ( .J(n92), .K(n92), .TI(N45), .TE(N316), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[5]), .QN(N45) );
  GTECH_FJK3S temp_reg_4_ ( .J(n92), .K(n92), .TI(N43), .TE(N323), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[4]) );
  GTECH_FJK3S temp_reg_3_ ( .J(n92), .K(n92), .TI(N41), .TE(N328), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[3]) );
  GTECH_FJK3S temp_reg_2_ ( .J(n92), .K(n92), .TI(N39), .TE(N331), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[2]) );
  GTECH_FJK3S temp_reg_1_ ( .J(n92), .K(n92), .TI(N37), .TE(N70), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[1]) );
  GTECH_FJK3S temp_reg_0_ ( .J(n92), .K(n92), .TI(N34), .TE(N69), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(temp[0]), .QN(N34) );
  GTECH_FJK3S crc_reg_15_ ( .J(n92), .K(n92), .TI(temp[15]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[15]) );
  GTECH_FJK3S crc_reg_14_ ( .J(n92), .K(n92), .TI(temp[14]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[14]) );
  GTECH_FJK3S crc_reg_13_ ( .J(n92), .K(n92), .TI(temp[13]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[13]) );
  GTECH_FJK3S crc_reg_12_ ( .J(n92), .K(n92), .TI(temp[12]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[12]) );
  GTECH_FJK3S crc_reg_11_ ( .J(n92), .K(n92), .TI(temp[11]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[11]) );
  GTECH_FJK3S crc_reg_10_ ( .J(n92), .K(n92), .TI(temp[10]), .TE(N99), .CP(clk), .CD(rst_n), .SD(n91), .Q(crc[10]) );
  GTECH_FJK3S crc_reg_9_ ( .J(n92), .K(n92), .TI(temp[9]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[9]) );
  GTECH_FJK3S crc_reg_8_ ( .J(n92), .K(n92), .TI(temp[8]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[8]) );
  GTECH_FJK3S crc_reg_7_ ( .J(n92), .K(n92), .TI(temp[7]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[7]) );
  GTECH_FJK3S crc_reg_6_ ( .J(n92), .K(n92), .TI(temp[6]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[6]) );
  GTECH_FJK3S crc_reg_5_ ( .J(n92), .K(n92), .TI(temp[5]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[5]) );
  GTECH_FJK3S crc_reg_4_ ( .J(n92), .K(n92), .TI(temp[4]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[4]) );
  GTECH_FJK3S crc_reg_3_ ( .J(n92), .K(n92), .TI(temp[3]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[3]) );
  GTECH_FJK3S crc_reg_2_ ( .J(n92), .K(n92), .TI(temp[2]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[2]) );
  GTECH_FJK3S crc_reg_1_ ( .J(n92), .K(n92), .TI(temp[1]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[1]) );
  GTECH_FJK3S crc_reg_0_ ( .J(n92), .K(n92), .TI(temp[0]), .TE(N99), .CP(clk), 
        .CD(rst_n), .SD(n91), .Q(crc[0]) );
  GTECH_FD3 temp_reg_23_ ( .D(n90), .CP(clk), .CD(n82), .SD(n81), .Q(temp[23]), 
        .QN(N11) );
  GTECH_FD3 temp_reg_22_ ( .D(n89), .CP(clk), .CD(n80), .SD(n79), .Q(temp[22]), 
        .QN(N15) );
  GTECH_FD3 temp_reg_21_ ( .D(n88), .CP(clk), .CD(n78), .SD(n77), .Q(temp[21])
         );
  GTECH_FD3 temp_reg_20_ ( .D(n87), .CP(clk), .CD(n76), .SD(n75), .Q(temp[20]), 
        .QN(N23) );
  GTECH_FD3 temp_reg_19_ ( .D(n86), .CP(clk), .CD(n74), .SD(n73), .Q(temp[19]), 
        .QN(N64) );
  GTECH_FD3 temp_reg_18_ ( .D(n85), .CP(clk), .CD(n72), .SD(n71), .Q(temp[18]), 
        .QN(N62) );
  GTECH_FD3 temp_reg_17_ ( .D(n84), .CP(clk), .CD(n70), .SD(n69), .Q(temp[17]), 
        .QN(N60) );
  GTECH_FD3 temp_reg_16_ ( .D(n83), .CP(clk), .CD(n68), .SD(n67), .Q(temp[16])
         );
  GTECH_ZERO U179 ( .Z(n92) );
  GTECH_ONE U180 ( .Z(n91) );
  GTECH_AND2 U181 ( .A(temp[23]), .B(n184), .Z(n90) );
  GTECH_AND2 U182 ( .A(temp[22]), .B(n185), .Z(n89) );
  GTECH_AND2 U183 ( .A(temp[21]), .B(n186), .Z(n88) );
  GTECH_AND2 U184 ( .A(temp[20]), .B(n187), .Z(n87) );
  GTECH_XNOR2 U185 ( .A(temp[19]), .B(n188), .Z(n86) );
  GTECH_NAND2 U186 ( .A(n189), .B(data_valid), .Z(n188) );
  GTECH_OA21 U187 ( .A(temp[23]), .B(n190), .C(n191), .Z(n189) );
  GTECH_XNOR2 U188 ( .A(temp[18]), .B(n192), .Z(n85) );
  GTECH_NAND2 U189 ( .A(n193), .B(n194), .Z(n192) );
  GTECH_OA21 U190 ( .A(temp[18]), .B(n191), .C(n195), .Z(n193) );
  GTECH_OAI21 U191 ( .A(temp[21]), .B(n196), .C(n197), .Z(n195) );
  GTECH_MUX2 U192 ( .A(n198), .B(n199), .S(temp[17]), .Z(n84) );
  GTECH_OAI21 U193 ( .A(temp[21]), .B(n200), .C(n201), .Z(n199) );
  GTECH_NOT U194 ( .A(n202), .Z(n200) );
  GTECH_AND2 U195 ( .A(n201), .B(temp[21]), .Z(n198) );
  GTECH_XNOR2 U196 ( .A(temp[16]), .B(n203), .Z(n83) );
  GTECH_NAND2 U197 ( .A(n204), .B(n205), .Z(n82) );
  GTECH_NOT U198 ( .A(data[7]), .Z(n205) );
  GTECH_NAND2 U199 ( .A(data[7]), .B(n204), .Z(n81) );
  GTECH_NAND2 U200 ( .A(n204), .B(n206), .Z(n80) );
  GTECH_NOT U201 ( .A(data[6]), .Z(n206) );
  GTECH_NAND2 U202 ( .A(data[6]), .B(n204), .Z(n79) );
  GTECH_NAND2 U203 ( .A(n204), .B(n207), .Z(n78) );
  GTECH_NOT U204 ( .A(data[5]), .Z(n207) );
  GTECH_NAND2 U205 ( .A(data[5]), .B(n204), .Z(n77) );
  GTECH_NAND2 U206 ( .A(n204), .B(n208), .Z(n76) );
  GTECH_NOT U207 ( .A(data[4]), .Z(n208) );
  GTECH_NAND2 U208 ( .A(data[4]), .B(n204), .Z(n75) );
  GTECH_NAND2 U209 ( .A(n204), .B(n209), .Z(n74) );
  GTECH_NOT U210 ( .A(data[3]), .Z(n209) );
  GTECH_NAND2 U211 ( .A(data[3]), .B(n204), .Z(n73) );
  GTECH_NAND2 U212 ( .A(n204), .B(n210), .Z(n72) );
  GTECH_NOT U213 ( .A(data[2]), .Z(n210) );
  GTECH_NAND2 U214 ( .A(data[2]), .B(n204), .Z(n71) );
  GTECH_NAND2 U215 ( .A(n204), .B(n211), .Z(n70) );
  GTECH_NOT U216 ( .A(data[1]), .Z(n211) );
  GTECH_NAND2 U217 ( .A(data[1]), .B(n204), .Z(n69) );
  GTECH_NAND2 U218 ( .A(n204), .B(n212), .Z(n68) );
  GTECH_NOT U219 ( .A(data[0]), .Z(n212) );
  GTECH_NAND2 U220 ( .A(data[0]), .B(n204), .Z(n67) );
  GTECH_NOT U221 ( .A(rst_n), .Z(n204) );
  GTECH_AND4 U222 ( .A(n213), .B(n214), .C(data_valid), .D(n215), .Z(N99) );
  GTECH_NOT U223 ( .A(temp[16]), .Z(n215) );
  GTECH_NOT U224 ( .A(n216), .Z(N69) );
  GTECH_XNOR2 U225 ( .A(temp[19]), .B(n183), .Z(N56) );
  GTECH_XNOR2 U226 ( .A(temp[18]), .B(n180), .Z(N55) );
  GTECH_XNOR2 U227 ( .A(temp[17]), .B(n177), .Z(N54) );
  GTECH_XNOR2 U228 ( .A(temp[22]), .B(n172), .Z(N52) );
  GTECH_XNOR2 U229 ( .A(temp[21]), .B(n169), .Z(N51) );
  GTECH_XNOR2 U230 ( .A(temp[9]), .B(n217), .Z(N50) );
  GTECH_XNOR2 U231 ( .A(temp[8]), .B(n218), .Z(N49) );
  GTECH_XNOR2 U232 ( .A(temp[7]), .B(n219), .Z(N48) );
  GTECH_AND2 U233 ( .A(n220), .B(n221), .Z(n219) );
  GTECH_XNOR2 U234 ( .A(temp[6]), .B(n222), .Z(N47) );
  GTECH_AND2 U235 ( .A(n197), .B(n223), .Z(n222) );
  GTECH_XNOR2 U236 ( .A(temp[4]), .B(n217), .Z(N43) );
  GTECH_XNOR2 U237 ( .A(temp[3]), .B(n218), .Z(N41) );
  GTECH_XNOR2 U238 ( .A(temp[2]), .B(n221), .Z(N39) );
  GTECH_XNOR2 U239 ( .A(temp[1]), .B(n223), .Z(N37) );
  GTECH_AND2 U240 ( .A(n224), .B(n225), .Z(N331) );
  GTECH_OA21 U241 ( .A(n213), .B(temp[19]), .C(n226), .Z(N328) );
  GTECH_AND2 U242 ( .A(n227), .B(n228), .Z(N323) );
  GTECH_OAI21 U243 ( .A(temp[19]), .B(n229), .C(n230), .Z(n228) );
  GTECH_OAI21 U244 ( .A(n217), .B(n187), .C(n231), .Z(n227) );
  GTECH_AND2 U245 ( .A(n232), .B(n233), .Z(N316) );
  GTECH_OA21 U246 ( .A(n234), .B(n233), .C(n235), .Z(N307) );
  GTECH_OAI21 U247 ( .A(temp[21]), .B(n202), .C(n201), .Z(n235) );
  GTECH_NAND2 U248 ( .A(n236), .B(n221), .Z(n202) );
  GTECH_OAI21 U249 ( .A(n237), .B(n186), .C(n231), .Z(n233) );
  GTECH_NOT U250 ( .A(n226), .Z(n231) );
  GTECH_OAI21 U251 ( .A(n218), .B(n238), .C(n239), .Z(n226) );
  GTECH_NOT U252 ( .A(n224), .Z(n239) );
  GTECH_NAND2 U253 ( .A(n240), .B(n241), .Z(n224) );
  GTECH_NOT U254 ( .A(N70), .Z(n241) );
  GTECH_OAI21 U255 ( .A(n184), .B(n225), .C(n216), .Z(N70) );
  GTECH_NAND2 U256 ( .A(n242), .B(data_valid), .Z(n216) );
  GTECH_NOT U257 ( .A(n243), .Z(n242) );
  GTECH_AND_NOT U258 ( .A(temp[22]), .B(n185), .Z(n234) );
  GTECH_OAI22 U259 ( .A(n220), .B(n184), .C(n244), .D(n245), .Z(N298) );
  GTECH_NAND2 U260 ( .A(n246), .B(n247), .Z(N287) );
  GTECH_NAND3 U261 ( .A(n190), .B(temp[19]), .C(n248), .Z(n247) );
  GTECH_NAND3 U262 ( .A(n213), .B(n249), .C(n230), .Z(n246) );
  GTECH_NOT U263 ( .A(n203), .Z(N274) );
  GTECH_NAND2 U264 ( .A(n250), .B(n251), .Z(n203) );
  GTECH_OAI21 U265 ( .A(n229), .B(n252), .C(n217), .Z(n251) );
  GTECH_AND3 U266 ( .A(n232), .B(n197), .C(n248), .Z(N261) );
  GTECH_OAI21 U267 ( .A(n196), .B(n229), .C(n237), .Z(n232) );
  GTECH_OA21 U268 ( .A(n253), .B(temp[22]), .C(n248), .Z(N248) );
  GTECH_NOT U269 ( .A(n254), .Z(n248) );
  GTECH_NAND2 U270 ( .A(n194), .B(n249), .Z(n254) );
  GTECH_AND3 U271 ( .A(n236), .B(n237), .C(n213), .Z(n253) );
  GTECH_OAI22 U272 ( .A(n220), .B(n184), .C(n229), .D(n245), .Z(N235) );
  GTECH_NAND4 U273 ( .A(n236), .B(n190), .C(data_valid), .D(n249), .Z(n245) );
  GTECH_NOT U274 ( .A(data_valid), .Z(n184) );
  GTECH_AND3 U275 ( .A(n255), .B(n221), .C(n230), .Z(N222) );
  GTECH_NAND2 U276 ( .A(n240), .B(n256), .Z(N209) );
  GTECH_NAND3 U277 ( .A(n255), .B(n223), .C(n230), .Z(n256) );
  GTECH_NOT U278 ( .A(n238), .Z(n230) );
  GTECH_NAND2 U279 ( .A(n250), .B(n217), .Z(n238) );
  GTECH_NOT U280 ( .A(n187), .Z(n250) );
  GTECH_NAND2 U281 ( .A(n201), .B(n237), .Z(n187) );
  GTECH_NOT U282 ( .A(n186), .Z(n201) );
  GTECH_NAND2 U283 ( .A(n194), .B(n197), .Z(n186) );
  GTECH_NOT U284 ( .A(n185), .Z(n194) );
  GTECH_NAND2 U285 ( .A(data_valid), .B(n220), .Z(n185) );
  GTECH_NOT U286 ( .A(n252), .Z(n255) );
  GTECH_NAND2 U287 ( .A(n249), .B(n218), .Z(n252) );
  GTECH_NAND3 U288 ( .A(n243), .B(n225), .C(n257), .Z(n249) );
  GTECH_OA21 U289 ( .A(n221), .B(n258), .C(n259), .Z(n257) );
  GTECH_NOT U290 ( .A(n191), .Z(n259) );
  GTECH_NAND2 U291 ( .A(n260), .B(n190), .Z(n191) );
  GTECH_OA21 U292 ( .A(temp[20]), .B(n218), .C(n220), .Z(n260) );
  GTECH_NAND2 U293 ( .A(n214), .B(n244), .Z(n225) );
  GTECH_NOT U294 ( .A(n261), .Z(n244) );
  GTECH_NAND2 U295 ( .A(temp[17]), .B(n221), .Z(n261) );
  GTECH_NAND3 U296 ( .A(n213), .B(n214), .C(temp[16]), .Z(n243) );
  GTECH_NOT U297 ( .A(n229), .Z(n213) );
  GTECH_NAND2 U298 ( .A(n223), .B(n221), .Z(n229) );
  GTECH_NOT U299 ( .A(temp[18]), .Z(n221) );
  GTECH_NOT U300 ( .A(temp[17]), .Z(n223) );
  GTECH_NAND3 U301 ( .A(temp[18]), .B(data_valid), .C(n214), .Z(n240) );
  GTECH_NOT U302 ( .A(n258), .Z(n214) );
  GTECH_NAND3 U303 ( .A(n190), .B(n220), .C(n236), .Z(n258) );
  GTECH_NOT U304 ( .A(n196), .Z(n236) );
  GTECH_NAND2 U305 ( .A(n218), .B(n217), .Z(n196) );
  GTECH_NOT U306 ( .A(temp[20]), .Z(n217) );
  GTECH_NOT U307 ( .A(temp[19]), .Z(n218) );
  GTECH_NOT U308 ( .A(temp[23]), .Z(n220) );
  GTECH_NOT U309 ( .A(n262), .Z(n190) );
  GTECH_NAND2 U310 ( .A(n237), .B(n197), .Z(n262) );
  GTECH_NOT U311 ( .A(temp[22]), .Z(n197) );
  GTECH_NOT U312 ( .A(temp[21]), .Z(n237) );
endmodule

