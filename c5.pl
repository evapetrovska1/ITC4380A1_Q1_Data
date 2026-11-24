% ITC 4380 - Artificial Intelligence Principles - Fall 2026
% Final Project, Q1: fault diagnosis of combinational circuits
%
% Circuit C5: random control logic with reconvergence
% 10 inputs, 6 outputs, 44 gates, 24 observations.
% At most 2 gates are faulty (output stuck at 0 or 1).

circuit(c5).

% --- primary inputs and outputs ---
input(i1).
input(i2).
input(i3).
input(i4).
input(i5).
input(i6).
input(i7).
input(i8).
input(i9).
input(i10).
output(o1).
output(o2).
output(o3).
output(o4).
output(o5).
output(o6).

% --- gates: gate(Name, Type) ---
gate(g17, or).
gate(g90, not).
gate(g34, xor).
gate(g24, nand).
gate(g25, not).
gate(g1, not).
gate(g33, xor).
gate(g22, nand).
gate(g35, or).
gate(g41, and).
gate(g11, nand).
gate(g4, and).
gate(g19, or).
gate(g26, and).
gate(g27, not).
gate(g7, xor).
gate(g28, and).
gate(g29, and).
gate(g12, or).
gate(g18, xor).
gate(g31, or).
gate(g21, nor).
gate(g5, nor).
gate(g30, nor).
gate(g8, and).
gate(g3, and).
gate(g13, xor).
gate(g32, nor).
gate(g15, nor).
gate(g38, nor).
gate(g6, or).
gate(g42, not).
gate(g36, nand).
gate(g16, or).
gate(g2, not).
gate(g20, not).
gate(g40, nand).
gate(g37, nand).
gate(g39, nand).
gate(g23, nand).
gate(g91, nand).
gate(g9, nor).
gate(g10, and).
gate(g14, not).

% --- directed edges: wire(From, To) ---
wire(g4, g14).
wire(g28, g9).
wire(g22, g13).
wire(g1, g90).
wire(g37, g41).
wire(g90, g91).
wire(g28, g32).
wire(g8, g3).
wire(i9, g29).
wire(g22, g5).
wire(g12, g6).
wire(g2, g11).
wire(g4, g26).
wire(g28, g26).
wire(g40, g2).
wire(i7, g38).
wire(i4, g5).
wire(g4, g16).
wire(g35, g31).
wire(g36, g8).
wire(g36, g40).
wire(g21, o2).
wire(i7, g28).
wire(g35, g17).
wire(g14, g23).
wire(g11, o1).
wire(g27, g9).
wire(g17, g40).
wire(g25, g10).
wire(g29, g24).
wire(g29, g35).
wire(g18, g10).
wire(i2, g12).
wire(g19, g34).
wire(g22, g42).
wire(g7, g23).
wire(g5, g4).
wire(i4, g19).
wire(i1, g35).
wire(g19, g20).
wire(g30, g19).
wire(g13, g27).
wire(i7, o6).
wire(g3, g25).
wire(g15, g6).
wire(i8, g15).
wire(g6, g17).
wire(i3, g24).
wire(g30, g4).
wire(g19, g36).
wire(g9, g1).
wire(g32, g21).
wire(i6, g15).
wire(i9, g41).
wire(g24, g37).
wire(g37, g3).
wire(g40, g37).
wire(g31, g34).
wire(g39, g21).
wire(g20, o3).
wire(g9, g7).
wire(g23, g33).
wire(g10, g16).
wire(g1, o5).
wire(i10, g30).
wire(g16, g39).
wire(g26, g13).
wire(i10, g22).
wire(i4, g91).
wire(g37, g18).
wire(i5, g36).
wire(g15, g38).
wire(g29, g30).
wire(g32, g22).
wire(g33, g11).
wire(g41, g31).
wire(g19, g8).
wire(g34, g28).
wire(g42, o4).
wire(g22, g39).
wire(g19, g18).
wire(i9, g32).
wire(g31, g7).
wire(g38, g12).
wire(i8, g29).
wire(g34, g33).

% --- reliability: failure_rate(Gate, Probability) ---
failure_rate(g17, 0.004411).
failure_rate(g90, 0.002448).
failure_rate(g34, 0.009071).
failure_rate(g24, 0.004033).
failure_rate(g25, 0.00183).
failure_rate(g1, 0.002362).
failure_rate(g33, 0.006756).
failure_rate(g22, 0.002305).
failure_rate(g35, 0.002482).
failure_rate(g41, 0.005123).
failure_rate(g11, 0.001841).
failure_rate(g4, 0.002718).
failure_rate(g19, 0.003348).
failure_rate(g26, 0.003653).
failure_rate(g27, 0.001496).
failure_rate(g7, 0.005399).
failure_rate(g28, 0.005649).
failure_rate(g29, 0.005838).
failure_rate(g12, 0.005349).
failure_rate(g18, 0.010722).
failure_rate(g31, 0.005936).
failure_rate(g21, 0.00379).
failure_rate(g5, 0.004316).
failure_rate(g30, 0.003578).
failure_rate(g8, 0.005965).
failure_rate(g3, 0.002696).
failure_rate(g13, 0.010127).
failure_rate(g32, 0.003322).
failure_rate(g15, 0.003718).
failure_rate(g38, 0.001819).
failure_rate(g6, 0.004973).
failure_rate(g42, 0.001821).
failure_rate(g36, 0.00325).
failure_rate(g16, 0.005721).
failure_rate(g2, 0.00218).
failure_rate(g20, 0.0014).
failure_rate(g40, 0.002891).
failure_rate(g37, 0.002283).
failure_rate(g39, 0.002598).
failure_rate(g23, 0.002633).
failure_rate(g91, 0.002455).
failure_rate(g9, 0.003821).
failure_rate(g10, 0.003875).
failure_rate(g14, 0.002325).

