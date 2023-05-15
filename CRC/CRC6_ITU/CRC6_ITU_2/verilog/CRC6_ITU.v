module CRC6_ITU(input [7:0] data,
                   input [5:0] crcIn,
                   output reg [5:0] crc);

  always @ (data, crcIn) begin
    crc[0] = crcIn[3] ^ crcIn[4] ^ data[0] ^ data[5] ^ data[6];
    crc[1] = crcIn[3] ^ crcIn[5] ^ data[0] ^ data[1] ^ data[5] ^ data[7];
    crc[2] = crcIn[0] ^ crcIn[4] ^ data[1] ^ data[2] ^ data[6];
    crc[3] = crcIn[0] ^ crcIn[1] ^ crcIn[5] ^ data[2] ^ data[3] ^ data[7];
    crc[4] = crcIn[1] ^ crcIn[2] ^ data[3] ^ data[4];
    crc[5] = crcIn[2] ^ crcIn[3] ^ data[4] ^ data[5];
  end

endmodule