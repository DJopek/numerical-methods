#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
SetDirectory[NotebookDirectory[]]


$MaxExtraPrecision = 0 (* Please do not try to help me! *)
$MachineEpsilon


(* ::Section:: *)
(*Polynomial interpolation -- subtle details that make the whole technique work*)


(* ::Subsection:: *)
(*Interpolation formulae*)


(* ::Text:: *)
(*Let us generate the formulae -- classical Lagrange interpolation formula, first barycentric formula and second barycentric formula.*)


barycentricWeights[nodes_List] := Table[
		N[1] / Product[If[j == i, 1, nodes[[i]] - nodes[[j]]], {j, 1, Length[nodes]}],
		{i, Length[nodes]}
	]


classicalLagrange[nodes_List, values_List,  weights_List, x_] := Module[{NN = Length[nodes]},
    Sum[
      values[[i]] * Product[If[j == i, 1, (x - nodes[[j]]) / (nodes[[i]] - nodes[[j]])], {j, 1, NN}], 
      {i, 1, NN}
    ]
]


firstBarycentric[nodes_List, values_List, weights_List, x_] := Module[{NN = Length[nodes], hit, hitPosition},
	hit = MemberQ[nodes, node_ /; x == node]; (* Are we asking for the function value at a particular node? Chebfun a posteriori fixes all NaN evalutions. *)
	If[hit, 
		hitPosition = FirstPosition[nodes, node_ /; x == node][[1]]; values[[hitPosition]], (* If we already know the value, return it. *)
		Product[x - nodes[[i]], {i, 1, NN}] * Sum[weights[[i]] * values[[i]]/(x - nodes[[i]]), {i, 1, NN}] (* If do not know the value, use the interpolation formula. *)
    ]
]


secondBarycentric[nodes_List, values_List, weights_List, x_] := Module[{NN = Length[nodes], hit, hitPosition},
	hit = MemberQ[nodes, node_ /; x == node]; (* Are we asking for the function value at a particular node? Chebfun a posteriori fixes all NaN evalutions. *)
    If[hit,
	    hitPosition = FirstPosition[nodes, node_ /; x == node][[1]]; values[[hitPosition]], (* If we already know the value, return it. *)
		Sum[weights[[i]] * values[[i]]/(x - nodes[[i]]), {i, 1, NN}]/Sum[weights[[i]]/(x - nodes[[i]]), {i, 1, NN}] (* If do not know the value, use the interpolation formula. *)
	]
]


(* ::Subsection:: *)
(*Nodes*)


(* ::Text:: *)
(*Equidistant and Chebyshev nodes.*)


equispacedNodes[n_] := N @ Table[-1 + 2*(j-1)/(n-1), {j, 1, n}]
chebyshevNodesSecond[n_] := N @ Reverse @ Table[Cos[(j-1)*\[Pi]/(n -1)], {j, 1, n}] (* We want the nodes to be ordered from left to right. *)


(* ::Subsection:: *)
(*Testing*)


