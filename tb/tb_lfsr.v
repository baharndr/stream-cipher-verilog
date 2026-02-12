
module tb_lfsr;

    reg clk = 0;
    reg reset = 1;
    wire out;

    lfsr #(5) DUT(
        .clk(clk),
        .reset(reset),
        .seed(5'b10101),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        #10 reset = 0;
        #100 $stop;
    end

endmodule