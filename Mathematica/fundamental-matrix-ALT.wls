#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]


(* ::Text:: *)
(*Right hand side .*)


h[t_]:= (Cos[t]+Sin[t])/(2+Sin[t]-Cos[t]);
P[t_]:={{1,1},{0,h[t]}};


(* ::Text:: *)
(*Unknowns arranged as matrix.*)


NN = 2;
\[CapitalPhi][t_]:= Table[Table[Subscript[\[CapitalPhi], i, j][t], {i, 1, NN}], {j, 1, NN}]


\[CapitalPhi][t] // MatrixForm
IdentityMatrix[NN] // MatrixForm


(* ::Text:: *)
(*Just for visualisation.*)


(D[\[CapitalPhi][t], t] // MatrixForm) == ((P [t]// MatrixForm) . (\[CapitalPhi][t] // MatrixForm)) // TraditionalForm


odes = D[\[CapitalPhi][t], t] == P[t] . \[CapitalPhi][t];
odes
ics = (\[CapitalPhi][t] /. t -> 0) ==IdentityMatrix[NN];
ics


(* ::Text:: *)
(*Solve the equations.*)


sol = DSolve[{odes, ics}, Flatten[\[CapitalPhi][t]], t];


(* ::Text:: *)
(*Solution.*)


First[(\[CapitalPhi][t] /. sol)] // MatrixForm


(* ::Text:: *)
(*Solution evaluated at t = 2 \[Pi] .*)


First[\[CapitalPhi][t] /. sol] /. t-> 2*\[Pi] // MatrixForm
