module get_carry(co,ci,a,b);
  input a,b,ci;
  output co;
  and u2(g,a,b);
  or u3(p,a,b);
  and u4(h,p,ci);
  or u5(co,g,h);      
endmodule

module carry_ahead_adder8(sum,co,ci,a,b);
  input [7:0] a,b;
  input ci;
  output [7:0] co,sum;
  //get_all_carry
  get_carry myAdd0(co[0],ci,a[0],b[0]);
  get_carry myAdd1(co[1],co[0],a[1],b[1]);
  get_carry myAdd2(co[2],co[1],a[2],b[2]);
  get_carry myAdd3(co[3],co[2],a[3],b[3]);
  get_carry myAdd4(co[4],co[3],a[4],b[4]);
  get_carry myAdd5(co[5],co[4],a[5],b[5]);
  get_carry myAdd6(co[6],co[5],a[6],b[6]);
  get_carry myAdd7(co[7],co[6],a[7],b[7]);
  //get_result
  xor u6 (sum[0],a[0],b[0],ci);
  xor u7 (sum[1],a[1],b[1],co[0]);
  xor u8 (sum[2],a[2],b[2],co[1]);
  xor u9 (sum[3],a[3],b[3],co[2]);
  xor u10 (sum[4],a[4],b[4],co[3]);
  xor u11 (sum[5],a[5],b[5],co[4]);
  xor u12 (sum[6],a[6],b[6],co[5]);
  xor u13 (sum[7],a[7],b[7],co[6]);
endmodule



