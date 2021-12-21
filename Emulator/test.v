module test (output reg R,G,B,V,H, 
             output wire CSV, GCLK, 
				 output wire S5M, S2_5M, S1_25M,
				 input ACCESS,
				 input C, input aR);

  /*
         136 px           160                1024               24
   0 <- HSync -> 135  <- HBlack -> 295   <- Frame -> 1319   <- Black -> 1343
	
	/|\
	 |    VSync  6 lines
	\|/
	
    5

	/|\
	 |    Black 29 lines
	\|/
	
	 34
	 
	/|\
	 |    Video 768 lines
	\|/

    802

	/|\
	 |    Black 3 lines
	\|/
 
    805
  */

  parameter HSyncTo  = 135;
  parameter HBlackTo = 295;
  parameter HFrameTo = 1319;
  parameter HEndTo   = 1343;
  
  parameter VSyncTo  = 5;
  parameter vBlackTo = 34;
  parameter vFrameTo = 802;
  parameter vEndTo   = 805;
  
  reg [4:0] divider; // делитель частоты 65мгц -> 5мгц
  reg [4:0] counter; // 5МГц счётчик для формирования синхроимпульсов
  
  assign S5M    = counter[0]; // 5 MHz
  assign S2_5M  = counter[1]; // 2.5 MHz
  assign S1_25M = counter[2]; // 1.25 MHz
  
  assign CSV = !S5M & !S2_5M & !S1_25M | S5M & !S2_5M & !ACCESS;
  assign GCLK = S5M;
  
  reg [12:0] X,  // позиция в строке
             Y,  // номер строки
				 rX, // позиция в строке экрана
				 rY; // номер строки экрана
				 
  always @(posedge C)
  begin
    if (aR) // reset
	 begin //reset
	   divider <= 4'b0000;
		counter <= 4'b0000;
		X <= 1'b0;
		Y <= 1'b0;
		rX <= 1'b0;
		rY <= 1'b0;
	 end //reset
	 else
	 begin // основной такт
	    // синхроимпульсы
	   if (divider < 12) // делим на 13 для формирования 5 МГц из 65 МГц
			begin
				 divider <= divider + 4'b0001;
				 counter <= counter;
			end
	   else
			begin
				divider <= 4'b0000;
				counter <= counter + 4'b0001;
			end

	    // формирование изображения
		 if (X < HSyncTo)
			H <= 1;
		 else
			H <= 0;
			
		 if (Y < VSyncTo)
			V <= 1;
		 else
			V <= 0;
		 
		 if (Y <= vBlackTo | Y >= vFrameTo) // за кадром - сбрасываем координаты кадра
		 begin
			rX <= 1'b0;
			rY <= 1'b0;
		 end
		 else
		 begin // основной кадр
			 if (X > HBlackTo & X < HFrameTo) // рисуем кадр
			 begin
				R <= ( rX == 1 | rX == 1022 | rY == 1 | rY == 766) ? 1'b1 : 1'b0; // debug
				G <= rX [3];                                                      // debug
				B <= rY [3];                                                      // debug
				
				rX <= rX + 1'b1;
			 end
			 else if (X == HFrameTo) // конец строки. Увеличиваем её номер
			 begin
				rY <= rY + 1'b1;
				rX <= 0;
			 end
			 else
			 begin // чернота после кадра
				rX <= 0;
				rY <= rY;
			 end
		end // основной кадр
		
		 if (X >= HEndTo) // Конец строки
		 begin
			X <= 0;
			H <= 1;
			if (Y < vEndTo) // Увеличиаем номер строки
			begin
			  Y <= Y + 1'b1;
			end
			else
			begin // Экран кончился - обнуляем
			  Y <= 0;
			  H <= 1;
			  V <= 1;
			end
		 end // Конец строки
		 else
		 begin // Увеличиваем номер пикселя
			  X <= X + 1'b1;
		 end
		 
	  end
  end // основной такт
endmodule
