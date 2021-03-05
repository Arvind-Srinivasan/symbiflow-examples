module top (
    input  clk,
    output [15:0] led
);

    localparam BITS = 16;
    localparam LOG2DELAY = 16;

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    reg [BITS+LOG2DELAY-1:0] custom = 0;

    always @(posedge bufg) begin
        custom <= custom + 1;
    end

    assign led[15:0] = custom >> LOG2DELAY;
endmodule
