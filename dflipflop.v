module dflipflop(
    input D,
    input Reset,
    input Clock,
    output reg Q,
    output notQ
    );

    initial begin
        Q <= 0;
    end

    always @(posedge Clock) begin
        if(Reset) begin Q <= 0; end
        else begin Q <= D; end
    end    
    
    assign notQ = ~Q;

endmodule
