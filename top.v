module top(
    input btnU,
    input btnC,
    output [6:0]led
    );
    
modulecounter modulo(
    .clock(btnC),
    .reset(btnU),
    .state(led[5:3]),
    .out(led[6])
);

rippleadder ripple(
    .clock(btnC),
    .reset(btnU),
    .state(led[2:0])
);

endmodule
