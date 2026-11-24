% ITC 4380 - Artificial Intelligence Principles - Fall 2026
% Final Project, Q1: fault diagnosis of combinational circuits
%
% Circuit C1: 1-bit full adder
% 3 inputs, 2 outputs, 5 gates, 8 observations.
% At most 2 gates are faulty (output stuck at 0 or 1).

circuit(c1).

% --- primary inputs and outputs ---
input(a).
input(b).
input(cin).
output(sum).
output(cout).

% --- gates: gate(Name, Type) ---
gate(g1, xor).
gate(g2, xor).
gate(g3, and).
gate(g4, and).
gate(g5, or).

% --- directed edges: wire(From, To) ---
wire(a, g1).
wire(b, g1).
wire(g1, g2).
wire(cin, g2).
wire(a, g3).
wire(b, g3).
wire(g1, g4).
wire(cin, g4).
wire(g3, g5).
wire(g4, g5).
wire(g2, sum).
wire(g5, cout).

% --- reliability: failure_rate(Gate, Probability) ---
failure_rate(g1, 0.010079).
failure_rate(g2, 0.004039).
failure_rate(g3, 0.003863).
failure_rate(g4, 0.002821).
failure_rate(g5, 0.004638).

% --- observations: observation(Id, InputValues, OutputValues) ---
observation(1, [a-0, b-0, cin-0], [sum-0, cout-0]).
observation(2, [a-0, b-0, cin-1], [sum-1, cout-0]).
observation(3, [a-0, b-1, cin-0], [sum-1, cout-0]).
observation(4, [a-0, b-1, cin-1], [sum-0, cout-0]).
observation(5, [a-1, b-0, cin-0], [sum-1, cout-0]).
observation(6, [a-1, b-0, cin-1], [sum-0, cout-0]).
observation(7, [a-1, b-1, cin-0], [sum-0, cout-1]).
observation(8, [a-1, b-1, cin-1], [sum-1, cout-1]).
