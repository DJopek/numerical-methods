#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]


(* ::Section:: *)
(*Yet another technique for complementarity constraints*)


(* ::Subsection::Closed:: *)
(*Problem*)


(* ::Text:: *)
(*We define the function f we want to minimise and the constraint g.*)


f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};


(* ::Text:: *)
(*Visualisation  of  our  problem. It seems that the minimum subject to the given constrained is attained at point [0, -1]. (I don't think 0, -1 is the minimum)*)


pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];
Show[pltA, pltB]


(* ::Subsection::Closed:: *)
(*Smart choice of nonlinear function*)


(* ::Subsubsection:: *)
(*Fischer--Burmeister complementarity function*)


(* ::Text:: *)
(*We  now  investigate  the  following  function  of  g  and  lambda -- this function is referred to as FISCHER--BURMEISTER complementarity function.*)


complementarityEqSymbolicFB[\[Lambda]_, g_] := Sqrt[g^2 + \[Lambda]^2] + \[Lambda] - g
ContourPlot[complementarityEqSymbolicFB[\[Lambda], g], {\[Lambda], - 2, 2}, {g, -2, 2}]


(* ::Text:: *)
(*It  seems  that  solutions  to  the  problem  complementarityEqSymbolic[\[Lambda], g] == 0  are  pairs [\[Lambda], g] that satisfy the complementarity conditions.*)


(* ::Text:: *)
(*We  can  also  try  some  other  functions.*)


(* ::Subsection::Closed:: *)
(*Problem solution*)


(* ::Subsubsection:: *)
(*Smoothed Fischer--Burmeister complementarity function*)


(* ::Text:: *)
(*Using the function*)


complementarityEqSymbolicFB[\[Lambda], g] == 0 // TraditionalForm


(* ::Text:: *)
(*we  managed  to  rewrite  the  complementarity  conditions  as  an  equality  constraint. We can thus convert the problem with inequality constraints to a problem with equality constraints. *)


(* ::Text:: *)
(*This  is the gradient of the auxiliary functional.*)


D[f[xx] + \[Lambda]*g[xx],{xx}] // MatrixForm // TraditionalForm


(* ::Text:: *)
(*We  thus  want  to  solve  the  following  system  of  nonlinear  equations.*)


gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicFB[\[Lambda], g[xx]] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


(* ::Text:: *)
(*We  need  some  initial  guess, we shall start at [-1, -1, 0].*)


initialGuessPoint = {-1, -1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


(* ::Text:: *)
(*We  are  lazy, we  let  Mathematica  to  solve  the  nonlinear  problem  for  us . But we want to closely monitor the solver.*)


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


(* ::Text:: *)
(*Solution  is :*)


sol /. Rule -> Equal // TableForm // TraditionalForm


(* ::Subsection:: *)
(*Homework*)


(* ::Subsubsection::Closed:: *)
(*FB*)


ClearAll["Global`*"]

f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};

pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];


