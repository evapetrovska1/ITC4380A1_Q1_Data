% ITC 4380 - Artificial Intelligence Principles - Fall 2026
% Final Project, Q1: fault diagnosis of combinational circuits
%
% Circuit C4: 4-bit ripple-carry adder (bit 2 uses NAND-only XORs)
% 9 inputs, 5 outputs, 26 gates, 16 observations.
% At most 2 gates are faulty (output stuck at 0 or 1).

circuit(c4).

% --- primary inputs and outputs ---
input(c0).
input(a0).
input(b0).
input(a1).
input(b1).
input(a2).
input(b2).
input(a3).
input(b3).
output(s0).
output(s1).
output(s2).
output(s3).
output(cout).

% --- gates: gate(Name, Type) ---
gate(u24, nand).
gate(u25, nand).
gate(u07, and).
gate(u11, xor).
gate(u17, xor).
gate(u23, and).
gate(u05, nand).
gate(u08, and).
gate(u03, nand).
gate(u13, xor).
gate(u12, and).
gate(u20, and).
gate(u01, or).
gate(u16, xor).
gate(u22, or).
gate(u18, and).
gate(u21, or).
gate(u09, nand).
gate(xor2, nand).
gate(u14, xor).
gate(u06, xor).
gate(and7, or).
gate(u10, and).
gate(u02, nand).
gate(u26, and).
gate(u15, nand).

% --- directed edges: wire(From, To) ---
wire(u01, u15).
wire(u06, u10).
wire(u26, u22).
wire(u25, u03).
wire(a2, u07).
wire(u23, and7).
wire(u05, s2).
wire(u12, u21).
wire(xor2, u02).
wire(b1, u06).
wire(u20, u21).
wire(u16, s3).
wire(u09, u05).
wire(b0, u14).
wire(a2, xor2).
wire(a1, u06).
wire(u13, s1).
wire(u11, u12).
wire(a3, u20).
wire(a2, u02).
wire(u25, u26).
wire(u10, u01).
wire(u15, u03).
wire(u01, u26).
wire(u21, cout).
wire(u15, u09).
wire(u17, s0).
wire(b1, u08).
wire(u24, u25).
wire(u03, u05).
wire(u25, u15).
wire(c0, u17).
wire(a3, u11).
wire(a0, u14).
wire(u06, u13).
wire(u14, u17).
wire(b2, xor2).
wire(u07, u22).
wire(xor2, u24).
wire(u22, u16).
wire(and7, u10).
wire(b0, u18).
wire(u02, u25).
wire(a1, u08).
wire(b3, u11).
wire(and7, u13).
wire(u08, u01).
wire(u14, u23).
wire(b3, u20).
wire(b2, u24).
wire(u11, u16).
wire(u22, u12).
wire(a0, u18).
wire(b2, u07).
wire(u01, u09).
wire(u18, and7).
wire(c0, u23).

% --- reliability: failure_rate(Gate, Probability) ---
failure_rate(u24, 0.002998).
failure_rate(u25, 0.003913).
failure_rate(u07, 0.003415).
failure_rate(u11, 0.006486).
failure_rate(u17, 0.011359).
failure_rate(u23, 0.005103).
failure_rate(u05, 0.004288).
failure_rate(u08, 0.004591).
failure_rate(u03, 0.002133).
failure_rate(u13, 0.00644).
failure_rate(u12, 0.005235).
failure_rate(u20, 0.005489).
failure_rate(u01, 0.003129).
failure_rate(u16, 0.010839).
failure_rate(u22, 0.003846).
failure_rate(u18, 0.004399).
failure_rate(u21, 0.004563).
failure_rate(u09, 0.004277).
failure_rate(xor2, 0.002717).
failure_rate(u14, 0.01031).
failure_rate(u06, 0.010517).
failure_rate(and7, 0.005152).
failure_rate(u10, 0.004209).
failure_rate(u02, 0.003112).
failure_rate(u26, 0.005989).
failure_rate(u15, 0.002102).

% --- observations: observation(Id, InputValues, OutputValues) ---
observation(1, [c0-0, a0-1, b0-0, a1-0, b1-0, a2-1, b2-1, a3-0, b3-1], [s0-1, s1-0, s2-0, s3-0, cout-1]).
observation(2, [c0-1, a0-0, b0-0, a1-0, b1-1, a2-0, b2-1, a3-0, b3-1], [s0-1, s1-1, s2-0, s3-1, cout-0]).
observation(3, [c0-0, a0-1, b0-0, a1-0, b1-0, a2-0, b2-1, a3-0, b3-1], [s0-1, s1-0, s2-0, s3-1, cout-0]).
observation(4, [c0-0, a0-0, b0-1, a1-0, b1-0, a2-1, b2-1, a3-1, b3-0], [s0-1, s1-0, s2-0, s3-0, cout-1]).
observation(5, [c0-1, a0-0, b0-0, a1-1, b1-0, a2-1, b2-1, a3-0, b3-0], [s0-1, s1-1, s2-0, s3-1, cout-0]).
observation(6, [c0-1, a0-1, b0-1, a1-0, b1-1, a2-0, b2-0, a3-1, b3-0], [s0-1, s1-1, s2-0, s3-1, cout-0]).
observation(7, [c0-0, a0-0, b0-0, a1-1, b1-0, a2-1, b2-0, a3-1, b3-0], [s0-0, s1-1, s2-1, s3-1, cout-0]).
observation(8, [c0-0, a0-0, b0-1, a1-0, b1-1, a2-1, b2-1, a3-1, b3-0], [s0-1, s1-1, s2-0, s3-0, cout-1]).
observation(9, [c0-1, a0-0, b0-0, a1-1, b1-1, a2-1, b2-0, a3-0, b3-1], [s0-1, s1-0, s2-0, s3-0, cout-1]).
observation(10, [c0-1, a0-0, b0-0, a1-0, b1-1, a2-0, b2-0, a3-0, b3-0], [s0-1, s1-1, s2-0, s3-0, cout-0]).
observation(11, [c0-1, a0-1, b0-0, a1-1, b1-1, a2-0, b2-1, a3-1, b3-0], [s0-0, s1-0, s2-1, s3-1, cout-0]).
observation(12, [c0-1, a0-1, b0-0, a1-0, b1-0, a2-1, b2-1, a3-1, b3-1], [s0-0, s1-0, s2-0, s3-1, cout-1]).
observation(13, [c0-0, a0-0, b0-0, a1-0, b1-0, a2-0, b2-1, a3-1, b3-0], [s0-0, s1-0, s2-0, s3-1, cout-0]).
observation(14, [c0-0, a0-1, b0-1, a1-0, b1-0, a2-0, b2-1, a3-0, b3-1], [s0-0, s1-0, s2-0, s3-1, cout-0]).
observation(15, [c0-0, a0-0, b0-1, a1-1, b1-0, a2-0, b2-0, a3-1, b3-0], [s0-1, s1-1, s2-0, s3-1, cout-0]).
observation(16, [c0-0, a0-0, b0-1, a1-0, b1-1, a2-0, b2-0, a3-0, b3-0], [s0-1, s1-1, s2-0, s3-0, cout-0]).
