//functionality check
//this is our test bench code
module lab1_AND_GATE_TB ;
logic a1 ,b1, y1;    //logic ka mtlb hai only 0 and 1
localparam period = 10 ;

lab1_AND_GATE DUT(
.A(a1),
.B(b1),
.Y(y1)
);
initial  //its just like def function in python
begin
    //ab hum different combinations of 0 and 1 use kre ge test ke liye
    a1=0 ;  b1=0;
    #period;
    a1=1 ;  b1=0;
    #period;
    a1=0 ;  b1=1;
    #period;
    a1=1;   b1=1;
    #period;
    $stop;
end

initial
begin

$monitor("a=%b,b=%b,y=%b",a1,b1,y1);  //yeh print f jaise hai
end
endmodule