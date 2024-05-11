/************************************************************************\
** This file is made by TA Yans. used for Exercises in course,          **
** "Switching Circuit and Logic Design" in National Taiwan University.  **
**                                                                      **
** Written in 2014/10/31                                                **
**                                                                      **
** All the delay informations are set from TEXAS SN74LS IC family       **
** while the output load is 280ohm ,15pF:                               **
** TEXAS 280,15pF                                                       **
** Type		t_PLH		t_PHL                                           **
** SN74LS00:	(:3:4.5)	(:3:5)		NAND2                           **
** SN74LS02:	(:3.5:5.5)	(:3.5:5.5)	NOR2                            **
** SN74LS04:	(:3:4.5)	(:3:5)		NOT                             **
** SN74LS08:	(:4.5:7)	(:5:7.5)	AND2                            **
** SN74LS32:	(:4:7)		(:4:7)		OR2                             **
** SN74LS86A:	(:7:10.5)	(:6.5:10)	XOR2                            **
** SN74LS00158:	(:9:14)		(:9:14)		MUX2,data                       **
** SN74LS00158:	(:15:23)	(:18:27)	MUX2,sel                        **
** SN74LS10:	(:3:4.5)	(:3:5)		NAND3                           **
** SN74LS11:	(:4.5:7)	(:5:7.5)	AND3                            **
** SN74LS20:	(:3:4.5)	(:3:5)		NAND4                           **
** TEXAS 2kor400,15pF                                                   **
** SN74LS273:	(:17:27)	(:18:27)	DFF                             **
** 	   setup: 20                                                        **
** 	   hold: 5                                                          **
** 	   0~30 MHz                                                         **
**                                                                      **
** Ref.                                                                 **
** 74 family type:                                                      **
** 	http://homepage.cs.uiowa.edu/~jones/logicsim/man/node5.html         **
** Data sheet:                                                          **
** 	http://search.datasheetcatalog.net                                  **
\************************************************************************/

