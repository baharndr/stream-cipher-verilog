module tb_stream_cipher;

    reg clk = 0;
    reg reset = 1;
    reg plaintext;

    wire keystream;
    wire ciphertext;
    wire decrypted;

    stream_cipher DUT(
        .clk(clk),
        .reset(reset),
        .plaintext(plaintext),
        .keystream(keystream),
        .ciphertext(ciphertext),
        .decrypted(decrypted)
    );

    always #5 clk = ~clk;

    initial begin
        #10 reset = 0;

        plaintext = 1;
        #10 plaintext = 0;
        #10 plaintext = 1;
        #10 plaintext = 0;
        #10 plaintext = 1;

        #100 $stop;
    end

endmodule
