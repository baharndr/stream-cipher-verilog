module lfsr #(parameter N = 5)(
    input clk,
    input reset,
    input [N-1:0] seed,
    output reg out
);

    reg [N-1:0] r;

    always @(posedge clk or posedge reset) begin
        if (reset)
            r <= seed;
        else
            r <= {r[N-2:0], r[N-1] ^ r[1]};
    end

    always @(*) begin
        out = r[N-1];
    end

endmodule