`timescale 1ns / 10ps

module gnd_1(output o1);
	assign o1 = 1'b0;
endmodule

module vcc_1(output o1);
	assign o1 = 1'b1;
endmodule

module not_1(
input i1,
output o1
);
	assign o1 = ~i1;
	specify
		(i1 => o1) = (3:3:4.5,3:3:5);
	endspecify
endmodule

module nand_2(
input i1,
input i2,
output o1
);
	assign o1 = ~(i1&i2);
	specify
		(i1 => o1) = (3:3:4.5,3:3:5);
		(i2 => o1) = (3:3:4.5,3:3:5);
	endspecify
endmodule

module nor_2(
input i1,
input i2,
output o1
);
	assign o1 = ~(i1|i2);
	specify
		(i1 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i2 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
	endspecify
endmodule

module and_2(
input i1,
input i2,
output o1
);
	assign o1 = i1&i2;
	specify
		(i1 => o1) = (4.5:4.5:7,5:5:7.5);
		(i2 => o1) = (4.5:4.5:7,5:5:7.5);
	endspecify
endmodule

module or_2(
input i1,
input i2,
output o1
);
	assign o1 = i1|i2;
	specify
		(i1 => o1) = (4:4:7,4:4:7);
		(i2 => o1) = (4:4:7,4:4:7);
	endspecify
endmodule

module xor_2(
input i1,
input i2,
output o1
);
	assign o1 = i1^i2;
	specify
		(i1 => o1) = (7:7:10.5,6.5:6.5:10);
		(i2 => o1) = (7:7:10.5,6.5:6.5:10);
	endspecify
endmodule

module mux_2(
input i0,
input i1,
input sel,
output o1
);
	assign o1 = sel ? i1 : i0;
	specify
		(i0 => o1) = (9:9:14,9:9:14);
		(i1 => o1) = (9:9:14,9:9:14);
		(sel=> o1) = (15:15:23,18:18:27);
	endspecify
endmodule

module nand_3(
input i1,
input i2,
input i3,
output o1
);
	assign o1 = ~(i1&i2&i3);
	specify
		(i1 => o1) = (3:3:4.5,3:3:5);
		(i2 => o1) = (3:3:4.5,3:3:5);
		(i3 => o1) = (3:3:4.5,3:3:5);
	endspecify
endmodule

module nor_3(
input i1,
input i2,
input i3,
output o1
);
	assign o1 = ~(i1|i2|i3);
	specify
		(i1 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i2 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i3 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
	endspecify
endmodule

module and_3(
input i1,
input i2,
input i3,
output o1
);
	assign o1 = i1&i2&i3;
	specify
		(i1 => o1) = (4.5:4.5:7,5:5:7.5);
		(i2 => o1) = (4.5:4.5:7,5:5:7.5);
		(i3 => o1) = (4.5:4.5:7,5:5:7.5);
	endspecify
endmodule

module or_3(
input i1,
input i2,
input i3,
output o1
);
	assign o1 = i1|i2|i3;
	specify
		(i1 => o1) = (4:4:7,4:4:7);
		(i2 => o1) = (4:4:7,4:4:7);
		(i3 => o1) = (4:4:7,4:4:7);
	endspecify
endmodule

module xor_3(
input i1,
input i2,
input i3,
output o1
);
	assign o1 = (i1^i2)^i3;
	specify
		(i1 => o1) = (7:7:10.5,6.5:6.5:10);
		(i2 => o1) = (7:7:10.5,6.5:6.5:10);
		(i3 => o1) = (7:7:10.5,6.5:6.5:10);
	endspecify
endmodule

module nand_4(
input i1,
input i2,
input i3,
input i4,
output o1
);
	assign o1 = ~(i1&i2&i3&i4);
	specify
		(i1 => o1) = (3:3:4.5,3:3:5);
		(i2 => o1) = (3:3:4.5,3:3:5);
		(i3 => o1) = (3:3:4.5,3:3:5);
		(i4 => o1) = (3:3:4.5,3:3:5);
	endspecify
endmodule

module nor_4(
input i1,
input i2,
input i3,
input i4,
output o1
);
	assign o1 = ~(i1|i2|i3|i4);
	specify
		(i1 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i2 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i3 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
		(i4 => o1) = (3.5:3.5:5.5,3.5:3.5:5.5);
	endspecify
endmodule

module and_4(
input i1,
input i2,
input i3,
input i4,
output o1
);
	assign o1 = i1&i2&i3&i4;
	specify
		(i1 => o1) = (4.5:4.5:7,5:5:7.5);
		(i2 => o1) = (4.5:4.5:7,5:5:7.5);
		(i3 => o1) = (4.5:4.5:7,5:5:7.5);
		(i4 => o1) = (4.5:4.5:7,5:5:7.5);
	endspecify
endmodule

module or_4(
input i1,
input i2,
input i3,
input i4,
output o1
);
	assign o1 = i1|i2|i3|i4;
	specify
		(i1 => o1) = (4:4:7,4:4:7);
		(i2 => o1) = (4:4:7,4:4:7);
		(i3 => o1) = (4:4:7,4:4:7);
		(i4 => o1) = (4:4:7,4:4:7);
	endspecify
endmodule

module DFF_1(
input CLK,
input PreN,
input ClrN,
input D,
output Q,
output QN
);
	reg flipflop;
		assign Q  =  flipflop;
		assign QN = ~flipflop;
	always@(posedge CLK or negedge PreN or negedge ClrN)begin
		if(~ClrN)		flipflop <= 1'b0;
		else if(~PreN)	flipflop <= 1'b1;
		else			flipflop <= D;
	end
	specify
		(CLK,PreN,ClrN *> Q,QN) = (17:17:27,18:18:27);
		$setuphold(posedge CLK, D, 20, 5);
	endspecify
endmodule




