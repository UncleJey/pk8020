module PLM (input C0, C1, C2, C3, C4, C9, C10, C11, ACCESS, VBL, MODSEL, F10, F5, F2_5, F1_25, HBL, EZ, output wire CSV, GCLK, SHIFT, LOADPOM, HVSYNC, LOADCT2, LOAD, VCLK);

assign LOADCT2 = !(C0 & C4 & !HBL);
assign CSV = !F10 & !F5 & !F2_5 & !F1_25 | F10 & F5 & !F2_5 & !ACCESS;
assign GCLK = F10;
assign SHIFT = !(HBL & F5 & F2_5 & F1_25 & !MODSEL  & VBL | HBL & F5 & F2_5 & ! F1_25 & MODSEL & VBL & !C0);
assign LOADPOM = F10 & F5 & !F2_5 & F1_25;

assign HVSYNC = ! (    !HBL &  VBL & !C3  &  C2
                     | !HBL & !VBL &  C11 & !C3 &  C2
							| !HBL & !VBL & !C10 &  C9 & !C11 & !C3 & C2
							| !HBL & !VBL &  C10 & !C9 & !C11 & !C3 & C2
							|  HBL & !VBL &  C10 &  C9 & !C11
						);


assign LOAD = !(HBL & F5  & F2_5 & !F1_25 & VBL);
assign VCLK = F10 & !MODSEL | F10 & F5 & MODSEL;

endmodule
