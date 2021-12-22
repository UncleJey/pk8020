module T(input R, S, D, C, output reg RF, output RI);

  assign RI = RF;
  
  always @(posedge C)
  begin
    case ({S,R})
	   2'b00: RF <= D;
		2'b11: RF <= 1;
		2'b10: RF <= 1;
		2'b01: RF <= 0;
	  endcase
  end

endmodule
