
module shifter32 ( data_in, clk, reset_n, control, data_out );
  input [31:0] data_in;
  input [1:0] control;
  output [31:0] data_out;
  input clk, reset_n;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, n69, n70, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231;

  GTECH_FJK3S data_out_reg_31_ ( .J(n70), .K(n70), .TI(N39), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[31]) );
  GTECH_FJK3S data_out_reg_30_ ( .J(n70), .K(n70), .TI(N38), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[30]) );
  GTECH_FJK3S data_out_reg_29_ ( .J(n70), .K(n70), .TI(N37), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[29]) );
  GTECH_FJK3S data_out_reg_28_ ( .J(n70), .K(n70), .TI(N36), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[28]) );
  GTECH_FJK3S data_out_reg_27_ ( .J(n70), .K(n70), .TI(N35), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[27]) );
  GTECH_FJK3S data_out_reg_26_ ( .J(n70), .K(n70), .TI(N34), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[26]) );
  GTECH_FJK3S data_out_reg_25_ ( .J(n70), .K(n70), .TI(N33), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[25]) );
  GTECH_FJK3S data_out_reg_24_ ( .J(n70), .K(n70), .TI(N32), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[24]) );
  GTECH_FJK3S data_out_reg_23_ ( .J(n70), .K(n70), .TI(N31), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[23]) );
  GTECH_FJK3S data_out_reg_22_ ( .J(n70), .K(n70), .TI(N30), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[22]) );
  GTECH_FJK3S data_out_reg_21_ ( .J(n70), .K(n70), .TI(N29), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[21]) );
  GTECH_FJK3S data_out_reg_20_ ( .J(n70), .K(n70), .TI(N28), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[20]) );
  GTECH_FJK3S data_out_reg_19_ ( .J(n70), .K(n70), .TI(N27), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[19]) );
  GTECH_FJK3S data_out_reg_18_ ( .J(n70), .K(n70), .TI(N26), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[18]) );
  GTECH_FJK3S data_out_reg_17_ ( .J(n70), .K(n70), .TI(N25), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[17]) );
  GTECH_FJK3S data_out_reg_16_ ( .J(n70), .K(n70), .TI(N24), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[16]) );
  GTECH_FJK3S data_out_reg_15_ ( .J(n70), .K(n70), .TI(N23), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[15]) );
  GTECH_FJK3S data_out_reg_14_ ( .J(n70), .K(n70), .TI(N22), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[14]) );
  GTECH_FJK3S data_out_reg_13_ ( .J(n70), .K(n70), .TI(N21), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[13]) );
  GTECH_FJK3S data_out_reg_12_ ( .J(n70), .K(n70), .TI(N20), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[12]) );
  GTECH_FJK3S data_out_reg_11_ ( .J(n70), .K(n70), .TI(N19), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[11]) );
  GTECH_FJK3S data_out_reg_10_ ( .J(n70), .K(n70), .TI(N18), .TE(N40), .CP(clk), .CD(reset_n), .SD(n69), .Q(data_out[10]) );
  GTECH_FJK3S data_out_reg_9_ ( .J(n70), .K(n70), .TI(N17), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[9]) );
  GTECH_FJK3S data_out_reg_8_ ( .J(n70), .K(n70), .TI(N16), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[8]) );
  GTECH_FJK3S data_out_reg_7_ ( .J(n70), .K(n70), .TI(N15), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[7]) );
  GTECH_FJK3S data_out_reg_6_ ( .J(n70), .K(n70), .TI(N14), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[6]) );
  GTECH_FJK3S data_out_reg_5_ ( .J(n70), .K(n70), .TI(N13), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[5]) );
  GTECH_FJK3S data_out_reg_4_ ( .J(n70), .K(n70), .TI(N12), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[4]) );
  GTECH_FJK3S data_out_reg_3_ ( .J(n70), .K(n70), .TI(N11), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[3]) );
  GTECH_FJK3S data_out_reg_2_ ( .J(n70), .K(n70), .TI(N10), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[2]) );
  GTECH_FJK3S data_out_reg_1_ ( .J(n70), .K(n70), .TI(N9), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[1]) );
  GTECH_FJK3S data_out_reg_0_ ( .J(n70), .K(n70), .TI(N8), .TE(N40), .CP(clk), 
        .CD(reset_n), .SD(n69), .Q(data_out[0]) );
  GTECH_ZERO U166 ( .Z(n70) );
  GTECH_ONE U167 ( .Z(n69) );
  GTECH_OAI21 U168 ( .A(n165), .B(n166), .C(n167), .Z(N9) );
  GTECH_OA22 U169 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(n167) );
  GTECH_OAI22 U170 ( .A(n169), .B(n170), .C(n168), .D(n166), .Z(N8) );
  GTECH_NOT U171 ( .A(data_in[0]), .Z(n166) );
  GTECH_NAND2 U172 ( .A(n172), .B(n173), .Z(N40) );
  GTECH_OAI22 U173 ( .A(n165), .B(n174), .C(n168), .D(n175), .Z(N39) );
  GTECH_OAI21 U174 ( .A(n165), .B(n176), .C(n177), .Z(N38) );
  GTECH_OA22 U175 ( .A(n168), .B(n174), .C(n170), .D(n175), .Z(n177) );
  GTECH_NOT U176 ( .A(data_in[31]), .Z(n175) );
  GTECH_OAI21 U177 ( .A(n165), .B(n178), .C(n179), .Z(N37) );
  GTECH_OA22 U178 ( .A(n168), .B(n176), .C(n170), .D(n174), .Z(n179) );
  GTECH_NOT U179 ( .A(data_in[30]), .Z(n174) );
  GTECH_OAI21 U180 ( .A(n165), .B(n180), .C(n181), .Z(N36) );
  GTECH_OA22 U181 ( .A(n168), .B(n178), .C(n170), .D(n176), .Z(n181) );
  GTECH_NOT U182 ( .A(data_in[29]), .Z(n176) );
  GTECH_OAI21 U183 ( .A(n165), .B(n182), .C(n183), .Z(N35) );
  GTECH_OA22 U184 ( .A(n168), .B(n180), .C(n170), .D(n178), .Z(n183) );
  GTECH_NOT U185 ( .A(data_in[28]), .Z(n178) );
  GTECH_OAI21 U186 ( .A(n165), .B(n184), .C(n185), .Z(N34) );
  GTECH_OA22 U187 ( .A(n168), .B(n182), .C(n170), .D(n180), .Z(n185) );
  GTECH_NOT U188 ( .A(data_in[27]), .Z(n180) );
  GTECH_OAI21 U189 ( .A(n165), .B(n186), .C(n187), .Z(N33) );
  GTECH_OA22 U190 ( .A(n168), .B(n184), .C(n170), .D(n182), .Z(n187) );
  GTECH_NOT U191 ( .A(data_in[26]), .Z(n182) );
  GTECH_OAI21 U192 ( .A(n165), .B(n188), .C(n189), .Z(N32) );
  GTECH_OA22 U193 ( .A(n168), .B(n186), .C(n170), .D(n184), .Z(n189) );
  GTECH_NOT U194 ( .A(data_in[25]), .Z(n184) );
  GTECH_OAI21 U195 ( .A(n165), .B(n190), .C(n191), .Z(N31) );
  GTECH_OA22 U196 ( .A(n168), .B(n188), .C(n170), .D(n186), .Z(n191) );
  GTECH_NOT U197 ( .A(data_in[24]), .Z(n186) );
  GTECH_OAI21 U198 ( .A(n165), .B(n192), .C(n193), .Z(N30) );
  GTECH_OA22 U199 ( .A(n168), .B(n190), .C(n170), .D(n188), .Z(n193) );
  GTECH_NOT U200 ( .A(data_in[23]), .Z(n188) );
  GTECH_OAI21 U201 ( .A(n165), .B(n194), .C(n195), .Z(N29) );
  GTECH_OA22 U202 ( .A(n168), .B(n192), .C(n170), .D(n190), .Z(n195) );
  GTECH_NOT U203 ( .A(data_in[22]), .Z(n190) );
  GTECH_OAI21 U204 ( .A(n165), .B(n196), .C(n197), .Z(N28) );
  GTECH_OA22 U205 ( .A(n168), .B(n194), .C(n170), .D(n192), .Z(n197) );
  GTECH_NOT U206 ( .A(data_in[21]), .Z(n192) );
  GTECH_OAI21 U207 ( .A(n165), .B(n198), .C(n199), .Z(N27) );
  GTECH_OA22 U208 ( .A(n168), .B(n196), .C(n170), .D(n194), .Z(n199) );
  GTECH_NOT U209 ( .A(data_in[20]), .Z(n194) );
  GTECH_OAI21 U210 ( .A(n165), .B(n200), .C(n201), .Z(N26) );
  GTECH_OA22 U211 ( .A(n168), .B(n198), .C(n170), .D(n196), .Z(n201) );
  GTECH_NOT U212 ( .A(data_in[19]), .Z(n196) );
  GTECH_OAI21 U213 ( .A(n165), .B(n202), .C(n203), .Z(N25) );
  GTECH_OA22 U214 ( .A(n168), .B(n200), .C(n170), .D(n198), .Z(n203) );
  GTECH_NOT U215 ( .A(data_in[18]), .Z(n198) );
  GTECH_OAI21 U216 ( .A(n165), .B(n204), .C(n205), .Z(N24) );
  GTECH_OA22 U217 ( .A(n168), .B(n202), .C(n170), .D(n200), .Z(n205) );
  GTECH_NOT U218 ( .A(data_in[17]), .Z(n200) );
  GTECH_OAI21 U219 ( .A(n165), .B(n206), .C(n207), .Z(N23) );
  GTECH_OA22 U220 ( .A(n168), .B(n204), .C(n170), .D(n202), .Z(n207) );
  GTECH_NOT U221 ( .A(data_in[16]), .Z(n202) );
  GTECH_OAI21 U222 ( .A(n165), .B(n208), .C(n209), .Z(N22) );
  GTECH_OA22 U223 ( .A(n168), .B(n206), .C(n170), .D(n204), .Z(n209) );
  GTECH_NOT U224 ( .A(data_in[15]), .Z(n204) );
  GTECH_OAI21 U225 ( .A(n165), .B(n210), .C(n211), .Z(N21) );
  GTECH_OA22 U226 ( .A(n168), .B(n208), .C(n170), .D(n206), .Z(n211) );
  GTECH_NOT U227 ( .A(data_in[14]), .Z(n206) );
  GTECH_OAI21 U228 ( .A(n165), .B(n212), .C(n213), .Z(N20) );
  GTECH_OA22 U229 ( .A(n168), .B(n210), .C(n170), .D(n208), .Z(n213) );
  GTECH_NOT U230 ( .A(data_in[13]), .Z(n208) );
  GTECH_OAI21 U231 ( .A(n165), .B(n214), .C(n215), .Z(N19) );
  GTECH_OA22 U232 ( .A(n168), .B(n212), .C(n170), .D(n210), .Z(n215) );
  GTECH_NOT U233 ( .A(data_in[12]), .Z(n210) );
  GTECH_OAI21 U234 ( .A(n165), .B(n216), .C(n217), .Z(N18) );
  GTECH_OA22 U235 ( .A(n168), .B(n214), .C(n170), .D(n212), .Z(n217) );
  GTECH_NOT U236 ( .A(data_in[11]), .Z(n212) );
  GTECH_OAI21 U237 ( .A(n165), .B(n218), .C(n219), .Z(N17) );
  GTECH_OA22 U238 ( .A(n168), .B(n216), .C(n170), .D(n214), .Z(n219) );
  GTECH_NOT U239 ( .A(data_in[10]), .Z(n214) );
  GTECH_OAI21 U240 ( .A(n165), .B(n220), .C(n221), .Z(N16) );
  GTECH_OA22 U241 ( .A(n168), .B(n218), .C(n170), .D(n216), .Z(n221) );
  GTECH_NOT U242 ( .A(data_in[9]), .Z(n216) );
  GTECH_OAI21 U243 ( .A(n165), .B(n222), .C(n223), .Z(N15) );
  GTECH_OA22 U244 ( .A(n168), .B(n220), .C(n170), .D(n218), .Z(n223) );
  GTECH_NOT U245 ( .A(data_in[8]), .Z(n218) );
  GTECH_OAI21 U246 ( .A(n165), .B(n224), .C(n225), .Z(N14) );
  GTECH_OA22 U247 ( .A(n168), .B(n222), .C(n170), .D(n220), .Z(n225) );
  GTECH_NOT U248 ( .A(data_in[7]), .Z(n220) );
  GTECH_OAI21 U249 ( .A(n165), .B(n226), .C(n227), .Z(N13) );
  GTECH_OA22 U250 ( .A(n168), .B(n224), .C(n170), .D(n222), .Z(n227) );
  GTECH_NOT U251 ( .A(data_in[6]), .Z(n222) );
  GTECH_OAI21 U252 ( .A(n165), .B(n228), .C(n229), .Z(N12) );
  GTECH_OA22 U253 ( .A(n168), .B(n226), .C(n170), .D(n224), .Z(n229) );
  GTECH_NOT U254 ( .A(data_in[5]), .Z(n224) );
  GTECH_OAI21 U255 ( .A(n171), .B(n165), .C(n230), .Z(N11) );
  GTECH_OA22 U256 ( .A(n168), .B(n228), .C(n170), .D(n226), .Z(n230) );
  GTECH_NOT U257 ( .A(data_in[4]), .Z(n226) );
  GTECH_OAI21 U258 ( .A(n169), .B(n165), .C(n231), .Z(N10) );
  GTECH_OA22 U259 ( .A(n168), .B(n171), .C(n170), .D(n228), .Z(n231) );
  GTECH_NOT U260 ( .A(data_in[3]), .Z(n228) );
  GTECH_NAND2 U261 ( .A(control[1]), .B(n173), .Z(n170) );
  GTECH_NOT U262 ( .A(control[0]), .Z(n173) );
  GTECH_NOT U263 ( .A(data_in[2]), .Z(n171) );
  GTECH_NAND2 U264 ( .A(control[1]), .B(control[0]), .Z(n168) );
  GTECH_NAND2 U265 ( .A(control[0]), .B(n172), .Z(n165) );
  GTECH_NOT U266 ( .A(control[1]), .Z(n172) );
  GTECH_NOT U267 ( .A(data_in[1]), .Z(n169) );
endmodule

