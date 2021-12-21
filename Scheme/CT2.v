module CT2(input D0, D1, D2, D3, input notEWR, C, notR, notDECR, input  E1, E2, output reg CR, output wire OUT0, OUT1, OUT2, OUT3 );

reg [3:0] Data;

assign OUT0 = Data[0];
assign OUT1 = Data[1];
assign OUT2 = Data[2];
assign OUT3 = Data[3];

always @(posedge C)
begin

  if (notR)
  begin
    Data <= 4'b0000;
	 CR <= 0;
  end
  else if (notEWR)
  begin
    Data <= {D3, D2, D1, D0};
	 CR <= 0;
  end
  else if (E1 & E2)
  begin
    if (Data == 4'b1111)
	 begin
	   CR <= 1;
		Data = 4'b0000;
	 end
	 else
	 begin
      Data = Data + 1'b1;
		CR <= 0;
	 end;
  end
  else
  begin
    Data <= Data;
	 CR <= CR;
  end

end

endmodule
