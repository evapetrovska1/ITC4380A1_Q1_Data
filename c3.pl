% ITC 4380 - Artificial Intelligence Principles - Fall 2026
% Final Project, Q1: fault diagnosis of combinational circuits
%
% Circuit C3: 2x2-bit array multiplier
% 4 inputs, 4 outputs, 8 gates, 6 observations.
% At most 2 gates are faulty (output stuck at 0 or 1).

circuit(c3).

% --- primary inputs and outputs ---
input(a0).
input(a1).
input(b0).
input(b1).
output(p0).
output(p1).
output(p2).
output(p3).

% --- gates: gate(Name, Type) ---
gate(h2, xor).
gate(m3, and).
gate(m1, and).
gate(m0, and).
gate(k2, and).
gate(m2, and).
gate(k1, and).
gate(h1, xor).

% --- directed edges: wire(From, To) ---
wire(a0, m2).
wire(m3, h2).
wire(b1, m3).
wire(a1, m1).
wire(m0, p0).
wire(m1, k1).
wire(h2, p2).
wire(a0, m0).
wire(m3, k2).
wire(m2, h1).
wire(k2, p3).
wire(m1, h1).
wire(a1, m3).
wire(h1, p1).
wire(k1, h2).
wire(k1, k2).
wire(m2, k1).
wire(b0, m1).
wire(b1, m2).
wire(b0, m0).

% --- reliability: failure_rate(Gate, Probability) ---
failure_rate(h2, 0.010017).
failure_rate(m3, 0.004403).
failure_rate(m1, 0.005222).
failure_rate(m0, 0.002686).
failure_rate(k2, 0.05).
failure_rate(m2, 0.002483).
failure_rate(k1, 0.004134).
failure_rate(h1, 0.008869).

% --- observations: observation(Id, InputValues, OutputValues) ---
observation(1, [a0-1, a1-0, b0-0, b1-0], [p0-0, p1-0, p2-1, p3-0]).
observation(2, [a0-1, a1-1, b0-1, b1-1], [p0-1, p1-0, p2-1, p3-0]).
observation(3, [a0-0, a1-1, b0-1, b1-1], [p0-0, p1-1, p2-1, p3-0]).
observation(4, [a0-0, a1-1, b0-1, b1-0], [p0-0, p1-1, p2-1, p3-0]).
observation(5, [a0-0, a1-1, b0-0, b1-0], [p0-0, p1-0, p2-1, p3-0]).
observation(6, [a0-1, a1-1, b0-0, b1-1], [p0-0, p1-1, p2-1, p3-0]).
