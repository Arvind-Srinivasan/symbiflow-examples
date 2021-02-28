module top (
    input  clk,
    output [6:0] led
);

    localparam BITS = 7;
    localparam LOG2DELAY = 24;

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    reg [BITS+LOG2DELAY-1:0] custom = 0;

    always @(posedge bufg) begin
        custom <= custom + 1;
    end

    assign led[6:0] = custom >> LOG2DELAY;
endmodule