% --- observations: observation(Id, InputValues, OutputValues) ---
observation(1, [i1-0, i2-0, i3-1, i4-0, i5-0, i6-0, i7-0, i8-0, i9-1, i10-0], [o1-0, o2-1, o3-0, o4-0, o5-0, o6-0]).
observation(2, [i1-0, i2-0, i3-0, i4-0, i5-0, i6-0, i7-1, i8-0, i9-1, i10-1], [o1-1, o2-0, o3-1, o4-0, o5-0, o6-1]).
observation(3, [i1-0, i2-0, i3-1, i4-1, i5-1, i6-0, i7-0, i8-1, i9-0, i10-0], [o1-1, o2-0, o3-0, o4-0, o5-0, o6-0]).
observation(4, [i1-1, i2-0, i3-1, i4-1, i5-1, i6-0, i7-1, i8-0, i9-1, i10-0], [o1-1, o2-1, o3-0, o4-0, o5-0, o6-1]).
observation(5, [i1-1, i2-1, i3-0, i4-0, i5-0, i6-0, i7-1, i8-0, i9-0, i10-0], [o1-0, o2-0, o3-0, o4-0, o5-0, o6-1]).
observation(6, [i1-1, i2-1, i3-1, i4-1, i5-0, i6-1, i7-1, i8-0, i9-1, i10-0], [o1-0, o2-1, o3-0, o4-0, o5-0, o6-1]).
observation(7, [i1-0, i2-0, i3-0, i4-1, i5-1, i6-1, i7-0, i8-1, i9-0, i10-0], [o1-1, o2-0, o3-0, o4-0, o5-0, o6-0]).
observation(8, [i1-0, i2-1, i3-1, i4-1, i5-0, i6-0, i7-1, i8-0, i9-1, i10-1], [o1-1, o2-1, o3-0, o4-0, o5-1, o6-1]).
observation(9, [i1-1, i2-0, i3-1, i4-0, i5-0, i6-1, i7-1, i8-1, i9-1, i10-0], [o1-0, o2-0, o3-1, o4-0, o5-1, o6-1]).
observation(10, [i1-0, i2-1, i3-0, i4-0, i5-0, i6-0, i7-0, i8-1, i9-0, i10-1], [o1-1, o2-0, o3-1, o4-1, o5-1, o6-0]).
observation(11, [i1-1, i2-1, i3-1, i4-0, i5-0, i6-1, i7-1, i8-0, i9-1, i10-1], [o1-0, o2-0, o3-1, o4-0, o5-1, o6-1]).
observation(12, [i1-0, i2-1, i3-0, i4-1, i5-0, i6-0, i7-1, i8-0, i9-0, i10-1], [o1-1, o2-1, o3-0, o4-0, o5-1, o6-1]).
observation(13, [i1-0, i2-0, i3-1, i4-1, i5-0, i6-0, i7-1, i8-1, i9-0, i10-0], [o1-1, o2-1, o3-0, o4-0, o5-1, o6-1]).
observation(14, [i1-0, i2-0, i3-0, i4-1, i5-0, i6-0, i7-0, i8-1, i9-0, i10-1], [o1-1, o2-0, o3-0, o4-1, o5-1, o6-0]).
observation(15, [i1-1, i2-0, i3-0, i4-1, i5-1, i6-1, i7-1, i8-1, i9-0, i10-0], [o1-1, o2-0, o3-0, o4-0, o5-0, o6-1]).
observation(16, [i1-0, i2-0, i3-1, i4-0, i5-0, i6-0, i7-0, i8-0, i9-0, i10-0], [o1-0, o2-0, o3-0, o4-0, o5-0, o6-0]).
observation(17, [i1-0, i2-0, i3-1, i4-0, i5-0, i6-1, i7-1, i8-0, i9-0, i10-1], [o1-1, o2-0, o3-1, o4-1, o5-1, o6-1]).
observation(18, [i1-0, i2-1, i3-1, i4-0, i5-0, i6-0, i7-1, i8-1, i9-1, i10-1], [o1-0, o2-0, o3-1, o4-0, o5-1, o6-1]).
observation(19, [i1-1, i2-0, i3-0, i4-0, i5-1, i6-1, i7-0, i8-0, i9-0, i10-0], [o1-1, o2-0, o3-0, o4-0, o5-0, o6-0]).
observation(20, [i1-1, i2-0, i3-1, i4-0, i5-1, i6-1, i7-0, i8-0, i9-1, i10-0], [o1-1, o2-1, o3-0, o4-0, o5-0, o6-0]).
observation(21, [i1-0, i2-0, i3-0, i4-0, i5-0, i6-1, i7-1, i8-1, i9-0, i10-1], [o1-1, o2-0, o3-1, o4-1, o5-1, o6-1]).
observation(22, [i1-0, i2-0, i3-1, i4-0, i5-1, i6-1, i7-1, i8-1, i9-1, i10-1], [o1-0, o2-0, o3-1, o4-0, o5-1, o6-1]).
observation(23, [i1-0, i2-0, i3-1, i4-0, i5-0, i6-0, i7-1, i8-0, i9-0, i10-1], [o1-0, o2-0, o3-1, o4-1, o5-1, o6-1]).
observation(24, [i1-1, i2-1, i3-1, i4-1, i5-0, i6-1, i7-1, i8-0, i9-1, i10-0], [o1-0, o2-1, o3-0, o4-0, o5-0, o6-1]).
