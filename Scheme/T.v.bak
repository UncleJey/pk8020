module T(input R, S, D, C, output reg RF, output reg RI);

  always @(posedge C)
  begin
    if (R)
	 begin
	   RF <= 1'b0;
	 end
	 else if (!S)
	 begin
	   RF <= D;
	 end
	 else
	 begin
	   RF <= RF;
	 end
	 
	 RI = !RF;
  end

endmodule