complementarityEqSymbolicFB[\[Lambda]_, g_,\[Delta]_] := Sqrt[g^2 + \[Lambda]^2 + 2 * \[Delta]] + \[Lambda] - g
CP1 = ContourPlot[complementarityEqSymbolicFB[\[Lambda], g, 1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP2 = ContourPlot[complementarityEqSymbolicFB[\[Lambda], g, 0.1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP3 = ContourPlot[complementarityEqSymbolicFB[\[Lambda], g, 0]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
Show[CP1,CP2,CP3]


complementarityEqSymbolicFB[\[Lambda], g, 0] == 0 // TraditionalForm
gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicFB[\[Lambda], g[xx], 0] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


initialGuessPoint = {-1, -1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


sol /. Rule -> Equal // TableForm // TraditionalForm


(* ::Subsubsection::Closed:: *)
(*NN*)


ClearAll["Global`*"]

f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};

pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];


complementarityEqSymbolicNN[\[Lambda]_, g_, \[Delta]_] := -\[Delta] * Log[Exp[(- g - \[Lambda] ) / \[Delta]] + 1] - \[Lambda]
CP1 = ContourPlot[complementarityEqSymbolicNN[\[Lambda], g, 1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP2 = ContourPlot[complementarityEqSymbolicNN[\[Lambda], g, 0.1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP3 = ContourPlot[complementarityEqSymbolicNN[\[Lambda], g, 0.001]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
Show[CP1,CP2,CP3]


complementarityEqSymbolicNN[\[Lambda], g, 0.001] == 0 // TraditionalForm
gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicNN[\[Lambda], g[xx], 0.001] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


initialGuessPoint = {-1, 1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


sol /. Rule -> Equal // TableForm // TraditionalForm


(* ::Subsubsection:: *)
(*CHKS*)


ClearAll["Global`*"]

f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};

pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];


complementarityEqSymbolicCHKS[\[Lambda]_, g_, \[Delta]_] := (g - \[Lambda]) / 2 - 1/2 * Sqrt[4 * \[Delta]^2 + (g + \[Lambda])^2]
CP1 = ContourPlot[complementarityEqSymbolicCHKS[\[Lambda], g, 1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP2 = ContourPlot[complementarityEqSymbolicCHKS[\[Lambda], g, 0.1]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
CP3 = ContourPlot[complementarityEqSymbolicCHKS[\[Lambda], g, 0.001]==0, {\[Lambda], - 2, 2}, {g, -2, 2}];
Show[CP1,CP2,CP3]


complementarityEqSymbolicCHKS[\[Lambda], g, 0.001] == 0 // TraditionalForm
gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicCHKS[\[Lambda], g[xx], 0.001] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


initialGuessPoint = {1, 1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


sol /. Rule -> Equal // TableForm // TraditionalForm


(* ::Text:: *)
(*Let's try to see how it will "break down" if we will use \[Delta]=0.1.*)


ClearAll["Global`*"]

f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};

pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];


complementarityEqSymbolicCHKS[\[Lambda]_, g_, \[Delta]_] := (g - \[Lambda]) / 2 - 1/2 * Sqrt[4 * \[Delta]^2 + (g + \[Lambda])^2]
complementarityEqSymbolicCHKS[\[Lambda], g, 0.1] == 0 // TraditionalForm
gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicCHKS[\[Lambda], g[xx], 0.1] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


initialGuessPoint = {1, 1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


sol /. Rule -> Equal // TableForm // TraditionalForm


(* ::Text:: *)
(*It didn't really break down, but we have at least some different values, probably with bigger error. *)
(*But let's try to break it. Let's try \[Delta]=1.*)


ClearAll["Global`*"]

f[xx_]:= (xx[[1]])^2 + (xx[[2]])^2;
g[xx_]:= xx[[2]] - (xx[[1]]-2)^2 + 3/2;
xx = {x, y};

pltA = ContourPlot[f[xx], {x, -2, 2}, {y, -2, 2}, Contours->20];
pltB = ContourPlot[g[xx]==0, {x, -2, 2}, {y, -2, 2}, ContourStyle->Thick];


complementarityEqSymbolicCHKS[\[Lambda]_, g_, \[Delta]_] := (g - \[Lambda]) / 2 - 1/2 * Sqrt[4 * \[Delta]^2 + (g + \[Lambda])^2]
complementarityEqSymbolicCHKS[\[Lambda], g, 1] == 0 // TraditionalForm
gradientEq = Thread[D[f[xx] + \[Lambda]*g[xx], {xx}] == 0];
complementarityEq = {complementarityEqSymbolicCHKS[\[Lambda], g[xx], 1] == 0};
problem = Join[gradientEq, complementarityEq];
problem // TableForm // TraditionalForm


initialGuessPoint = {1, 1, 0}
initialGuess = Thread[List[Join[xx, {\[Lambda]}], initialGuessPoint]];
Map[Equal@@# &, initialGuess] // TableForm // TraditionalForm


{sol, {iterations}} = Reap[FindRoot[problem, initialGuess, StepMonitor:>Sow[xx]]]


labeledIterations = MapIndexed[Callout[{#1[[1]], #1[[2]]}, StringTemplate["` `"][First[#2]]] &, iterations]
labeledIterations = Prepend[labeledIterations, Callout[Most[initialGuessPoint], "Start"]]
pltC = ListPlot[labeledIterations, PlotRange->All];


Show[pltA, pltB, pltC]


sol /. Rule -> Equal // TableForm // TraditionalForm
