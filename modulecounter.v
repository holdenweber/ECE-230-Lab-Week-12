module modulecounter(
    input clock,
    input reset,
    output [2:0]state,
    output out
    );

    wire [2:0]y;
    wire [2:0]d;
    wire [1:0]carry;
    wire resetP;

    full_adder adder1(
        .A(d[0]),
        .B(1),
        .Cin(1'b0),
        .Y(y[0]),
        .Cout(carry[0])
    );

    dflipflop flop1(
        .D(y[0]),
        .Reset(resetP),
        .Clock(clock),
        .Q(d[0]),
        .notQ()
    );
    
    full_adder adder2(
        .A(d[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(y[1]),
        .Cout(carry[1])
    );

    dflipflop flop2(
        .D(y[1]),
        .Reset(resetP),
        .Clock(clock),
        .Q(d[1]),
        .notQ()
    );
    
    full_adder adder3(
        .A(d[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(y[2])
    );

    dflipflop flop3(
        .D(y[2]),
        .Reset(resetP),
        .Clock(clock),
        .Q(d[2]),
        .notQ()
    );
    
    assign resetP = d[2] & d[0] | reset; 
    assign state = d;
    wire dn;
    assign dn = resetP ^ out;
    
    dflipflop dout(
        .D(dn),
        .Reset(reset),
        .Clock(clock),
        .Q(out),
        .notQ()
    );
   
endmodule
