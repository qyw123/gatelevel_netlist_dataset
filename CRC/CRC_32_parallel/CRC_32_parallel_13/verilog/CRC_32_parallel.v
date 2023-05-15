module CRC_32_parallel (
  input clk,
  input rst_n,
  input [7:0] data_in,
  input [31:0] code_in,
  output reg [31:0] crc32_gen
);

  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      crc32_gen <= 32'hffffffff;
    end
    else begin
      // CRC Code Generate
      crc32_gen[0] <= data_in[6] ^ data_in[0] ^ code_in[24] ^ code_in[30];
      crc32_gen[1] <= data_in[7] ^ data_in[6] ^ data_in[1] ^ data_in[0] ^ code_in[24] ^ code_in[25] ^ code_in[30] ^ code_in[31];
      crc32_gen[2] <= data_in[7] ^ data_in[6] ^ data_in[2] ^ data_in[1] ^ data_in[0] ^ code_in[24] ^ code_in[25] ^ code_in[26] ^ code_in[30] ^ code_in[31];
      crc32_gen[3] <= data_in[7] ^ data_in[3] ^ data_in[2] ^ data_in[1] ^ code_in[25] ^ code_in[26] ^ code_in[27] ^ code_in[31];
      crc32_gen[4] <= data_in[6] ^ data_in[4] ^ data_in[3] ^ data_in[2] ^ data_in[0] ^ code_in[24] ^ code_in[26] ^ code_in[27] ^ code_in[28] ^ code_in[30];
      crc32_gen[5] <= data_in[7] ^ data_in[6] ^ data_in[5] ^ data_in[4] ^ data_in[3] ^ data_in[1] ^ data_in[0] ^ code_in[24] ^ code_in[25] ^ code_in[27] ^ code_in[28] ^ code_in[29] ^ code_in[30] ^ code_in[31];
      crc32_gen[6] <= data_in[7] ^ data_in[6] ^ data_in[5] ^ data_in[4] ^ data_in[2] ^ data_in[1] ^ code_in[25] ^ code_in[26] ^ code_in[28] ^ code_in[29] ^ code_in[30] ^ code_in[31];
      crc32_gen[7] <= data_in[7] ^ data_in[5] ^ data_in[3] ^ data_in[2] ^ data_in[0] ^ code_in[24] ^ code_in[26] ^ code_in[27] ^ code_in[29] ^ code_in[31];
      crc32_gen[8] <= data_in[4] ^ data_in[3] ^ data_in[1] ^ data_in[0] ^ code_in[0] ^ code_in[24] ^ code_in[25] ^ code_in[27] ^ code_in[28];
      crc32_gen[9] <= data_in[5] ^ data_in[4] ^ data_in[2] ^ data_in[1] ^ code_in[1] ^ code_in[25] ^ code_in[26] ^ code_in[28] ^ code_in[29];
      crc32_gen[10] <= data_in[5] ^ data_in[3] ^ data_in[2] ^ data_in[0] ^ code_in[2] ^ code_in[24] ^ code_in[26] ^ code_in[27] ^ code_in[29];
      crc32_gen[11] <= data_in[4] ^ data_in[3] ^ data_in[1] ^ data_in[0] ^ code_in[3] ^ code_in[24] ^ code_in[25] ^ code_in[27] ^ code_in[28];
      crc32_gen[12] <= data_in[6] ^ data_in[5] ^ data_in[4] ^ data_in[2] ^ data_in[1] ^ data_in[0] ^ code_in[4] ^ code_in[24] ^ code_in[25] ^ code_in[26] ^ code_in[28] ^ code_in[29] ^ code_in[30];
      crc32_gen[13] <= data_in[7] ^ data_in[6] ^ data_in[5] ^ data_in[3] ^ data_in[2] ^ data_in[1] ^ code_in[5] ^ code_in[25] ^ code_in[26] ^ code_in[27] ^ code_in[29] ^ code_in[30] ^ code_in[31];
      crc32_gen[14] <= data_in[7] ^ data_in[6] ^ data_in[4] ^ data_in[3] ^ data_in[2] ^ code_in[6] ^ code_in[26] ^ code_in[27] ^ code_in[28] ^ code_in[30] ^ code_in[31];
      crc32_gen[15] <= data_in[7] ^ data_in[5] ^ data_in[4] ^ data_in[3] ^ code_in[7] ^ code_in[27] ^ code_in[28] ^ code_in[29] ^ code_in[31];
      crc32_gen[16] <= data_in[5] ^ data_in[4] ^ data_in[0] ^ code_in[8] ^ code_in[24] ^ code_in[28] ^ code_in[29];
      crc32_gen[17] <= data_in[6] ^ data_in[5] ^ data_in[1] ^ code_in[9] ^ code_in[25] ^ code_in[29] ^ code_in[30];
      crc32_gen[18] <= data_in[7] ^ data_in[6] ^ data_in[2] ^ code_in[10] ^ code_in[26] ^ code_in[30] ^ code_in[31];
      crc32_gen[19] <= data_in[7] ^ data_in[3] ^ code_in[11] ^ code_in[27] ^ code_in[31];
      crc32_gen[20] <= data_in[4] ^ code_in[12] ^ code_in[28];
      crc32_gen[21] <= data_in[5] ^ code_in[13] ^ code_in[29];
      crc32_gen[22] <= data_in[0] ^ code_in[14] ^ code_in[24];
      crc32_gen[23] <= data_in[6] ^ data_in[1] ^ data_in[0] ^ code_in[15] ^ code_in[24] ^ code_in[25] ^ code_in[30];
      crc32_gen[24] <= data_in[7] ^ data_in[2] ^ data_in[1] ^ code_in[16] ^ code_in[25] ^ code_in[26] ^ code_in[31];
      crc32_gen[25] <= data_in[3] ^ data_in[2] ^ code_in[17] ^ code_in[26] ^ code_in[27];
      crc32_gen[26] <= data_in[6] ^ data_in[4] ^ data_in[3] ^ data_in[0] ^ code_in[18] ^ code_in[24] ^ code_in[27] ^ code_in[28] ^ code_in[30];
      crc32_gen[27] <= data_in[7] ^ data_in[5] ^ data_in[4] ^ data_in[1] ^ code_in[19] ^ code_in[25] ^ code_in[28] ^ code_in[29] ^ code_in[31];
      crc32_gen[28] <= data_in[6] ^ data_in[5] ^ data_in[2] ^ code_in[20] ^ code_in[26] ^ code_in[29] ^ code_in[30];
      crc32_gen[29] <= data_in[7] ^ data_in[6] ^ data_in[3] ^ code_in[21] ^ code_in[27] ^ code_in[30] ^ code_in[31];
      crc32_gen[30] <= data_in[7] ^ data_in[4] ^ code_in[22] ^ code_in[28] ^ code_in[31];
      crc32_gen[31] <= data_in[5] ^ code_in[23] ^ code_in[29];
    end
  end

endmodule