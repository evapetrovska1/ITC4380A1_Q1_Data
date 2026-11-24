% ITC 4380 - Artificial Intelligence Principles - Fall 2026
% Final Project, Q1: fault diagnosis of combinational circuits
%
% Circuit C2: ISCAS-85 benchmark c17 (NAND only)
% 5 inputs, 2 outputs, 6 gates, 12 observations.
% At most 2 gates are faulty (output stuck at 0 or 1).

circuit(c2).

% --- primary inputs and outputs ---
input(n1).
input(n2).
input(n3).
input(n6).
input(n7).
output(o22).
output(o23).

% --- gates: gate(Name, Type) ---
gate(g16, nand).
gate(g19, nand).
gate(g11, nand).
gate(g22, nand).
gate(g23, nand).
gate(g10, nand).

% --- directed edges: wire(From, To) ---
wire(n7, g19).
wire(g11, g19).
wire(n3, g11).
wire(g10, g22).
wire(n3, g10).
wire(g11, g16).
wire(g16, g22).
wire(n1, g10).
wire(n6, g11).
wire(g23, o23).
wire(n2, g16).
wire(g16, g23).
wire(g22, o22).
wire(g19, g23).

% --- reliability: failure_rate(Gate, Probability) ---
failure_rate(g16, 0.003546).
failure_rate(g19, 0.003947).
failure_rate(g11, 0.002179).
failure_rate(g22, 0.003109).
failure_rate(g23, 0.002985).
failure_rate(g10, 0.002451).

% --- observations: observation(Id, InputValues, OutputValues) ---
observation(1, [n1-1, n2-1, n3-1, n6-1, n7-0], [o22-1, o23-0]).
observation(2, [n1-1, n2-0, n3-0, n6-0, n7-1], [o22-0, o23-1]).
observation(3, [n1-0, n2-0, n3-0, n6-0, n7-0], [o22-0, o23-0]).
observation(4, [n1-1, n2-0, n3-0, n6-1, n7-1], [o22-0, o23-1]).
observation(5, [n1-0, n2-1, n3-0, n6-1, n7-1], [o22-1, o23-1]).
observation(6, [n1-0, n2-1, n3-1, n6-0, n7-1], [o22-1, o23-1]).
observation(7, [n1-0, n2-0, n3-0, n6-0, n7-1], [o22-0, o23-1]).
observation(8, [n1-0, n2-1, n3-0, n6-1, n7-0], [o22-1, o23-1]).
observation(9, [n1-0, n2-1, n3-1, n6-1, n7-1], [o22-0, o23-0]).
observation(10, [n1-0, n2-0, n3-1, n6-0, n7-1], [o22-0, o23-1]).
observation(11, [n1-1, n2-1, n3-0, n6-0, n7-1], [o22-1, o23-1]).
observation(12, [n1-1, n2-0, n3-1, n6-0, n7-0], [o22-1, o23-0]).
