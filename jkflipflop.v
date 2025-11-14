module jkflipflop(
    input J,
    input K,
    input Reset,
    input Clock,
    output  Q,
    output notQ
    );

    wire D;

    assign D = (~Q& J) | (Q& ~K);

    dflipflop flop(
        .D(D),
        .Reset(Reset),
        .Clock(Clock),
        .Q(Q),
        .notQ(notQ)
    );
    
endmodule
