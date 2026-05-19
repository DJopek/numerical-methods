#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
$PlotTheme = "Monochrome";
SetDirectory[NotebookDirectory[]];


(* ::Section:: *)
(*River problem - Neural Network optimizer*)


(* setup *)
f[x_] := -1/100*(x - 3)^2 - 2
c = 10;
xA = {-c, 0};
xB = {c, 0};
xR[xr_] := {xr, f[xr]}


(* ::Subsection:: *)
(*Neural network as optimizer*)


net = NetGraph[<|
  "xr" -> NetArrayLayer["Output" -> {1}],
  (* f(xr) = -1/100*(xr-3)^2 - 2 *)
  "shift" -> ThreadingLayer[# - 3 &],
  "shift_sq" -> ElementwiseLayer[#^2 &],
  "fxr" -> ThreadingLayer[-1/100 * # - 2 &],
  (* (xr - (-c))^2 = (xr + c)^2 *)
  "dxA" -> ThreadingLayer[# + c &],
  "dxA_sq" -> ElementwiseLayer[#^2 &],
  (* (xr - c)^2 *)
  "dxB" -> ThreadingLayer[# - c &],
  "dxB_sq" -> ElementwiseLayer[#^2 &],
  (* f(xr)^2, shared by both distances *)
  "fxr_sq" -> ElementwiseLayer[#^2 &],
  (* ||xA - xR||  = sqrt(dxA^2 + fxr^2) *)
  "sumA" -> ThreadingLayer[#1 + #2 &],
  "distA" -> ElementwiseLayer[Sqrt],
  (* ||xB - xR|| = sqrt(dxB^2 + fxr^2) *)
  "sumB" -> ThreadingLayer[#1 + #2 &],
  "distB" -> ElementwiseLayer[Sqrt],
  (* total distance *)
  "total" -> ThreadingLayer[#1 + #2 &]
|>, {
  "xr" -> "shift" -> "shift_sq" -> "fxr",
  "xr" -> "dxA" -> "dxA_sq",
  "xr" -> "dxB" -> "dxB_sq",
  "fxr" -> "fxr_sq",
  {"dxA_sq", "fxr_sq"} -> "sumA" -> "distA",
  {"dxB_sq", "fxr_sq"} -> "sumB" -> "distB",
  {"distA", "distB"} -> "total"
}];


rounds = 5000;

result = NetTrain[net, <|"Output" -> ConstantArray[{0.}, 100]|>, All, MaxTrainingRounds -> rounds];
trained = result["TrainedNet"];

xrOpt = First @ NetExtract[trained, {"xr", "Array"}];
xR[xrOpt]


(* ::Subsection:: *)
(*Comparison with analytical solution*)


d[xr_] := Sqrt[(xA[[1]] - xr)^2 + (xA[[2]] - f[xr])^2] + Sqrt[(xB[[1]] - xr)^2 + (xB[[2]] - f[xr])^2]

xminAnalytical = xr /. FindRoot[D[d[xr], xr] == 0, {xr, 0}];

Print["NN solution:          ", xR[xrOpt]]
Print["Analytical solution:  ", xR[xminAnalytical]]
Print["NN distance:          ", d[xrOpt]]
Print["Analytical distance:  ", d[xminAnalytical]]


(* ::Subsection:: *)
(*Visualization*)


Show[
  Plot[f[x], {x, -11, 11}, PlotRange -> {-10, 5}],
  ListPlot[{xA, xB, xR[xrOpt], xR[xminAnalytical]}, PlotStyle -> PointSize[Large]],
  Graphics[{
    Red, Line[{xA, xR[xrOpt], xB}],
    Blue, Dashed, Line[{xA, xR[xminAnalytical], xB}]
  }]
]

result["RoundLoss"]
