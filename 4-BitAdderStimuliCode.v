module stimuli(    );
reg [3:0] a,b;
reg ck;

wire Cout;
wire [3:0] Sum;

newadder dut(a,b,ck,Sum,Cout);

always
 begin
 #10 ck=0;
 #10 ck=1;
 end
 
 initial
 begin
    a=3; b=6;
#10 a=4; b=6;
#10 a=2; b=5;
#10 a=9; b=4;

end

endmodule
