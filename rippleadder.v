module rippleadder(
    input clock,
    input reset,
    output [2:0]state
    );
    
wire [2:0]q;

tflipflop flop(
    .T(1),
    .Reset(reset),
    .Clock(clock),
    .Q(q[0])
);    

tflipflop flop2(
    .T(1),
    .Reset(reset),
    .Clock(q[0]),
    .Q(q[1])
);

tflipflop flop3(
    .T(1),
    .Reset(reset),
    .Clock(q[1]),
    .Q(q[2])
);

assign state = q;

endmodule
