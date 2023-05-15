/*************************LFSR实现方法**************************/
module CRC_16_parallel_2(
    input            rst_n,     /*async reset,active low*/
    input            clk,     /*clock input*/
    input     [7:0]  data, /*parallel data input pins */
    input            data_valid, /* data valid,start to generate CRC, active high*/
    output reg[15:0] crc
);
 
integer i;
reg feedback;
reg [15:0] crc_tmp;
/*
*　　sequential process
*/
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n) 
        crc <= 16'b0;          /*触发器中的初始值十分重要 */
    else if(data_valid==1'b0)
        crc <= 16'b0;
    else
        crc <= crc_tmp;
end
/*
*   combination process
*/
always@( data or crc)
begin
    crc_tmp = crc;
    for(i=7; i>=0; i=i-1)
    begin
        feedback    = crc_tmp[15] ^ data[i];
        crc_tmp[15]  = crc_tmp[14];
        crc_tmp[14]  = crc_tmp[13];
        crc_tmp[13]  = crc_tmp[12];
        crc_tmp[12]  = crc_tmp[11] ^ feedback;
        crc_tmp[11]  = crc_tmp[10] ;
        crc_tmp[10]  = crc_tmp[9];
        crc_tmp[9]   = crc_tmp[8];
        crc_tmp[8]   = crc_tmp[7];
        crc_tmp[7]   = crc_tmp[6];
        crc_tmp[6]   = crc_tmp[5];
        crc_tmp[5]   = crc_tmp[4] ^ feedback;
        crc_tmp[4]   = crc_tmp[3];
        crc_tmp[3]   = crc_tmp[2];
        crc_tmp[2]   = crc_tmp[1];
        crc_tmp[1]   = crc_tmp[0];
        crc_tmp[0]   = feedback;
     end
end
endmodule