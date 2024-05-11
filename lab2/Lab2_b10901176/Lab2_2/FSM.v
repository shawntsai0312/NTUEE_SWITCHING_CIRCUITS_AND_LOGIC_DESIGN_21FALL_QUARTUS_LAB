// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Tue Jan 12 15:55:33 2021"

module FSM(
	load,
	clk,
	rst_n,
	done
);


input wire	load;
input wire	clk;
input wire	rst_n;
output wire	done;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;





not_1	b2v_inst(
	.i1(load),
	.o1(SYNTHESIZED_WIRE_28));


DFF_1	b2v_inst10(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_0),
	
	.ClrN(rst_n),
	
	.Q(SYNTHESIZED_WIRE_26));


and_2	b2v_inst11(
	.i1(SYNTHESIZED_WIRE_24),
	.i2(SYNTHESIZED_WIRE_25),
	.o1(SYNTHESIZED_WIRE_16));


and_2	b2v_inst12(
	.i1(SYNTHESIZED_WIRE_26),
	.i2(SYNTHESIZED_WIRE_27),
	.o1(SYNTHESIZED_WIRE_25));


or_3	b2v_inst13(
	.i1(SYNTHESIZED_WIRE_26),
	.i2(SYNTHESIZED_WIRE_24),
	.i3(SYNTHESIZED_WIRE_7),
	.o1(SYNTHESIZED_WIRE_27));


and_2	b2v_inst14(
	.i1(SYNTHESIZED_WIRE_26),
	.i2(SYNTHESIZED_WIRE_24),
	.o1(done));


and_2	b2v_inst2(
	.i1(SYNTHESIZED_WIRE_28),
	.i2(SYNTHESIZED_WIRE_11),
	.o1(SYNTHESIZED_WIRE_22));


and_2	b2v_inst3(
	.i1(SYNTHESIZED_WIRE_12),
	.i2(SYNTHESIZED_WIRE_28),
	.o1(SYNTHESIZED_WIRE_23));


and_2	b2v_inst4(
	.i1(SYNTHESIZED_WIRE_28),
	.i2(SYNTHESIZED_WIRE_15),
	.o1(SYNTHESIZED_WIRE_0));


xor_2	b2v_inst5(
	.i1(SYNTHESIZED_WIRE_16),
	.i2(SYNTHESIZED_WIRE_17),
	.o1(SYNTHESIZED_WIRE_11));


xor_2	b2v_inst6(
	.i1(SYNTHESIZED_WIRE_25),
	.i2(SYNTHESIZED_WIRE_24),
	.o1(SYNTHESIZED_WIRE_12));


xor_2	b2v_inst7(
	.i1(SYNTHESIZED_WIRE_27),
	.i2(SYNTHESIZED_WIRE_26),
	.o1(SYNTHESIZED_WIRE_15));


DFF_1	b2v_inst8(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_22),
	
	.ClrN(rst_n),
	.QN(SYNTHESIZED_WIRE_7),
	.Q(SYNTHESIZED_WIRE_17));


DFF_1	b2v_inst9(
	.CLK(clk),
	.D(SYNTHESIZED_WIRE_23),
	
	.ClrN(rst_n),
	.QN(SYNTHESIZED_WIRE_24)
	);


endmodule
