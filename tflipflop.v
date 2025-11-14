module tflipflop(
    input T,
    input Reset,
    input Clock,
    output Q,
    output notQ
    );

    jkflipflop flop(
    .J(T),
    .K(T),
    .Reset(Reset),
    .Clock(Clock),
    .Q(Q),
    .notQ(notQ)
    );

endmodule
