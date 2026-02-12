module stream_cipher(
    input clk,
    input reset,
    input plaintext,
    output keystream,
    output ciphertext,
    output decrypted
);

    wire a, b, c;

    lfsr #(5) L1(clk, reset, 5'b10101, a);
    lfsr #(7) L2(clk, reset, 7'b1101101, b);
    lfsr #(9) L3(clk, reset, 9'b101110011, c);

    assign keystream = (a & b) ^ c;
    assign ciphertext = plaintext ^ keystream;
    assign decrypted = ciphertext ^ keystream;

endmodule