(* ::Text:: *)
(*Bottleneck #1: How long does it take to evaluate the interpolant at a given point? (How many floating point operations one needs to evaluate the interpolant?)*)
(*Bottleneck #2: Is the interpolant formula good if the point of interest is close to the interpolation point? (Stability.)*)
(*Bottleneck #3: How are these properties changing with increasing N? *)


(* ::Subsubsection:: *)
(*Boring case*)


(* ::Text:: *)
(*First we test all formulae in an easy to handle setting -- polynomial degree is small, the function we want to interpolate is a function without oscillations .*)


ClearSystemCache[]

fn[x_] := Sin[1000*x]; (* The function we will interpolate. Note that to successfully interpolate the sine function, we need a polynomial of a higher degree than the number of zeros of the sine function. *)
NN = 10; (* Polynomial degree is NN-1. *)
xPoint = 0.23; (* Test point. *)

nodes = chebyshevNodesSecond[NN];
vals = Map[fn[#] &, chebyshevNodesSecond[NN]];
weights = barycentricWeights[nodes];

methods = {classicalLagrange, firstBarycentric, secondBarycentric};

TemplateApply@StringTemplate["Function: `1`, Value at x = `2` is `3`"][ToString[fn[x]], xPoint, DecimalForm[fn[xPoint]]]
TableForm[Map[Timing@DecimalForm@#[nodes, vals, weights, xPoint] &, methods], TableHeadings->{{"Classical Lagrange", "First barycentric", "Second barycentric"}, {"Computational time", "Approximated value f(x)"}}]


(* ::Text:: *)
(*We can notice that barycentric formulae are faster to evaluate. This is not a coincidence. (Note that the weights are precomputed.)*)


(* ::Subsubsection:: *)
(*Challenging case*)


ClearSystemCache[]

fn[x_] := Sin[500*x]; (* The function we will interpolate. Note that to successfully interpolate the sine function, we need a polynomial of a higher degree than the number of zeros of the sine function. *)
NN = 1000; (* Polynomial degree is NN-1. *)
xPoint = 0.23; (* Test point. *)

nodes = chebyshevNodesSecond[NN];
vals = Map[fn[#] &, chebyshevNodesSecond[NN]];
weights = barycentricWeights[nodes];

methods = {classicalLagrange, firstBarycentric, secondBarycentric};

TemplateApply@StringTemplate["Function: `1`, Value at x = `2` is `3`"][ToString[fn[x]], xPoint, DecimalForm[fn[xPoint]]]
TableForm[Map[Timing@DecimalForm@#[nodes, vals, weights, xPoint] &, methods], TableHeadings->{{"Classical Lagrange", "First barycentric", "Second barycentric"}, {"Computational time", "Approximated value f(x)"}}]


(* ::Text:: *)
(*Lagrange formula works although its performance is not stellar . First and second barycentric formulae completely fail. Why is that?*)


weights


(* ::Text:: *)
(*Let us have a look at barycentric weights.*)


TableForm[Table[barycentricWeights[chebyshevNodesSecond[j]], {j, 5, 20}]]


(* ::Text:: *)
(*It seems that the barycentric weights grow very fast.*)


ListLogPlot[
	Table[
		Abs[barycentricWeights[chebyshevNodesSecond[j]][[1]]], 
		{j, 5, 20}
	],
	PlotLegends->{"\!\(\*SubscriptBox[\(\[Lambda]\), \(1\)]\) (first barycentric weight for the given node set)"},
	PlotLabel->"Barycentric weight as function of number of nodes (Chevyshev points, second kind)",
	AxesLabel->{"n", "\!\(\*SubscriptBox[\(\[Lambda]\), \(1\)]\)"},
	ImageSize->Large
]


(* ::Text:: *)
(*Fortunately, we can precompute the barycentric weights for Chebyshev polynomials and that they share the same growth factor -> we can cancel them in the second barycentric formula. This is the feature we are looking for. Formula for barycentric weights is given in Trefethen: Approximation ... 5.15. See also paper Barrut, Trefethen: Barycentric Lagrange interpolation.*)


(*Barycentric weights, Chebyshev polynomials of the second kind. *)
barycentricWeightsChebyshevComplete[NN_] := Module[{res},
	res = N@Table[(-1)^j*2^(NN-1)/NN, {j, 0, NN}]; 
	res[[1]] = 1/2*res[[1]];
	res[[-1]] = 1/2*res[[-1]];
	res
]


NN = 10;
barycentricWeightsChebyshevComplete[NN-1]
barycentricWeights[chebyshevNodesSecond[NN]] (* OK, it seems that they are not lying :-) Minus sign is due to different ordering convention. *)


(* ::Text:: *)
(*In the barycentric formula we can safely cancel the common factor 2^(NN - 1)/NN .*)


(*Barycentric weights, Chebyshev polynomials of the second kind. Common factor NOT included. *)
barycentricWeightsChebyshevReduced[NN_] := Module[{res},
	res = N@Table[(-1)^j, {j, 0, NN}]; 
	res[[1]] = 1/2*res[[1]];
	res[[-1]] = 1/2*res[[-1]];
	res
]


(* ::Subsection:: *)
(*Challenging case -- revisited*)


ClearSystemCache[]

fn[x_] := Sin[500*x]; (* The function we will interpolate. Note that to successfully interpolate the sine function, we need a polynomial of a higher degree than the number of zeros of the sine function. *)
NN = 1000; (* Polynomial degree is NN-1. *)
xPoint = 0.23; (* Test point. *)

nodes = chebyshevNodesSecond[NN];
vals = Map[fn[#] &, chebyshevNodesSecond[NN]];
weights = barycentricWeightsChebyshevReduced[NN-1];
(*
weights = barycentricWeights[nodes]; 
*)

methods = {classicalLagrange, secondBarycentric};

TemplateApply@StringTemplate["Function: `1`, Value at x = `2` is `3`"][ToString[fn[x]], xPoint, DecimalForm[fn[xPoint]]]
TableForm[Map[Timing@DecimalForm@#[nodes, vals, weights, xPoint] &, methods], TableHeadings->{{"Classical Lagrange", "Second barycentric"}, {"Computational time", "Approximated value f(x)"}}]


(* ::Text:: *)
(*We see that the second barycentric formula now works and NO PRECISION IS LOST. This is not the case for the classical Lagrange formula . Moreover evaluation of the second barycentric formula is much faster.*)
