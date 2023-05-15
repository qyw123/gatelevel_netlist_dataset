
module carry_select_adder8 ( a, b, cin, cout, sum );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;
  wire   n3, n4, n7, n8, n11, n12, n15, n16, n19, n20, n23, n24, n27, n28, n31,
         n32, n35, n36, n39, n40, n43, n44, n47, n48, n51, n52, n55, n56, n59,
         n60, n63, n64, n70, n69, n68, n73, n72, n71, n76, n75, n74, n77, n78,
         n82, n83, n84, n85, n86, n90, n89, n88, n87, n91, n92, n93, n97, n98,
         n99, n100, n101, n105, n104, n103, n102, n106, n107;
  wire   [67:65] n;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  GTECH_NOT first_I_0 ( .A(cin), .Z(n106) );
  SELECT_OP first_C17 ( .DATA1(n101), .DATA2(n100), .CONTROL1(n92), .CONTROL2(
        n93), .Z(n107) );
  GTECH_BUF first_B_1 ( .A(n106), .Z(n93) );
  GTECH_BUF first_B_0 ( .A(cin), .Z(n92) );
  SELECT_OP first_C16 ( .DATA1({n102, n103, n104, n105}), .DATA2({n97, n98, 
        n99, n100}), .CONTROL1(n92), .CONTROL2(n93), .Z(sum[3:0]) );
  GTECH_NOT second_I_0 ( .A(n107), .Z(n91) );
  SELECT_OP second_C17 ( .DATA1(n86), .DATA2(n85), .CONTROL1(n77), .CONTROL2(
        n78), .Z(cout) );
  GTECH_BUF second_B_1 ( .A(n91), .Z(n78) );
  GTECH_BUF second_B_0 ( .A(n107), .Z(n77) );
  SELECT_OP second_C16 ( .DATA1({n87, n88, n89, n90}), .DATA2({n82, n83, n84, 
        n85}), .CONTROL1(n77), .CONTROL2(n78), .Z(sum[7:4]) );
  GTECH_XOR2 first_adder0_first_C8 ( .A(a[0]), .B(b[0]) );
  GTECH_AND2 first_adder0_first_C7 ( .A(a[0]), .B(b[0]) );
  ADD_UNS_OP first_adder0_first_add_11_2 ( .A({n64, n63}), .B(1'b0), .Z({n76, 
        n100}) );
  ADD_UNS_OP first_adder0_first_add_11 ( .A(a[0]), .B(b[0]), .Z({n64, n63}) );
  GTECH_XOR2 first_adder0_genblk1_1__my_adder_C8 ( .A(a[1]), .B(b[1]) );
  GTECH_AND2 first_adder0_genblk1_1__my_adder_C7 ( .A(a[1]), .B(b[1]) );
  ADD_UNS_OP first_adder0_genblk1_1__my_adder_add_11_2 ( .A({n60, n59}), .B(
        n76), .Z({n75, n99}) );
  ADD_UNS_OP first_adder0_genblk1_1__my_adder_add_11 ( .A(a[1]), .B(b[1]), .Z(
        {n60, n59}) );
  GTECH_XOR2 first_adder0_genblk1_2__my_adder_C8 ( .A(a[2]), .B(b[2]) );
  GTECH_AND2 first_adder0_genblk1_2__my_adder_C7 ( .A(a[2]), .B(b[2]) );
  ADD_UNS_OP first_adder0_genblk1_2__my_adder_add_11_2 ( .A({n56, n55}), .B(
        n75), .Z({n74, n98}) );
  ADD_UNS_OP first_adder0_genblk1_2__my_adder_add_11 ( .A(a[2]), .B(b[2]), .Z(
        {n56, n55}) );
  GTECH_XOR2 first_adder0_genblk1_3__my_adder_C8 ( .A(a[3]), .B(b[3]) );
  GTECH_AND2 first_adder0_genblk1_3__my_adder_C7 ( .A(a[3]), .B(b[3]) );
  ADD_UNS_OP first_adder0_genblk1_3__my_adder_add_11_2 ( .A({n52, n51}), .B(
        n74), .Z({SYNOPSYS_UNCONNECTED__0, n97}) );
  ADD_UNS_OP first_adder0_genblk1_3__my_adder_add_11 ( .A(a[3]), .B(b[3]), .Z(
        {n52, n51}) );
  GTECH_XOR2 first_adder1_first_C8 ( .A(a[0]), .B(b[0]) );
  GTECH_AND2 first_adder1_first_C7 ( .A(a[0]), .B(b[0]) );
  ADD_UNS_OP first_adder1_first_add_11_2 ( .A({n48, n47}), .B(1'b1), .Z({n73, 
        n105}) );
  ADD_UNS_OP first_adder1_first_add_11 ( .A(a[0]), .B(b[0]), .Z({n48, n47}) );
  GTECH_XOR2 first_adder1_genblk1_1__my_adder_C8 ( .A(a[1]), .B(b[1]) );
  GTECH_AND2 first_adder1_genblk1_1__my_adder_C7 ( .A(a[1]), .B(b[1]) );
  ADD_UNS_OP first_adder1_genblk1_1__my_adder_add_11_2 ( .A({n44, n43}), .B(
        n73), .Z({n72, n104}) );
  ADD_UNS_OP first_adder1_genblk1_1__my_adder_add_11 ( .A(a[1]), .B(b[1]), .Z(
        {n44, n43}) );
  GTECH_XOR2 first_adder1_genblk1_2__my_adder_C8 ( .A(a[2]), .B(b[2]) );
  GTECH_AND2 first_adder1_genblk1_2__my_adder_C7 ( .A(a[2]), .B(b[2]) );
  ADD_UNS_OP first_adder1_genblk1_2__my_adder_add_11_2 ( .A({n40, n39}), .B(
        n72), .Z({n71, n103}) );
  ADD_UNS_OP first_adder1_genblk1_2__my_adder_add_11 ( .A(a[2]), .B(b[2]), .Z(
        {n40, n39}) );
  GTECH_XOR2 first_adder1_genblk1_3__my_adder_C8 ( .A(a[3]), .B(b[3]) );
  GTECH_AND2 first_adder1_genblk1_3__my_adder_C7 ( .A(a[3]), .B(b[3]) );
  ADD_UNS_OP first_adder1_genblk1_3__my_adder_add_11_2 ( .A({n36, n35}), .B(
        n71), .Z({n101, n102}) );
  ADD_UNS_OP first_adder1_genblk1_3__my_adder_add_11 ( .A(a[3]), .B(b[3]), .Z(
        {n36, n35}) );
  GTECH_XOR2 second_adder0_first_C8 ( .A(a[4]), .B(b[4]) );
  GTECH_AND2 second_adder0_first_C7 ( .A(a[4]), .B(b[4]) );
  ADD_UNS_OP second_adder0_first_add_11_2 ( .A({n32, n31}), .B(1'b0), .Z({n70, 
        n85}) );
  ADD_UNS_OP second_adder0_first_add_11 ( .A(a[4]), .B(b[4]), .Z({n32, n31})
         );
  GTECH_XOR2 second_adder0_genblk1_1__my_adder_C8 ( .A(a[5]), .B(b[5]) );
  GTECH_AND2 second_adder0_genblk1_1__my_adder_C7 ( .A(a[5]), .B(b[5]) );
  ADD_UNS_OP second_adder0_genblk1_1__my_adder_add_11_2 ( .A({n28, n27}), .B(
        n70), .Z({n69, n84}) );
  ADD_UNS_OP second_adder0_genblk1_1__my_adder_add_11 ( .A(a[5]), .B(b[5]), 
        .Z({n28, n27}) );
  GTECH_XOR2 second_adder0_genblk1_2__my_adder_C8 ( .A(a[6]), .B(b[6]) );
  GTECH_AND2 second_adder0_genblk1_2__my_adder_C7 ( .A(a[6]), .B(b[6]) );
  ADD_UNS_OP second_adder0_genblk1_2__my_adder_add_11_2 ( .A({n24, n23}), .B(
        n69), .Z({n68, n83}) );
  ADD_UNS_OP second_adder0_genblk1_2__my_adder_add_11 ( .A(a[6]), .B(b[6]), 
        .Z({n24, n23}) );
  GTECH_XOR2 second_adder0_genblk1_3__my_adder_C8 ( .A(a[7]), .B(b[7]) );
  GTECH_AND2 second_adder0_genblk1_3__my_adder_C7 ( .A(a[7]), .B(b[7]) );
  ADD_UNS_OP second_adder0_genblk1_3__my_adder_add_11_2 ( .A({n20, n19}), .B(
        n68), .Z({SYNOPSYS_UNCONNECTED__1, n82}) );
  ADD_UNS_OP second_adder0_genblk1_3__my_adder_add_11 ( .A(a[7]), .B(b[7]), 
        .Z({n20, n19}) );
  GTECH_XOR2 second_adder1_first_C8 ( .A(a[4]), .B(b[4]) );
  GTECH_AND2 second_adder1_first_C7 ( .A(a[4]), .B(b[4]) );
  ADD_UNS_OP second_adder1_first_add_11_2 ( .A({n16, n15}), .B(1'b1), .Z({
        n[67], n90}) );
  ADD_UNS_OP second_adder1_first_add_11 ( .A(a[4]), .B(b[4]), .Z({n16, n15})
         );
  GTECH_XOR2 second_adder1_genblk1_1__my_adder_C8 ( .A(a[5]), .B(b[5]) );
  GTECH_AND2 second_adder1_genblk1_1__my_adder_C7 ( .A(a[5]), .B(b[5]) );
  ADD_UNS_OP second_adder1_genblk1_1__my_adder_add_11_2 ( .A({n12, n11}), .B(
        n[67]), .Z({n[66], n89}) );
  ADD_UNS_OP second_adder1_genblk1_1__my_adder_add_11 ( .A(a[5]), .B(b[5]), 
        .Z({n12, n11}) );
  GTECH_XOR2 second_adder1_genblk1_2__my_adder_C8 ( .A(a[6]), .B(b[6]) );
  GTECH_AND2 second_adder1_genblk1_2__my_adder_C7 ( .A(a[6]), .B(b[6]) );
  ADD_UNS_OP second_adder1_genblk1_2__my_adder_add_11_2 ( .A({n8, n7}), .B(
        n[66]), .Z({n[65], n88}) );
  ADD_UNS_OP second_adder1_genblk1_2__my_adder_add_11 ( .A(a[6]), .B(b[6]), 
        .Z({n8, n7}) );
  GTECH_XOR2 second_adder1_genblk1_3__my_adder_C8 ( .A(a[7]), .B(b[7]) );
  GTECH_AND2 second_adder1_genblk1_3__my_adder_C7 ( .A(a[7]), .B(b[7]) );
  ADD_UNS_OP second_adder1_genblk1_3__my_adder_add_11_2 ( .A({n4, n3}), .B(
        n[65]), .Z({n86, n87}) );
  ADD_UNS_OP second_adder1_genblk1_3__my_adder_add_11 ( .A(a[7]), .B(b[7]), 
        .Z({n4, n3}) );
endmodule

